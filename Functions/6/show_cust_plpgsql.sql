create function public.show_cust_plpgsql(id integer) returns customers
	language plpgsql
as $$
declare
cust customers;
begin
select * into cust from customers
where customerid=id;
return cust;
end;
$$;

alter function public.show_cust_plpgsql(integer) owner to postgres;

