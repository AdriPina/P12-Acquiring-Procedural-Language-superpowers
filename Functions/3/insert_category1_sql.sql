create function public.insert_category1_sql(pcategory integer, pname character varying) returns void
	language sql
as $$
insert into categories
values (pcategory, pname)
$$;

alter function public.insert_category1_sql(integer, varchar) owner to postgres;

