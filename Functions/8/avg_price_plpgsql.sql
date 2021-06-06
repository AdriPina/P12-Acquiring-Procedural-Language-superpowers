create function public.avg_price_plpgsql() returns numeric
	language plpgsql
as $$
declare
    avg_price numeric;
begin
    select avg(price)
    into avg_price
    from products;
    return avg_price;
end;
$$;

alter function public.avg_price_plpgsql() owner to postgres;

