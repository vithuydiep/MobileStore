const continueButton = document.getElementById('continue');
const clear = document.getElementById('clear');
const checkout = document.getElementById('checkout');
let remove;
const items = document.querySelector('.items');
let oldBody = document.getElementsByTagName('tbody')[0];
const oldTable = document.getElementsByTagName('table')[0];
let total = document.getElementById('total');

let cart =  JSON.parse(sessionStorage.getItem("cart"));
let sum=0;

continueButton.addEventListener('click', function(){
    window.location = 'jsp/products-list.jsp';
});

clear.addEventListener('click', function(){
    cart.length =0;
    sessionStorage.setItem("cart", JSON.stringify(cart));
    total.innerHTML = '0';
    let new_body = document.createElement('tbody');
    oldBody.parentNode.replaceChild(new_body, oldBody);
});

window.addEventListener('load', function(){
    oldBody = document.createElement('tbody');
    oldTable.appendChild(oldBody);
    let index;
    for (index = 0; index < cart.length; index++) 
    {
        let element = cart[index];
        oldBody.innerHTML +=    '<tr>'
                                +'<td>'+element.productName+'</td>'
                                +'<td></td>'
                                +'<td>1</td>'
                                +'<td>'+element.unitPrice+'</td>'
                                +'<td>'+element.unitPrice+'</td>'
                                +'<td>'
                                    +'<button value="'+index+'" type="button">'
                                        +'<i class="fas fa-exclamation-circle"></i>Remove</button>'
                                +'</td>'
                            +'</tr>';
        sum+= parseInt(element.unitPrice);
    }

    total.innerHTML = sum;
    remove = document.querySelectorAll('.container .table table tr td button');
    remove.forEach((element) => {
        element.addEventListener('click', function(){
            sum -= parseInt(cart[this.value].unitPrice);
            cart.splice(this.value,1);
            sessionStorage.setItem("cart", JSON.stringify(cart));
            total.innerHTML = sum;
            oldBody = document.getElementsByTagName('tbody')[0];
            oldBody.removeChild(oldBody.childNodes[this.value]);
        });
    });
});