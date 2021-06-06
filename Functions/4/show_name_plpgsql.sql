create function public.show_name_plpgsql(id integer, OUT first character varying, OUT last character varying) returns record
	language plpgsql
as $$
begin
    select firstname, lastname
    into first, last
    from customers
    where customerid = id;
end;
$$;

alter function public.show_name_plpgsql(integer, out varchar, out varchar) owner to postgres;

