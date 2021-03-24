# PostgreSQL

เราจะใช้ Docker ในการ run PostgreSQL ขึ้นมาบนเครื่องของเรา

`docker run --name my-postgres -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 -d --rm postgres:13.0`

จากนั้นให้เรา execute เข้าไปใน PostgreSQL container

`docker exec -it -u postgres my-postgres psql`

🌟 ถ้าใครมีปัญหาในการ install docker ให้[ทำตามขั้นตอนจาก link นี้](https://www.postgresqltutorial.com/install-postgresql/)

[Postgresql download link ](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads)

<br><hr><br>

## Databases / Tables / Schemas

**Databases** เป็นตัวที่รวม Tables ของข้อมูลเอาไว้ ซึ่งรวมตาม problem domains เช่นถ้าเราสร้างเว็บเกี่ยวกับการขายสินค้า problem domain ของเราก็อาจจะเป็น e-commerce เรามีมากกว่า 1 databases ได้ขึ้นอยู่กับว่าเราจะออกแบบยังไง แต่ app ทั่ว ๆ ไป database เดียวก็เพียงพอ ( ⚠️ ซึ่งเราก็จะเริ่มจาก database ตัวเดียวนะไม่แนะนำให้มีหลาย databases)

**Tables** เป็นเป็นตารางที่มี records ของข้อมูลอยู่ ให้นึกถึง Excel ได้เลย Table จะประกอบไปด้วย columns และ rows

**Schema** Schema ก็คือ Columns ของ Table ที่ต้องมีโครงสร้างชัดเจน

<br><hr><br>

## Let's Create Database

```sql
CREATE DATABASE blogs;
```

⚠️ เวลาเขียน PostgreSQL อย่าลืม **;** ต่อท้ายทุกครั้งเวลาจบ statement

เมื่อสร้าง database เสร็จแล้วให้พิมพ์ `\l` เพื่อดู database ทั้งหมด

จากนั้นพิมพ์ `\c blogs` เพื่อ connect database blogs

🌟 สามารถใช้ `\?` เพื่อดูคำสั่งใน postgres ได้

<br><hr><br>

## Let's Create Table !

ให้เราลองมอง Web App ที่เราจะทำก่อนว่าประกอบไปด้วยข้อมูลอะไรบ้าง

App ที่เราจะทำคือ Blog App สิ่งที่ App นี้ทำได้คือ

- users สามารถที่จะเขียน posts ลงไปได้กี่ posts ก็ได้
- users ในระบบสามารถที่จะ comment article ใด ๆ ก็ได้ และกี่ comments ก็ได้
- ในแต่ละ article ของเราสามารถที่จะมี comments ได้หลาย ๆ comments

ให้เราคิดก่อนว่าเราจะเก็บข้อมูลอย่างไร 🤔

. . .

เราลองมาดูกัน

- **ให้เราลองสังเกตว่าใน requirements มีอะไรบ้าง ?** requirement ของเราประกอบไปด้วย **users, posts, comments** ซึ่งสามอย่างนี้คือ tables ของเรา

- **จากนั้นให้ดูต่อว่า schema ของแต่ละ table จะเป็นยังไง ?**
  - ตาราง users จะเก็บข้อมูล user_id, email, firstname, lastname, last_login, created_on
  - ตาราง posts จะเก็บข้อมูล post_id, user_id, content, created_on, updated_on
  - ตาราง comments จะเก็บข้อมูล comment_id, user_id, post_id, content, created_on, updated_on

เราเริ่มสร้าง table users ก่อน

```sql
CREATE TABLE users (
  user_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  username VARCHAR ( 25 ) UNIQUE NOT NULL,
  email VARCHAR ( 50 ) UNIQUE NOT NULL,
  firstname VARCHAR ( 100 ) NOT NULL,
  lastname VARCHAR ( 100 ) NOT NULL,
  created_on TIMESTAMP NOT NULL
);
```

- CREATE TABLE ตามด้วยชื่อ table จากนั้นเราจะกำหนด columns ภายใน ( ... )
- สร้าง column ชื่อ user_id มีชนิดของข้อมูลเป็น INTEGER และเป็น PRIMARY KEY เป็น ... และเมื่อ record ถูกสร้าง user_id จะเริ่มจาก 1 และเพิ่มไปเรื่อย ๆ และเลขที่สร้างจะไม่ซ้ำกันเลยในแต่ะล record เพราะเรากำหนด `GENERATED ALWAYS AS IDENTITY`
- VARCHAR(25) เป็นชนิดของข้อมูลตัวอักษรที่กำหนด length ชัดเจน
- UNIQUE เป็นตัวที่บอกว่าข้อมูลใน column นี้จะต้องไม่ซ้ำกันกับ record อื่น ๆ
- NOT NULL เป็นตัวที่บอกว่าต้องมีข้อมูลใน column
- TIMESTAMP เป็นชนิดข้อมูลที่เป็นเวลา

เมื่อสร้างเสร็จให้พิมพ์คำสั่ง `\d` เพื่อดู tables ที่สร้าง

<br><hr><br>

## Create Record

```sql
INSERT INTO users (username, email, firstname, lastname, created_on) VALUES ('knotnapat', 'knot@testmail.com', 'knot', 'napat', NOW());
```

<br><hr><br>

## Query First Record

```sql
SELECT * FROM users;
```

<br><hr><br>

## Exercises 🏅

- สร้าง records ในตาราง users เพิ่ม

<br><hr><br>
