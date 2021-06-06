create function public.avg_price_noavg() returns numeric
	language plpgsql
as $$
declare
    avg_price numeric;
begin
    select sum(price) / count(*)
    into avg_price
    from products;
    return avg_price;
end;
$$;

alter function public.avg_price_noavg() owner to postgres;

