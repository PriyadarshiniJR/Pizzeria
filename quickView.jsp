<div class="row col-sm-12">
<div class="col-sm-3">
		<img src='${param.img}' class="img-rounded" alt="Cinque Terre" width="75" height="75">
</div>
<div class="col-sm-6 cartHeading text-center" style="font-family: 'Chewy', cursive; font-size: 20px;">${param.name}</div>
<div class="col-sm-3">
	<input class="quantity" type="text" name="quantity" value="${param.count}" style="width:20px">
	<input type='button' class='btn btn-primary btn-xs'
	 value='Update' onclick="updateCart(${param.id},this); quickview();">
	 <input type="button" name="delete" value="X" class="btn btn-danger btn-xs" style="height: 25px width: 25px;" onclick='deleteCookie(${param.id}); quickview();'>
</div>
</div>
<br>
<hr>
