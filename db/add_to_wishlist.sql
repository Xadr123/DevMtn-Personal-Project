insert into wishlists (user_id, product_id, wishlist_qty)
values
  (${ user_id }, ${ product_id }, 1);
select
  *
from wishlists
join products on wishlists.product_id = products.product_id
where
  user_id = ${ user_id }
order by
  wishlists.product_id asc