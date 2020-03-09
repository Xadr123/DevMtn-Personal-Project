select
  *
from wishlists
join products on wishlists.product_id = products.product_id
where
  user_id = $1
order by
  wishlists.product_id asc