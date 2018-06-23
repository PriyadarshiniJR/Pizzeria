<div class="row" class="itemEntity" style="padding-left: 30px">
<input type="hidden" name="hideCategory" value="${param.category}" id="hideCat">
<div class="col-sm-2">
<img src='${param.image}' class="img-rounded" alt="Cinque Terre" width="100" height="100">
</div>
<div class="col-sm-5">
<div class='heading' style="font-family: 'Chewy', cursive; font-size: 30px;">${param.name}</div>
<br>
<div class='content' style="font-family: 'Simonetta', cursive; font-size: 20px;">${param.content}</div>
</div>

<div class='col-sm-2 price'>&#8377; ${param.price}</div>
<div class='col-sm-3'>
<!--<input type='button' class='col-sm-3 minusBtn' value='-' onclick='minusBtn(${param.index})'>-->
<button class="col-sm-3 col-sm-offset-1 minusBtn btn btn-circle" onclick='minusBtn(${param.index})' style="left: 25px;"><i class="fa fa-minus" aria-hidden="true"></i></button>

<input type='text' class='col-sm-3' value='1' name='text' style="left: 35px;">
<!--<input type='button' class='col-sm-3 plusBtn' value='+' onclick='plusBtn(${param.index})'>-->
<button class="col-sm-3 plusBtn btn btn-circle" onclick='plusBtn(${param.index})' style="left: 40px;"><i class="fa fa-plus" aria-hidden="true"></i></button>
<br><br>
<!--<input type='button' class='col-sm-offset-2 col-sm-6 btn btn-info' value='Add To Cart' 
onclick="cart(${param.id},${param.index})">-->

<button class='col-sm-offset-2 col-sm-6 btn btn-info' onclick="cart(${param.id},${param.index})" style="width: 80%;"><i class="fa fa-cart-plus" aria-hidden="true" style="margin-right: 5px;"></i>Add to cart</button>
</div>
</div>
<br>
