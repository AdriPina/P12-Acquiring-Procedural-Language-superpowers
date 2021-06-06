create function public.show_prod_cat2_plpgsql(cat_id integer) returns TABLE(prod_id integer, category integer, title character varying, actor character varying, price numeric, special smallint, common_prod_id integer)
	language plpgsql
as $$
begin
    return query select *
                 from products
                 where products.category = cat_id;
end;
$$;

alter function public.show_prod_cat2_plpgsql(integer) owner to postgres;

