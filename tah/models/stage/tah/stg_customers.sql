with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from tah.customers

)
select * from customers