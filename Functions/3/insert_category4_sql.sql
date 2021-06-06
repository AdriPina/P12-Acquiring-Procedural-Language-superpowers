create function public.insert_category4_sql(pcategory categories) returns void
	language sql
as $$
insert into categories
values (pcategory.category, pcategory.categoryname);
$$;

alter function public.insert_category4_sql(categories) owner to postgres;

