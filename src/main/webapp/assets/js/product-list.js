const product = document.getElementById('product');
const container = document.getElementById('container');
let orderButton;
const viewCart = document.getElementById('viewCart');

let array;
let cart;

viewCart.addEventListener('click', function(){
    window.location = "jsp/cart.jsp"; 
});


window.addEventListener("load", function(){
//    if (sessionStorage.getItem('array')==null) 
//    {
//        alert("emty");
//    }
//    else{
//        array = JSON.parse(sessionStorage.getItem("array"));//no brackets
//        var i;
//        for (i = 0; i < array.length; i++) {
//             container.innerHTML +='<div class="card">'
//                +'<div class="content">'
//                    +'<div class="card-title">'+array[i].productName+'</div>'
//                    +'<img src="'+array[i].productImage+'" alt="" class="card-img">'
//                    +'<div class="card-content">'
//                        +array[i].description
//                    +'</div>'
//                    +'<div class="card-price">'+array[i].unitPrice+' USD</div>'
//                    +'<div class="card-unit">'+array[i].unitInStock+' units in stock</div>'
//                    +'<div class="card-button">'
//                    +'<a href="jsp/product-detail.jsp?index='+i+'">'
//                        +'<button class="detail">'
//                            +'<i class="fas fa-exclamation-circle"></i></i>Details'
//                        +'</button>'
//                    +'</a>'
//                        +'<button value="'+i+'" class="order">'
//                            +'<i class="fas fa-shopping-cart"></i>Order Now</button>'
//                +'</div>'
//            +'</div>';
//        }
//    }
    orderButton = document.querySelectorAll('.container .card .card-button .order');

    orderButton.forEach(element => {
        element.addEventListener('click', function(){
            if(sessionStorage.getItem("cart") !== 'undefined')
            {
                cart = JSON.parse(sessionStorage.getItem("cart"));
            }
            else
            {
                cart = new Array();
            }
            cart.push(array[this.value]);
            sessionStorage.setItem("cart", JSON.stringify(cart));
                
            alert("Order Successfully. Count item of cart: "+ cart.length);
        });
    });
});
