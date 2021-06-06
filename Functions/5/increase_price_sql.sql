create function public.increase_price_sql(p products) returns numeric
	language sql
as $$
update products
set price= price * 1.05
where prod_id = p.prod_id
returning price
$$;

alter function public.increase_price_sql(products) owner to postgres;

