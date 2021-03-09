const { Pool } = require("pg");
const faker = require("faker");

const pool = new Pool({
  connectionString:
    "postgresql://postgres:mysecretpassword@localhost:5432/blogs",
});

async function run() {
  const client = await pool.connect();
  const USERS_RECORD_NUMBER = 5;
  const POSTS_RECORD_NUMBER = 20;

  try {
    let userQueries = Array(USERS_RECORD_NUMBER)
      .fill("")
      .map(async () => {
        return client.query(
          "INSERT INTO users (username, email, firstname, lastname, created_on) VALUES ($1, $2, $3, $4, NOW() - interval '1 days' * $5)",
          [
            faker.internet.userName().toLowerCase(),
            faker.internet.email().toLowerCase(),
            faker.name.firstName(),
            faker.name.lastName(),
            Math.floor(Math.random() * 60) + 20,
          ]
        );
      });

    await Promise.all(userQueries);

    console.log("=========== Inserted users successfully ===========");

    let postsQueries = Array(POSTS_RECORD_NUMBER)
      .fill("")
      .map(async (_, index) => {
        return client.query(
          "INSERT INTO posts (user_id, content, created_on, updated_on) VALUES ($1, $2, NOW() - interval '1 days' * $3, NOW())",
          [
            (index % USERS_RECORD_NUMBER) + 1,
            faker.lorem.paragraph(),
            Math.floor(Math.random() * 30) + 20,
          ]
        );
      });

    await Promise.all(postsQueries);

    console.log("=========== Inserted all posts successfully ===========");

    let commentsQueries = Array(20)
      .fill("")
      .map(async (_, index) => {
        return client.query(
          "INSERT INTO comments (user_id, post_id, comment, created_on, updated_on) VALUES ($1, $2, $3, NOW() - interval '1 days' * $4, NOW())",
          [
            (index % USERS_RECORD_NUMBER) + 1,
            (index % POSTS_RECORD_NUMBER) + 1,
            faker.lorem.paragraph(),
            Math.floor(Math.random() * 10) + 1,
          ]
        );
      });

    await Promise.all(commentsQueries);

    console.log("=========== Inserted all comments successfully ===========");
    console.log("=========== Inserted all data successfully ===========");

    process.exit(0);
  } catch (error) {
    console.log("ERROR: ", error);
  }
}

run();
