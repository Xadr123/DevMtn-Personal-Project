select
  *
from wishlists
join products on wishlists.product_id = products.product_id
where
  user_id = $1