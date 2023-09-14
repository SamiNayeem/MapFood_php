<?php

require_once "dbconnect.php";


 $id = $_GET['id'];
//  echo $id;

$getMenu = "SELECT item_name, description, price FROM menu WHERE restaurant = $id";



$result = mysqli_query($conn, $getMenu);
// foreach($result as $row){
//     echo $row['item_name'] . " " . $row['description'] . " " . $row['price'] . "<br>";
// }

//print the name of the restaurant
$getRestaurantName = "SELECT name FROM restaurants WHERE id = $id";
$result2 = mysqli_query($conn, $getRestaurantName);
foreach($result2 as $row){
    $name = $row['name'];
}




?>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Map Food</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/style.css" rel="stylesheet" />
        <!-- <link href="css/style2.css" rel="stylesheet" /> -->
        <link href="css/bookingStyle.css" rel="stylesheet" />
        <link href="css/table.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">Map Food</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#projects">Our Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="#signup">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="logout.php">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
      
        <!-- Meneu Section-->

      

        <section id="menu">

        <div id="menuDiv">
        <div class="container mt-5 px-2">
    
    <div class="mb-2 d-flex justify-content-between align-items-center">
        
        
        <h1>Welcome to <?php echo" $name "?></h1>
        
        
    </div>
    <div class="table-responsive" id=#menuTable>
    <!-- <table class="table table-responsive table-borderless" id="cart">
        
      <thead>
        <tr class="bg-light">

          <th scope="col" width="10%">Item</th>
          <th scope="col" width="10%">Description</th>
          <th scope="col" width="5%">Price</th>
          <th scope="col" width="5%">Quantity</th>
          
          
      </thead>
  <tbody>

    <form >
    <?php
 

    // foreach ($result as $row) {
    //     echo "<tr>";
    //     $item_name = $row['item_name'];
    //     $price = $row['price'];

    //     echo "<td>" . $item_name . "</td>";
    //     echo "<td>" . $row['description'] . "</td>";
    //     echo "<td class='price'>" . $price . "</td>";
    //     echo "<td><input type='number' class='quantity' name='quantity' min='0' max='100'></td>";
    //     echo "</tr>";
    
    // }

    ?>
    <tr>
        <td colspan="4" align="center"><input type="submit" name="addCart" class="btn btn-primary" value="Go to Cart"></td>
    </tr>
    
    
    </form>
    


    

    
  </tbody>
</table> -->


<table class="table table-responsive table-borderless">

    <thead>
        <tr class="bg-light">

          <th scope="col" width="10%">Item</th>
          <th scope="col" width="10%">Description</th>
          <th scope="col" width="5%">Price</th>
          <th scope="col" width="5%">Quantity</th>
          
          
      </thead>


    <tbody id="cart">

        <form action="checkout.php" method="post">
            <?php

    
            foreach ($result as $row) {
                echo "<tr>";
                $item_name = $row['item_name'];
                $price = $row['price'];

                echo "<td>" . $item_name . "</td>";
                echo "<td>" . $row['description'] . "</td>";
                echo "<td class='price'>" . $price . "</td>";
                echo "<td><input type='number' class='quantity' name='quantity' min='0' max='100' value='0' ></td>";
                echo "</tr>";
            }
            ?>
            </tbody>
            <tr>
                <td colspan="4" align='center'><input type="submit" value="Checkout" class='btn btn-primary'></td>
            </tr>
            
            </table>
        </form>

    
<p>Delivery Charge: BDT 60</p>
<p>Total: BDT <span id="total">0.00</span></p>
  
  </div>
    
</div>

        </div>
        
        </section>
        















        <!-- <section class="restaurant-selection" id="restaurantSelection">
            <form action="dashboard.php" method="post">
                <table>
                    <tr>
                        <th>Current Station</th> <th>Order Station</th>
                    </tr>
                    <tr>
                        <td>
                        <select name="currentStation" id="currentStation">
                            <option value="Cumilla" name="cumilla">Cumilla</option>
                            <option value="Bramhanbaria" name="bramhanbaria">Bramhanbaria</option>
                            <option value="Feni" name="feni">Feni</option>
                        </select>
                        </td>
                        <td>
                        <select name="orderStation" id="orderStation">
                            <option value="Cumilla" name="cumilla">Cumilla</option>
                            <option value="Bramhanbaria" name="bramhanbaria">Bramhanbaria</option>
                            <option value="Feni" name="feni">Feni</option>
                        </select>
                        </td>
                        
                    </tr>
                </table>
            </form> -->
        <!-- </section> -->
        <!-- Signup-->
        <section class="signup-section" id="signup">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5">
                    <div class="col-md-10 col-lg-8 mx-auto text-center">
                        <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
                        <h2 class="text-white mb-5">Subscribe to receive updates!</h2>
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <form class="form-signup" id="contactForm" data-sb-form-api-token="API_TOKEN">
                            <!-- Email address input-->
                            <div class="row input-group-newsletter">
                                <div class="col"><input class="form-control" id="emailAddress" type="email" placeholder="Enter email address..." aria-label="Enter email address..." data-sb-validations="required,email" /></div>
                                <div class="col-auto"><button class="btn btn-primary disabled" id="submitButton" type="submit">Notify Me!</button></div>
                            </div>
                            <div class="invalid-feedback mt-2" data-sb-feedback="emailAddress:required">An email is required.</div>
                            <div class="invalid-feedback mt-2" data-sb-feedback="emailAddress:email">Email is not valid.</div>
                            <!-- Submit success message-->
                            <!---->
                            <!-- This is what your users will see when the form-->
                            <!-- has successfully submitted-->
                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3 mt-2 text-white">
                                    <div class="fw-bolder">Form submission successful!</div>
                                    To activate this form, sign up at
                                    <br />
                                    <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                </div>
                            </div>
                            <!-- Submit error message-->
                            <!---->
                            <!-- This is what your users will see when there is-->
                            <!-- an error submitting the form-->
                            <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3 mt-2">Error sending message!</div></div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Contact-->
        <section class="contact-section bg-black">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Address</h4>
                                <hr class="my-4 mx-auto" />
                                <div class="small text-black-50">Dhaka, Bangladesh</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-envelope text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Email</h4>
                                <hr class="my-4 mx-auto" />
                                <div class="small text-black-50"><a href="#!">error.sage@gmail.com</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-mobile-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Phone</h4>
                                <hr class="my-4 mx-auto" />
                                <div class="small text-black-50">+880 1602441585</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social d-flex justify-content-center">
                    <a class="mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                    <a class="mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                    <a class="mx-2" href="#!"><i class="fab fa-github"></i></a>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer bg-black small text-center text-white-50"><div class="container px-4 px-lg-5">Copyright &copy; ErrorSage</div> <div class="container px-4 px-lg-5"><img src="images/ErrorSage/ERROR SAGE Logo [Color].png" alt="" width=150px></div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script src="js/totalAmount.js"></script>
    </body>
</html>
