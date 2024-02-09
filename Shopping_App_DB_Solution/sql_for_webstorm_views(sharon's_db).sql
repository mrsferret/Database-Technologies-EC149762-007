select `item`.item_id as item_id,
       `item`.item_name as item_name,
       `item`.item_desc as item_desc,
       `item`.item_img as item_img,
       `item`.item_price as item_price,
       `orders`.user_id as user_id,
       `orders`.item_id as item_id,
       `orders`.payment_id as payment_id,
       `orders`.order_id as order_id,
       `orders`.quantity as quantity,
       `orders`.order_date as order_date,
       `orders`.total as total
from `users` join orders on (item.item_id = orders.item_id)


select `users`.user_id,
       `users`.first_name,
       `users`.last_name,
       `users`.email,
       `users`.pass_word,
       `users`.reg_date,
       `orders`.payment_id,
       `orders`.order_id,
       `orders`.order_date,
       `orders`.quantity,
       `orders`.total,
       `item`.item_name as item_name,
       `item`.item_desc as item_desc,
       `item`.item_img as item_img,
       `item`.item_price as item_price
from `users` join `orders` using(user_id) join `item` using (item_id)

select `users`.user_id     AS `user_id`,
       `users`.first_name  AS `first_name`,
       `users`.last_name   AS `last_name`,
       `users`.email       AS `email`,
       `users`.reg_date    AS `reg_date`,
       `payment`.payment_id,
       `payment`.payment_amount,
       `payment`.account_no,
       `payment`.bsb_no
from `users` join `payment` where(`users`.user_id = `payment`.user_id)

select item_id as 'Item No',
       item_name as 'Item Name',
       item_desc as 'Description',
       item_price as 'Price'
      
from item
     


