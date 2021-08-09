<?php include 'header.php' ;


$anasayfasor=$db->prepare("SELECT * FROM anasayfa where ana_id=:id");
$anasayfasor->execute(array(
'id'=>0
));

$anasayfacek=$anasayfasor->fetch(PDO::FETCH_ASSOC);

 
$makalesor=$db->prepare("SELECT * FROM makale order by makale_id ASC");
$makalesor->execute();

$makale2sor=$db->prepare("SELECT * FROM makale2 order by makale2_id ASC");
$makale2sor->execute();


 ?>
	
	<!-- spacer section -->
	<section class="spacer dark">
		<div class="container">
			<div class="row">
				<div class="span12 aligncenter flyLeft">
					<h1 class=" aligncenter textwhite"><b><i class="fas fa-exclamation-triangle fa-3x"></i> <br><br> <br> <?php echo $anasayfacek['ana_duyuru']; ?> </b></h1><br>
				

				</div>
			
			</div>
		</div>
	</section>
	<!-- end spacer section -->



<!-- section: blog -->
	<section id="blog" class="section">
		<div class="container">
			<h4>LECTURES</h4>

			<div class="blankdivider30"></div>
			<!-- Three columns -->
			<div class="row">
				<div class="span3">
					<div class="home-post">
						<div class="post-image ">
					<a href="oop.php">		<img class="max-img" src="img/blog/oop.png" alt="" /> </a>
						</div>
					
			
			


						<div class="entry-content aligncenter">
							<h5><strong><a href="oop.php">Object  Oriented  Progamming</a></strong></h5>
																<div class="blankdivider30"></div>

						</div>
					</div>
				</div>
				<div class="span3">
					<div class="home-post">
						<div class="post-image">
						<a href="numeric.php">	<img class="max-img" src="img/blog/numeric.jpg" alt="" /></a>
						</div>
					
						<div class="entry-content aligncenter">
							<h5><strong><a href="numeric.php">Numerical <br> Analysis</a></strong> </h5>
										<div class="blankdivider30"></div>

						</div>

					</div>
				</div>
				<div class="span3">
					<div class="home-post">
						<div class="post-image">
					<a href="paralel.php">		<img class="max-img" src="img/blog/para.jpg" alt="" /></a>
						</div>
						
						<div class="entry-content aligncenter">
							<h5><strong><a href="paralel.php">Parallel Programming</a></strong></h5>
										<div class="blankdivider30"></div>

						</div>
					</div>
				</div>
				<div class="span3">
					<div class="home-post">
						<div class="post-image">
					<a href="circuit.php">		<img class="max-img" src="img/blog/cr.jpg" alt="" /></a>
						</div>
					
						<div class="entry-content aligncenter">
							<h5><strong><a href="circuit.php">Circuit <br> Theory</a></strong></h5>
																<div class="blankdivider30"></div>

						</div>
					</div>
				</div>
			</div>
			<div class="blankdivider30"></div>
		
		</div>


	</section>



<br>

	<!-- section: team -->
	<section id="about" class="section">
		<div class="container">
			<h4>ABOUT</h4>
			<div class="blankdivider30"></div>

			<div class="blankdivider30"></div>


			<div class="row">
				<div class="span11 offset1">
					<div>
					<p class="aligncenter ">
											<p>  <?php echo $anasayfacek['ana_about']; ?></p>
					</div>
				</div>
				<div class="span4">
					<div class="aligncenter">
					</div>
				</div>
					<div class="span4">
					<div class="aligncenter">
					</div>
				</div>
					<div class="span4">
					<div class="aligncenter">
					</div>
				</div>
			</div>

<div class="blankdivider30"></div>
<div class="blankdivider30"></div>
<div class="blankdivider30"></div>
<div class="blankdivider30"></div>

<div class="row">

	<div class="span1  ">
					<div class="people">
					
					</div>
				</div>


				<div class="span3 offset1 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" height="800" width="500" src="img/team/deneme2.png" alt="" />
						<h3>BSc  <br>Hacettepe University<br> (1982-1987)</h3>
						<p>
Bachelor of Science in <br><b> Electrical & Electronics Engineering	</b>		
                        </p>
					</div>
				</div>
				<div class="span3 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="img/team/clem.png" alt="" />
						<h3>MSc <br> Clemson University <br> (1994-1996)</h3>
						<p>
							Master of Science in <br> <b> Electrical Engineering</b>
						</p>
					</div>
				</div>
			
				
				<div class="span3 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="img/team/clem.png" alt="" />
						<h3>PhD <br> Clemson University <br> (1996-2001)</h3>
						<p>
							Doctor of Philosophy in<br> <b> Electrical Engineering </b>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container -->
	</section>
	<!-- end section: team -->
	<!-- section: services -->
	<section id="services" class="section dark">
		<div class="container aligncenter">
			<h4 class="textwhite aligncenter">RESEARCH AREAS</h4>
			

			<div class="row aligncenter">
<div class="row"><div class="row"></div></div>

				<div class="span4 offset1 flyIn">
					<div class="people">
						<div></div>
<h3 class="textwhite"><b>  Research </b>

 </h3>			<h2 class="textwhite"> <?php echo $anasayfacek['ana_res1']; ?></h2>
				
					</div>
				</div>			


					<div class="span6 offset1 flyIn">
					<div class="people">
<h3 class="textwhite"><b> Inter-University Science Council Area Information</b></h3>
					<h2 class="textwhite"><?php echo $anasayfacek['ana_res2']; ?></h2>
					</div>
				</div>

<div class="row"><div class="row"></div></div><div class="row"><div class="row"></div></div>

					<div class="span11 offset1 flyIn">
					<div class="people">
<h3 class="textwhite"><b> Web Of Science Research Area
</b></h3>
					<h2 class="textwhite"><?php echo $anasayfacek['ana_res3']; ?></h2>
					</div>
				</div>











			</div>
		</div>
	</section>
	<!-- end section: services -->
	<!-- section: works -->
	<section id="works" class="section">
		<div class="container clearfix">
			<h4>PUBLICATIONS & PROJECTS</h4>

			<div class="blankdivider30"></div>

			<div class="blankdivider30"></div>
			<!-- portfolio filter -->
			
<table class="table table-hover">
  <thead>




    <tr>
      <th scope="col"></th>
      <th scope="col">SCI,SSCI,AHCI İNDEKSLERİNE GİREN DERGİLERDE YAYINLANAN MAKALELER

</th>
     
    </tr>
  </thead>
  <tbody>
  	    <?php 
                $say=0;
                while($makalecek=$makalesor->fetch(PDO::FETCH_ASSOC)) { $say++   ?>


    <tr>

      <th scope="row"><?php echo $say ?></th>
      <td><?php echo $makalecek['makale_icerik'] ?></td>
      
    </tr>
     <?php  }

                ?>


  </tbody>
</table>






<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">HAKEMLİ KONGRE / SEMPOZYUMLARIN BİLDİRİ KİTAPLARINDA YER ALAN YAYINLAR
</th>
     
    </tr>
  </thead>
  <tbody>

 	    <?php 
                $say=0;
                while($makale2cek=$makale2sor->fetch(PDO::FETCH_ASSOC)) { $say2++   ?>
    <tr>

      <th scope="row"><?php echo $say2 ?></th>
      <td><?php echo $makale2cek['makale2_icerik'] ?></td>
      
    </tr>
     <?php  }

                ?>

  </tbody>
</table>

			
		</div>
	</section>
	<!-- spacer section -->
	<section class="spacer dark">
		<div class="container">
			<div class="row">
				<div class="span12 aligncenter flyLeft">
					<blockquote class="large">
				<?php echo $anasayfacek['ana_hours'] ?>

					</blockquote>
				</div>
			
			</div>
		</div>
	</section>
	<!-- end spacer section -->
	









<?php include 'footer.php'; ?>