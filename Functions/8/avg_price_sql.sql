create function public.avg_price_sql() returns numeric
	language sql
as $$
select avg(price)
from products;
$$;

alter function public.avg_price_sql() owner to postgres;

