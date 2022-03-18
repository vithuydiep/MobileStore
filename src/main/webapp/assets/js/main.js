
const isForm = document.getElementById('form');
let cart;
const re = new RegExp("^([a-z0-9]{5,})$");

function validate(){
	
	const username = document.getElementById('username').value.trim();
	const password = document.getElementById('password').value.trim();
	
	var flag = true;
	if(username.length < 5){
		alert("Username must be more than 5 characters!");
		flag = false;
	}
	else if(!re.test(username)){
		alert("Username must be in correct format!");
		flag = false;
	}
	else if(password.length < 6){
		alert("Password must be more than 6 characters!");
		flag = false;
	}
	return flag;
}

isForm.addEventListener("submit", function(e) {

});


//isForm.addEventListener("submit", function(e){
//    const xhttp = new XMLHttpRequest();
//    xhttp.onreadystatechange = function(e) {
//    if (xhttp.readyState == 4) {
//        if(!xhttp.status == 200)
//        {
//            alert("not saved");
//        } 
//        else
//        {
//            if(xhttp.responseText =="")
//            {
//                small.innerHTML = xhttp.responseText;
//                password.value ="";
//                
//            }
//            else
//            {
//                window.location = "jsp/product.jsp";
//            }
//        }   
//    }
//    e.preventDefault();
//    
//    
//  };
//    xhttp.open("POST", "login");
//    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//    xhttp.send("username="+username.value+"&password="+password.value);
//});



