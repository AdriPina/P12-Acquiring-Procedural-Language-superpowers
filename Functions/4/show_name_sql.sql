create function public.show_name_sql(id integer, OUT first character varying, OUT last character varying) returns record
	language sql
as $$
select firstname, lastname
from customers
where customerid = id
$$;

alter function public.show_name_sql(integer, out varchar, out varchar) owner to postgres;

