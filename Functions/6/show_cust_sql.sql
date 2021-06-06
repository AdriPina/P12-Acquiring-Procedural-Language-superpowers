create function public.show_cust_sql(id integer) returns customers
	language sql
as $$
select *
from customers
where customerid = id;
$$;

alter function public.show_cust_sql(integer) owner to postgres;

