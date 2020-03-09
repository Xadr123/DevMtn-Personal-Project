delete from wishlists
where
  user_id = ${ user_id }
  and product_id = ${ product_id }