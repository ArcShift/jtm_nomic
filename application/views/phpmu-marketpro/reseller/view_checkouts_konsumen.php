<?php 
$proses = '<i class="text-danger">Pending</i>'; 
$total = $this->db->query("SELECT sum((a.harga_jual*a.jumlah)-a.diskon) as total, sum(b.berat*a.jumlah) as total_berat FROM `rb_penjualan_temp` a JOIN rb_produk b ON a.id_produk=b.id_produk where a.session='".$this->session->idp."'")->row_array();
?>
<div class="ps-breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="<?php echo base_url()."produk/keranjang"; ?>">Keranjang</a></li>
            <li><?php echo $title; ?></li>
        </ul>
    </div>
</div>
<div class="ps-section--shopping ps-shopping-cart">
    <div class="container">
        <div class="ps-section__content">
            <div class="table-responsive">
              <?php echo "<form action='".base_url()."produk/selesai_belanja' method='POST'>"; ?>
                <div class="row">
                <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12 ">
                <?php 
                $kon = $this->db->query("SELECT * FROM rb_konsumen where id_konsumen='".$this->session->id_konsumen."'")->row_array();
                  echo "<div class='form-group row' style='margin-bottom:5px'>
                        <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Dikirim Kepada</label>
                        <div class='col-sm-10'>
                            $kon[nama_lengkap]
                        </div>
                        </div>
                        <div class='form-group row' style='margin-bottom:5px'>
                        <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>No Hp/Telpon</label>
                        <div class='col-sm-10'>
                            ".substr($kon['no_hp'], 0, -2)."xx
                        </div>
                        </div>";

                            echo "<div class='form-group row'>
                            <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Alamat Kirim</label>
                            <div class='col-sm-10'>
                                <div class='form-row'>
                                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                                    <select class='form-control form-mini' name='provinsi' id='list_provinsi' required>";
                                    $obj = get_provinsi();
                                    echo "<option value=0>- Pilih Provinsi -</option>";
                                    for($i=0; $i < count($obj['rajaongkir']['results']); $i++){
                                      if ($kon['provinsi_id']==$obj['rajaongkir']['results'][$i]['province_id']){
                                        echo "<option value='".$obj['rajaongkir']['results'][$i]['province_id']."' selected>".$obj['rajaongkir']['results'][$i]['province']."</option>";
                                      }else{
                                        echo "<option value='".$obj['rajaongkir']['results'][$i]['province_id']."'>".$obj['rajaongkir']['results'][$i]['province']."</option>";
                                      }
                                    }
                                    echo "</select>
                                    </div>
                                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                                    <select class='form-control form-mini' name='kota' id='list_kotakab' required>";
                                    $kota = get_kota($kon['provinsi_id']);
                                    echo "<option value=0>- Pilih Kota / Kabupaten -</option>";
                                    for($i=0; $i < count($kota['rajaongkir']['results']); $i++){
                                      if ($kon['kota_id']==$kota['rajaongkir']['results'][$i]['city_id']){
                                        echo "<option value='".$kota['rajaongkir']['results'][$i]['city_id']."' selected>".$kota['rajaongkir']['results'][$i]['city_name']."</option>";
                                      }else{
                                        echo "<option value='".$kota['rajaongkir']['results'][$i]['city_id']."'>".$kota['rajaongkir']['results'][$i]['city_name']."</option>";
                                      }
                                    }
                                    echo "</select>
                                    </div>
                                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                                    <select class='form-control form-mini' name='kecamatan' id='list_kecamatan' required>";
                                    $kec = get_kecamatan($kon['kota_id']);
                                    echo "<option value=0>- Pilih Kecamatan -</option>";
                                    for($i=0; $i < count($kec['rajaongkir']['results']); $i++){
                                      if ($kon['kecamatan_id']==$kec['rajaongkir']['results'][$i]['subdistrict_id']){
                                        echo "<option value='".$kec['rajaongkir']['results'][$i]['subdistrict_id']."' selected>".$kec['rajaongkir']['results'][$i]['subdistrict_name']."</option>";
                                      }else{
                                        echo "<option value='".$kec['rajaongkir']['results'][$i]['subdistrict_id']."'>".$kec['rajaongkir']['results'][$i]['subdistrict_name']."</option>";
                                      }
                                    }
                                    echo "</select>
                                    </div>
                                </div>
                                <input type='text' name='alamat' class='form-control form-mini' value='$kon[alamat_lengkap]' placeholder='Nama Jalan, No Rumah/Kantor anda..' autocomplete='off'>
                            </div>
                            </div>";

                        echo "<table class='table ps-table--shopping-cart table-sm'>
                          <thead>
                            <tr bgcolor='#e3e3e3'>
                              <th>Nama Produk</th>
                              <th>Total</th>
                              <th></th>
                            </tr>
                          </thead>
                          <tbody>";
                
                          $no = 1;
                          foreach ($record as $row){
                            $re = $this->model_app->view_where('rb_reseller',array('id_reseller'=>$row['id_reseller']))->row_array();
                          $sub_total = (($row['harga_jual']-$row['diskon'])*$row['jumlah']);
                          $ex = explode(';', $row['gambar']);
                          if (trim($ex[0])==''){ $foto_produk = 'no-image.png'; }else{ $foto_produk = $ex[0]; }
                          echo "<tr>
                                    <td>
                                    <div class='ps-product--cart'>
                                        <div class='ps-product__thumbnail'><a href='".base_url()."produk/detail/$row[produk_seo]'><img src='".base_url()."asset/foto_produk/$foto_produk' alt='$row[nama_produk]'></a></div>
                                        <div class='ps-product__content'>
                                          <small><i>Penjual : $re[nama_reseller]</i></small><br>
                                          <a href='".base_url()."produk/detail/$row[produk_seo]'>$row[nama_produk]</a> 
                                          <br><small>Qty. <b>$row[jumlah]</b>, Harga. Rp ".rupiah($row['harga_jual']-$row['diskon'])." / $row[satuan]</small>
                                          <br><small>".($row['keterangan_order'] == '' ? "<i style='color:#cecece'>Catatan : Tidak ada</i>" : "<i class='text-success'>Catatan : ".$row['keterangan_order'])."</i></small>
                                        </div>
                                    </div></td>
                                    <td class='valign'><b>Rp ".rupiah($sub_total)."</b></td>
                                    <td><a href='".base_url()."produk/keranjang_delete/$row[id_penjualan_detail]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><i class='icon-cross'></i></a></td>
                                </tr>";
                            $no++;
                          }
                          echo "</tbody>
                      </table>";
                ?>
                </div>

                <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 ">
                    <div class="ps-block--shopping-total">
                        <div class="ps-block__content">
                            <ul class="ps-block__product">
                                <?php
                                  if ($this->session->idp != ''){
                                    $reseller_order = $this->db->query("SELECT a.*, e.nama_reseller, e.alamat_lengkap, e.keterangan, e.kota_id, b.id_reseller, c.nama_kota, d.nama_provinsi FROM `rb_penjualan_temp` a JOIN rb_produk b ON a.id_produk=b.id_produk 
                                    JOIN rb_reseller e ON b.id_reseller=e.id_reseller
                                    JOIN rb_kota c ON e.kota_id=c.kota_id 
                                    JOIN rb_provinsi d ON c.provinsi_id=d.provinsi_id where a.session='".$this->session->idp."' GROUP BY b.id_reseller"); 
                                    //echo "<div class='widget'><h3>Anda Belanja dari ".$reseller_order->num_rows()." Toko</h3></div>";
                                    $noo = 1;
                                    foreach ($reseller_order->result_array() as $res) {
                                      $ber = $this->db->query("SELECT sum(b.berat*a.jumlah) as total_berat FROM `rb_penjualan_temp` a JOIN rb_produk b ON a.id_produk=b.id_produk where a.session='".$this->session->idp."' AND b.id_reseller='$res[id_reseller]'")->row_array();
                                      $kota_asal[] = $res['kota_id'];
                                      $berat[] = $ber['total_berat'];
                          
                                      echo "<div class='form-group'>
                                            <label style='display:block'>
                                            <div class='pelapak'>
                                              <p>Toko $noo : <b>$res[nama_reseller]</b></p>
                                              Alamat : $res[nama_kota], $res[nama_provinsi]<br>
                                              <input type='hidden' name='toko$noo' value='$res[id_reseller]'>
                                            </div>
                                            </label>
                                            <label style='display:block; cursor:pointer;'>
                                              <input type='checkbox' name='kurir' class='kurir$noo' value='cod'/> <span style='display:inline-block'>COD (Cash on delivery)</span>
                                            </label>
                                              <select class='form-control form-mini text-success' name='kode_kurir$noo' id='list_kurir$noo' style='margin-bottom: 2px'>
                                                  <option value='0'>- Pilih Kurir Pengiriman -</option>
                                                  <option value='jne'>JNE</option>
                                                  <option value='tiki'>TIKI</option>
                                                  <option value='sicepat'>SiCepat Express</option>
                                                  <option value='pos'>POS Indonesia</option>
                                                  <option value='jet'>JET Express</option>
                                                  <option value='lion'>Lion Parcel</option>
                                                  <option value='ninja'>Ninja Xpress</option>
                                                  <option value='wahana'>Wahana Prestasi Logistik</option>
                                                  <option value='rpx'>RPX Holding</option>
                                              </select>
                                              <ul class='list-group list-group-flush'>
                                                  <div id='list_kurir_div$noo'></div>
                                              </ul>
                                              <ul class='list-group list-group-flush' id='kurir-list$noo'>";
                                                  if ($this->session->id_konsumen==''){
                                                    $cod = $this->db->query("SELECT * FROM rb_reseller_cod where id_reseller='$res[id_reseller]'");
                                                  }else{
                                                    $ress = $this->model_reseller->penjualan_konsumen_detail($this->session->idp)->row_array();
                                                    $cod = $this->db->query("SELECT * FROM rb_reseller_cod where id_reseller='$res[id_reseller]'");
                                                  }
                                                  $service = 1;
                                                  foreach ($cod->result_array() as $ros) {
                                                    echo '<li  id="'.$noo.$idn.'serv-'.$service.'" class="list-group-item clearall-kurir" style="cursor:pointer; margin:1px; padding-bottom: 10px; " onclick="klikongkir'.$noo.'(\'COD (Cash on delivery)\',\''.$ros['nama_alamat'].'\',\''.$ros['biaya_cod'].'\',\''.number_format($ros['biaya_cod'],0).'\',this.id)">
                                                              <span style="color:black;font-weight:bold">COD - '.$ros['nama_alamat'].'</span><small><b>Tarif.</b> <b style="color:red">Rp '.number_format($ros['biaya_cod'],0).'</b> - Ambil Ditempat</small>
                                                        </li>';
                                                    $service++;
                                                  }
                          
                                                  if ($cod->num_rows()<=0){
                                                    echo "<center style='color:red'>COD Tidak Tersedia!</center>";
                                                  }
                          
                                              echo "</ul>
                                              
                                          </div>";
                                      $noo++;
                                    }
                                  }
                                ?>
                            </ul>
                            <hr>
                            <div class="ps-block__header">
                                <p>Berat<span> <?php echo "$total[total_berat] Gram"; ?></span></p>
                                <p>Ongkos Kirim <span> <input type='text' id='ongkir_view' style='background:none; text-align:right; width:100px' value='0' disabled/></span></p>
                                <p>Subtotal <span> <?php echo "Rp ".rupiah($total['total']-$total['diskon_total']); ?></span></p>
                            </div>
                            <h3>Total <span id='totalbayar'></span></h3>
                        </div>
                    </div>
                    <button type='submit' name='submit' id='oksimpan' style='display: none' class="ps-btn ps-btn--fullwidth">Proses Pembayaran</a>
                </div>
                </div>
                <?php 
                  echo "<input type='hidden' name='total' id='total' value='$total[total]'/>
                        <input type='hidden' name='ongkir' id='ongkir' style='color:red' value='0'/>
                        <input type='hidden' name='berat' value='$total[total_berat]'/>
                        <input type='hidden' name='diskonnilai' id='diskonnilai' value='$diskon_total'/>
                        <input type='hidden' name='ongkir1' id='ongkir1' value='0'/>
                        <input type='hidden' name='service1' id='service1'/>
                        <input type='hidden' name='kurir1' id='kurir1'/>
                        <input type='hidden' name='ongkir2' id='ongkir2' value='0'/>
                        <input type='hidden' name='service2' id='service2'/>
                        <input type='hidden' name='kurir2' id='kurir2'/>
                        <input type='hidden' name='ongkir3' id='ongkir3' value='0'/>
                        <input type='hidden' name='service3' id='service3'/>
                        <input type='hidden' name='kurir3' id='kurir3'/>
                        <div class='kota'></div>";
                ?>
                </form>
            </div>
        </div>
        <hr>
    </div>
</div>


<script>
/*$(document).ready(function(){
    $("#submit").on("click", function(){
    var a = parseInt($('#a').val());
    var b = parseInt($('#b').val());
        var sum = a + b;
        $("#ongkir").val(sum);
    })
})*/
$("#form_alamat").hide();

$("#kurir-list1").hide();
$(".kurir1").change(function(){
    $("#kurir-list1").toggle();
});

$("#kurir-list2").hide();
$(".kurir2").change(function(){
    $("#kurir-list2").toggle();
});

$("#kurir-list3").hide();
$(".kurir3").change(function(){
    $("#kurir-list3").toggle();
});

function klikongkir1(data,detail,harga,harga_rp,id){
  $("#ongkir1").val(harga);
  hitung();
  $(".clearall-kurir").removeClass("selected-ongkir1");
  $('#'+id).addClass("selected-ongkir1");
  $('#service1').val(detail);
  $('#kurir1').val(data);
  var val1 = +$("#ongkir1").val();
  var val2 = +$("#ongkir2").val();
  var val3 = +$("#ongkir3").val();
  $("#ongkir").val(val1+val2+val3);
  $("#ongkir_view").val(val1+val2+val3);
  $("#oksimpan").show();
}

function klikongkir2(data,detail,harga,harga_rp,id){
  $("#ongkir2").val(harga);
  hitung();
  $(".clearall-kurir").removeClass("selected-ongkir2");
  $('#'+id).addClass("selected-ongkir2");
  $('#service2').val(detail);
  $('#kurir2').val(data);
  var val1 = +$("#ongkir1").val();
  var val2 = +$("#ongkir2").val();
  var val3 = +$("#ongkir3").val();
  $("#ongkir").val(val1+val2+val3);
  $("#ongkir_view").val(val1+val2+val3);
}

function klikongkir3(data,detail,harga,harga_rp,id){
  $("#ongkir3").val(harga);
  hitung();
  $(".clearall-kurir").removeClass("selected-ongkir3");
  $('#'+id).addClass("selected-ongkir3");
  $('#service3').val(detail);
  $('#kurir3').val(data);
  var val1 = +$("#ongkir1").val();
  var val2 = +$("#ongkir2").val();
  var val3 = +$("#ongkir3").val();
  $("#ongkir").val(val1+val2+val3);
  $("#ongkir_view").val(val1+val2+val3);
}

$(document).ready(function(){
//* select Provinsi */
var base_url    = "<?php echo base_url();?>";
$("#list_provinsi").change(function(){
    var id_province = this.value;
    kota(id_province);
    $("#div_kota").show();
});

/* select Kota */
kota = function(id_province){
    $.ajax({
    type: 'post',
    url: base_url + 'produk/rajaongkir_get_kota',
    data: {id_province:id_province},
    dataType  : 'html',
    success: function (data) {
        $("#list_kotakab").html(data);
    },
    beforeSend: function () {
        
    },
    complete: function () {
      
    }
});
}

$("#list_kotakab").change(function(){
    var id_kota = this.value;
    kecamatan(id_kota);
    $("#div_kecamatan").show();
});

kecamatan = function(id_kota){
    $.ajax({
    type: 'post',
    url: base_url + 'produk/rajaongkir_get_kecamatan',
    data: {id_kota:id_kota},
    dataType  : 'html',
    success: function (data) {
        $("#list_kecamatan").html(data);
    }
});
}

$("#list_kurir1").change(function(){
    var id_kurir     = this.value;
    var id_kecamatan      = $("#list_kecamatan").val();
    cost1(id_kurir,id_kecamatan);
    $("#div_kurir1").show();
});

cost1 = function(id_kurir,id_kecamatan){
    $.ajax({
    type: 'post',
    url: base_url + 'produk/rajaongkir_get_cost/1/<?php echo $kota_asal[0]; ?>/<?php echo $berat[0]; ?>',
    data: {kurir_pengiriman:id_kurir,kecamatan_tujuan:id_kecamatan},
    dataType  : 'html',
    success: function (data) {
        $("#list_kurir_div1").html(data);
    }
});
}

$("#list_kurir2").change(function(){
    var id_kurir     = this.value;
    var id_kecamatan      = $("#list_kecamatan").val();
    cost2(id_kurir,id_kecamatan);
    $("#div_kurir2").show();
});

cost2 = function(id_kurir,id_kecamatan){
    $.ajax({
    type: 'post',
    url: base_url + 'produk/rajaongkir_get_cost/2/<?php echo $kota_asal[1]; ?>/<?php echo $berat[1]; ?>',
    data: {kurir_pengiriman:id_kurir,kecamatan_tujuan:id_kecamatan},
    dataType  : 'html',
    success: function (data) {
        $("#list_kurir_div2").html(data);
    }
});
}

$("#list_kurir3").change(function(){
    var id_kurir     = this.value;
    var id_kecamatan      = $("#list_kecamatan").val();
    cost3(id_kurir,id_kecamatan);
    $("#div_kurir3").show();
});

cost3 = function(id_kurir,id_kecamatan){
    $.ajax({
    type: 'post',
    url: base_url + 'produk/rajaongkir_get_cost/3/<?php echo $kota_asal[2]; ?>/<?php echo $berat[2]; ?>',
    data: {kurir_pengiriman:id_kurir,kecamatan_tujuan:id_kecamatan},
    dataType  : 'html',
    success: function (data) {
        $("#list_kurir_div3").html(data);
    }
});
}

$(".alamat").click(function(){
    $("#form_alamat").toggle();
});

$("#diskon").html(toDuit(0));
hitung();
});

function hitung(){
    var diskon=$('#diskonnilai').val();
    var total=$('#total').val();
    var ongkir=$("#ongkir").val();
    var bayar=(parseFloat(total)+parseFloat(ongkir));
    if(parseFloat(ongkir) > 0){
        $("#oksimpan").show();
    }else{
        $("#oksimpan").hide();
    }
    $("#totalbayar").html(toDuit(bayar));
}
</script>
