# Basic SQL Queries

เราจะมาลองฝึก query ข้อมูลเพิ่มเติมกันสักหน่อย ให้เรา download sql script ตัวนี้ไปแล้ว copy ใส่ลงไปใน postgres มันจะสร้างข้อมูลลงใน database ให้เรา

## SELECT

ถ้าเราอยากได้ข้อมูลออกมาจากตารางไหนให้เราใช้คำสั่ง SELECT [column] แล้วตามด้วย FROM [ตาราง]

```sql
SELECT * FROM posts;
```

<br><hr><br>

## PROJECTION

```sql
SELECT post_id, content
FROM posts;
```

เราสามารถปรับแต่ง content ด้วย built-in function ที่ชื่อว่า `LEFT` ซึ่งเป็น function ที่จะสามารถตัดเอาตัวอักษรจากด้านซ้ายมากี่ตัวอักษรก็ได้

```sql
SELECT post_id, LEFT(content, 20)
FROM posts;
```

ถ้าเราสังเกตชื่อ column ของ content มันจะไม่ค่อยสื่อเราไหร่เราสามารถตั้งชื่อ column ได้ด้วย `AS`

```sql
SELECT post_id, LEFT(content, 20) AS post_content
FROM posts;
```

<br><hr><br>

## LIMIT

เราสามารถ Limit การแสดงผลของข้อมูลได้ด้วย `LIMIT`

```sql
SELECT post_id, LEFT(content, 20) AS post_content
FROM posts
LIMIT 5;
```

<br><hr><br>

## WHERE

เราสามารถที่จะกำหนดเงื่อนไขให้กับการค้นหาข้อมูลของเราได้ด้วย `WHERE`

```sql
SELECT post_id, LEFT(content, 20) AS post_content
FROM posts
WHERE post_id = 5;
```

เราสามารถ WHERE ด้วยระยะเวลาได้

```sql
SELECT post_id, LEFT(content, 20) AS post_content, created_on
FROM posts
WHERE created_on < NOW() - interval '30 days';
```

<br><hr><br>

## AND

เราสามารถที่จะเชื่อมเงื่อนไขได้ด้วย `AND`

```sql
SELECT post_id, LEFT(content, 20) AS post_content, created_on
FROM posts
WHERE created_on >= '2021-02-01'
AND created_on <= '2021-02-05';
```

<br><hr><br>

## ORDER BY

เราสามารถเรียงวันเวลาที่ post ถูกสร้างจากใหม่สุดไปเก่าสุดได้ด้วย `ORDER BY`

**ORDER BY มี 2 Options**

- **ASC** (Ascending) เรียงจากน้อยไปมาก
- **DESC** (Descending) เรียงจากมากไปน้อย

```sql
SELECT post_id, LEFT(content, 20) AS post_content, created_on
FROM posts
ORDER BY created_on DESC;
```

```sql
SELECT post_id, LEFT(content, 20) AS post_content, created_on
FROM posts
ORDER BY created_on ASC;
```

<br><hr><br>

## COUNT

COUNT เป็นคำสั่งที่นับว่าเรามี Records กี่ตัวใน Table

```sql
SELECT COUNT(*) FROM posts;
```

🌟 Count จะไม่นับค่า null

<br><hr><br>

## UPDATE

เราสามารถ Update ข้อมูลได้ตามคำสั่งนี้

```sql
UPDATE posts SET content='Updated content' WHERE post_id = 2 RETURNING *;
```

<br><hr><br>

## DELETE

เราสามารถลบข้อมูลออกจากตารางได้

```sql
DELETE FROM posts WHERE post_id = 2;
```

<br><hr><br>
