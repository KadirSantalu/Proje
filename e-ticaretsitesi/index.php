<?php
include"Ust.php"; 
?>


	<!-- Hero section -->
	<section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/bg.jpg">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-lg-7 text-white">
							<span>Yeni Ürünler</span>
							<h2>denim ceketleri</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>
							<a href="#" class="site-btn sb-line">KEŞFETMEK</a>
							<a href="#" class="site-btn sb-white">SEPETE EKLE</a>
						</div>
					</div>
					<div class="offer-card text-white">
						<span>from</span>
						<h2>$29</h2>
						<p>SATIN AL</p>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img/bg-2.jpg">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-lg-7 text-white">
							<span>Yeni Ürünler</span>
							<h2>denim ceketleri</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>
							<a href="#" class="site-btn sb-line">KEŞFETMEK</a>
							<a href="#" class="site-btn sb-white">SEPETE EKLE</a>
						</div>
					</div>
					<div class="offer-card text-white">
						<span>from</span>
						<h2>$29</h2>
						<p>SATIN AL</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="slide-num-holder" id="snh-1"></div>
		</div>
	</section>
	<!-- Hero section end -->



	<!-- Features section -->
	<section class="features-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4 p-0 feature">
					<div class="feature-inner">
						<div class="feature-icon">
							<img src="img/icons/1.png" alt="#">
						</div>
						<h2>Hızlı Güvenli Ödemeler</h2>
					</div>
				</div>
				<div class="col-md-4 p-0 feature">
					<div class="feature-inner">
						<div class="feature-icon">
							<img src="img/icons/2.png" alt="#">
						</div>
						<h2>Premium Ürünler</h2>
					</div>
				</div>
				<div class="col-md-4 p-0 feature">
					<div class="feature-inner">
						<div class="feature-icon">
							<img src="img/icons/3.png" alt="#">
						</div>
						<h2>Ücretsiz ve hızlı Teslimat</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Features section end -->
	<!-- letest product section -->
	<section class="top-letest-product-section">
		<div class="container">
			<div class="section-title">
				<h2>YENİ ÜRÜNLER</h2>
			</div>
			<div class="product-slider owl-carousel">
<?php
$Urunler=$db->query("SELECT * FROM urun ORDER BY urun_id DESC LIMIT 5");
while ($Urun=$Urunler->Fetch()) 
	UrunListeGorunumu($Urun);

?>
			</div>
		</div>
	</section>
	<!-- letest product section end -->



	<!-- Product filter section -->
	<section class="product-filter-section">
		<div class="container">
			<div class="section-title">
				<h2>ÖNE ÇIKAN ÜRÜNLER</h2>
			</div>			
			<div class="row">
<?php 
$Urunler=$db->query("SELECT * FROM urun WHERE urun_vitrin=1 ORDER BY RAND()  LIMIT 8");

while($Urun=$Urunler->fetch())
{
 ?>
				<div class="col-lg-3 col-sm-6">
<?php UrunListeGorunumu($Urun); ?>
				</div>
<?php
}
?>	
			</div>		
			<div class="text-center pt-5">
				<button class="site-btn sb-line sb-dark">DAHA FAZLA YÜKLE</button>
			</div>
		</div>
	</section>
	<!-- Product filter section end -->


	<!-- Banner section -->
	<section class="banner-section">
		<div class="container">
			<div class="banner set-bg" data-setbg="img/banner-bg.jpg">
				<div class="tag-new">YENİ</div>
				<span>Yeni gelenler</span>
				<h2>ÇİZGİLİ GÖMLEK</h2>
				<a href="#" class="site-btn">ŞİMDİ SATIN AL</a>
			</div>
		</div>
	</section>
	<!-- Banner section end  -->


<?php
include"Alt.php"; 
?>