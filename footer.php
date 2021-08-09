

<?php


$anasayfasor=$db->prepare("SELECT * FROM anasayfa where ana_id=:id");
$anasayfasor->execute(array(
'id'=>0
));

$anasayfacek=$anasayfasor->fetch(PDO::FETCH_ASSOC);

 


 ?>





		<section id="contact" class="section ">
		<div class="container aligncenter">
			<h4>CONTACT</h4>

		
	

			<div class="blankdivider30">
			</div>
			<div class="row">
				<div class="span12">
						<div class="span11 offset1">
					<div class="alignleft">
				<?php echo $anasayfacek['ana_contact']; ?>

					</div>
				</div>
	



				</div>
				<!-- ./span12 -->
			</div>
		</div>
	</section>




	<footer>
		<div class="container">
			<div class="row">
				<div class="span6 offset3">
					
					<p class="copyright">
						&copy; Associate Professor Doctor Zekeriya Tüfekçi designed and developed by Özgün Gizlenci
						<div class="credits">
					<div>
						

						
					</div>


						</div>
					</p>
				</div>
			</div>
		</div>
		<!-- ./container -->
	</footer>
	<a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bgdark icon-2x"></i></a>
	<script src="js/jquery.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/jquery.nav.js"></script>
	<script src="js/jquery.localScroll.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/isotope.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/inview.js"></script>
	<script src="js/animate.js"></script>
	<script src="js/custom.js"></script>
	<script src="contactform/contactform.js"></script>

 </body>
</html>
