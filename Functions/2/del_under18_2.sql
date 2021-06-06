create function public.del_under18_2() returns return_before_after
	language plpgsql
as $$
declare
    before integer;
    after integer;
begin
    select count(*) into before from customers;
    delete from customers where age<18;
    select count(*) into after from customers;
return (before, after);
end;
$$;

alter function public.del_under18_2() owner to postgres;

