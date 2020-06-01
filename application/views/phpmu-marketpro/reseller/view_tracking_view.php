<?php 
    $wp = $this->db->query("SELECT a.waktu_proses FROM `rb_penjualan_otomatis` a JOIN rb_penjualan b ON a.kode_transaksi=b.kode_transaksi where a.nominal='$unik[nominal]' AND b.proses='0' AND SUBSTR(timediff(now(), a.waktu_proses),1,2)<'24' GROUP BY b.kode_transaksi")->row_array();
    $date1 = str_replace('-', '/', $wp['waktu_proses']);
    $tomorrow = date('Y-m-d H:i:s',strtotime($date1 . "+1 days"));
    $ss = $this->db->query("SELECT a.*, b.proses, timediff('$tomorrow', now()) as sisa_waktu, SUBSTR(timediff(now(), a.waktu_proses),1,2) as durasi FROM `rb_penjualan_otomatis` a JOIN rb_penjualan b ON a.kode_transaksi=b.kode_transaksi where a.nominal='$unik[nominal]' AND b.proses='0' AND SUBSTR(timediff(now(), a.waktu_proses),1,2)<'24' GROUP BY b.kode_transaksi")->row_array();
?>
<script type="text/javascript">
     $(document).ready(function() {
         var detik   = <?php echo substr($ss['sisa_waktu'],6,2); ?>;
         var menit   = <?php echo substr($ss['sisa_waktu'],3,2); ?>;
         var jam     = <?php echo substr($ss['sisa_waktu'],0,2); ?>;
         var hari    = 0;
         var bulan   = 0;
         function hitung() {
             /** setTimout(hitung, 1000) digunakan untuk 
                 * mengulang atau merefresh halaman selama 1000 (1 detik) 
             */
             setTimeout(hitung,1000);

             /** Jika waktu kurang dari 10 menit maka Timer akan berubah menjadi warna merah */
             if(menit < 10 && jam == 0 && hari == 0 && bulan == 0){
                  var peringatan = 'style="color:red;"';
             };

             /** Menampilkan Waktu Timer pada Tag #Timer di HTML yang tersedia */
             $('#timer').html(
                 '<div align="center"'+peringatan+'>Selesaikan Pembayaran pesanan dalam <br />' + jam + ' jam, ' + menit + ' menit, ' + detik + ' detik</h1><br><hr>'
             );

             /** Melakukan Hitung Mundur dengan Mengurangi variabel detik - 1 */
             detik --;

             /** Jika var detik < 0
                 * var detik akan dikembalikan ke 59
                 * Menit akan Berkurang 1
             */
             if(detik < 0) {
                 detik = 59;
                 menit --;

                 /** Jika menit < 0
                     * Maka menit akan dikembali ke 59
                     * Jam akan Berkurang 1
                 */
                 if(menit < 0) {
                     menit = 59;
                     jam --;
                      
                     /** Jika jam < 0
                         * Maka jam akan dikembali ke 23
                         * Jam akan Berkurang 1
                     */
                     if(jam < 0) {
                         jam = 23;
                         hari --;
                          
                         /** Jika hari < 0
                             * Maka hari akan dikembali ke 29
                             * Jam akan Berkurang 1
                         */                             
                         if(hari < 0) {
                             hari = 29
                             bulan --;
                              
                             /** Jika var bulan < 0
                                 * clearInterval() Memberhentikan Interval dan submit secara otomatis
                             */
                             if(bulan < 0){
                                 clearInterval(); 
                                 /** Variable yang digunakan untuk submit secara otomatis di Form */
                                 var sub = document.getElementById("sub"); 
                                 alert('Waktu Pembayaran Otomatis telah habis, Silahkan konfirmasi manual jika sudah transfer...');
                             }
                         }
                     }
                 } 
             } 
         }           
         /** Menjalankan Function Hitung Waktu Mundur */
         hitung();
   }); 
   // ]]>
 </script>

<div class="ps-breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="<?php echo base_url()."konfirmasi/tracking"; ?>">Tracking</a></li>
            <li><?php echo $judul; ?></li>
        </ul>
    </div>
</div>
<div class="ps-section--shopping ps-shopping-cart">
    <div class="container">
        <div class="ps-section__content">
            <div class="table-responsive">
                <div class="row">
                <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12 ">
                <?php 
                    if ($rows['proses']=='0'){
                        if ($ss['durasi']<='24'){
                          echo "<div style='font-size:22px; color:red; line-height:initial' id='timer'></div>";
                        }
                          echo "<p><center style='font-size:18px'>Lakukan pembayaran <u><b style='color:green'>".rupiah($unik['nominal'])."</b></u> (Tepat Hingga 3 Digit Terakhir) :</center></p>
                        <br><table class='table table-sm table-hover'>
                            <thead>
                            <tr bgcolor='#e3e3e3'>
                                <th scope='col' width='20px'><strong>No</strong></th>
                                <th scope='col'><strong>Nama Bank</strong></th>
                                <th scope='col'><strong>Rekening</strong></th>
                                <th scope='col'><strong>Atas Nama</strong></th>
                            </tr>
                            </thead>
                            <tbody>";
                                $noo = 1;
                                $rekening = $this->model_app->view('rb_rekening');
                                foreach ($rekening->result_array() as $row){
                                    echo "<tr><td>$noo</td>
                                        <td>$row[nama_bank]</td>
                                        <td>$row[no_rekening]</td>
                                        <td>$row[pemilik_rekening]</td>
                                    </tr>";
                                    $noo++;
                                }
                        echo "</tbody>
                            </table><hr><br>";
                    }

                echo "<table class='table table-sm'>
                    <tbody>
                    <tr><td style='width:150px'><strong>No. Invoice</strong></td>  <td class='text-success'><b>$judul</b></td></tr>
                        <tr><td><strong>Dikirim kepada</strong></td>  <td>$rows[nama_lengkap]</td></tr>
                        <tr><td><strong>No Hp/Telpon</strong></td>      <td>".substr($rows['no_hp'], 0, -2)."xx</td></tr>
                        <tr><td><strong>Alamat Pengiriman</strong></td> <td>".alamat($judul)."</td></tr>
                    </tbody>
                    </table><hr>
                    
                    <div style='padding:5px; font-size:16px; font-weight:bold; background:#f4f4f4; border-bottom:1px solid #ab0534; margin-bottom:10px;'>Data Produk</div>";
                          $no = 1;
                          foreach ($record->result_array() as $row){
                          $sub_total = (($row['harga_jual']-$row['diskon'])*$row['jumlah']);
                          $ex = explode(';', $row['gambar']);
                          if (trim($ex[0])==''){ $foto_produk = 'no-image.png'; }else{ $foto_produk = $ex[0]; }
                          echo "<a style='font-weight:800; font-size:16px' href='".base_url()."produk/detail/$row[produk_seo]'>$row[nama_produk]</a>
                                <div class='ps-product--cart'>
                                    <div class='ps-product__thumbnail'>
                                        <div style='height:60px; overflow:hidden'><a href='".base_url()."produk/detail/$row[produk_seo]'><img style='padding-right:10px' src='".base_url()."asset/foto_produk/$foto_produk' alt='$row[nama_produk]'></a></div>
                                    </div>
                                    
                                    <div class='ps-product__content' style='text-align:left; padding-left:0px'>
                                        <p><i style='color:green'>Penjual :<strong> $row[nama_reseller]</strong></i></p>
                                        $row[jumlah]($row[berat] g) x ".rupiah($row['harga_jual']-$row['diskon'])." = <b>".rupiah($sub_total)."</b><br>
                                        Catatan : $row[keterangan_order]
                                    </div>
                                </div><br>";
                            $no++;
                          }
                ?>
                
                </div>

                <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 ">
                    <div class="ps-block--shopping-total">
                        <div class="ps-block__header">
                            <?php 
                                $ong = $this->db->query("SELECT sum(ongkir) as ongkir FROM rb_penjualan where kode_transaksi='$kode'")->row_array();
                            ?>
                            <p><b>Status Order<span class='text-danger'><?php echo status($total['proses']); ?></span></b></p><hr>
                            <p>Berat<span> <?php echo "$total[total_berat] Gram"; ?></span></p>
                            <p>Ongkos Kirim <span> <?php echo "Rp ".rupiah($ong['ongkir']); ?></span></p>
                            <p>Subtotal <span> <?php echo "Rp ".rupiah($total['total']-$total['diskon_total']); ?></span></p>
                        </div>
                        <div class="ps-block__content">
                            <ul class="ps-block__product">
                                <?php
                                  $penjual = $this->db->query("SELECT a.id_penjualan, a.id_penjual, a.ongkir, a.kurir, a.service, b.id_reseller, b.nama_reseller, b.alamat_lengkap, c.nama_kota FROM `rb_penjualan` a JOIN rb_reseller b ON a.id_penjual=b.id_reseller JOIN rb_kota c ON b.kota_id=c.kota_id where a.kode_transaksi='$kode'");
                                  foreach ($penjual->result_array() as $pen) {
                                    $ber = $this->db->query("SELECT sum(c.berat) as berat FROM `rb_penjualan` a JOIN rb_penjualan_detail b ON a.id_penjualan=b.id_penjualan 
                                    JOIN rb_produk c ON b.id_produk=c.id_produk where a.kode_transaksi='$kode' AND a.id_penjual='$pen[id_penjual]'")->row_array();
                                    echo "<li><a href='".base_url()."produk/produk_reseller/$pen[id_reseller]'><b>$pen[nama_reseller]</b></a> <br>
                                              Ongkir : Rp ".rupiah($pen['ongkir'])." <small style='color:blue'>($ber[berat] Gram)</small><br>
                                              <small style='color:blue'>$pen[kurir], $pen[service]</small>
                                              <br>Dikirim dari : $pen[nama_kota] <br>
                                              $pen[alamat_lengkap]<br>
                                              <a class='blink_me' href='".base_url()."members/keranjang_detail/$pen[id_penjualan]'><u>Cek Resi Pengiriman</u></a></li>";
                                  }
                                ?>
                                
                            </ul>
                            <h3>Total <span><?php echo "Rp ".rupiah($unik['nominal']); ?></span></h3>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <hr>

    </div>
</div>