# Ecommerce Queries Exercise

## Customer Problems

1. อยากได้ข้อมูลที่อยู่ของ customer ที่ชื่อว่า 'Ifeoma'

```sql
select customers.customer_id, customers.firstname, customers.user_id, address_id, district, postal, street
from addresses
inner join customers
on addresses.customer_id = customers.customer_id
where customers.firstname = 'Ifeoma';
```

2. Update firstname ของ ลูกค้า ทีมี `customer_id = 2`

```sql

```

3. Register ลูกค้าใหม่ ที่มีข้อมูลตามนี้
   - phone_number: 0421112222
   - firstname: Jimmy
   - lastname: Doe

```sql

```

## Categories Problems

1. ดึงข้อมูล Categories name ออกมาทั้งหมด

```sql

```

2. นับ Categories ทั้งหมดในระบบ

```sql

```

## Orders Problems

1. อยากรู้จำนวน order ของ customer ที่ชื่อ 'Maia' ในช่วง '2020-05-01' ถึง '2020-10-01'

```sql
select count(*)
from orders
inner join customers
on orders.customer_id = customers.customer_id
where customers.firstname = 'Maia'
and created_on < '2020-10-01'
and created_on > '2020-05-01';
```

2. อยากได้ข้อมูล 5 order ล่าสุดของ พร้อมสถานะของ order ของ customer ที่ชื่อ 'Maia'

```sql
select order_id, status, created_on
from orders
inner join customers
on orders.customer_id = customers.customer_id
where customers.firstname = 'Maia'
order by created_on DESC
limit 5;
```

3. อยากได้ข้อมูล 5 orders ล่าสุดของ customer ที่ชื่อ 'Maia' ที่มี status เป็น 'pending'

```sql
select order_id, status, created_on
from orders
inner join customers
on orders.customer_id = customers.customer_id
where customers.firstname = 'Maia'
and orders.status = 'pending'
limit 5;
```

4. อยากได้ข้อมูล 5 orders ล่าสุดของ customer ที่ชื่อ 'Maia' ที่มี status เป็น 'paid'

เราจะ select ข้อมูลจากตาราง orders และ join ข้อมูลจากตาราง customers เพราะว่าเราอยากจะ where ด้วย customers's firstname เนื่องจากว่าในตาราง orders ไม่รู้ customers's firstname

```sql
select order_id, status, created_on
from orders
inner join customers
on orders.customer_id = customers.customer_id
where customers.firstname = 'Maia'
and orders.status = 'paid'
limit 5;
```

<br><hr><br>

## Products Problems

1. อยากได้ราคา และจำนวน Stock ของ ของ Product ที่ชื่อ `feugiat`

```sql

```

2. ให้ Update Stock ของ feugiat เหลือ 6000 ชิ้น

```sql

```

3. อยากได้ข้อมูลสิ้นค้าขายดีที่สุด 10 อันดับแรก

```sql
select count(*) as product_count, products.product_id, products.name
from order_items
inner join products
on order_items.product_id = products.product_id
group by products.product_id
order by product_count desc
limit 10;
```

4. อยากได้จำนวนสินค้าทั้งหมดในแต่ละหมวดหมู่ เรียงจากมากไปน้อย

```sql
select count(*) as product_count, categories.name
from products
inner join categories
on products.category_id = categories.category_id
group by categories.category_id
order by product_count desc
limit 10;
```

5. อยากได้จำนวนยอดขายของสินค้าที่มีชื่อว่า 'ipsum'

```sql
select products.product_id, products.name, count(products.product_id) as product_count
from order_items
inner join products
on order_items.product_id = products.product_id
where products.name = 'ipsum'
group by products.product_id;
```

6. อยากได้จำนวนสินค้าใน stock ของสินค้าที่มีชื่อว่า 'ipsum'

```sql
select name, stock_number
from products
where name = 'ipsum';
```

7. อยากได้ข้อมูลสินค้าที่มีราคาตั้งแต่ 100 - 2000 บาท เรียงจากถูกสุดไปแพงที่สุด

```sql
select name, price
from products
where price >= 1
and price <= 2000
order by price asc;
```

<br><hr><br>
