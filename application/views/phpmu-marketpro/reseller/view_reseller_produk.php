<div class="ps-breadcrumb">
    <div class="ps-container">
        <ul class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>">Home</a></li>
            <li><a href="<?php echo base_url(); ?>produk">Produk</a></li>
            <li><?php echo $rows['nama_reseller']; ?></li>
        </ul>
    </div>
</div>

<div class="ps-vendor-store">
    <div class="container">
        <div class="ps-section__container">
            <?php include "sidebar_pelapak.php"; ?>
            <div class="ps-section__right">
                <div class="ps-block--vendor-filter">
                    <div class="ps-block__left">
                        <ul class="ps-tab-list">
                          <li><a href="#">Terdapat <strong><?php echo $record->num_rows(); ?></strong> Produk : </a></li>
                          <li class="active" style='margin-top:3px'><a href="#tab-1"><i class="icon-grid"></i></a></li>
                          <li style='margin-top:3px'><a href="#tab-2"><i class="icon-list4"></i></a></li>
                        </ul>
                    </div>
                    <div class="ps-block__right">
                        <form class="ps-form--search" action="#" method="get">
                            <input class="form-control" type="text" placeholder="Cari produk di toko ini,.">
                            <button><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </div>
                <!--<div class="ps-vendor-best-seller">
                    <div class="ps-section__header">
                        <h3>Produk Terlaris</h3>
                        <div class="ps-section__nav"><a class="ps-carousel__prev" href="#vendor-bestseller"><i class="icon-chevron-left"></i></a><a class="ps-carousel__next" href="#vendor-bestseller"><i class="icon-chevron-right"></i></a></div>
                    </div>
                    <div class="ps-section__content">
                        <div class="owl-slider" id="vendor-bestseller" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="false" data-owl-dots="false" data-owl-item="4" data-owl-item-xs="2" data-owl-item-sm="3" data-owl-item-md="3" data-owl-item-lg="4" data-owl-duration="1000" data-owl-mousedrag="on">
                        <?php 
                            /* $produk_terlaris = $this->model_reseller->produk_terlaris(0,0,10);
                            foreach ($produk_terlaris->result_array() as $row){
                                $ex = explode(';', $row['gambar']);
                                if (trim($ex[0])==''){ $foto_produk = 'no-image.png'; }else{ $foto_produk = $ex[0]; }
                                if (strlen($row['nama_produk']) > 38){ $judul = substr($row['nama_produk'],0,38).',..';  }else{ $judul = $row['nama_produk']; }
                                $jual = $this->model_reseller->jual_reseller($row['id_reseller'],$row['id_produk'])->row_array();
                                $beli = $this->model_reseller->beli_reseller($row['id_reseller'],$row['id_produk'])->row_array();

                                $disk = $this->model_app->view_where("rb_produk_diskon",array('id_produk'=>$row['id_produk']))->row_array();
                                $diskon = rupiah(($disk['diskon']/$row['harga_konsumen'])*100,0)." %";

                                if ($beli['beli']-$jual['jual']<=0){ 
                                    $stok = "<div class='ps-product__badge out-stock'>Habis Terjual</div>"; 
                                    $diskon_persen = ''; 
                                }else{ 
                                    $stok = ""; 
                                    if ($diskon>0){ 
                                        $diskon_persen = "<div class='ps-product__badge'>$diskon</div>"; 
                                    }else{
                                        $diskon_persen = ''; 
                                    }
                                }
                    
                                if ($diskon>=1){ 
                                    $harga_produk =  "Rp ".rupiah($row['harga_konsumen']-$disk['diskon'])." <del style='display:none'>".rupiah($row['harga_konsumen'])."</del>";
                                }else{
                                    $harga_produk =  "Rp ".rupiah($row['harga_konsumen']);
                                }

                                $sold = $this->model_reseller->produk_terjual($row['id_produk'],2);
                                $persentase = ($sold->num_rows()/$beli['beli'])*100;
                                echo "<div class='ps-product'>
                                        <div class='ps-product__thumbnail'>
                                        <a href='".base_url()."produk/detail/$row[produk_seo]'><img src='".base_url()."asset/foto_produk/$foto_produk' alt='$row[nama_produk]'></a>
                                            $diskon_persen
                                            $stok
                                            <ul class='ps-product__actions'>
                                                <li><a href='#' data-toggle='tooltip' data-placement='top' title='Read More'><i class='icon-bag2'></i></a></li>
                                                <li><a href='#' data-toggle='tooltip' data-placement='top' title='Quick View'><i class='icon-eye'></i></a></li>
                                                <li><a href='#' data-toggle='tooltip' data-placement='top' title='Add to Whishlist'><i class='icon-heart'></i></a></li>
                                                <li><a href='#' data-toggle='tooltip' data-placement='top' title='Compare'><i class='icon-chart-bars'></i></a></li>
                                            </ul>
                                        </div>
                                        <div class='ps-product__container'>
                                            <div class='ps-product__content'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                                <div class='ps-product__rating'>
                                                    <select class='ps-rating' data-read-only='true'>
                                                        <option value='1'>1</option>
                                                        <option value='1'>2</option>
                                                        <option value='1'>3</option>
                                                        <option value='1'>4</option>
                                                        <option value='2'>5</option>
                                                    </select><span>01</span>
                                                </div>
                                                <p class='ps-product__price'>$harga_produk</p>
                                            </div>
                                                <div class='ps-product__content hover'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                                    <p class='ps-product__price'>$harga_produk</p>
                                                </div>
                                        </div>
                                    </div>"; 
                            } */
                        ?>
                        </div>
                    </div>
                </div>-->
                <div class="ps-shopping ps-tab-root">

                    <div class="ps-tabs">
                        <div class="ps-tab active" id="tab-1">
                            <div class="row">
                            <?php 
                                foreach ($record->result_array() as $row){
                                    $ex = explode(';', $row['gambar']);
                                    if (trim($ex[0])==''){ $foto_produk = 'no-image.png'; }else{ $foto_produk = $ex[0]; }
                                    if (strlen($row['nama_produk']) > 38){ $judul = substr($row['nama_produk'],0,38).',..';  }else{ $judul = $row['nama_produk']; }
                                    $jual = $this->model_reseller->jual_reseller($row['id_reseller'],$row['id_produk'])->row_array();
                                    $beli = $this->model_reseller->beli_reseller($row['id_reseller'],$row['id_produk'])->row_array();

                                    $disk = $this->model_app->view_where("rb_produk_diskon",array('id_produk'=>$row['id_produk']))->row_array();
                                    $diskon = rupiah(($disk['diskon']/$row['harga_konsumen'])*100,0)." %";

                                    if ($beli['beli']-$jual['jual']<=0){ 
                                        $stok = "<div class='ps-product__badge out-stock'>Habis Terjual</div>"; 
                                        $diskon_persen = ''; 
                                    }else{ 
                                        $stok = ""; 
                                        if ($diskon>0){ 
                                            $diskon_persen = "<div class='ps-product__badge'>$diskon</div>"; 
                                        }else{
                                            $diskon_persen = ''; 
                                        }
                                    }
                        
                                    if ($diskon>=1){ 
                                        $harga_produk =  "Rp ".rupiah($row['harga_konsumen']-$disk['diskon'])." <del style='display:none'>".rupiah($row['harga_konsumen'])."</del>";
                                    }else{
                                        $harga_produk =  "Rp ".rupiah($row['harga_konsumen']);
                                    }

                                    $sold = $this->model_reseller->produk_terjual($row['id_produk'],2);
                                    $persentase = ($sold->num_rows()/$beli['beli'])*100;
                                    $cek_save = $this->db->query("SELECT * FROM rb_konsumen_simpan where id_konsumen='".$this->session->id_konsumen."' AND id_produk='$row[id_produk]'")->num_rows();
                                    echo "<div class='col-xl-3 col-lg-4 col-md-4 col-sm-6 col-6 '>
                                            <div class='ps-product'>
                                                <div class='ps-product__thumbnail'><a href='".base_url()."produk/detail/$row[produk_seo]'><img src='".base_url()."asset/foto_produk/$foto_produk' alt='$row[nama_produk]'></a>
                                                $diskon_persen
                                                $stok
                                                <ul class='ps-product__actions produk-$row[id_produk]'>
                                                    <li><a href='".base_url()."produk/detail/$row[produk_seo]' data-toggle='tooltip' data-placement='top' title='Read More'><i class='icon-bag2'></i></a></li>
                                                    <li><a href='#' data-toggle='tooltip' data-placement='top' title='Quick View' class='quick_view' data-id='$row[id_produk]'><i class='icon-eye'></i></a></li>";
                                                    if ($cek_save>='1'){
                                                        echo "<li><a data-toggle='tooltip' data-placement='top' title='Add to Whishlist'><i style='color:red' class='icon-heart'></i></a></li>";
                                                    }else{
                                                        echo "<li><a data-toggle='tooltip' data-placement='top' id='save-$row[id_produk]' title='Add to Whishlist'><i class='icon-heart' onclick=\"save('$row[id_produk]',this.id)\"></i></a></li>";
                                                    }
                                                echo "</ul>
                                                </div>
                                                <div class='ps-product__container'><a class='ps-product__vendor' href='".base_url()."produk/produk_reseller/$row[id_reseller]'>$row[nama_reseller]</a>
                                                    <div class='ps-product__content'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                                        <p class='ps-product__price'>$harga_produk</p>
                                                    </div>
                                                    <div class='ps-product__content hover'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                                        <p class='ps-product__price'>$harga_produk</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>";
                                }
                            ?>
                            </div>
                        </div>
                        <div class="ps-tab" id="tab-2">
                            <?php 
                                foreach ($record->result_array() as $row){
                                    $ex = explode(';', $row['gambar']);
                                    if (trim($ex[0])==''){ $foto_produk = 'no-image.png'; }else{ $foto_produk = $ex[0]; }
                                    $judul = $row['nama_produk'];
                                    $jual = $this->model_reseller->jual_reseller($row['id_reseller'],$row['id_produk'])->row_array();
                                    $beli = $this->model_reseller->beli_reseller($row['id_reseller'],$row['id_produk'])->row_array();

                                    $disk = $this->model_app->view_where("rb_produk_diskon",array('id_produk'=>$row['id_produk']))->row_array();
                                    $diskon = rupiah(($disk['diskon']/$row['harga_konsumen'])*100,0)." %";

                                    if ($beli['beli']-$jual['jual']<=0){ 
                                        $stok = "<div class='ps-product__badge out-stock'>Habis Terjual</div>"; 
                                        $diskon_persen = ''; 
                                    }else{ 
                                        $stok = ""; 
                                        if ($diskon>0){ 
                                            $diskon_persen = "<div class='ps-product__badge'>$diskon</div>"; 
                                        }else{
                                            $diskon_persen = ''; 
                                        }
                                    }
                        
                                    if ($diskon>=1){ 
                                        $harga_produk =  "Rp ".rupiah($row['harga_konsumen']-$disk['diskon'])." <del style='display:none'>".rupiah($row['harga_konsumen'])."</del>";
                                    }else{
                                        $harga_produk =  "Rp ".rupiah($row['harga_konsumen']);
                                    }

                                    $sold = $this->model_reseller->produk_terjual($row['id_produk'],2);
                                    $persentase = ($sold->num_rows()/$beli['beli'])*100;
                                    $cek_save = $this->db->query("SELECT * FROM rb_konsumen_simpan where id_konsumen='".$this->session->id_konsumen."' AND id_produk='$row[id_produk]'")->num_rows();
                                    echo "<div class='ps-product ps-product--wide'>
                                        <div class='ps-product__thumbnail'><a href='".base_url()."produk/detail/$row[produk_seo]'><img src='".base_url()."asset/foto_produk/$foto_produk' alt='$row[nama_produk]'></a>
                                        </div>
                                        <div class='ps-product__container'>
                                            <div class='ps-product__content'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                                <p class='ps-product__vendor'>Penjual : <a href='".base_url()."produk/produk_reseller/$row[id_reseller]'>$row[nama_reseller]</a></p>
                                                ".nl2br($row['tentang_produk'])."
                                            </div>
                                            <div class='ps-product__shopping'>
                                                <p class='ps-product__price'>$harga_produk</p>
                                                <form action='".base_url()."produk/keranjang/$row[id_reseller]/$row[id_produk]' method='POST'>
                                                    <input style='font-size:20px' class='form-control' type='hidden' value='1' name='qty'>
                                                    <button type='submit' name='beli' class='ps-btn'>Beli Sekarang</button>
                                                </form>
                                                <ul class='ps-product__actions'>";
                                                    if ($cek_save>='1'){
                                                        echo "<li><a style='cursor:pointer'><i style='color:red' class='icon-heart'></i> Wishlist</a></li>";
                                                    }else{
                                                        echo "<li><a style='cursor:pointer' id='save-$row[id_produk]' onclick=\"save('$row[id_produk]',this.id)\"><i class='icon-heart'></i> Wishlist</a></li>";
                                                    }
                                                    echo "<li><a href='' class='quick_view' data-id='$row[id_produk]'><i class='icon-eye'></i> Quick</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>";
                                }
                            ?>
                            
                        </div>
                        <div class="ps-pagination">
                                <?php echo $this->pagination->create_links(); ?>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>