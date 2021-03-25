# Ecommerce Queries Exercise

Orders Problems

Products Problems

Customer Problems

1. อยากได้ข้อมูลที่อยู่ของ customer ที่ชื่อว่า 'Ifeoma'

```sql
select customers.customer_id, customers.firstname, customers.user_id, address_id, district, postal, street
from addresses
inner join customers
on addresses.customer_id = customers.customer_id
where customers.firstname = 'Ifeoma';
```
