<div id="homepage-1">

    <div class="ps-home-banner ps-home-banner--1">
        <div class="ps-container">
            <div class="ps-section__left">
                <div class="ps-carousel--nav-inside owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="on">
                    <?php 
                        $slide1 = $this->db->query("SELECT * FROM slide ORDER BY id_slide ASC");
                        foreach ($slide1->result_array() as $row) {
                            if ($row['gambar'] ==''){ $foto_slide = base_url()."asset/foto_berita/no-image.jpg"; }else{ $foto_slide = base_url()."asset/foto_slide/$row[gambar]"; }
                            $judul = $row['keterangan'];
                            echo "<div class='ps-banner'><a title='$judul' href='#'><img src='$foto_slide' alt='$row[gambar]'></a></div>"; 
                            $no++;
                        }
                    ?>
                </div>
            </div>
            <div class="ps-section__right">
            <?php
            $pasangiklan2 = $this->model_utama->view_ordering_limit('pasangiklan','id_pasangiklan','ASC',0,2);
            foreach ($pasangiklan2->result_array() as $b) {
                $string = $b['gambar'];
                if ($b['gambar'] != ''){
                    if(preg_match("/swf\z/i", $string)) {
                        echo "<embed class='ps-collection' src='".base_url()."asset/foto_pasangiklan/$b[gambar]' quality='high' type='application/x-shockwave-flash'>";
                    } else {
                        echo "<a class='ps-collection' href='$b[url]' target='_blank'><img src='".base_url()."asset/foto_pasangiklan/$b[gambar]' alt='$b[judul]' /></a>";
                    }
                }
            }
            ?>
            </div>
        </div>
    </div>
    <div class="ps-site-features">
        <div class="ps-container">
            <div class="ps-block--site-features">
            <?php 
                $banner = $this->model_app->view_where_ordering('banner',array('posisi'=>'top'),'id_banner','DESC');
                foreach ($banner as $row) {
                    echo "<div class='ps-block__item'>
                            <div class='ps-block__left'><i class='$row[icon]'></i></div>
                            <div class='ps-block__right'>
                                <h4>$row[judul]</h4>
                                <p>$row[keterangan]</p>
                            </div>
                          </div>";
                }
            ?>
            </div>
        </div>
    </div>
    <?php 
        $idn = $this->db->query("SELECT flash_deal FROM identitas where id_identitas='1'")->row_array();
        $kini = new DateTime('now');  
        $kemarin = new DateTime($idn['flash_deal'].' 00:00:00');
        $tanggal = $kemarin->diff($kini)->format('%a:%h:%i:%s'); 

        $date1 = date('Y-m-d');
        $date2 = $idn['flash_deal'];
        if(selisih_waktu_run($date1,$date2)>='1'){
    ?>
    <div class="ps-deal-of-day">
        <div class="ps-container">
            <div class="ps-section__header">
                <div class="ps-block--countdown-deal">
                    <div class="ps-block__left">
                        <h3>Penawaran Berakhir</h3>
                    </div>
                    <div class="ps-block__right">
                        <figure>
                            <figcaption></figcaption>
                            <span style='display:none' id='berakhir'><?php echo $tanggal; ?></span>
                            
                            <ul class="ps-countdown d-none d-sm-block" data-time="">
                                <li><span class="days"></span> Hari</li>
                                <li><span class="hours"></span> Jam</li>
                                <li><span class="minutes"></span> Menit</li>
                                <li><span class="seconds"></span> Detik</li>
                            </ul>
                            
                            <ul class="ps-countdown d-block d-sm-none" data-time="">
                                <li><span class="days"></span> Hari </li>
                                <li><span class="hours"></span> Jam </li>
                                <li><span class="minutes"></span> Menit </li>
                                <li><span class="seconds"></span> </li>
                            </ul>
                            
                        </figure>
                    </div>
                </div><a class='d-none d-sm-block' href="<?php echo base_url(); ?>produk">Lihat Semua</a>
            </div>
            <div class="ps-section__content">
                <div class="ps-carousel--nav owl-slider" data-owl-auto="false" data-owl-loop="false" data-owl-speed="10000" data-owl-gap="30" data-owl-nav="true" data-owl-dots="true" data-owl-item="7" data-owl-item-xs="2" data-owl-item-sm="3" data-owl-item-md="4" data-owl-item-lg="5" data-owl-item-xl="6" data-owl-duration="1000" data-owl-mousedrag="on">
                    <?php 
                        $produk = $this->model_reseller->produk_flashdeal(0,0,10);
                        foreach ($produk->result_array() as $row){
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
                                $harga_produk =  "Rp ".rupiah($row['harga_konsumen']-$disk['diskon'])." <del>".rupiah($row['harga_konsumen'])."</del>";
                            }else{
                                $harga_produk =  "Rp ".rupiah($row['harga_konsumen']);
                            }

                            $sold = $this->model_reseller->produk_terjual($row['id_produk'],2);
                            $persentase = ($sold->num_rows()/$beli['beli'])*100;
                            $cek_save = $this->db->query("SELECT * FROM rb_konsumen_simpan where id_konsumen='".$this->session->id_konsumen."' AND id_produk='$row[id_produk]'")->num_rows();
                            echo "<div class='ps-product ps-product--inner'>
                                    <div class='ps-product__thumbnail'>
                                    <a href='".base_url()."produk/detail/$row[produk_seo]'><img src='".base_url()."asset/foto_produk/$foto_produk' alt='$row[nama_produk]'></a>
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
                                    <div class='ps-product__container'>
                                        
                                        <p class='ps-product__price sale'>$harga_produk</p>
                                        <div class='ps-product__content'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                            <div class='ps-product__rating'>
                                            <select class='ps-rating' data-read-only='true'>".rate_bintang($row['id_produk'])."</select><span>".rate_jumlah($row['id_produk'])."</span>
                                            </div>
                                            <div class='ps-product__progress-bar ps-progress' data-value='$persentase'>
                                                <div class='ps-progress__value'><span></span></div>
                                                <p>Terjual : ".$sold->num_rows()." / ".rupiah($beli['beli'])."</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>";
                
                          
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
    <?php }else{ echo "<span style='display:none' id='berakhir'></span>"; } ?>
    
    <div class="ps-home-ads">
        <div class="ps-container">
            <div class="row">
                <?php
                $iklantengah = $this->db->query("SELECT * FROM iklantengah where judul like 'home%'");
                foreach ($iklantengah->result_array() as $b) {
                    $string = $b['gambar'];
                    if ($b['gambar'] != ''){
                        if(preg_match("/swf\z/i", $string)) {
                            echo "<div class='col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 '><embed class='ps-collection' src='".base_url()."asset/foto_iklantengah/$b[gambar]' quality='high' type='application/x-shockwave-flash'></div>";
                        } else {
                            echo "<div class='col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 '><a class='ps-collection' href='$b[url]' target='_blank'><img src='".base_url()."asset/foto_iklantengah/$b[gambar]' alt='$b[judul]' /></a></div>";
                        }
                    }
                }
                ?>
            </div>
        </div>
    </div>
    <div class="ps-top-categories">
        <div class="ps-container">
            <h3>Kategori Populer bulan ini</h3>
            <div class="row">
                <?php 
                    $top_kategori = $this->db->query("SELECT * FROM (SELECT a.*, b.jumlah FROM
                                        (SELECT * FROM rb_kategori_produk) as a LEFT JOIN
                                        (SELECT z.id_kategori_produk, COUNT(*) jumlah FROM rb_penjualan_detail y JOIN rb_produk z ON y.id_produk=z.id_produk GROUP BY z.id_kategori_produk HAVING COUNT(z.id_kategori_produk)) as b on a.id_kategori_produk=b.id_kategori_produk) as x ORDER BY x.jumlah DESC LIMIT 6");
                    foreach($top_kategori->result_array() as $row){
                        echo "<div class='col-xl-2 col-lg-3 col-md-4 col-sm-4 col-6 '>
                                <div class='ps-block--category'><a class='ps-block__overlay' href='".base_url()."produk/kategori/$row[kategori_seo]'></a>";
                                    if ($row['gambar'] == ''){
                                        echo "<img style='width:210px;' src='".base_url()."asset/foto_produk/no-image.jpg' alt='no-image.jpg' /></a>";
                                    }else{
                                        echo "<img style='width:210px;' src='".base_url()."asset/foto_produk/$row[gambar]' alt='$row[gambar]' /></a>";
                                    }
                                    echo "<p>$row[nama_kategori]</p>
                                </div>
                              </div>";
                    }
                ?>
            </div>
        </div>
    </div>
    <div class="ps-product-list ps-clothings">
        <div class="ps-container">
            <div class="ps-section__header">
                <?php 
                    $ku1 = $this->model_app->view_where("rb_kategori_produk",array('urutan'=>'1'))->row_array();
                    echo "<h3>$ku1[nama_kategori]</h3>
                          <ul class='ps-section__links'>
                            <li><a href='".base_url()."produk/kategori/$ku1[kategori_seo]'>Lihat Semua</a></li>
                          </ul>";
                ?>
            </div>
            <div class="ps-section__content">
                <div class="ps-carousel--nav owl-slider" data-owl-auto="false" data-owl-loop="false" data-owl-speed="10000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="7" data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="4" data-owl-item-xl="6" data-owl-duration="1000" data-owl-mousedrag="on">
                    
                <?php 
                $produk = $this->model_reseller->produk_perkategori(0,0,$ku1['id_kategori_produk'],10);
                foreach ($produk->result_array() as $row){
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
                        $harga_produk =  "Rp ".rupiah($row['harga_konsumen']-$disk['diskon'])." <del>".rupiah($row['harga_konsumen'])."</del>";
                    }else{
                        $harga_produk =  "Rp ".rupiah($row['harga_konsumen']);
                    }

                    $sold = $this->model_reseller->produk_terjual($row['id_produk'],2);
                    $persentase = ($sold->num_rows()/$beli['beli'])*100;
                    $cek_save = $this->db->query("SELECT * FROM rb_konsumen_simpan where id_konsumen='".$this->session->id_konsumen."' AND id_produk='$row[id_produk]'")->num_rows();
                    echo "<div class='ps-product'>
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
                            <div class='ps-product__container'><a class='ps-product__vendor' href='".base_url()."produk/produk_reseller/$row[id_reseller]'>".cek_paket_icon($row['id_reseller'])." $row[nama_reseller]</a>
                                <div class='ps-product__content'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                    <div class='ps-product__rating'>
                                    <select class='ps-rating' data-read-only='true'>".rate_bintang($row['id_produk'])."</select><span>".rate_jumlah($row['id_produk'])."</span>
                                    </div>
                                    <p class='ps-product__price sale'>$harga_produk</p>
                                </div>
                                <div class='ps-product__content hover'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$row[nama_produk]</a>
                                    <p class='ps-product__price sale'>$harga_produk</p>
                                </div>
                            </div>
                        </div>";
                }
                ?>
                </div>
            </div>
        </div>
    </div>
    
    <div class="ps-product-list ps-clothings">
        <div class="ps-container">
            <div class="ps-section__header">
                <?php 
                    $ku2 = $this->model_app->view_where("rb_kategori_produk",array('urutan'=>'2'))->row_array();
                    echo "<h3>$ku2[nama_kategori]</h3>
                          <ul class='ps-section__links'>
                            <li><a href='".base_url()."produk/kategori/$ku2[kategori_seo]'>Lihat Semua</a></li>
                          </ul>";
                ?>
            </div>
            <div class="ps-section__content">
                <div class="ps-carousel--nav owl-slider" data-owl-auto="false" data-owl-loop="false" data-owl-speed="10000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="7" data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="4" data-owl-item-xl="6" data-owl-duration="1000" data-owl-mousedrag="on">
                    
                <?php 
                $produk2 = $this->model_reseller->produk_perkategori(0,0,$ku2['id_kategori_produk'],10);
                foreach ($produk2->result_array() as $row){
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
                        $harga_produk =  "Rp ".rupiah($row['harga_konsumen']-$disk['diskon'])." <del>".rupiah($row['harga_konsumen'])."</del>";
                    }else{
                        $harga_produk =  "Rp ".rupiah($row['harga_konsumen']);
                    }

                    $sold = $this->model_reseller->produk_terjual($row['id_produk'],2);
                    $persentase = ($sold->num_rows()/$beli['beli'])*100;
                    $cek_save = $this->db->query("SELECT * FROM rb_konsumen_simpan where id_konsumen='".$this->session->id_konsumen."' AND id_produk='$row[id_produk]'")->num_rows();
                    echo "<div class='ps-product'>
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
                            <div class='ps-product__container'><a class='ps-product__vendor' href='".base_url()."produk/produk_reseller/$row[id_reseller]'>".cek_paket_icon($row['id_reseller'])." $row[nama_reseller]</a>
                                <div class='ps-product__content'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                    <div class='ps-product__rating'>
                                    <select class='ps-rating' data-read-only='true'>".rate_bintang($row['id_produk'])."</select><span>".rate_jumlah($row['id_produk'])."</span>
                                    </div>
                                    <p class='ps-product__price sale'>$harga_produk</p>
                                </div>
                                <div class='ps-product__content hover'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$row[nama_produk]</a>
                                    <p class='ps-product__price sale'>$harga_produk</p>
                                </div>
                            </div>
                        </div>";
                }
                ?>
                </div>
            </div>
        </div>
    </div>
    
    <div class="ps-product-list ps-clothings">
        <div class="ps-container">
            <div class="ps-section__header">
                <?php 
                    $ku3 = $this->model_app->view_where("rb_kategori_produk",array('urutan'=>'3'))->row_array();
                    echo "<h3>$ku3[nama_kategori]</h3>
                          <ul class='ps-section__links'>
                            <li><a href='".base_url()."produk/kategori/$ku3[kategori_seo]'>Lihat Semua</a></li>
                          </ul>";
                ?>
            </div>
            <div class="ps-section__content">
                <div class="ps-carousel--nav owl-slider" data-owl-auto="false" data-owl-loop="false" data-owl-speed="10000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="7" data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="4" data-owl-item-xl="6" data-owl-duration="1000" data-owl-mousedrag="on">
                    
                <?php 
                $produk3 = $this->model_reseller->produk_perkategori(0,0,$ku3['id_kategori_produk'],10);
                foreach ($produk3->result_array() as $row){
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
                        $harga_produk =  "Rp ".rupiah($row['harga_konsumen']-$disk['diskon'])." <del>".rupiah($row['harga_konsumen'])."</del>";
                    }else{
                        $harga_produk =  "Rp ".rupiah($row['harga_konsumen']);
                    }

                    $sold = $this->model_reseller->produk_terjual($row['id_produk'],2);
                    $persentase = ($sold->num_rows()/$beli['beli'])*100;
                    $cek_save = $this->db->query("SELECT * FROM rb_konsumen_simpan where id_konsumen='".$this->session->id_konsumen."' AND id_produk='$row[id_produk]'")->num_rows();
                    
                    echo "<div class='ps-product'>
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
                            <div class='ps-product__container'><a class='ps-product__vendor' href='".base_url()."produk/produk_reseller/$row[id_reseller]'>".cek_paket_icon($row['id_reseller'])." $row[nama_reseller]</a>
                                <div class='ps-product__content'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                    <div class='ps-product__rating'>
                                    <select class='ps-rating' data-read-only='true'>".rate_bintang($row['id_produk'])."</select><span>".rate_jumlah($row['id_produk'])."</span>
                                    </div>
                                    <p class='ps-product__price sale'>$harga_produk</p>
                                </div>
                                <div class='ps-product__content hover'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$row[nama_produk]</a>
                                    <p class='ps-product__price sale'>$harga_produk</p>
                                </div>
                            </div>
                        </div>";
                }
                ?>
                </div>
            </div>
        </div>
    </div>

    <div class="ps-home-ads">
        <div class="ps-container">
            <div class="row">
                <?php
                $no = 1;
                $iklantengah = $this->db->query("SELECT * FROM iklantengah where judul like 'footer%'");
                foreach ($iklantengah->result_array() as $b) {
                    if ($no=='1'){ $class = 'col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12'; }else{ $class = 'col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12'; }
                    $string = $b['gambar'];
                    if ($b['gambar'] != ''){
                        if(preg_match("/swf\z/i", $string)) {
                            echo "<div class='$class '><embed class='ps-collection' src='".base_url()."asset/foto_iklantengah/$b[gambar]' quality='high' type='application/x-shockwave-flash'></div>";
                        } else {
                            echo "<div class='$class '><a class='ps-collection' href='$b[url]' target='_blank'><img src='".base_url()."asset/foto_iklantengah/$b[gambar]' alt='$b[judul]' /></a></div>";
                        }
                    }
                    $no++;
                }
                ?>
            </div>
        </div>
    </div>
    <!--<div class="ps-download-app">
        <div class="ps-container">
            <div class="ps-block--download-app">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                            <div class="ps-block__thumbnail"><img src="<?php //echo base_url(); ?>template/<?php //echo template(); ?>/img/app.png" alt=""></div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                            <div class="ps-block__content">
                                <h3>Download Martfury App Now!</h3>
                                <p>Shopping fastly and easily more with our app. Get a link to download the app on your phone</p>
                                <form class="ps-form--download-app" action="do_action" method="post">
                                    <div class="form-group--nest">
                                        <input class="form-control" type="Email" placeholder="Email Address">
                                        <button class="ps-btn">Subscribe</button>
                                    </div>
                                </form>
                                <p class="download-link"><a href="#"><img src="<?php //echo base_url(); ?>template/<?php //echo template(); ?>/img/google-play.png" alt=""></a><a href="#"><img src="<?php //echo base_url(); ?>template/<?php //echo template(); ?>/img/app-store.png" alt=""></a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>-->
    <div style='clear:both'><br></div>
    <div class="ps-product-list ps-new-arrivals">
        <div class="ps-container">
            <div class="ps-section__header">
                <h3>Produk Baru Terpopuler</h3>
                <ul class="ps-section__links">
                    <?php 
                        $kategori = $this->db->query("SELECT * FROM rb_kategori_produk ORDER BY RAND() LIMIT 3");
                        foreach ($kategori->result_array() as $row) {
                            echo "<li><a href='".base_url()."produk/kategori/$row[kategori_seo]'>$row[nama_kategori]</a></li>";
                        }
                    ?>
                    <li><a href="<?php echo  base_url(); ?>produk">Lihat Semua</a></li>
                </ul>
            </div>
            <div class="ps-section__content">
                <div class="row">
                <?php
                $terbaru = $this->model_reseller->produk_terbaru(0,0,8);
                foreach ($terbaru->result_array() as $row){
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
                        $harga_produk =  "Rp ".rupiah($row['harga_konsumen']-$disk['diskon'])." <del>".rupiah($row['harga_konsumen'])."</del>";
                    }else{
                        $harga_produk =  "Rp ".rupiah($row['harga_konsumen']);
                    }

                    $sold = $this->model_reseller->produk_terjual($row['id_produk'],2);
                    $persentase = ($sold->num_rows()/$beli['beli'])*100;

                    echo "<div class='col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12 '>
                            <div class='ps-product--horizontal'>
                                <div class='ps-product__thumbnail'><a href='".base_url()."produk/detail/$row[produk_seo]'><img src='".base_url()."asset/foto_produk/$foto_produk' alt='$foto_produk'></a></div>
                                <div class='ps-product__content'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                    
                                    <p class='ps-product__price'>$harga_produk</p>
                                </div>
                            </div>
                        </div>";
                }
                ?>
                </div>
            </div>
        </div>
    </div><hr>
    <!--<div class="ps-newsletter">
        <div class="ps-container">
            <form class="ps-form--newsletter" action="do_action" method="post">
                <div class="row">
                    <div class="col-xl-5 col-lg-12 col-md-12 col-sm-12 col-12 ">
                        <div class="ps-form__left">
                            <h3>Newsletter</h3>
                            <p>Subcribe to get information about products and coupons</p>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-12 col-md-12 col-sm-12 col-12 ">
                        <div class="ps-form__right">
                            <div class="form-group--nest">
                                <input class="form-control" type="email" placeholder="Email address">
                                <button class="ps-btn">Subscribe</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>-->
</div>