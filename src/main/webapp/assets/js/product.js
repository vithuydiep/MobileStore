const submit = document.getElementById('submit');
const productName = document.getElementById('productName');
const unitPrice = document.getElementById('unitPrice');
const unitInStock = document.getElementById('unitInStock');
const description = document.getElementById('description');
const manufacture = document.getElementById('manufacture');
const condition_new = document.getElementById('condition_new');
const condition_old = document.getElementById('condition_old');
const condition_refurbished = document.getElementById('condition_refurbished');
const productImageFile = document.getElementById('productImageFile');
const logout = document.getElementById('logout');
const login = document.querySelector('.login');
const status = document.getElementById('status');

//let obj = {
//    productName: "",
//    unitPrice: 0,
//    unitInStock: 0,
//    description: "",
//    manufacture: "", 
//    category: "",
//    productImage: null
//  };
//
//let array = new Array();


//productImageFile.addEventListener("change", function (){
//
//    let fileReader = new FileReader();
//
//    fileReader.addEventListener("load", function () {
//        obj.productImage = fileReader.result;
//    })
//
//    fileReader.readAsDataURL(this.files[0]);
//});
window.addEventListener('load', function(){
    if(status.value == 'success')
    {
        alert("Add new prodcuct successfully!!!");
    }
    else if(status.value == 'failed')
    {
        alert("Add new prodcuct failed!!!");
    }
});
logout.addEventListener('click', function(){
    window.location = "/MobileStore/logout"; 
});


