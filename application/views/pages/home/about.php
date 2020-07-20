<main role="main" class="container">

    <?php $this->load->view('layouts/_alert') ?>

    <div class="row">
        <div class="col-md-9">
            <div class="row">
            
                <div class="col-md-12">
                    <div class="card-mb3">
                    <h1>Marco Handmade</h1>
                    <br>
                    <p align="justify">  
                    Toko Marco Handmade berada di Kota Tarakan, Kalimantan Utara .
                    Toko ini telah lama di bangun sejak Tahun 2012 
                    sudah banyak menjual berbagai macam souvenir. 
                    Seperti kalung asli dayak, Tas yang diukir dengan motif khas kalimantan, dsb.</br>
                    Sekarang ini, Toko Marco telah menjual produknya kurang lebih 200 barang. 
                    Produk Terbarunya seperti FaceShield dan Masker pun bisa di order, tersedia juga custom
                    dalam rupa bentuk dan ukuran. <a href="<?= base_url('/') ?>">Order Disini</a>   
                     </p>
                     <div class=malasngoding-slider>
                        <div class=isi-slider>
                            <a><img src="<?php echo base_url();?>images/product/portofolio-1.jpg" height="200" width="200" alt='Gambar 1'></a>
                            <a><img src="<?php echo base_url();?>images/product/portofolio-2.jpg" height="200" width="200" alt='Gambar 2'></a>
                            <a><img src="<?php echo base_url();?>images/product/portofolio-3.jpg" height="200" width="200" alt='Gambar 3'></a>
                            <a><img src="<?php echo base_url();?>images/product/portofolio-4.jpg" height="200" width="200" alt='Gambar 4'></a>
                        </div>
                     </div>    
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="row">
                <div class="col-md-12">
                    <div class="card mb-3">
                        <div class="card-header">Pencarian</div>
                        <div class="card-body">
                            <form action="<?= base_url('/shop/search') ?>" method="POST">
                                <div class="input-group">
                                    <input type="text" name="keyword" placeholder="Cari" value="<?= $this->session->userdata('keyword') ?>" class="form-control">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="submit"><i class="fas fa-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card mb-3">
                        <div class="card-header">Kategori</div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><a href="<?= base_url('/') ?>">Semua Kategori</a></li>
                            <?php foreach(getCategories() as $category) : ?>
                            <li class="list-group-item"><a href="<?= base_url("/shop/category/$category->slug") ?>"><?= $category->title ?></a></li>
                            <?php endforeach ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<style>
.malasngoding-slider { 
	border: 10px solid #efefef; 
	position: relative; 
	overflow: hidden; 
	background: #efefef;
}
 
.malasngoding-slider { 
	margin:20px auto;
	width: 768px;
	height: 450px; 
}
 
.isi-slider img { 
	width: 768px;
	height: 450px; 
	float: left;
}
 
.isi-slider { 
	position: absolute; 
	width:3900px;  
 
	/*pengaturan durasi lama tampil gambar bisa di atur di bawah ini*/
	animation-name:slider;
	animation-duration:16s;
	animation-timing-function: ease-in-out;
	animation-iteration-count:infinite;
	-webkit-animation-name:slider;
	-webkit-animation-duration:16s;
	-webkit-animation-timing-function: ease-in-out;
	-webkit-animation-iteration-count:infinite;
	-moz-animation-name:slider;
	-moz-animation-duration:16s;
	-moz-animation-timing-function: ease-in-out;
	-moz-animation-iteration-count:infinite;
	-o-animation-name:slider;
	-o-animation-duration:16s;
	-o-animation-timing-function: ease-in-out;
	-o-animation-iteration-count:infinite;
}
 
 
/*saat gambar di hover oleh cursor mouse maka berhenti slide*/
.isi-slider:hover { 
	-webkit-animation-play-state:paused; 
	-moz-animation-play-state:paused; 
	-o-animation-play-state:paused; 
	animation-play-state:paused; }
}
 
.isi-slider img { 
	float: right; 
}
 
.malasngoding-slider:after { 
	font-size: 150px; 
	position: absolute; 
	z-index: 12; 
	color: rgba(255,255,255, 0); 
	left: 300px; top: 80px; 
	-webkit-transition: 1s all ease-in-out; 
	-moz-transition: 1s all ease-in-out; 
	transition: 1s all ease-in-out; 
}
 
.malasngoding-slider:hover:after { 
	color: rgba(255,255,255, 0.6);  
}
 
 
 
@-moz-keyframes slider {     
	0% {
		left: 0; opacity: 0; 
	}     
	2% {
		opacity: 1; 
	}     
	20% {
		left: 0; opacity: 1; 
	}     
	21% {
		opacity: 0; 
	}     
	24% {
		opacity: 0; 
	}     
	25% {
		left: -768px; opacity: 1; 
	}       
	45% {
		left: -768px; opacity: 1; 
	}     
	46% {
		opacity: 0; 
	}     
	48% {
		opacity: 0; 
	}     
	50% {
		left: -1536px; opacity: 1; 
	}     
	70% {
		left: -1536px; opacity: 1; 
	}     
	72% {
		opacity: 0; 
	}     
	74% {
		opacity: 0; 
	}    
	75% {
		left: -2304px; opacity: 1; 
	}   	
	95% {
		left: -2304px; opacity: 1; 
	}   	
	97% { 
		left: -2304px; opacity: 0;
	}   	
	100% {
		left: 0; opacity: 0; 
	}
} 
 
@-webkit-keyframes slider {     
	0% {
		left: 0; opacity: 0; 
	}     
	2% {
		opacity: 1; 
	}     
	20% {
		left: 0; opacity: 1; 
	}     
	21% {
		opacity: 0; 
	}     
	24% {
		opacity: 0; 
	}     
	25% {
		left: -768px; opacity: 1; 
	}       
	45% {
		left: -768px; opacity: 1; 
	}     
	46% {
		opacity: 0; 
	}     
	48% {
		opacity: 0; 
	}     
	50% {
		left: -1536px; opacity: 1; 
	}     
	70% {
		left: -1536px; opacity: 1; 
	}     
	72% {
		opacity: 0; 
	}     
	74% {
		opacity: 0; 
	}    
	75% {
		left: -2304px; opacity: 1; 
	}   	
	95% {
		left: -2304px; opacity: 1; 
	}   	
	97% { 
		left: -2304px; opacity: 0;
	}   	
	100% {
		left: 0; opacity: 0; 
	}
} 
 
 
@keyframes slider {     
	0% {
		left: 0; opacity: 0; 
	}     
	2% {
		opacity: 1; 
	}     
	20% {
		left: 0; opacity: 1; 
	}     
	21% {
		opacity: 0; 
	}     
	24% {
		opacity: 0; 
	}     
	25% {
		left: -768px; opacity: 1; 
	}     
	45% {
		left: -768px; opacity: 1; 
	}     
	46% {
		opacity: 0; 
	}     
	48% {
		opacity: 0; 
	}     
	50% {
		left: -1536px; opacity: 1; 
	}     
	70% {
		left: -1536px; opacity: 1; 
	}     
	72% {
		opacity: 0; 
	}     
	74% {
		opacity: 0; 
	}    
	75% {
		left: -2304px; opacity: 1; 
	}   	
	95% {
		left: -2304px; opacity: 1; 
	}   	
	97% { 
		left: -2304px; opacity: 0; 
	} 
 
	100% {
		left: 0; opacity: 0; 
	}
}
</style>

