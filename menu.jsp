<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		.black-background {background-color:#000000;}
    body{
      /*background: url("Images/bg.jpg") no-repeat;
      background-size: cover;*/
      
    }
    .top-nav{
      background: url("Images/banner.jpg");
    }
	</style>

	<title>Pizzeria - Online order</title>
	
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="Extra/custom.css">
  <link rel="stylesheet" href="Extra/switch.css">

  <script type="text/javascript" src="Extra/jquery-3.1.1.min.js"></script>
  <script type="text/javascript" src="Extra/fetchScript.js"></script>

  <link href="https://fonts.googleapis.com/css?family=Belleza|Chewy|Permanent+Marker|Simonetta" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lemon|Poiret+One" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Wendy+One" rel="stylesheet">

  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

  <link href="https://fonts.googleapis.com/css?family=Fredoka+One|Prociono" rel="stylesheet">

</head>

<body onload="init1()">
<!--Navbar-->
	<nav class="navbar navbar-default top-nav" role="navigation">
		<div class="navbar-header col-md-12">
<!--			<img src="Images\pizza_logo.jpg" class="logo">     -->
			<div class="navbar-brand col-md-4" id="brand">Pizzeria</div>
      <button type="button" id="btnTest" class="pull-right btn btn-secondary" data-toggle="modal" data-target="#exampleModal" style="background-color: white;margin-top: 15px;font-family: 'Fredoka One', cursive; font-size: 20px;">Checkout</button>

		</div>
	</nav>
<!--Displaying the Items Using Ajax-->

  <div class="row navbar navbar-default" style="margin-left: 15px;">
    <div class="col-sm-2" style="font-size: 20px; margin-top:10px;font-family: 'Belleza', sans-serif; color: black !important;">
      <div style="{height: 50%;}">
      <span style="{font-family: 'Lemon', cursive; font-size: 3px;}">Veg</span>
      <label class="switch" style="height: 10px;">
      <input type="checkbox" onclick="vnv()" style="height: 10px;">
      <span class="slider round"></span>
      </label>
      <span style="{font-family: 'Lemon', cursive; font-size: 3px;}">Non-Veg</span>
    </div>
  </div>

  <div class="col-sm-10">
    <divstyle="color: black !important;">
      <ul class="nav navbar-nav nav-mega" style="font-size: 20px; width: 100%; font-family: 'Belleza', sans-serif; color: black !important;">
        <li><a href="javascript:;" onclick="fetch('Appetisers')" style="color: black;">Appetisers</a></li>
        <li><a href="javascript:;" onclick="fetch('Beverages')" style="color: black;">Beverages</a></li>
        <li><a href="javascript:;" onclick="fetch('Conizza')" style="color: black;">Conizza</a></li>
        <li><a href="javascript:;" onclick="fetch('Deserts')" style="color: black;">Deserts</a></li>
        <li><a href="javascript:;" onclick="fetch('Pizza_Exotic')" style="color: black;">Pizza Exotic</a></li>
        <li><a href="javascript:;" onclick="fetch('Pizza_Classic')" style="color: black;">Pizza Classic</a></li>
        <!-- <li><a href="javascript:;" onclick="fetch('Pizza_Flavors_of_India')">Pizza Flavors of India</a></li>
        <li><a href="javascript:;" onclick="fetch('Pizza_Supreme')">Pizza Supreme</a></li>-->
        <li><a href="javascript:;" onclick="fetch('Salads_and_Pastas')" style="color: black;">Salads &and; Pastas</a></li>
        <li><a href="javascript:;" onclick="fetch('Sandwizza')" style="color: black;">Sandwizza</a></li>  
        <li><div>
        <button class="btn navbar-btn black-background" type="button" onclick="quickview(); show();" style="color: white; font-size: 20px; font-family: 'Poiret One', cursive;">Quickview</button>
        </div>
      </li>  

      </ul>
    </div>

    </div>
  </div>

  <div>
    <div class="col-sm-8">
      <div id="quickview"></div>
      <div id="itemList"></div>
    </div>

  <div class="col-sm-4" style="padding-left: 70px;padding-right: 30px;">
  <h4 class="text-center" style="font-family: 'Permanent Marker', cursive; font-size: 45px;">Hot Deals</h4>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin: 0 auto">
  <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="Images/flyer1.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="Images/flyer2.jpg" alt="Chicago" style="width:100%;">
      </div>

      <div class="item">
        <img src="Images/flyer3.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

  <hr>

  <div style="{height: 50%;}">
    <h4 style="font-family: 'Fredoka One', cursive; font-size: 25px;">Your Cart</h4>
    <hr>
    <div id="cart"></div>
    <div class="row col-sm-12">
    <h5>Taxes:<span id="taxes">0</span></h5>
    <h5>TOTAL:<span id="total">0</span></h5>
    </div>
  </div>
</div>



  </div><!--Side Panel End-->




<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="width: 360px;height: 400px ;!important">
  <div class="modal-content">
  <div class="modal-header">
  <h3 style="text-align: center;font-family: 'Wendy One', sans-serif;font-size: 2em;color:red" class="modal-title" id="exampleModalLabel">Your Bill</h3>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
  <span aria-hidden="true">&times;</span>
  </button>
  </div>
  <div class="modal-body">
    <div id="cartModal"></div>
    <div id="taxModal" class="text-center" style="font-size: 2em;font-family: 'Wendy One', sans-serif;"></div>
    <div id="totalModal" class="text-center" style="font-size: 2em; font-family: 'Wendy One', sans-serif;"></div>
  </div>
  <div class="modal-footer">
  <button type="button" class="btn btn-secondary" id="closeBtn" data-dismiss="modal">Close</button>
  </div>
  </div>
  </div>
  </div>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js">
</script>
</body>
</html>
