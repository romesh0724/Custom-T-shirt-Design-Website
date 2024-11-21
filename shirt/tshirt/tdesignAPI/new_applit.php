<link href='https://fonts.googleapis.com/css?family=Nosifer|League+Script|Yellowtail|Permanent+Marker|Codystar|Eater|Molle:400italic|Snowburst+One|Shojumaru|Frijole|Gloria+Hallelujah|Calligraffitti|Tangerine|Monofett|Monoton|Arbutus|Chewy|Playball|Black+Ops+One|Rock+Salt|Pinyon+Script|Orbitron|Sacramento|Sancreek|Kranky|UnifrakturMaguntia|Creepster|Pirata+One|Seaweed+Script|Miltonian|Herr+Von+Muellerhoff|Rye|Jacques+Francois+Shadow|Montserrat+Subrayada|Akronim|Faster+One|Megrim|Cedarville+Cursive|Ewert|Plaster' rel='stylesheet' type='text/css'>

<link href="tdesignAPI/css/api.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<script type="text/javascript" src="tdesignAPI/js/html2canvas.js"></script>

<script src="tdesignAPI/js/jquery.form.js"></script>
<script src="tdesignAPI/js/mainapp.js"></script>
<link rel="stylesheet" href="tdesignAPI/css/jquery-ui.css" />
<link rel="stylesheet" href="tdesignAPI/css/style.css" />
<script src="tdesignAPI/js/jquery-ui.js"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link rel="stylesheet" href="css/style.css">


<script type="text/javascript">
	function changeval() {
		$total = parseInt($("#small").val()) + parseInt($("#medium").val()) + parseInt($("#large").val()) + parseInt($("#xlarge").val()) + parseInt($("#xxlarge").val());
		//alert($total);
		$('.small').val($("#small").val());
		$('.medium').val($("#medium").val());
		$('.large').val($("#large").val());
		$('.xlarge').val($("#xlarge").val());
		$('.xxlarge').val($("#xxlarge").val());
		$('.total').val($total);
	}

	function changeval2() {
		$total = parseInt($("#small2").val()) + parseInt($("#medium2").val()) + parseInt($("#large2").val()) + parseInt($("#xlarge2").val()) + parseInt($("#xxlarge2").val());
		//alert($total);
		$('.small').val($("#small2").val());
		$('.medium').val($("#medium2").val());
		$('.large').val($("#large2").val());
		$('.xlarge').val($("#xlarge2").val());
		$('.xxlarge').val($("#xxlarge2").val());
		$('.total').val($total);
	}

	function b() {
		$('#custom_text').toggleClass('bold_text');
		$("#bold_button").toggleClass('box-shadow', '0 0 10px inset #3c3c3c');
	}

	function i() {
		$('#custom_text').toggleClass('italic_text');
	}
	
	function u() {
		$('#custom_text').toggleClass('underline_text');
	}
	

	function changeFont(_name) {
		$('#custom_text').css("font-family", _name);
	}

	function changeFontSize(_size) {
		$('#custom_text').css("font-size", _size);
	}

	function changeColor(_color) {
		$('#custom_text').css("color", _color);
	}
	
	
	
	
	
	
	
	
	
</script>
<div class="container design_api_container">
	<div class='design_api'>
		<!--=============================================================-->
		<div id="menu">
			<div class="menu_option sel_type">

			</div>
			<div class="menu_option sel_color">
				<i class="fa fa-paint-brush fa-3x"></i>

			</div>
			<div class="menu_option sel_art">
				<i class="fa fa-camera-retro fa-3x"></i>
			</div>
			<div class="menu_option sel_custom_icon">
				<span class="glyphicon glyphicon-open"></span>
			</div>
			<div class="menu_option sel_text">
				<i class="fa fa-font fa-3x"></i>

			</div>
		</div>
		<!--=============================================================-->
		<div id='options'>
			<div class="T_type">
				<div id="radio1" ><img src="tdesignAPI/images/menu_icons/submenu/tee.jpg" width="100%" height="100%" />
				</div>
				<div id="radio2" ><img src="tdesignAPI/images/menu_icons/submenu/collar.jpg" width="100%" height="100%" />
				</div>
				<div id="radio3" ><img src="tdesignAPI/images/menu_icons/submenu/hoodie.jpg" width="100%" height="100%" />
				</div>
			</div>

			<div class="color_pick">
				<div class="color_radio_div" id="red"></div>
				<div class="color_radio_div" id="black"></div>
				<div class="color_radio_div" id="white"></div>
				<div class="color_radio_div" id="navy"></div>
				<div class="color_radio_div" id="green"></div>
				
			
		
			
			
			
			
			
			
				
				
		
			</div>
			<div class="default_samples">

				
<?php
	$dir    = 'tdesignAPI/images/Images';
	$files1 = scandir($dir);
	//$files2 = scandir($dir, 1);
	foreach ($files1 as &$value) {
		if (strpos($value,'.png') !== false) {
    		//echo 'true';
			echo '<div class="sample_icons"><img src="tdesignAPI/images/Images/' .$value. '" width="100%" height="100%" /></div>' ;
		}elseif(strpos($value,'.') === false){
			//echo '<div class="sample_icons"><img src="tdesignAPI/images/folder.png" width="100%" height="100%" />' .$value. '</div>' ;
		}
    		//echo "Value: $value<br />\n";
	}
?>
			</div>
			<div class="custom_icon">
				<form id="form1" runat="server">

					<button class="button"> 
						<input type='file' id="imgInp" />
					</button>

				</form>
			</div>

			<div class="custom_font">

				<select id="fs" onchange="changeFont(this.value);">
					<option value="arial">Arial</option>
					<option value="Nosifer, cursive">Nosifer</option>
					<option value="League Script, cursive">League Script</option>
					<option value="Yellowtail, cursive">Yellowtail</option>
					<option value="Permanent Marker, cursive">Permanent Marker</option>
					<option value="Codystar, cursive">Codystar</option>
					<option value="'Eater', cursive">Eater</option>
					<option value="Molle, cursive">Molle</option>
					<option value="Snowburst One, cursive">Snowburst One</option>
					<option value="Shojumaru, cursive">Shojumaru</option>
					<option value="Frijole, cursive">Frijole</option>
					<option value="Gloria Hallelujah, cursive">Gloria Hallelujah</option>
					<option value="Calligraffitti, cursive">Calligraffitti</option>
					<option value="Tangerine, cursive">Tangerine</option>
					<option value="Monofett, cursive">Monofett</option>
					<option value="Monoton, cursive">Monoton</option>
					<option value="Arbutus, cursive">Arbutus</option>
					<option value="Chewy, cursive">Chewy</option>
					<option value="Playball, cursive">Playball</option>
					<option value="Black Ops One, cursive">Black Ops One</option>
					<option value="'Rock Salt', cursive">Rock Salt</option>
					<option value=" 'Pinyon Script', cursive">Pinyon Script</option>
					<option value="'Orbitron', sans-serif">Orbitron</option>
					<option value="'Sacramento', cursive">acramento</option>
					<option value="'Sancreek', cursive">Sancreek</option>
					<option value="'Kranky', cursive">Kranky</option>
					<option value="'UnifrakturMaguntia', cursive">UnifrakturMaguntia</option>
					<option value="'Creepster', cursive">Creepster</option>
					<option value="'Pirata One', cursive">Pirata One</option>
					<option value=" 'Seaweed Script', cursive">Seaweed Script</option>
					<option value=" 'Miltonian', cursive">Miltonian</option>
					<option value=" 'Herr Von Muellerhoff', cursive">Herr Von Muellerhoff</option>
					<option value=" 'Rye', cursive"> 'Rye'</option>
					<option value=" 'Jacques Francois Shadow', cursive">Jacques Francois Shadow</option>
					<option value=" 'Montserrat Subrayada', sans-serif">Montserrat Subrayada</option>
					<option value=" 'Akronim', cursive">Akronim</option>
					<option value=" 'Faster One', cursive">Faster One</option>
					<option value=" 'Megrim', cursive">Megrim</option>
					<option value=" 'Cedarville Cursive', cursive">Cedarville Cursive</option>
					<option value=" 'Ewert', cursive">Ewert</option>
					<option value="'Plaster', cursive">Plaster</option>
					<option value="verdana">Verdana</option>
					<option value="impact">Impact</option>
					<option value="ms comic sans">MS Comic Sans</option>
				</select>
				
				<div class="color">
				<input type="color" name="favcolor" onChange="changeColor(this.value);" placeholder="Color Name" />
				
				
		
				</div>
				
				
				
				
				
				
				<div class="font_styling">

					<span id="bold_button" onclick="b();"><b>B</b></span>
					<span id="italic_button" onclick="i();"><i>I</i></span>
					
					
					
				
	
					<select id="font_size" onchange="changeFontSize(this.value);">
						<?php
							for($i=10;$i<=140;$i+=2){
						?>
							
							<option value="<?php echo $i; ?>px"><?php echo $i; ?>px</option>
						<?php		
							}
						?>
						

					</select>
				</div>
				<textarea id="custom_text" placeholder="Create Your Custom Text..."></textarea>
				<button type="button" class="btn btn-primary" id="apply_text">
					Apply
				</button>

			</div>
		</div>
		<!--=============================================================-->
		<!--=========================preview start====================================-->

		<div id='preview_t'>
			<div id="preview_front">
				<div class="front_print">

				</div>
			</div>
			<div id="preview_back">
				<div class="back_print">

				</div>
			</div>

		</div>
		<!--=============================================================-->
		<!--======================view start=======================================-->

		<div id='view_mode'>
			<div  class="mode"><img id="o_front" src="tdesignAPI/images/product/tee/black/black_front.png" width="100%" height="80%" />FRONT
			</div>
			<div  class="mode"><img id="o_back" src="tdesignAPI/images/product/tee/black/black_back.png" width="100%" height="80%" />BACK
			</div>
			<div class="mode">
				<i class="fa fa-binoculars fa-4x preview_images" id="preview_images" data-toggle="modal" data-target=".bs-example-modal-lg"></i>Preview
			</div>
		</div>
		<!--=====================View Ends========================================-->
		<div id="overview">
			<div class="">

				<table class="table">
					<tr>
						<th>Size</th>
						<th>Quantity</th>
					</tr>
					<tr>
						<td><b>S</b></td>
						<td>
						<input id="small"  onchange="changeval()" name="small" type="number" value="1" class="form-control small input-md" min=0 max=99999 />
						</td>
					</tr>
					<tr>
						<td><b>M</b></td>
						<td>
						<input id="medium"  onchange="changeval()" name="medium" type="number" value="0" class="form-control medium input-md" min=0 max=99999 />
						</td>
					</tr>
					<tr>
						<td><b>L</b></td>
						<td>
						<input id="large" onchange="changeval()"  name="large" type="number" value="0" class="form-control large input-md" min=0 max=99999 />
						</td>
					</tr>
					<tr>
						<td><b>XL</b></td>
						<td>
						<input id="xlarge"  onchange="changeval()" name="xlarge" type="number" value="0" class="form-control xlarge input-md" min=0 max=99999 />
						</td>
					</tr>
					<tr>
						<td><b>XXL</b></td>
						<td>
						<input id="xxlarge" onchange="changeval()"  name="xxlarge" type="number" value="0" class="form-control xxlarge input-md" min=0 max=99999 />
						</td>
					</tr>
					<tr>
						<td><b>Total</b></td>
						<td>
						<input id="total" name="total" type="number" value="1" class="form-control total input-md" disabled min=1 max=99999 />
						</td>
					</tr>

				</table>

				<button type="button" class="btn btn-primary btn-block preview_images"  data-toggle="modal" data-target=".bs-example-modal-lg">
					Show Case
				</button>
			</div>
		</div>
	</div>

	

					<form method="POST" enctype="multipart/form-data" id="imageFileForm" action="http://localhost/shirt/form%20for%20custom%20design/">
					<input type="hidden" name="img_front" id="img_front" value="" />
					<input type="hidden" name="img_back" id="img_back" value="" />
					
					</form>
					<div class="row">
						<form method="POST" enctype="multipart/form-data" id="imageFileForm" action="checkout/checkout.php">
							
							

							<div class="col-md-6">
								<center>
									<table class="table">

									
								</center>
								</table>
							</div>
							
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>

	<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
	<div class="modal-content">
	<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	<h1 class="modal-title"><center>Step 1 - Take a Screenshot of Your Design</center> </h1>
	</div>
	<div class="modal-body">

	<div id="image_reply">
	</div>
	</div>
	<div class="modal-footer">
	
	<button type="button" class="btn btn-default" data-dismiss="modal"><h3>Close</h3></button>
	<form method="POST" enctype="multipart/form-data" id="imageFileForm" action="http://localhost/shirt/admin_area/create.php">
	<input type="hidden" name="img_front" id="img_front" value="" />
	<input type="hidden" name="img_back" id="img_back" value="" />
	<button type="submit" class="btn btn-primary"><h3> Step 2 - Proceed </h3></button>
	</form>
	</div>
	</div>
	</div>
	</div>
	-->

	<!--			
	</div>
	</div>
	</div> -->

</div>
<script>
	//$('input[type=file]').bootstrapFileInput();
	//$('.file-inputs').bootstrapFileInput();
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				image_icon(e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}


	$("#imgInp").change(function() {
		readURL(this);
	});

</script>

<script src="../js/admin_script.js"></script>
   
</body>
</html>


<footer class="footer">

   <section class="grid">

      <div class="box">
         <h3>quick links</h3>
         <a href="http://localhost/shirt/"> <i class="fas fa-angle-right"></i> home</a>
         <a href="http://localhost/brandwell%20t%20shirts/about.php"> <i class="fas fa-angle-right"></i> about</a>
         <a href="http://localhost/brandwell%20t%20shirts/shop.php"> <i class="fas fa-angle-right"></i> shop</a>
         <a href="http://localhost/brandwell%20t%20shirts/contact.php"> <i class="fas fa-angle-right"></i> contact</a>
      </div>
      <div class="box">
         <h3>extra links</h3>
         <a href="http://localhost/brandwell%20t%20shirts/user_login.php"> <i class="fas fa-angle-right"></i> login</a>
         <a href="http://localhost/brandwell%20t%20shirts/user_register.php"> <i class="fas fa-angle-right"></i> register</a>
         <a href="http://localhost/brandwell%20t%20shirts/cart.php"> <i class="fas fa-angle-right"></i> cart</a>
         <a href="http://localhost/brandwell%20t%20shirts/orders.php"> <i class="fas fa-angle-right"></i> orders</a>
      </div>
      <div class="box">
         <h3>follow us</h3>
         <a href="#"><i class="fab fa-facebook-f"></i>facebook</a>
         <a href="#"><i class="fab fa-twitter"></i>twitter</a>
         <a href="#"><i class="fab fa-instagram"></i>instagram</a>
         <a href="#"><i class="fab fa-linkedin"></i>linkedin</a>
      </div>
	   <div class="box">
         <h3>contact us</h3>
         <a href="tel:0770617372"><i class="fas fa-phone"></i>0770617372</a>
         <a href="tel:0112239200"><i class="fas fa-phone"></i>0112239200</a>
         <a href="mailto:info@brandwell.ie"><i class="fas fa-envelope"></i>info@brandwell.ie</a>
         <a href="https://goo.gl/maps/55rbfT239PZGtiM19"><i class="fas fa-map-marker-alt"></i>412B Nawala Rd, Sri Jayawardenepura Kotte</a>
      </div>
	  
	 
   </section>

   <div class="credit">&copy; copyright @ <?= date('Y'); ?> by <span>Brandwell</span> | all rights reserved!</div>

</footer>