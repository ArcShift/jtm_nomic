<?php 
$proses = '<i class="text-danger">Pending</i>'; 
?>
<div class="ps-breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="<?php echo base_url()."produk"; ?>">Produk</a></li>
            <li><?php echo $title; ?></li>
        </ul>
    </div>
</div>
<div class="ps-section--shopping ps-shopping-cart">
    <div class="container">
      <?php 
          echo $this->session->flashdata('message'); 
          $this->session->unset_userdata('message');
      ?>
        <div class="ps-section__content">
            <div class="table-responsive">
                <div class="row">
                <?php 
                  if ($this->session->idp == ''){
                    echo "<div class='col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 '>
                    <div style='padding:10%; text-align:center'><span class='text-danger'>Maaf, Keranjang belanja anda saat ini masih kosong,...</span><br>
                            <a href='".base_url()."produk'>Klik Disini Untuk mulai Belanja!</a></div></div>";
                  }else{
                    echo "<div class='col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12 '>
                      <form action='".base_url()."produk/keranjang' method='POST'>";
                              $no = 1;
                              foreach ($record->result_array() as $row){
                              $sub_total = (($row['harga_jual']-$row['diskon'])*$row['jumlah']);
                              $ex = explode(';', $row['gambar']);
                              if (trim($ex[0])==''){ $foto_produk = 'no-image.png'; }else{ $foto_produk = $ex[0]; }
                              echo "<a style='font-weight:800; font-size:16px' href='".base_url()."produk/detail/$row[produk_seo]'>$row[nama_produk]</a>
                                <div class='ps-product--cart'>
                                    <input type='hidden' name='id$no' value='$row[id_penjualan_detail]'> 
                                    <div class='ps-product__thumbnail'>
                                        <div style='height:60px; overflow:hidden'><a href='".base_url()."produk/detail/$row[produk_seo]'><img style='padding-right:10px' src='".base_url()."asset/foto_produk/$foto_produk' alt='$row[nama_produk]'></a></div>
                                        <a style='color:red; font-weight:800' href='".base_url()."produk/keranjang_delete/$row[id_penjualan_detail]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><center><i class='icon-cross'></i></center></a>
                                    </div>
                                    
                                    <div class='ps-product__content' style='text-align:left; padding-left:0px'>
                                        <p><i style='color:green'>Penjual :<strong> $row[nama_reseller]</strong></i></p>
                                        <input type='number' name='qty$no' value='$row[jumlah]' style='display:inline-block; margin-bottom:3px; width:50px; border-bottom:1px dotted #cecece; text-align: center; ' autocomplete='off'> x ".rupiah($row['harga_jual']-$row['diskon'])." = <b>".rupiah($sub_total)."</b>
                                        <input type='text' name='keterangan$no' value='$row[keterangan_order]' style='display:inline-block; margin-bottom:3px; width:100%; border-bottom:1px dotted #cecece' placeholder='Tulis Catatan untuk Penjual...' autocomplete='off'>
                                    </div>
                                </div><br>";
                                $no++;
                              }
                              
                        echo "<div class='ps-section__cart-actions'>
                            <a class='ps-btn' href='".base_url()."produk'><i class='icon-arrow-left'></i> Kembali Belanja</a>
                            <button type='submit' name='update' class='ps-btn ps-btn--outline'><i class='icon-sync'></i> Update Keranjang</button>
                          </div>
                        </form>";
                    ?>
                    </div>

                    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 ">
                        <div class="ps-block--shopping-total">
                            <div class="ps-block__header">
                                <p><b>Status Order<span> <?php echo $proses; ?></span></b></p><hr>
                                <p>Berat<span> <?php echo "$total[total_berat] Gram"; ?></span></p>
                                <p>Subtotal <span> <?php echo "Rp ".rupiah($total['total']-$total['diskon_total']); ?></span></p>
                            </div>
                            <div class="ps-block__content">
                                <ul class="ps-block__product">

                                    <?php
                                    if ($this->session->idp != ''){
                                      $penjual = $this->db->query("SELECT a.*, e.nama_reseller, e.alamat_lengkap, e.keterangan, b.id_reseller, c.nama_kota, d.nama_provinsi FROM `rb_penjualan_temp` a JOIN rb_produk b ON a.id_produk=b.id_produk 
                                      JOIN rb_reseller e ON b.id_reseller=e.id_reseller
                                      JOIN rb_kota c ON e.kota_id=c.kota_id 
                                      JOIN rb_provinsi d ON c.provinsi_id=d.provinsi_id where a.session='".$this->session->idp."' GROUP BY b.id_reseller");
                                      foreach ($penjual->result_array() as $pen) {
                                        $ber = $this->db->query("SELECT sum(c.berat) as berat FROM `rb_penjualan` a JOIN rb_penjualan_detail b ON a.id_penjualan=b.id_penjualan 
                                        JOIN rb_produk c ON b.id_produk=c.id_produk where a.kode_transaksi='$kode' AND a.id_penjual='$pen[id_penjual]'")->row_array();
                                        echo "<li><b>$pen[nama_reseller]</b> (Toko) <br>
                                                  Pengiriman dari : $pen[nama_kota] <br>
                                                  $pen[alamat_lengkap]</li>";
                                      }
                                    }
                                    ?>
                                    
                                </ul>
                                <h3>Total <span><?php echo "Rp ".rupiah(($total['total']-$total['diskon_total'])+$total['ongkir']); ?></span></h3>
                            </div>
                        </div>
                        <a class="ps-btn ps-btn--fullwidth" href="<?php echo base_url()."produk/checkouts"; ?>">Lanjut ke Pembayaran</a>
                    </div>
              <?php } ?>
                </div>
            </div>
        </div>
        <hr>

    </div>
</div>
