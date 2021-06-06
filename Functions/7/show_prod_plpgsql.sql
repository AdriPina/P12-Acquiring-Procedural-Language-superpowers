create function public.show_prod_plpgsql(INOUT prod_id integer, OUT title character varying, OUT price numeric) returns record
	language plpgsql
as $$
begin
    select products.prod_id, products.title, products.price
    into show_prod_plpgsql.prod_id, show_prod_plpgsql.title, show_prod_plpgsql.price
    from products
    where products.prod_id = show_prod_plpgsql.prod_id;
end;
$$;

alter function public.show_prod_plpgsql(inout integer, out varchar, out numeric) owner to postgres;

