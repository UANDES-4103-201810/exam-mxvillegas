function addToOrder(user_id, pizza_id, ad_to_order_button){
    $.ajax({
        type: "POST",
        url: "/order.json",
        data: {
            order:{
                customer_id: customer_id,
                pizza_id: pizza_id
            }
        }
        }

    )
}