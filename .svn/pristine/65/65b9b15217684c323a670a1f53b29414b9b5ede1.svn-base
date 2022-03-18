const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
const container = document.getElementById('container');
const index = urlParams.get('index');
let orderButton;
console.log(index);


window.addEventListener("load", function(){
//    if (sessionStorage.getItem('array')==null) 
//    {
//        alert("emty");
//    }
//    else{
//        array = JSON.parse(sessionStorage.getItem("array"));//no brackets
//        container.innerHTML +='<div class="card">'
//             +'<div class="content">'
//                 +'<img src="'+array[index].productImage+'" alt="" class="card-img">'
//             +'</div>'
//         +'</div>'
//         +'<div class="card">'
//             +'<div class="content">'
//                 +'<div class="card-title">'+array[index].productName+'</div>'               
//                 +'<div class="card-content">'
//                     +array[index].description
//                 +'</div>'
//                 +'<div class="card-itemCode">'
//                     +'<span>Item Code: </span>'
//                     +'<span>1526440382825</span>'
//                 +'</div>'
//                 +'<div class="card-manuFaturer">'
//                     +'<span>ManuFacturer: </span>'
//                     +'<span>'+array[index].manufacture+'</span>'
//                 +'</div>'
//                 +'<div class="card-category">'
//                     +'<span>Category: </span>'
//                     +'<span>'+array[index].category+'</span>'
//                 +'</div>'
//                 +'<div class="card-unit">'
//                     +'<span>Available units in stock : </span>'
//                     +'<span>'+array[index].unitInStock+'</span>'
//                 +'</div>'
//                 +'<div class="card-price">'+array[index].unitPrice+' USD</div>'
//                 +'<div class="card-button">'
//                        +'<a href="jsp/products-list.jsp">'
//                        +'<button class="detail">'
//                            +'<i class="fas fa-arrow-circle-left"></i>Back'
//                        +'</button>'
//                    +'</a>'
//                        +'<button value="'+index+'" class="order">'
//                            +'<i class="fas fa-shopping-cart"></i>Order Now</button>'
//                 +'</div>'
//             +'</div>'
//         +'</div>';
//        
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