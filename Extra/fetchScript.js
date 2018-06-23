var url;
var v;
var s;
function fetch(category)
{
	url = "fetch?val="+category+"&v="+v;
	var obj = new XMLHttpRequest();
	obj.onreadystatechange = function(){
		if(this.readyState==4){
			document.getElementById("itemList").innerHTML="";
			//console.log(this.responseText);
			document.getElementById("itemList").innerHTML += this.responseText;
		}
	}
	obj.open("GET",url,true);
	obj.send();
}

function init()
{
    v = 0;
    s= 0;
	url = "initialise?val=Guest";
	var obj = new XMLHttpRequest();
	obj.onreadystatechange = function(){
		if(this.readyState==4){
			console.log(this.responseText);
			//document.getElementById("userWelcome").innerHTML = "Welcome, "+this.responseText;
		}
	}
	obj.open("GET",url,true);
	obj.send();
}

function init1()
{
    v = 0;
    s= 0;
	url = "initialise?val=Guest";
	var obj = new XMLHttpRequest();
	obj.onreadystatechange = function(){
		if(this.readyState==4){
			fetch('Appetisers');
			displayCart();
			//console.log(this.responseText);
			//document.getElementById("userWelcome").innerHTML = "Welcome, "+this.responseText;
		}
	}
	obj.open("GET",url,true);
	obj.send();
}


function cart(id,number)
{
	var count = parseInt(document.getElementsByName('text')[number].value);
	url = "cookie?id="+id+"&count="+count;
	var obj = new XMLHttpRequest();
	obj.onreadystatechange = function(){
		if(this.readyState==4){
			//document.getElementById("itemList").innerHTML = this.responseText;
			//console.log(this.responseText);
			displayCart();

	quickview();
		}
	}
	obj.open("GET",url,true);
	obj.send();
}

function updateCart(id,temp)
{
	/*console.log(number);
	var count = parseInt(document.getElementsByClassName('quantity')[number].value);
	url = "cookie?id="+id+"&count="+count+"&replace="+replace;
	var obj = new XMLHttpRequest();
	obj.onreadystatechange = function(){
		if(this.readyState==4){
			//document.getElementById("itemList").innerHTML = this.responseText;
			//console.log(this.responseText);
			displayCart();
		}
	}
	obj.open("GET",url,true);
	obj.send();*/
	if(temp.previousElementSibling.value > 0){
	document.cookie = id + "="+temp.previousElementSibling.value+";";
	console.log(temp.previousElementSibling.value);
	displayCart();}

	else{window.alert("Quantity cannot be 0. Please use X");
		temp.previousElementSibling.value = 1;
		displayCart();
	}

	quickview();
}

function displayCart()
{
	url = "cart?val=0";
	var obj = new XMLHttpRequest();
	obj.onreadystatechange = function(){
		if(this.readyState==4){
			document.getElementById("cart").innerHTML ="";
			//console.log("Line 54" + this.responseText);
			document.getElementById("cart").innerHTML += this.responseText;
			console.log(this.responseText);
			computeTotal();
		}
	}
	obj.open("GET",url,true);
	obj.send();
}

function computeTotal(){
	var ct=0;
	var list = document.getElementsByClassName('subtotal');
	for(var i=0;i<list.length;i++)
		ct+=parseInt(list[i].innerHTML);

	var tax = (0.18 * ct).toFixed(2);
	ct=ct+parseInt(tax);
	document.getElementById("total").innerHTML = ct+"";
	document.getElementById("taxes").innerHTML = tax+"";

	document.getElementById("totalModal").innerHTML = "Total: "+ct+"";
	document.getElementById("taxModal").innerHTML = "Tax: "+tax+"";
	//console.log(ct);
}

function plusBtn(number){
	var content = document.getElementsByName('text')[number];
	//console.log(content.value);
	var count = parseInt(content.value);
	content.value = count+1;
}

function minusBtn(number){
	var content = document.getElementsByName('text')[number];
	//console.log(content.value);
	var count = parseInt(content.value);
	if(count!=1)
		content.value = count-1;
	else if(count==1)
	{
		window.alert("Quantity cannot be 0. Click X to remove.");
	}
}

function deleteCookie(id){
	document.cookie = id + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
	displayCart();
}
function vnv(){
    if(v == 0){v = 1;}
    else{v = 0;}

    console.log(v);
    console.log(document.getElementById("hideCat").value);

    fetch(document.getElementById("hideCat").value);
}


function collapse(){
	document.getElementById("quickview").innerHTML = "";
}

function quickview(){
	url = "cart?val=1";
	var obj = new XMLHttpRequest();
	obj.onreadystatechange = function(){
		if(this.readyState==4){
			//document.getElementById("cart").innerHTML ="";
			//console.log("Line 54" + this.responseText);
			if(s == 1){
			document.getElementById("quickview").innerHTML = this.responseText;
			}
			else{document.getElementById("quickview").innerHTML = "";
		}
			console.log(this.responseText);
			//computeTotal();
		}
	}
	obj.open("GET",url,true);
	obj.send();
}

function show(){
	if(s == 0){s = 1;}
	else {s = 0;}
}


//Modal Trial

$('document').ready(function() {
  $('#btnTest').click(function() {
    $('#myModal').modal('show');
  });
});

function close(){
	document.getElementById("closeBtn").onclick();
}
