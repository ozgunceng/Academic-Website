
<?php 
ob_start();
session_start();
include 'nedmin/netting/baglan.php';
include 'nedmin/production/fonksiyon.php';
$derslersor=$db->prepare("SELECT * FROM dersler where oop_id=:id");
$derslersor->execute(array(
'id'=>0
));

$derslercek=$derslersor->fetch(PDO::FETCH_ASSOC);
 
$circuitderssor=$db->prepare("SELECT * FROM circuitders order by circuitders_id ASC");
$circuitderssor->execute();




?>






<!DOCTYPE HTML>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Circuit
Theory</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<!-- css -->
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<!-- skin color -->
	<link href="color/default.css" rel="stylesheet">
	<!--[if lt IE 7]>
    <link href="css/font-awesome-ie7.css" type="text/css" rel="stylesheet">
  <![endif]-->

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  	<![endif]-->

	<!-- Favicon -->
	<link rel="shortcut icon" href="img/cu.png">

	<!-- =======================================================
		Theme Name: Maxim
		Theme URL: https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
		Author: BootstrapMade.com
		Author URL: https://bootstrapmade.com
	======================================================= -->

</head>

<body>
	<!-- navbar -->
	<div class="navbar-wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<!-- Responsive navbar -->
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
				</a>
					<h1 class="brand"><p><a href="index.php"><b>    Assoc. Prof. Dr. Zekeriya Tüfekci</b></a></p></h1>
					<!-- navigation -->
					<nav class="pull-right nav-collapse collapse">
						<ul id="menu-main" class="nav">
							<li><a title="team" href="index.php" class="btn">HOME</a></li>
						
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>

	<!-- spacer section -->
	<section class="spacer dark">
		<div class="container">
			<div class="row">
				<div class="span12 aligncenter flyUp">
					<h2 class="pagetitle"> <strong>Circuit
Theory</strong></h2>
				</div>
			</div>
		</div>
	</section>
	<!-- end spacer section -->
	<!-- section: team -->
	<section id="maincontent" class="inner">
		<div class="container">
			<div class="row">
				<div class="span11">
					<h4>Background Information</h4>
					<div class="tabbable">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#one" data-toggle="tab">Course Objectives</a></li>
							<li><a href="#two" data-toggle="tab">Course Book</a></li>
							<li><a href="#three" data-toggle="tab">Assessment</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="one">
								<p>
									<?php echo $derslercek["circuit_details"] ?>

								</p>
							
							</div>
							<div class="tab-pane" id="two">
								<p>
																		<?php echo $derslercek["circuit_book"] ?>

								</p>
							</div>
							<div class="tab-pane" id="three">
								<p>
																		<?php echo $derslercek["circuit_asses"] ?>


								</p>
							</div>
						</div>
					</div>
				</div>
















				

				<div class="span11">
					<h4 class="aligncenter"> <strong> SCHEDULE  </strong></h4>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">WEEK  </th>
       <th scope="col  aligncenter" class="aligncenter">  SUBJECT  </th>
        <th scope="col">  FILE  </th>
    </tr>
  </thead>
  <tbody>
	



<?php
$say=0;

  while($circuitderscek=$circuitderssor->fetch(PDO::FETCH_ASSOC)){ $say++ 



   ?>	<?php 


                          $circuitders_id=$circuitderscek['circuitders_id'];
					$circuitdersfotosor=$db->prepare("SELECT * FROM circuitdersfoto where circuitders_id=:circuitders_id  ");
					$circuitdersfotosor->execute(array(
						'circuitders_id' => $circuitders_id
						));

					$circuitdersfotocek=$circuitdersfotosor->fetch(PDO::FETCH_ASSOC);



?>


    <tr>
      <th scope="row">  <?php echo $say ?> </th>
      <td><h4><?php echo $circuitderscek['circuitders_hafta']; ?></h4></td>
      <td><a href="./<?php echo $circuitdersfotocek['circuitdersfoto_dosyayol']; ?>"><p><?php echo $circuitdersfotocek['circuitders_pdf']; ?></p></a></td>
    </tr>
   <?php }  ?>
   
  </tbody>
</table>
	
		
				</div>
			</div> 



		<!-- end container -->
	</section>











	<footer>
		<div class="container">
			<div class="row">
				<div class="span6 offset3">
					
					<p class="copyright">
					&copy; Associate Professor Doctor Zekeriya Tüfekçi
						<div class="credits">
							<!--
                All the links in the footer should remain intact.
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Maxim
              -->
						</div>
					</p>
				</div>
			</div>
		</div>
		<!-- ./container -->
	</footer>
	<a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bgdark icon-2x"></i></a>
	<!-- jQuery -->
	<script src="js/jquery.js"></script>
	<!-- nav -->
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/jquery.nav.js"></script>
	<!-- localScroll -->
	<script src="js/jquery.localScroll.js"></script>
	<!-- bootstrap -->
	<script src="js/bootstrap.js"></script>
	<!-- prettyPhoto -->
	<script src="js/jquery.prettyPhoto.js"></script>
	<!-- Works scripts -->
	<script src="js/isotope.js"></script>
	<!-- flexslider -->
	<script src="js/jquery.flexslider.js"></script>
	<!-- inview -->
	<script src="js/inview.js"></script>
	<!-- animation -->
	<script src="js/animate.js"></script>
	<!-- twitter -->
	<script src="js/jquery.tweet.js"></script>
	<!-- custom functions -->
	<script src="js/custom.js"></script>
</body>

</html>
