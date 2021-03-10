# SQL Indexing

**Indexing คืออะไร ?** ลองมาดูตัวอย่างในโลกความเป็นจริงกันก่อน

ให้เรานึกถึงตู้เก็บเอกสาร เวลาเราจะค้นเอกสารอะไรสักอย่างนึงให้ไว เทคนิคที่เราใช้คือ เราจะค้นโดยดูจาก label ของเอกสารที่กำหนดไว้ ว่าเราอยากได้เอกสารที่อยู่ใน label ไหน เราคงไม่ค้นหาทีละแผ่นแน่นอน มันเหนื่อยยยยย 🥴

![Document sorted for archive](./images/documents-sorted.jpg)

🌟 Indexing ในโลกของ SQL คือการที่ database สร้างก้อนข้อมูลไว้ในรูปแบบนึงจากตารางของข้อมูลที่เรามีอยู่ขึ้นมา เพื่อใช้ในการค้นหาข้อมูลให้ไวมากยิ่งขึ้น โดยที่ไม่ต้องไปนั่งไล่หาข้อมูลทั้งหมดในตาราง

เพื่อการสาธิตเราจะลองสร้างข้อมูล comments ลงใน database ซัก 200000 records ตรงนี้ใช้เวลานานหน่อยในการสร้างข้อมูลนะ 😅

```sql
blogs=# select count(*) as count from comments;
 count
--------
 200000
(1 row)
```

<br><hr><br>

## Explain Query

ก่อนอื่นเลยเราจะมารู้จักกับคำสั่ง **EXPLAIN ANALYZE** กัน

EXPLAIN ANALYZE เป็นคำสั่งที่จะตรวจสอบการทำงานของ query ที่เราเขียน เบื้องต้นเราจะนำมาใช้ในการตรวจสอบ query ของเราว่ามันค้นหาข้อมูลจาก index หรือค้นหาข้อมูลจากทั้งตาราง ลองมาดู query นี้กัน

```sql
EXPLAIN ANALYZE SELECT comment_id, user_id FROM comments WHERE post_id = 5;
```

```sql
                                                 QUERY PLAN

-----------------------------------------------------------------------------------------------

 Seq Scan on comments  (cost=0.00..9032.91 rows=9753 width=8) (actual time=0.014..28.700 rows=1
0000 loops=1)
   Filter: (post_id = 5)
   Rows Removed by Filter: 190000
 Planning Time: 0.321 ms
 Execution Time: 29.235 ms
(5 rows)
```

ให้เราสังเกต **Seq Scan on comments** หมายความว่า query ของเรากำลังไล่ค้นข้อมูลทั้งตาราง ซึ่งเป็นสิ่งที่ไม่ควรเกิดขึ้นอย่างยิ่ง ถ้าข้อมูลเยอะ ๆ นี่ไม่รอด 😱

<br><hr><br>

## Let's Create Index

เราจะมา create index ที่ column post_id กัน

```sql
CREATE INDEX ON comments (post_id);
```

หลังจากที่เรา CREATE INDEX เรียบร้อยแล้วให้เราลอง check ด้วย `\d comments`

```sql
blogs=# \d comments;
                                    Table "public.comments"
   Column   |            Type             | Collation | Nullable |           Default

------------+-----------------------------+-----------+----------+-----------------------------
-
 comment_id | integer                     |           | not null | generated always as identity
 post_id    | integer                     |           |          |
 user_id    | integer                     |           |          |
 comment    | text                        |           | not null |
 created_on | timestamp without time zone |           | not null |
 updated_on | timestamp without time zone |           | not null |
Indexes:
    "comments_pkey" PRIMARY KEY, btree (comment_id)
    "comments_post_id_idx" btree (post_id)
Foreign-key constraints:
    "comments_post_id_fkey" FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE
    "comments_user_id_fkey" FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
```

ให้สังเกตตรงนี้

```sql
Indexes:
    "comments_pkey" PRIMARY KEY, btree (comment_id)
    "comments_post_id_idx" btree (post_id)
```

เราจะเห็นว่า index ที่เราสร้างคือ `"comments_post_id_idx" btree (post_id)`

จากนั้นลอง EXPLAIN ANALYZE ดูอีกรอบ

```sql
EXPLAIN ANALYZE SELECT comment_id, user_id FROM comments WHERE post_id = 1;
```

จากนั้นลองมาดูผล

```sql
                                          QUERY PLAN

-----------------------------------------------------------------------------------------------
 Bitmap Heap Scan on comments  (cost=113.38..7075.14 rows=9947 width=8) (actual time=3.868..13.
744 rows=10000 loops=1)
   Recheck Cond: (post_id = 1)
   Heap Blocks: exact=6532
   ->  Bitmap Index Scan on comments_post_id_idx  (cost=0.00..110.90 rows=9947 width=0) (actual
 time=2.128..2.128 rows=10000 loops=1)
         Index Cond: (post_id = 1)
 Planning Time: 0.441 ms
 Execution Time: 14.658 ms
(7 rows)
```

สังเกตผลมันจะแตกต่างออกไป **Bitmap Index Scan on comments_post_id_idx**

Bitmap Index Scan หมายความว่า query ของเรากำลังไล่ค้นข้อมูลจาก index ไม่ได้ค้นทั้งตาราง 🥳

ให้เราลองเทียบ Execution Time ของทั้งสอง query ดู

**ก่อนสร้าง Index**
Execution Time: 29.235 ms

**หลังจากสร้าง Index**
Execution Time: 14.658 ms

<br><hr><br>
