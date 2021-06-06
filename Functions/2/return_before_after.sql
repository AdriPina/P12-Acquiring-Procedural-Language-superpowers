create type public.return_before_after as
(
	before integer,
	after integer
);

alter type public.return_before_after owner to postgres;

