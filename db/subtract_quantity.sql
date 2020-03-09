update wishlists
set
  wishlist_qty = wishlist_qty - 1
where
  user_id = ${ user_id }
  and product_id = ${ product_id };
select
  *
from wishlists
join products on wishlists.product_id = products.product_id
where
  user_id = ${ user_id }
order by
  wishlists.product_id asc