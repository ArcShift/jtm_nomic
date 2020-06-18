<!DOCTYPE html>
<html lang="en">

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">

    <title><?php echo $title; ?></title>
	
	<meta name="robots" content="index, follow">
	<meta name="description" content="<?php echo $description; ?>">
	<meta name="keywords" content="<?php echo $keywords; ?>">
	<meta name="author" content="phpmu.com">
	<meta name="robots" content="all,index,follow">
	<meta http-equiv="Content-Language" content="id-ID">
	<meta NAME="Distribution" CONTENT="Global">
	<meta NAME="Rating" CONTENT="General">
	<link rel="canonical" href="<?php echo (isset($_SERVER['HTTPS']) ? "https://" : "http://")."$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"/>
	<?php if ($this->uri->segment(1)=='berita' AND $this->uri->segment(2)=='detail'){ $rows = $this->model_utama->view_where('berita',array('judul_seo' => $this->uri->segment(3)))->row_array();
	   echo '<meta property="og:title" content="'.$title.'" />
			 <meta property="og:type" content="article" />
			 <meta property="og:url" content="'.base_url().''.$this->uri->segment(3).'" />
			 <meta property="og:image" content="'.base_url().'asset/foto_berita/'.$rows['gambar'].'" />
			 <meta property="og:description" content="'.$description.'"/>';
	} ?>
	<link rel="shortcut icon" href="<?php echo base_url(); ?>asset/images/<?php echo favicon(); ?>" />
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="rss.xml" />
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700&amp;amp;subset=latin-ext" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/fonts/Linearicons/Linearicons/Font/demo-files/demo.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/bootstrap4/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/owl-carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/slick/slick/slick.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/lightGallery-master/dist/css/lightgallery.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/select2/dist/css/select2.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/css/<?php echo background(); ?>.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/css/custom.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>/asset/admin/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>asset/summernote/summernote-bs4.css">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
    <script type="text/javascript" src="<?php echo base_url(); ?>template/<?php echo template(); ?>/js/jquery-3.2.1.min.js"></script>
    <script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.0";
        fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>

<script>
    $(document).ready(function(){
    $('#operator').change(function(){
        var operator_id = $(this).val();
        $.ajax({
        type:"POST",
        url:"<?php echo site_url('main/produk'); ?>",
        data:"operator_id="+operator_id,
        success: function(response){
            $('#produk').html(response);
        }
        })
    })
    })
    </script>
    <style>
        .dataTables_wrapper .row{ width:100% }
        table.dataTable thead .sorting:after, table.dataTable thead .sorting_asc:after{ display:none }
        .dataTables_length select, .dataTables_filter input[type=search]{ height:30px }
        .dataTables_length{ float:left }
        .dataTables_filter{ float:right }
        #example1 th, #example11 th{ font-weight:bold }
        .modal-content .btn-primary{ height: 30px; font-size: 12px; }
        .modal-content input[type=text]{ height: 30px; }
        .iconset .fa { font-size: 13px !important; }
        .blink_me{
            animation:blinker 1s linear infinite;color:red
        }
        .blink_me:hover{
            animation:blinker 0s linear infinite;color:red
        }
        @keyframes blinker{
            50%{opacity:0}
        }

        .mb-10{
          margin-bottom:0px;
        }
        .pricing-table-product-box {
            -webkit-box-shadow: 0 4px 9px 0 rgba(67,65,79,.1);
            box-shadow: 0 4px 9px 0 rgba(67,65,79,.1);
            border: solid 2px #f5f5f5;
        }
        .harga {
            font-size: 3em;
            font-weight: 700;
            line-height: .8em;
          display:inline-block;
        }
        .currency {
            font-size: 1em;
            font-weight: 700;
            margin-top: .2em;
          display:inline-block;
        }
        .waktu {
            font-size: .7em;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: end;
            -ms-flex-align: end;
            align-items: flex-end;
            margin: .3em;
          display:inline-block;
        }
        .waktu_block{
          display:inline-block;
        }
        #Back-to-top { text-align: center; z-index: 99999; position: fixed; bottom: 70px; right: 30px; cursor: pointer; display: none; opacity: 0.7; } 
        #Back-to-top:hover { opacity: 1; } 
        .badge-secondary {
            color: #fff;
            background-color: #dd2400;
            padding: 5px 7px 4px 7px;
        }
        .notif .nav-tabs .nav-link {
            background: #3cd03c;
            color: #fff;
            border-top:1px solid #e3e3e3 !important;
            border-left:1px solid #e3e3e3 !important;
            border-right:1px solid #e3e3e3 !important;
        }
        .notif .badge-secondary {
            color: #fff;
            background-color: #00b30e;
            padding: 5px 7px 4px 7px;
        }
        .notif .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
            color: #495057 !important;
            background-color: #fff !important;
        }

        .penjualan .nav-tabs .nav-link {
            background: #ff9900;
            color: #fff;
            border-top:1px solid #e3e3e3 !important;
            border-left:1px solid #e3e3e3 !important;
            border-right:1px solid #e3e3e3 !important;
        }
        .penjualan .badge-secondary {
            color: #fff;
            background-color: #dc8400;
            padding: 5px 7px 4px 7px;
        }
        .penjualan .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
            color: #495057 !important;
            background-color: #fff !important;
        }
        .container .ps-section__content{
            min-height:550px;
        }
        input[type=number]::-webkit-inner-spin-button {
            opacity: 1
        }

        .form-control{
            border-bottom: 1px solid #cecece;
            border-top: 0px;
            border-left: 0px;
            border-right: 0px;
            background-color: #f9f9f9;
        }
    </style>
</head>

<body>
    
<div class="modal fade bd-example-modal-lg" style='z-index:99999' tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header" style='border-bottom:0px solid #e9ecef'>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
            </button>
        </div>
        <div class="modal-body">
        <div class="row">
            <div class="col-md-6" style='padding:0px 40px'>
                <?php 
                $banner = $this->model_app->view_where_ordering('banner',array('posisi'=>'top'),'id_banner','DESC');
                foreach ($banner as $row) {
                    echo "<div class='ps-block__item' style='margin-bottom: 18px;'>
                            <div class='ps-block__left' style='display:block; float:left'><i style='font-size:35px; margin-right:20px' class='$row[icon]'></i></div>
                            <div class='ps-block__right'>
                                <h5 style='margin-bottom:0px'>$row[judul]</h5>
                                <p>$row[keterangan]</p>
                            </div>
                        </div>";
                }
                ?>
                <hr style='padding:15px 0px 5px 0px'>
                <div class="info--register-bottom" style='margin-bottom:20px'>
                    <center><span>Belum punya akun? </span> <a style='color:#000' href="<?php echo base_url(); ?>auth/login" class="btn-register" target="_parent">Daftar sekarang!</a></center>
                </div>
            </div>
            <div class="col-md-6" style='padding:0px 40px'>
                <h3>MASUK</h3>
                <form action="<?php echo base_url(); ?>auth/login" method="POST">
                    <div class="ps-form__content">
                        <div class="form-group" style='margin-bottom: 1.2rem;'>
                            <label style='margin-bottom:5px' class="col-form-label">Username, Email atau No. Handphone</label>
                            <input class="form-control" name='a' style='height:40px' type="text" autofocus required>
                        </div>
                        <div class="form-group" style='margin-bottom: 1rem;'>
                            <label style='margin-bottom:5px' class="col-form-label">Password</label>
                            <input class="form-control" name='b' style='height:40px' type="password" required>
                        </div>
                        <div class="form-group" style='margin-bottom: 1rem;'>
                            <div class="ps-checkbox">
                                <input class="form-control" type="checkbox" id="remember-me" name="remember-me">
                                <label for="remember-me">Ingat saya</label>
                                <a href='#' style='color:#000' class='float-right' data-dismiss="modal" aria-hidden="true" data-toggle='modal' data-target='.lupa-example-modal-lg'>Lupa Password?</a>
                            </div>
                        </div><br>
                        <div class="form-group submit" style='margin-bottom:5px'>
                            <button type='submit' name='login' class="ps-btn ps-btn--fullwidth gray-btn">Masuk</button>
                            <?php 
                                $ci = & get_instance();
                                $ci->load->library('facebook');
                                $ci->load->library('google');
                                echo "<a href='".$ci->google->loginURL()."' class='ps-btn ps-btn--fullwidth red-btn' style='margin: 4px 0px'>Google</a>
                                      <a href='".$ci->facebook->login_url()."' class='ps-btn ps-btn--fullwidth blue-btn'>Facebook</a>";
                            ?>
                        </div><br>
                    </div>
                </form>
            </div>
        </div>
        </div>
    </div>
  </div>
</div>

<div class="modal fade lupa-example-modal-lg" style='z-index:99999' tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header" style='border-bottom:0px solid #e9ecef'>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
            </button>
        </div>
        <div class="modal-body">
        <div class="row">
            <div class="col-md-6" style='padding:0px 40px'>
                <?php 
                $banner = $this->model_app->view_where_ordering('banner',array('posisi'=>'top'),'id_banner','DESC');
                foreach ($banner as $row) {
                    echo "<div class='ps-block__item' style='margin-bottom: 10px;'>
                            <div class='ps-block__left' style='display:block; float:left'><i style='font-size:35px; margin-right:20px' class='$row[icon]'></i></div>
                            <div class='ps-block__right'>
                                <h5 style='margin-bottom:0px'>$row[judul]</h5>
                                <p>$row[keterangan]</p>
                            </div>
                        </div>";
                }
                ?>
                <hr style='padding:15px 0px 5px 0px'>
                <div class="info--register-bottom" style='margin-bottom:20px'>
                    <center><span>Belum punya akun? </span> <a style='color:#000' href="<?php echo base_url(); ?>auth/login" class="btn-register" target="_parent">Daftar sekarang!</a></center>
                </div>
            </div>
            <div class="col-md-6" style='padding:0px 40px'>
                <h3>LUPA PASSWORD?</h3>
                <form action="<?php echo base_url(); ?>auth/lupass" method="POST">
                    <div class="ps-form__content">
                        <div class="form-group" style='margin-bottom: 1.8rem;'>
                            <label style='margin-bottom:5px' class="col-form-label">Username, Email</label>
                            <input class="form-control" name='a' style='height:40px' type="text" autofocus required>
                        </div>
                        <div class="form-group">
                            <label style='margin-bottom:5px' class="col-form-label">No. Handphone</label>
                            <input class="form-control" name='b' style='height:40px' type="text" required>
                        </div>
                        <div class="form-group" style='margin-bottom: 1rem;'>
                            <div class="ps-checkbox">
                            <a href='#' class='text' data-dismiss="modal" aria-hidden="true">Batalkan?</a>
                                <a href='#' style='color:#000' class='float-right' data-dismiss="modal" aria-hidden="true" data-toggle='modal' data-target='.bd-example-modal-lg'>Kembali Login?</a>
                            </div>
                        </div><br>
                        <div class="form-group submit" style='margin-bottom:5px'>
                            <button type='submit' name='submit3' class="ps-btn ps-btn--fullwidth">Kirimkan Permintaan</button>
                        </div><br>
                    </div>
                </form>
            </div>
        </div>
        </div>
    </div>
  </div>
</div>

<div id='Back-to-top'>
  <img alt='Scroll to top' src='https://members.phpmu.com/asset/css/img/top.png'/>
</div>
    <?php 
        if ($this->uri->segment(1)!='auth'){ 
        $idn = $this->db->query("SELECT * FROM identitas where id_identitas='1'")->row_array();
    ?>
        <header class="header header--1" data-sticky="true">
        <div class="header__topone">
                <div class="container">
                    <div class="header__left">
                        <p><?php echo $idn['info_atas']; ?></p>
                    </div>
                    <div class="header__right">
                        <ul class="header__top-links">
                            <li><a href="<?php echo base_url(); ?>konfirmasi/tracking">Telusuri Pesanan</a></li>
                            <?php 
                            if ($this->session->level=='konsumen'){ 
                                if (reseller($this->session->id_konsumen)!=''){
                            ?>
                            <li>
                                <div class="ps-dropdown"><a href="#"><i class='icon-bag'></i> Menu <?php echo $this->session->umkm == 'Y'?'UMKM':'Toko'; ?></a>
                                    <ul class="ps-dropdown-menu">
                                        <li><a href="<?php echo base_url(); ?>members/profil_toko">Pengaturan <?php echo $this->session->umkm == 'Y'?'UMKM':'Toko'; ?></a></li>
                                        <li><a href="<?php echo base_url(); ?>members/produk">Daftar Produk</a></li>
                                        <li><a href="<?php echo base_url(); ?>members/alamat_cod">Alamat COD</a></li>
                                        <li><a href="<?php echo base_url(); ?>members/pembelian">Orders Pusat</a></li>
                                        <li><a href="<?php echo base_url(); ?>members/penjualan">Orders Masuk</a></li>
                                        <li><a href="<?php echo base_url(); ?>members/withdraw">Tarik Dana</a></li>
                                        <?php if($this->session->umkm == 'Y'){ ?>
                                            <li><a href="<?php echo base_url(); ?>members/kelola">Kelola UMKM</a></li>
                                        <?php }else{ ?>
                                            <li><a href="<?php echo base_url(); ?>members/upgrade"><i class="fa fa-star text-yellow"></i> <span class="blink_me">Upgrade UMKM</span></a></li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            </li>
                            <?php
                                }else{
                                    echo "<li><a href='".base_url()."members/buat_toko'><i class='icon-bag'></i> Buat Toko</a></li>";
                                }
                            } 
                            ?>
                            <li>
                                <div class="ps-block--user-header">
                                    <div class="ps-block__left"><i class="icon-user"></i></div>
                                    <div class="ps-block__right">
                                    <?php 
                                        if ($this->session->level=='konsumen'){ 
                                            echo "<a href='".base_url()."members/profile'>Akun</a>
                                                <a href='".base_url()."auth/logout'>Logout</a>";
                                        }else{
                                            echo "<a href='#' data-toggle='modal' data-target='.bd-example-modal-lg'>Login</a>
                                                <a href='".base_url()."auth/login'>Register</a>";
                                        }
                                    ?>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="header__top">
                <div class="ps-container">
                    <div class="header__left">
                        <div class="menu--product-categories">
                            <div class="menu__toggle"><i class="icon-menu"></i><span> Kategori Produk</span></div>
                            <div class="menu__content">
                            <ul class="menu--dropdown">
                                <?php 
                                    $kategorii = $this->model_app->view('rb_kategori_produk');
                                    foreach ($kategorii->result_array() as $rows) {
                                        if ($rows['icon_kode']!=''){
                                            $icon = "<i class='$rows[icon_kode]'></i>";
                                        }elseif ($rows['icon_image']!=''){
                                            $icon = "<img style='width:18px; height:18px; margin-right:10px' src='".base_url()."asset/foto_produk/$rows[icon_image]'>";
                                        }else{
                                            $icon = "";
                                        }
                                        $sub_kategori = $this->db->query("SELECT * FROM rb_kategori_produk_sub where id_kategori_produk='$rows[id_kategori_produk]'");
                                        if ($sub_kategori->num_rows()>=1){
                                            echo "<li class='current-menu-item menu-item-has-children has-mega-menu'><a href='".base_url()."produk/kategori/$rows[kategori_seo]'> $icon $rows[nama_kategori] <span class='caret caret-right'></span></a>
                                                <div class='mega-menu'>";
                                                if ($sub_kategori->num_rows()>=10){
                                                    $total1 = ceil($sub_kategori->num_rows()/2);
                                                    $total2 = floor($sub_kategori->num_rows()/2);
                                                    $sub_kategori1 = $this->db->query("SELECT * FROM rb_kategori_produk_sub where id_kategori_produk='$rows[id_kategori_produk]' ORDER BY id_kategori_produk_sub ASC LIMIT 0,$total1");
                                                    $sub_kategori2 = $this->db->query("SELECT * FROM rb_kategori_produk_sub where id_kategori_produk='$rows[id_kategori_produk]' ORDER BY id_kategori_produk_sub ASC LIMIT $total1,$total2");
                                                    echo "<div class='mega-menu__column'>
                                                        <ul class='mega-menu__list'>";
                                                    foreach ($sub_kategori1->result_array() as $row) { 
                                                        if ($row['icon_kode']!=''){
                                                            $icons = "<i class='$row[icon_kode]'></i>";
                                                        }elseif ($row['icon_image']!=''){
                                                            $icons = "<img style='width:18px; height:18px' src='".base_url()."asset/foto_produk/$row[icon_image]'>";
                                                        }else{
                                                            $icons = "";
                                                        }
                                                        echo "<li class='current-menu-item'><a href='".base_url()."produk/subkategori/$row[kategori_seo_sub]'>$icons $row[nama_kategori_sub]</a></li>";
                                                    }
                                                    echo "</ul>
                                                    </div>";

                                                    echo "<div class='mega-menu__column'>
                                                        <ul class='mega-menu__list'>";
                                                    foreach ($sub_kategori2->result_array() as $row) { 
                                                        if ($row['icon_kode']!=''){
                                                            $icons = "<i class='$row[icon_kode]'></i>";
                                                        }elseif ($row['icon_image']!=''){
                                                            $icons = "<img style='width:18px; height:18px' src='".base_url()."asset/foto_produk/$row[icon_image]'>";
                                                        }else{
                                                            $icons = "";
                                                        }
                                                        echo "<li class='current-menu-item'><a href='".base_url()."produk/subkategori/$row[kategori_seo_sub]'>$icons $row[nama_kategori_sub]</a></li>";
                                                    }
                                                    echo "</ul>
                                                    </div>";
                                                }else{
                                                    echo "<div class='mega-menu__column'>
                                                        <ul class='mega-menu__list'>";
                                                    foreach ($sub_kategori->result_array() as $row) { 
                                                        if ($row['icon_kode']!=''){
                                                            $icons = "<i class='$row[icon_kode]'></i>";
                                                        }elseif ($row['icon_image']!=''){
                                                            $icons = "<img style='width:18px; height:18px' src='".base_url()."asset/foto_produk/$row[icon_image]'>";
                                                        }else{
                                                            $icons = "";
                                                        }
                                                        echo "<li class='current-menu-item'><a href='".base_url()."produk/subkategori/$row[kategori_seo_sub]'>$icons $row[nama_kategori_sub]</a></li>";
                                                    }
                                                    echo "</ul>
                                                    </div>";
                                                }
                                                echo "</div>
                                            </li>";
                                        }else{
                                            echo "<li class='current-menu-item'><a href='".base_url()."produk/kategori/$rows[kategori_seo]'> $icon $rows[nama_kategori]</a></li>";
                                        }
                                    }
                                ?>
                            </ul>
                            </div>
                        </div>
                        <?php 
                        $logo = $this->model_utama->view_ordering_limit('logo','id_logo','DESC',0,1);
                        foreach ($logo->result_array() as $row) {
                            echo "<a class='ps-logo' href='".base_url()."'><img src='".base_url()."asset/logo/$row[gambar]'/></a>";
                        }
                        ?>
                    </div>
                    <div class="header__center">
                        <form class="ps-form--quick-search" action="<?php echo base_url() ?>produk" method="POST">
                            <div class="form-group--icon"><i class="icon-chevron-down"></i>
                                <select class="form-control" name='filter'>
                                    <option value="0" selected="selected">Semua</option>
                                    <?php 
                                        $kategori = $this->model_app->view('rb_kategori_produk');
                                        foreach ($kategori->result_array() as $rows) {
                                            $sub_kategori = $this->db->query("SELECT * FROM rb_kategori_produk_sub where id_kategori_produk='$rows[id_kategori_produk]'");
                                            echo "<option class='level-0' value='kategori|$rows[id_kategori_produk]'>$rows[nama_kategori]</option>";
                                            if ($sub_kategori->num_rows()>=1){
                                                foreach ($sub_kategori->result_array() as $row) {
                                                echo "<option class='level-1' value='subkategori|$row[id_kategori_produk_sub]'> - $row[nama_kategori_sub]</option>";
                                                }
                                            }
                                        }
                                    ?>
                                </select>
                            </div>
                            <input class="form-control" name='kata' type="text" placeholder="Aku mau Belanja..." autocomplete='off'>
                            <button type='submit' name='cari'>Cari</button>
                        </form>
                    </div>
                    <div class="header__right">
                        <div class="header__actions">
                            <!--<a class="header__extra" href="#"><i class="icon-chart-bars"></i><span><i>0</i></span></a>-->
                            
                            <?php 
                            $wishlist = $this->db->query("SELECT * FROM rb_konsumen_simpan where id_konsumen='".$this->session->id_konsumen."'")->num_rows();
                            echo "<a class='header__extra' href='".base_url()."members/wishlist'><i class='icon-heart'></i><span><i class='wishlistcount'>$wishlist</i></span></a>";
                            $cek_keranjang = $this->db->query("SELECT a.*, b.*, c.nama_reseller FROM rb_penjualan_temp a JOIN rb_produk b ON a.id_produk=b.id_produk JOIN rb_reseller c ON b.id_reseller=c.id_reseller where a.session='".$this->session->idp."' ORDER BY id_penjualan_detail ASC");
                            $total = $this->db->query("SELECT sum((a.harga_jual-a.diskon)*a.jumlah) as total, sum(b.berat*a.jumlah) as total_berat FROM `rb_penjualan_temp` a JOIN rb_produk b ON a.id_produk=b.id_produk where a.session='".$this->session->idp."'")->row_array();
                            echo "<div class='ps-cart--mini'><a class='header__extra' href='".base_url()."produk/keranjang'><i class='icon-bag2'></i><span><i>".$cek_keranjang->num_rows()."</i></span></a>";
                                if ($cek_keranjang->num_rows()>=1){
                                    echo "<div class='ps-cart__content'>
                                        <div class='ps-cart__items'>";
                                        $no = 1;
                                        foreach ($cek_keranjang->result_array() as $row){
                                        $sub_total = (($row['harga_jual']-$row['diskon'])*$row['jumlah']);
                                        $ex = explode(';', $row['gambar']);
                                        if (trim($ex[0])==''){ $foto_produk = 'no-image.png'; }else{ $foto_produk = $ex[0]; }
                                            echo "<div class='ps-product--cart-mobile'>
                                                <div class='ps-product__thumbnail'><a href='".base_url()."produk/detail/$row[produk_seo]'><img src='".base_url()."asset/foto_produk/$foto_produk' alt='$row[nama_produk]'></a></div>
                                                <div class='ps-product__content'><a class='ps-product__remove' href='".base_url()."produk/keranjang_delete/$row[id_penjualan_detail]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><i class='icon-cross'></i></a><a href='".base_url()."produk/detail/$row[produk_seo]'>MVMTH Classical Leather Watch In Black</a>
                                                    <p><strong>Penjual :</strong> $row[nama_reseller]</p><small>$row[jumlah] x ".rupiah($row['harga_jual']-$row['diskon'])."</small>
                                                </div>
                                            </div>";
                                        }
                                        echo "</div>
                                        <div class='ps-cart__footer'>
                                            <h3>Sub Total : <strong>Rp ".rupiah(($total['total']-$total['diskon_total'])+$total['ongkir'])."</strong></h3>
                                            <figure><a class='ps-btn' href='".base_url()."produk/keranjang'>Keranjang</a><a class='ps-btn' href='".base_url()."produk/checkouts'>Pembayaran</a></figure>
                                        </div>
                                    </div>";
                                }
                                echo "</div>";
                            ?>
                            <div class="ps-block--header-hotline">
                                <div class="ps-block__left"><i class="icon-telephone"></i></div>
                                <div class="ps-block__right">
                                    <p>Pusat Bantuan<strong><?php echo $idn['no_telp']; ?></strong></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php include "main-menu.php"; ?>
        </header>
    <?php } ?>                     
    <?php 
        if ($this->uri->segment('1')=='produk' AND $this->uri->segment('2')=='detail'){
            include "mobile/produk_detail.php"; 
        }else{
            include "mobile/home.php"; 
        }
        
        echo $contents; 
        include "footer.php"; 
        $this->model_utama->kunjungan(); 

        if ($this->uri->segment(1)=='main' OR $this->uri->segment(1)==''){
            if (get_cookie('notshow')==''){
            $pop = $this->db->query("SELECT * FROM iklanatas ORDER BY id_iklanatas DESC LIMIT 1")->row_array();
            if ($pop['username']=='Y'){
        ?>
            <div class="ps-popup" id="subscribe" data-time="500">
                <div class="ps-popup__content bg--cover" data-background="<?php echo base_url(); ?>/asset/foto_iklanatas/<?php echo $pop['gambar']; ?>"><a class="ps-popup__close" href="#"><i class="icon-cross"></i></a>
                    <form class="ps-form--subscribe-popup" action="<?php echo base_url() ?>main/subscribe" method="POST">
                        <div class="ps-form__content">
                            <h4><?php echo $pop['judul']; ?></h4>
                            <p><?php echo $pop['url']; ?></p>
                                <div class="form-group">
                                    <input class="form-control" type="email" name='email' placeholder="Email Address" required>
                                    <div class="ps-checkbox">
                                        <input class="form-control" type="checkbox" id="not-show" name="notshow">
                                        <label for="not-show">Jangan Tampilkan lagi Form ini.</label>
                                    </div><br>
                                    <button type='submit' name='submit' class="ps-btn">Subscribe</button>
                                </div>
                                
                        </div>
                    </form>
                </div>
            </div>
        <?php } } } ?>

    <div id="back2top"><i class="pe-7s-angle-up"></i></div>
    <div class="ps-site-overlay"></div>
    <div id="-loader-wrapper">
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>
    <div class="ps-search" id="site-search"><a class="ps-btn--close" href="#"></a>
        <div class="ps-search__content">
            <form class="ps-form--primary-search" action="do_action" method="post">
                <input class="form-control" type="text" placeholder="Search for...">
                <button><i class="aroma-magnifying-glass"></i></button>
            </form>
        </div>
    </div>
    
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/jquery-1.12.4.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/popper.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/owl-carousel/owl.carousel.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/bootstrap4/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/imagesloaded.pkgd.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/masonry.pkgd.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/isotope.pkgd.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/jquery.matchHeight-min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/slick/slick/slick.min.js"></script>

    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/slick-animation.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/lightGallery-master/dist/js/lightgallery-all.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/sticky-sidebar/dist/sticky-sidebar.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/jquery.slimscroll.min.js"></script>
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/plugins/select2/dist/js/select2.full.min.js"></script>

    <!-- custom scripts-->
    
    <!-- DataTables -->
    <script src="<?php echo base_url(); ?>asset/admin/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="<?php echo base_url(); ?>asset/admin/plugins/datatables/dataTables.bootstrap.min.js"></script>
    <!--OTHER-->
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/js/main.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDxflHHc5FlDVI-J71pO7hM1QJNW1dRp4U&amp;region=GB"></script>
    <script type="text/javascript">
        

        $(document).ready(function(){
            $(function() { $(window).scroll(function() {
                if($(this).scrollTop()>400) { $('#Back-to-top').fadeIn(); }else { $('#Back-to-top').fadeOut();}});
                $('#Back-to-top').click(function() {
                    $('body,html')
                    .animate({scrollTop:0},300)
                    .animate({scrollTop:40},200)
                    .animate({scrollTop:0},130)
                    .animate({scrollTop:15},100)
                    .animate({scrollTop:0},70);
                    });
            });

            $('#editor1').summernote({
                height: "300px",
                callbacks: {
                    onImageUpload: function(image) {
                        uploadImage(image[0]);
                    },
                    onMediaDelete : function(target) {
                        deleteImage(target[0].src);
                    }
                }
            });

        function uploadImage(image) {
            var data = new FormData();
            data.append("image", image);
            $.ajax({
                url: "<?php echo site_url('members/upload_image')?>",
                cache: false,
                contentType: false,
                processData: false,
                data: data,
                type: "POST",
                success: function(url) {
                    $('#editor1').summernote("insertImage", url);
                },
                error: function(data) {
                    console.log(data);
                }
            });
        }

        function deleteImage(src) {
            $.ajax({
                data: {src : src},
                type: "POST",
                url: "<?php echo site_url('members/delete_image')?>",
                cache: false,
                success: function(response) {
                    console.log(response);
                }
            });
        }
        });
    </script>
    <script src="<?php echo base_url(); ?>asset/summernote/summernote-bs4.min.js"></script>
    <script>
    $(function () {
        // Summernote
        $('#editor1').summernote()
    })
    </script>
    <script>
        $(".formatNumber").on('keyup', function(){
            var n = parseInt($(this).val().replace(/\D/g,''),10);
            $(this).val(n.toLocaleString());
        });
	$(document).ready(function(){
        $('#state').change(function(){
          var state_id = $(this).val();
          $.ajax({
            type:"POST",
            url:"<?php echo site_url('auth/city'); ?>",
            data:"stat_id="+state_id,
            success: function(response){
              $('#city').html(response);
            }
          })
        })
      })

      $(document).ready(function(){
        $('#state_reseller').change(function(){
          var state_id = $(this).val();
          $.ajax({
            type:"POST",
            url:"<?php echo site_url('auth/city'); ?>",
            data:"stat_id="+state_id,
            success: function(response){
              $('#city_reseller').html(response);
            }
          })
        })
      })
      
	function toDuit(number) {
	    var number = number.toString(), 
	    duit = number.split('.')[0], 
	    duit = duit.split('').reverse().join('')
	        .replace(/(\d{3}(?!$))/g, '$1,')
	        .split('').reverse().join('');
	    return 'Rp ' + duit ;
    }
    </script>

    <script>
    $(function () { 
        $("#example1").DataTable({
            "bSortable": false,
            "lengthChange": false,
            "oLanguage": {
            "sSearch": "Pencarian "
            }
        });
        $("#example11").DataTable({
            "bSortable": false,
            "lengthChange": false,
            "oLanguage": {
            "sSearch": "Pencarian "
            }
        });
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });

        $('#example3').DataTable({
            "paging": true,
            "lengthChange": true,
            "searching": true,
            "info": true,
            "autoWidth": false,
            "pageLength": 10,
            "order": [[ 4, "desc" ]]
        });
    });
    </script>
    
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Notifikasi</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            Produk Berhasil Disimpan!
        </div>
        </div>
    </div>
    </div>

    <div class="modal fade bd-example-modal-lg" id="myModalDetail" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content" style='padding:10px'>
            <div class="modal-header">
            <h5 class="modal-title h4" id="myModalLabel">Informasi Detail</h5>
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            </div>
            <div class="modal-body">
                <div class="content-body"></div>
            </div>
        </div>
    </div>
    </div>

    <script>
    function save(id,data2){
        $.ajax({
            type : "POST",
            url  : "<?php echo site_url('produk/save')?>",
            dataType : "JSON",
            data : {id:id},
            success: function(data){
                $(".produk-"+id).hide().load(" .produk-"+id).fadeIn();
                $("#exampleModalCenter").modal('show');
                $(".wishlistcount").hide().load(" .wishlistcount").fadeIn();
            }
        });
        return false;
    }
    </script>

    <script>
        $(function(){
            $(document).on('click','.quick_view',function(e){
                e.preventDefault();
                $("#myModalDetail").modal('show');
                $.post("<?php echo site_url()?>produk/quick_view",
                    {id:$(this).attr('data-id')},
                    function(html){
                        $(".content-body").html(html);
                    }   
                );
            });
        });
    </script>
    

<div class='hidden'> 
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5eb4ccd981d25c0e5849e520/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
<!--ADDICTIONAL SCRIPT-->
<script>
var nav= $('.navigation__extra').find('a');
var e_com= true;
for(var n of nav){
    console.log($(n).attr('href').indexOf(window.location.href));
    if(window.location.href.indexOf($(n).attr('href'))>=0){
        e_com = false;
        $(n).addClass('text-danger font-weight-bold');
    }
}
if (e_com){
    $(nav[1]).addClass('text-danger font-weight-bold');
}

</script>
</div>
</body>
</html>