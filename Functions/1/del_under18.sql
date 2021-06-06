create function public.del_under18() returns SETOF integer
	language sql
as $$
delete from customers where age<18
returning customerid;
$$;

alter function public.del_under18() owner to postgres;

