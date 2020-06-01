<?php 
if ($rows['proses']=='0'){ 
    $proses = '<i class="text-danger">Pending</i>'; 
    $col = 6;
}elseif($rows['proses']=='1'){ 
    $proses = '<i class="text-warning">Proses</i>'; 
    $col = 12;
}elseif($rows['proses']=='2'){ 
    $proses = '<i class="text-info">Konfirmasi</i>'; 
    $col = 12;
}else{ 
    $proses = '<i class="text-success">Packing </i>'; 
    $col = 12;
} 
$detail = $this->db->query("SELECT * FROM rb_penjualan where id_penjualan='".$this->uri->segment(3)."'")->row_array();
$total = $this->db->query("SELECT sum((a.harga_jual-a.diskon)*a.jumlah) as total, sum(b.berat*a.jumlah) as total_berat FROM `rb_penjualan_detail` a JOIN rb_produk b ON a.id_produk=b.id_produk where a.id_penjualan='".$this->uri->segment(3)."'")->row_array();
$res = $this->db->query("SELECT * FROM rb_reseller where id_reseller='$rows[id_reseller]'")->row_array();
$usr = $this->db->query("SELECT * FROM rb_konsumen where id_konsumen='$rows[id_pembeli]'")->row_array();
$angka_acak = substr($judul,-3);
?>
<div class="ps-breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="<?php echo base_url()."konfirmasi/tracking"; ?>">Tracking</a></li>
            <li><?php echo $rows['kode_transaksi'].'/'.$rows['id_reseller']; ?></li>
        </ul>
    </div>
</div>
<div class="ps-section--shopping ps-shopping-cart">
    <div class="container">
        <div class="ps-section__content">
            <div class="table-responsive">
                <div class="row">
                <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12 ">

                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="detail-tab" data-toggle="tab" href="#detail" role="tab" aria-controls="detail" aria-selected="true">Detail Pesanan</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link blink_me" id="resi-tab" data-toggle="tab" href="#resi" role="tab" aria-controls="resi" aria-selected="false">Cek Resi Pengiriman</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent"><br>
                        <div class="tab-pane fade show active" id="detail" role="tabpanel" aria-labelledby="detail-tab">
                            <?php 
                                echo "<table class='table table-sm'>
                                <tbody>
                                <tr><td style='width:150px'><strong>No. Invoice</strong></td>  <td class='text-success'><b>$rows[kode_transaksi]/$rows[id_reseller]</b></td></tr>
                                    <tr><td><strong>Dikirim kepada</strong></td>  <td>$usr[nama_lengkap]</td></tr>
                                    <tr><td><strong>No Hp/Telpon</strong></td>      <td>".substr($usr['no_hp'], 0, -2)."xx</td></tr>
                                    <tr><td><strong>Alamat Pengiriman</strong></td> <td>".alamat($rows['kode_transaksi'])."</td></tr>
                                </tbody>
                                </table><hr><br>
                                
                                <div style='padding:5px; font-size:16px; font-weight:bold; background:#f4f4f4; border-bottom:1px solid #ab0534; margin-bottom:10px;'>Data Produk</div>";
                                $no = 1;
                                foreach ($record as $row){
                                $sub_total = (($row['harga_jual']-$row['diskon'])*$row['jumlah']);
                                $ex = explode(';', $row['gambar']);
                                if (trim($ex[0])==''){ $foto_produk = 'no-image.png'; }else{ $foto_produk = $ex[0]; }
                                echo "<a style='font-weight:800; font-size:16px' href='".base_url()."produk/detail/$row[produk_seo]'>$row[nama_produk]</a>
                                <div class='ps-product--cart'>
                                    <div class='ps-product__thumbnail'>
                                        <div style='height:60px; overflow:hidden'><a href='".base_url()."produk/detail/$row[produk_seo]'><img style='padding-right:10px' src='".base_url()."asset/foto_produk/$foto_produk' alt='$row[nama_produk]'></a></div>
                                    </div>
                                    
                                    <div class='ps-product__content' style='text-align:left; padding-left:0px'>
                                        $row[jumlah]($row[berat] g) x ".rupiah($row['harga_jual']-$row['diskon'])." = <b>".rupiah($sub_total)."</b><br>
                                        Catatan : $row[keterangan_order]
                                    </div>
                                </div><br>";
                                    $no++;
                                }
                                
                                echo "<br><br>";
                            ?>
                        </div>
                        <div class="tab-pane fade" id="resi" role="tabpanel" aria-labelledby="resi-tab">
                        <?php 
                            $obj = cek_resi($rows['no_resi'],$rows['kode_kurir']);
                            if ($rows['no_resi']==''){
                                echo "<center style='color:red; margin:10% 0px'>No Resi untuk pesanan Tidak ditemukan, <br>silahkan menghubungi penjual anda atau silahkan kembali beberapa saat lagi.</center>";
                            }else{
                            echo "<table class='table table-sm'>
                                    <tbody>
                                    <tr>
                                        <tr><td width='130'>No Resi</td>        <td>:</td><td><b>".$obj['rajaongkir']['result']['details']['waybill_number']."</b></td></tr>
                                        <tr><td>Status</td>                     <td>:</td><td><b>".$obj['rajaongkir']['result']['summary']['status']."</b></td></tr>
                                        <td>Kurir</td>                          <td>:</td><td>".$obj['rajaongkir']['result']['summary']['courier_name']."</td></tr>
                                        <tr><td>Service</td>                    <td>:</td><td>".$obj['rajaongkir']['result']['summary']['service_code']."</td></tr>
                                        <tr><td>Dikirim tanggal</td>            <td>:</td><td>".$obj['rajaongkir']['result']['details']['waybill_date']." ".$obj['rajaongkir']['result']['details']['waybill_time']."</td></tr>
                                        <tr><td valign='top'>Dikirim oleh</td>  <td valign='top'>:</td><td valign='top'>".$obj['rajaongkir']['result']['details']['shippper_name']."<br>".$obj['rajaongkir']['result']['details']['origin']."</td></tr>
                                        <tr><td valign='top'>Dikirim ke</td>    <td valign='top'>:</td><td valign='top'>".$obj['rajaongkir']['result']['details']['receiver_name']."<br> ".$obj['rajaongkir']['result']['details']['receiver_address1']." ".$obj['rajaongkir']['result']['details']['receiver_address2']." ".$obj['rajaongkir']['result']['details']['receiver_address3']." ".$obj['rajaongkir']['result']['details']['receiver_city']."</td></tr>
                                        <tr><td>Kurir Status</td>                 <td>:</td><td>".$obj['rajaongkir']['result']['delivery_status']['status']."</td></tr>
                                    </tbody>
                                </table><br>
                                
                                <table class='table table-sm'>
                                <thead>
                                <tr>
                                    <th><b>Tanggal</b></th>
                                    <th><b>Keterangan</b></th>
                                </tr>
                                </thead>
                                <tbody>";
                                for($i=0; $i < count($obj['rajaongkir']['result']['manifest']); $i++){
                                    echo "<tr>
                                            <td class='text-success'>".tgl_indo($obj['rajaongkir']['result']['manifest'][$i]['manifest_date'])." ".$obj['rajaongkir']['result']['manifest'][$i]['manifest_time']."</td>
                                            <td>".$obj['rajaongkir']['result']['manifest'][$i]['manifest_description']."</td>
                                        </tr>";
                                }
                                echo "</tbody></table>";
                            }
                        ?>
                        </div>
                    </div>
                </div>

                <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 ">
                    <div class="ps-block--shopping-total">
                        <div class="ps-block__header">
                            <p><b>Status Order<span> <?php echo $proses; ?></span></b></p><hr>
                            <p>Berat<span> <?php echo "$total[total_berat] Gram"; ?></span></p>
                            <p>Ongkos Kirim <span> <?php echo "Rp ".rupiah($detail['ongkir']); ?></span></p>
                            <p>Subtotal <span> <?php echo "Rp ".rupiah($total['total']-$total['diskon_total']); ?></span></p>
                        </div>
                        <div class="ps-block__content">
                            <ul class="ps-block__product">
                                <?php
                                  $penjual = $this->db->query("SELECT a.id_penjual, a.ongkir, a.kurir, a.service, b.id_reseller, b.nama_reseller, b.alamat_lengkap, c.nama_kota FROM `rb_penjualan` a JOIN rb_reseller b ON a.id_penjual=b.id_reseller JOIN rb_kota c ON b.kota_id=c.kota_id where a.id_penjualan='".cetak($this->uri->segment(3))."'");
                                  foreach ($penjual->result_array() as $pen) {
                                    $ber = $this->db->query("SELECT sum(c.berat) as berat FROM `rb_penjualan` a JOIN rb_penjualan_detail b ON a.id_penjualan=b.id_penjualan 
                                    JOIN rb_produk c ON b.id_produk=c.id_produk where a.kode_transaksi='$kode' AND a.id_penjual='$pen[id_penjual]'")->row_array();
                                    echo "<li><a href='".base_url()."produk/produk_reseller/$pen[id_reseller]'><b>$pen[nama_reseller]</b></a> <br>
                                              Ongkir : Rp ".rupiah($pen['ongkir'])." <small style='color:blue'>($ber[berat] Gram)</small><br>
                                              <small style='color:blue'>$pen[kurir], $pen[service]</small>
                                              <br>Dikirim dari : $pen[nama_kota] <br>
                                              $pen[alamat_lengkap]</li>";
                                  }
                                ?>
                                
                            </ul>
                            <h3>Total <span><?php echo "Rp ".rupiah(($total['total']-$total['diskon_total'])+$detail['ongkir']+$angka_acak); ?></span></h3>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <hr>

    </div>
</div>
