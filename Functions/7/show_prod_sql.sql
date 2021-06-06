create function public.show_prod_sql(INOUT prod_id integer, OUT title character varying, OUT price numeric) returns record
	language sql
as $$
select prod_id, title, price
from products
where prod_id = show_prod_sql.prod_id
$$;

alter function public.show_prod_sql(inout integer, out varchar, out numeric) owner to postgres;

