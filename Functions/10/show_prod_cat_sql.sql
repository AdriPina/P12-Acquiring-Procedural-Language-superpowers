create function public.show_prod_cat_sql(cat_id integer) returns SETOF products
	language sql
as $$
select * from products
where products.category = cat_id;
$$;

alter function public.show_prod_cat_sql(integer) owner to postgres;

