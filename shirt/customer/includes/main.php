</head>
<body>

  <header class="page-header">
    <!-- topline -->
    <div class="page-header__topline">
      <div class="container clearfix">

        <div class="currency">
          <a class="currency__change" href="my_account.php?my_orders">
          <?php
          if(!isset($_SESSION['customer_email'])){
          echo "Welcome :Guest"; 
         } 
          else
          { 
              echo "Welcome : " . $_SESSION['customer_email'] . "";
            }
?>
          </a>
        </div>

        <div class="basket">
          <a href="../cart.php" class="btn btn--basket">
            <i class="icon-basket"></i>
            <?php items(); ?> items
          </a>
        </div>
        
        
        <ul class="login">

          <li class="login__item">
          <?php
          if(!isset($_SESSION['customer_email'])){
            echo '<a href="../customer_register.php" class="login__link">Register</a>';
          } 
            else
            { 
                echo '<a href="my_account.php?my_orders" class="login__link">My Account</a>';
            }   
?>  
          </li>


          <li class="login__item">
          <?php
          if(!isset($_SESSION['customer_email'])){
            echo '<a href="../checkout.php" class="login__link">Sign In</a>';
          } 
            else
            { 
                echo '<a href="../logout.php" class="login__link">Log out</a>';
            }   
?>  
            
          </li>
        </ul>
      
      
      </div>
    </div>
    <!-- bottomline -->
    <div class="page-header__bottomline">
      <div class="container clearfix">

        <div class="logo">
          <a class="logo__link" href="http://localhost/shirt/">
            <img class="logo__img" src="images/logo.png" alt="Brandwell" width="210" height="150">
          </a>
        </div>

        <nav class="main-nav">
          <ul class="categories">

            <li class="categories__item">
              <a class="categories__link" href="http://localhost/shirt/">
                Home
               
              </a>
              </li>

            <li class="categories__item">
              <a class="categories__link" href="http://localhost/shirt/about.php">
                About
              </a>
            </li>
			
			 <li class="categories__item">
              <a class="categories__link" href="http://localhost/shirt/shop.php">
                Shop Now
              </a>
            </li>
			
          <li class="categories__item">
              <a class="categories__link" href="customer/my_account.php?my_orders">
                Custom Design
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__half">
                    <div class="dropdown__heading">Custom Design</div>
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a href="http://localhost/shirt/tshirt/index.php" class="dropdown__link">Design Lab</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="https://threejs-t-shirt.vercel.app" class="dropdown__link">3D Design</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="http://localhost/shirt/admin_area/create.php" class="dropdown__link">Submit 3D Design</a>
                      </li>
                    </ul>
                  </div>
              </div>
            </li>
            
		
            <li class="categories__item">
              <a class="categories__link" href="http://localhost/shirt/contact.php">
                Contact Us
              </a>
            </li>

          <li class="categories__item">
              <a class="categories__link" href="customer/my_account.php?my_orders">
                My Account
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__half">
                    <div class="dropdown__heading">Account Settings</div>
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a href="http://localhost/shirt/customer/my_account.php?my_wishlist" class="dropdown__link">My Wishlist</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="http://localhost/shirt/customer/my_account.php?my_orders" class="dropdown__link">My Orders</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="http://localhost/shirt/cart.php" class="dropdown__link">View Shopping Cart</a>
                      </li>
                    </ul>
                  </div>
                  <div class="dropdown__half">
                    <div class="dropdown__heading"></div>
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a href="http://localhost/shirt/customer/my_account.php?edit_account" class="dropdown__link">Edit Your Account</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="http://localhost/shirt/customer/my_account.php?change_pass" class="dropdown__link">Change Password</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="http://localhost/shirt/customer/my_account.php?delete_accounts" class="dropdown__link">Delete Account</a>
                      </li>
                    </ul>
                  </div>
                </div>
             

              </div>

            </li>

          </ul>
        </nav>
      </div>
    </div>
  </header>