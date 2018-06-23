<div class="row"> 
<img src='Images/${param.vnv}.jpg' class="col-sm-2" alt="Cinque Terre" width="18" height="20">
<div class="col-sm-3" style="font-family: 'Prociono', serif;">${param.name}</div>
<div class="col-sm-4">
	<input class="quantity" type="text" name="quantity" value="${param.count}" style="width:20px">
	<input type='button' class='btn btn-primary btn-xs'
	 value='Update' onclick="updateCart(${param.id},this); quickview();">
</div>
<div class="subtotal col-sm-1">${param.count*param.price}</div>
<div class="col-sm-1">
	<input type="button" name="delete" value="X" class="btn btn-danger btn-xs" style="height: 25px width: 25px;" onclick='deleteCookie(${param.id}); quickview();'>
</div>
</div>
<br>
