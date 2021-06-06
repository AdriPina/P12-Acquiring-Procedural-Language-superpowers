create function public.insert_category3_sql(category integer, categoryname character varying) returns void
	language sql
as $$
insert into categories
values (category, categoryname);
$$;

alter function public.insert_category3_sql(integer, varchar) owner to postgres;

