create function public.show_prod_cat_plpgsql(cat_id integer) returns SETOF products
	language plpgsql
as $$
begin
    return query select *
                 from products
                 where products.category = cat_id;
end;
$$;

alter function public.show_prod_cat_plpgsql(integer) owner to postgres;

