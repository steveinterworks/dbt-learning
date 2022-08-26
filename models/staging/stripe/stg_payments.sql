

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod,
        status as payment_status,
        amount/100 as amount,
        created as payment_date

    from {{source('stripe', 'payment')}}

