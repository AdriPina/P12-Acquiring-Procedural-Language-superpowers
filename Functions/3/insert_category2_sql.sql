create function public.insert_category2_sql(integer, character varying) returns void
	language sql
as $$
insert into categories
values ($1, $2);
$$;

alter function public.insert_category2_sql(integer, varchar) owner to postgres;

