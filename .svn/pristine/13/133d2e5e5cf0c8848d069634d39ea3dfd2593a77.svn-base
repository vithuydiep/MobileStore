var removeCartItemButtons = document.getElementsByClassName('btn-remove');
for (var i = 0; i < removeCartItemButtons.length; i++) {
    var button = removeCartItemButtons[i];
    button.addEventListener('click', function (event) {
        var btnClicked = event.target;
        if (this !== event.target) {
            btnClicked.parentElement.parentElement.parentElement.remove();
        }
        btnClicked.parentElement.parentElement.remove();
        updateTotal();
    })

}

var clearCart = document.getElementsByClassName("btn_clear")[0];
clearCart.addEventListener('click', function () {
     var list = document.getElementsByClassName('item');
     do{
        list[0].remove(); 
     }while(list.length>0)
    updateTotal();
})

function updateTotal() {
    var cartItemContainer = document.getElementsByClassName('table_body')[0];
    var cartItems = cartItemContainer.getElementsByClassName('item')
    var total = 0
    for (var i = 0; i < cartItems.length; i++) {
        var cartRow = cartItems[i];
        var price = parseFloat(cartRow.getElementsByClassName('price')[0].innerText);
        total += price;
    }
    document.getElementById('grand_total').innerText = total;
}


