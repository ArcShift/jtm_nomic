
<?php
$rows = $this->db->query("SELECT a.*, b.nama_kota, c.nama_provinsi FROM `rb_reseller` a JOIN rb_kota b ON a.kota_id=b.kota_id
                            JOIN rb_provinsi c ON b.provinsi_id=c.provinsi_id where a.id_reseller='$record[id_reseller]'")->row_array();
$kat = $this->model_app->view_where('rb_kategori_produk',array('id_kategori_produk'=>$record['id_kategori_produk']))->row_array();
$jual = $this->model_reseller->jual_reseller($record['id_reseller'],$record['id_produk'])->row_array();
$beli = $this->model_reseller->beli_reseller($record['id_reseller'],$record['id_produk'])->row_array();
$disk = $this->db->query("SELECT * FROM rb_produk_diskon where id_produk='$record[id_produk]'")->row_array();
$diskon = rupiah(($disk['diskon']/$record['harga_konsumen'])*100,0)."%";
if ($disk['diskon']>0){ $diskon_persen = "<div class='top-right'>$diskon</div>"; }else{ $diskon_persen = ''; }
if ($disk['diskon']>=1){ 
  $harga_konsumen =  "Rp ".rupiah($record['harga_konsumen']-$disk['diskon']);
  $harga_asli = "Rp ".rupiah($record['harga_konsumen']);
}else{
  $harga_konsumen =  "Rp ".rupiah($record['harga_konsumen']);
  $harga_asli = "";
}
?>
<div class="ps-breadcrumb">
<div class="ps-container">
    <ul class="breadcrumb">
        <li><a href="<?php echo base_url(); ?>">Home</a></li>
        <li><a href="<?php echo base_url().'produk/kategori/'.$kat['kategori_seo']; ?>"><?php echo $kat['nama_kategori']; ?></a></li>
        <li><?php echo $record['nama_produk']; ?></li>
    </ul>
</div>
</div>
<div class="ps-page--product">
<div class="ps-container">
    <div class="ps-page__container">
        <div class="ps-page__left">
            <div class="ps-product--detail ps-product--fullwidth">
            <?php 
                echo "<form action='".base_url()."produk/keranjang/$record[id_reseller]/$record[id_produk]' method='POST'>";
            ?>
                <div class="ps-product__header">
                    <div class="ps-product__thumbnail" data-vertical="true">
                        <figure>
                            <div class="ps-wrapper">
                                <div class="ps-product__gallery" data-arrow="true">
                                    <?php
                                        if ($record['gambar'] != ''){ 
                                            $ex = explode(';',$record['gambar']);
                                            $hitungex = count($ex);
                                            for($i=0; $i<$hitungex; $i++){
                                                if (file_exists("asset/foto_produk/".$ex[$i])) { 
                                                    echo "<div class='item'><a href='".base_url()."asset/foto_produk/".$ex[$i]."'><img src='".base_url()."asset/foto_produk/".$ex[$i]."'></a></div>";
                                                }
                                            }
                                        }else{
                                            echo "<i style='color:red'>Gambar / Foto untuk Produk ini tidak tersedia!</i>";
                                        }
                                    ?>
                                </div>
                            </div>
                        </figure>
                        <div class="ps-product__variants" data-item="4" data-md="4" data-sm="4" data-arrow="false">
                            <?php
                                if ($record['gambar'] != ''){ 
                                    $ex = explode(';',$record['gambar']);
                                    $hitungex = count($ex);
                                    for($i=0; $i<$hitungex; $i++){
                                        if (file_exists("asset/foto_produk/".$ex[$i])) { 
                                            echo "<div class='item'><img src='".base_url()."asset/foto_produk/".$ex[$i]."'></div>";
                                        }
                                    }
                                }else{
                                    echo "<i style='color:red'>Gambar / Foto untuk Produk ini tidak tersedia!</i>";
                                }
                            ?>
                        </div>
                    </div>
                    <div class="ps-product__info">
                        <h1><?php echo $record['nama_produk']; ?></h1>
                        <div class="ps-product__meta">
                            <p>Berat : <a href="#"><?php echo "$record[berat] Gram" ?></a></p>
                            <div class="ps-product__rating">
                                <select class="ps-rating" data-read-only="true">
                                    <?php 
                                        echo rate_bintang($record['id_produk']);
                                    ?>
                                </select>
                                <span>(<?php echo rate_jumlah($record['id_produk']); ?> Ulasan)</span>
                            </div>
                        </div>
                        <h4 class="ps-product__price"><?php echo "$harga_konsumen <del style='color:#8a8a8a'>$harga_asli</del>"; ?></h4>
                        <div class="ps-product__desc">
                            <p><a href="<?php echo base_url()."produk/produk_reseller/$record[id_reseller]"; ?>"><strong> <?php echo cek_paket_icon($rows['id_reseller']).' '.$rows['nama_reseller']; ?></strong></a>
                            <?php 
                                echo "<a target='_BLANK' style='text-transform: capitalize; font-size: 9px; background: green; color: #fff; padding: 0px 10px;' class='ps-btn' href='https://api.whatsapp.com/send?phone=$rows[no_telpon]&amp;text=Assalam,%20Haloo!%20$rows[nama_reseller],%20Saya%20Mau%20Order%20$record[nama_produk]...'><span class='icon-bubbles'></span> Chat Penjual.</a>";
                            ?>
                            </p>
                            <?php echo nl2br($record['tentang_produk']); ?>
                        </div>
                        <!--<div class="ps-product__variations">
                            <figure>
                                <figcaption>Color</figcaption>
                                <div class="ps-variant ps-variant--color color--1"><span class="ps-variant__tooltip">Black</span></div>
                                <div class="ps-variant ps-variant--color color--2"><span class="ps-variant__tooltip"> Gray</span></div>
                            </figure>
                        </div>-->

                        <div class="ps-product__shopping d-none d-sm-block">
                            <?php 
                                echo $this->session->flashdata('message'); 
                                $this->session->unset_userdata('message');
                            ?>
                            <figure class='d-inline'>
                                <figcaption>Quantity</figcaption>
                                <div class="form-group--number">
                                    <!--<button class="up"><i class="fa fa-plus"></i></button>
                                    <button class="down"><i class="fa fa-minus"></i></button>-->
                                    <input style='font-size:20px' class="form-control" type="number" value='1' name='qty'>
                                </div>
                            </figure>

                            <button type='submit' name='keranjang' class="ps-btn ps-btn--black ml-3" href="#">Masukkan Keranjang</button>
                            <button type='submit' name='beli' class="ps-btn" href="#">Beli Sekarang</button>
                        </div>
                        <div class="ps-product__specification"><a class="report" href="#">Laporkan Penyalahgunaan</a>
                            <!--<p><strong>SKU:</strong> SF1133569600-1</p>-->
                            <p class="categories"><strong> Categories : </strong><a href="<?php echo base_url().'produk/kategori/'.$kat['kategori_seo']; ?>"><?php echo $kat['nama_kategori']; ?></a></p>
                            <p class="tags"><strong> Tags : </strong> <?php echo $record['tag']; ?></p>
                        </div>
                    </div>
                </div>
            </form>

                <div class="ps-product__content ps-tab-root">
                    <ul class="ps-tab-list">
                        <li class="active"><a href="#tab-1">Deskripsi</a></li>
                        <li><a href="#tab-3">Penjual</a></li>
                        <li><a href="#tab-4">Ulasan (<?php echo rate_jumlah($record['id_produk']); ?>)</a></li>
                        <li><a href="#tab-5">Tanya Jawab</a></li>
                    </ul>
                    <div class="ps-tabs">
                        <div class="ps-tab active" id="tab-1">
                            <div class="ps-document">
                            <?php echo $record['keterangan']; ?>
                            </div>
                        </div>
                        <div class="ps-tab" id="tab-3">
                            <h4><?php echo cek_paket_icon($rows['id_reseller']).' '.$rows['nama_reseller']; ?></h4>
                            <?php 

                                echo "$rows[keterangan] <hr>
                                        $rows[alamat_lengkap] <br>
                                        ".kecamatan($rows['kecamatan_id'],$rows['kota_id']); 
                            ?>
                        </div>
                        <div class="ps-tab" id="tab-4">
                                <?php 
                                    echo $this->session->flashdata('message_ulasan'); 
                                    $this->session->unset_userdata('message_ulasan');
                                ?><br>
                            <div class="row">
                                <div class="col-xl-5 col-lg-5 col-md-12 col-sm-12 col-12 ">
                                    <div class="ps-block--average-rating">
                                        <div class="ps-block__header">
                                            <?php 
                                                echo "<h3>".number_format(rate_total($record['id_produk']),1)."</h3>
                                                <select class='ps-rating' data-read-only='true'>".rate_bintang($record['id_produk'])."</select>
                                                <span>".rate_jumlah($record['id_produk'])." Ulasan</span>";
                                            ?>
                                        </div>

                                        <?php 
                                            for ($i=1; $i <= 5; $i++) { 
                                                $rating_cek = $this->db->query("SELECT * FROM rb_produk_ulasan where id_produk='$record[id_produk]' AND rating='$i'")->num_rows();
                                                $prosentase = number_format(sprintf("%2.1f",($rating_cek/rate_jumlah($record['id_produk'])*100)));
                                                echo "<div class='ps-block__star'><span>$i Star</span>
                                                        <div class='ps-progress' data-value='$prosentase'><span></span></div><span>$prosentase%</span>
                                                    </div>";
                                            }
                                        ?>
                                    </div>
                                </div>
                                <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-12 ">
                                    <form class="ps-form--review" action="<?php echo base_url()."produk/detail/".$this->uri->segment(3); ?>" method="POST">
                                        <h4>Kirimkan Ulasan Produk.</h4>
                                        <div class="form-group form-group__rating">
                                            <label>Berikan Rating untuk Produk ini </label>
                                            <style type="text/css">.fa-star{ color:orange; }</style>
                                            <div class='star-rating'>
                                                <span class='fa divya fa-star-o' data-rating='1' style='font-size:20px; cursor:pointer'></span>
                                                <span class='fa fa-star-o' data-rating='2' style='font-size:20px; cursor:pointer'></span>
                                                <span class='fa fa-star-o' data-rating='3' style='font-size:20px; cursor:pointer'></span>
                                                <span class='fa fa-star-o' data-rating='4' style='font-size:20px; cursor:pointer'></span>
                                                <span class='fa fa-star-o' data-rating='5' style='font-size:20px; cursor:pointer'></span>
                                                <input type='hidden' name='rating' class='rating-value' value='1'>
                                            </div>
                                        </div>
                                        <?php 
                                            $cek_beli = $this->db->query("SELECT * FROM rb_penjualan_detail a JOIN rb_penjualan b ON a.id_penjualan=b.id_penjualan where a.id_produk='$record[id_produk]' AND b.id_pembeli='".$this->session->id_konsumen."' AND b.proses!='0' AND b.status_pembeli='konsumen'");
                                            if ($cek_beli->num_rows()>=1){
                                                echo "<div class='form-group'>
                                                        <textarea class='form-control' name='ulasan' rows='6' placeholder='Tuliskan Ulasan disini,..'></textarea>
                                                    </div>
                    
                                                    <div class='form-group submit'>
                                                        <button type='submit' name='submit_rating' class='ps-btn'>Kirimkan</button>
                                                    </div>";
                                            }else{
                                                echo "<div class='alert alert-danger'><span><b>PENTING</b> - Maaf, Anda tidak bisa memberikan ulasan,<br>
                                                                                Form Ulasan hanya terbuka bagi konsumen yang sudah membeli Produk ini.</span></div>";
                                            }
                                        ?>
                                    </form>
                                </div>
                            </div><br><br>

                            <div class="ps-post-comments">
                                <?php 
                                    $ulasan = $this->db->query("SELECT a.*, b.nama_lengkap, b.foto, b.email FROM `rb_produk_ulasan` a JOIN rb_konsumen b ON a.id_konsumen=b.id_konsumen where a.id_produk='$record[id_produk]' ORDER BY waktu_kirim DESC");
                                    foreach ($ulasan->result_array() as $row) {
                                        echo "<div class='ps-block--comment'>
                                                <div class='ps-block__thumbnail'>";
                                                if (trim($row['foto'])=='' OR !file_exists("asset/foto_user/".$row['foto'])){
                                                    echo "<img src='".base_url()."asset/foto_user/blank.png'>";
                                                }else{
                                                    echo "<img src='".base_url()."asset/foto_user/$row[foto]'>";
                                                }
                                                echo "</div>
                                                <div class='ps-block__content'>
                                                    <h5>$row[nama_lengkap]<small>".jam_tgl_indo($row['waktu_kirim'])."</small></h5>
                                                    <select class='ps-rating' data-read-only='true'>".rate_bintang_ulasan($row['rating'])."</select>
                                                    <p>".nl2br($row['ulasan'])."</p>
                                                </div>
                                            </div>";
                                    }
                                ?>
                            </div>

                        </div>
                        <div class="ps-tab" id="tab-5">
                            <div class="ps-block--questions-answers">
                                <div id="fb-root"></div>
                                <?php 
                                    echo "<div class='fb-comments' data-href='".base_url()."produk/detail/$record[produk_seo]' data-width='100%' data-numposts='5' data-colorscheme='light'></div> ";
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ps-page__right">
            <aside class="widget widget_product widget_features">
                <p><i class="icon-network"></i> Pengiriman ke seluruh Pelosok Indonesia.</p>
                <p><i class="icon-3d-rotate"></i> Gratis pengembalian 7 hari jika tidak memenuhi syarat.</p>
                <p><i class="icon-receipt"></i> Penjual memberikan tagihan untuk produk ini.</p>
                <p><i class="icon-credit-card"></i> Bayar online atau ketika barang diterima.</p>
            </aside>
            <aside class="widget widget_sell-on-site">
                <p><i class="icon-store"></i> Mau Jualan?<a href="<?php echo base_url(); ?>auth/register"> Daftar Sekarang!</a></p>
            </aside>
            <aside class="widget widget_ads">
                <?php
                $pasangiklan2 = $this->model_utama->view_ordering_limit('pasangiklan','id_pasangiklan','ASC',0,2);
                foreach ($pasangiklan2->result_array() as $b) {
                    $string = $b['gambar'];
                    if ($b['gambar'] != ''){
                        if(preg_match("/swf\z/i", $string)) {
                            echo "<embed style='margin-bottom:10px' src='".base_url()."asset/foto_pasangiklan/$b[gambar]' quality='high' type='application/x-shockwave-flash'>";
                        } else {
                            echo "<a href='$b[url]' target='_blank'><img style='margin-bottom:10px' src='".base_url()."asset/foto_pasangiklan/$b[gambar]' alt='$b[judul]' /></a>";
                        }
                    }
                }
                ?>
            </aside>
            <?php 
                $pisah_kata  = explode(",",$record['tag']);
                $jml_katakan = (integer)count($pisah_kata);
                $jml_kata = $jml_katakan-1; 
                $ambil_id = substr($rows['id_produk'],0,4);
                $cari = "SELECT a.*, b.nama_reseller FROM rb_produk a JOIN rb_reseller b ON a.id_reseller=b.id_reseller WHERE (a.id_produk<'$ambil_id') and (a.id_produk!='$ambil_id') and (" ;
                for ($i=0; $i<=$jml_kata; $i++){
                $cari .= "a.tag LIKE '%$pisah_kata[$i]%'";
                if ($i < $jml_kata ){
                $cari .= " OR ";}}
                $cari .= ") ORDER BY RAND() DESC LIMIT 2";
                $hasil  = $this->db->query($cari);

            if ($hasil->num_rows()>=1){
            ?>

            <aside class="widget widget_same-brand">
                <h3>Kategori Sama</h3>
                <div class="widget__content">
                    <?php
                        foreach ($hasil->result_array() as $row) {	
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
                                    <div class='ps-product__content hover'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                        <p class='ps-product__price sale'>$harga_produk</p>
                                    </div>
                                </div>
                            </div>";
                        }      
                    ?>
                </div>
            </aside>
            <?php } ?>
        </div>
    </div>
    <div class="ps-section--default">
        <div class="ps-section__header">
            <h3>Produk Terkait</h3>
        </div>
        <div class="ps-section__content">
            <div class="ps-carousel--nav owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="10000" data-owl-gap="30" data-owl-nav="true" data-owl-dots="true" data-owl-item="6" data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="4" data-owl-item-xl="5" data-owl-duration="1000" data-owl-mousedrag="on">
                <?php
                    $pisah_kata  = explode(",",$record['tag']);
                    $jml_katakan = (integer)count($pisah_kata);
                    $jml_kata = $jml_katakan-1; 
                    $ambil_id = substr($rows['id_produk'],0,4);
                    $cari = "SELECT a.*, b.nama_reseller FROM rb_produk a JOIN rb_reseller b ON a.id_reseller=b.id_reseller WHERE (a.id_produk<'$ambil_id') and (a.id_produk!='$ambil_id') and (" ;
                    for ($i=0; $i<=$jml_kata; $i++){
                    $cari .= "a.tag LIKE '%$pisah_kata[$i]%'";
                    if ($i < $jml_kata ){
                    $cari .= " OR ";}}
                    $cari .= ") ORDER BY a.id_produk DESC LIMIT 10";
                    $hasil  = $this->db->query($cari);
                    
                    if ($hasil->num_rows()>=1){
                        foreach ($hasil->result_array() as $row) {	
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
                                            <p class='ps-product__price'>$harga_produk</p>
                                        </div>
                                        <div class='ps-product__content hover'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                            <p class='ps-product__price'>$harga_produk</p>
                                        </div>
                                    </div>
                                </div>";
                        }
                    }else{
                        $kategori_sama = $this->model_reseller->detail_produk_terbaru(0,0,$record['id_kategori_produk'],10);
                        foreach ($kategori_sama->result_array() as $row) {	
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
                                            <p class='ps-product__price'>$harga_produk</p>
                                        </div>
                                        <div class='ps-product__content hover'><a class='ps-product__title' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a>
                                            <p class='ps-product__price'>$harga_produk</p>
                                        </div>
                                    </div>
                                </div>";
                        }
                    }
                ?>
            </div>
        </div>
    </div>
</div>
</div>

<script>
    var $star_rating = $('.star-rating .fa');
    var SetRatingStar = function() {
    return $star_rating.each(function() {
        if (parseInt($star_rating.siblings('input.rating-value').val()) >= parseInt($(this).data('rating'))) {
        return $(this).removeClass('fa-star-o').addClass('fa-star');
        } else {
        return $(this).removeClass('fa-star').addClass('fa-star-o');
        }
    });
    };

    $star_rating.on('click', function() {
    $star_rating.siblings('input.rating-value').val($(this).data('rating'));
    return SetRatingStar();
    });

    SetRatingStar();
    $(document).ready(function() {
    });

    $(".selected").click(function() {
            var selected = $(this).hasClass("highlight");
            $(".selected").removeClass("highlight");
            if(!selected){
            $(this).addClass("highlight");
            }
        
    });
</script>