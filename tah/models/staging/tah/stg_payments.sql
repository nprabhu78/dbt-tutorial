with payments as (
    
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status, 
        amount / 100 as amount,   --  converting amount from cents to $
        created as created_at
    from {{ source('tah' , 'payment') }}
)
select * from payments