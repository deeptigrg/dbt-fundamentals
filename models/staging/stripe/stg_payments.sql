select  orderid as order_id,
status,
paymentmethod, 
amount/100 as amount
from {{ source('stripe', 'payment') }}