<div class="ps-page--single">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>">Home</a></li>
                <li><a href="#">Members</a></li>
                <li>Profile</li>
            </ul>
        </div>
    </div>
</div>
<div class="ps-vendor-dashboard pro" style='margin-top:10px'>
    <div class="container">
        <div class="ps-section__content">
            <?php include "menu-members.php"; ?>
            <!--<form class="ps-form--vendor-datetimepicker" action="index.html" method="get">
                <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12 ">
                        <div class="input-group">
                            <div class="input-group-prepend"><span class="input-group-text" id="time-from">From</span></div>
                            <input class="form-control ps-datepicker" aria-label="Username" aria-describedby="time-from">
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12 ">
                        <div class="input-group">
                            <div class="input-group-prepend"><span class="input-group-text" id="time-form">To</span></div>
                            <input class="form-control ps-datepicker" aria-label="Username" aria-describedby="time-to">
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12 ">
                        <button class="ps-btn"><i class="icon-sync2"></i> Update</button>
                    </div>
                </div>
            </form>-->
            
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12 ">
                  <?php
                    $attributes = array('id' => 'formku');
                    echo form_open_multipart('members/edit_profile',$attributes); 
                    if (trim($row['foto'])=='' OR !file_exists("asset/foto_user/".$row['foto'])){
                      echo "<img class='img-thumbnail' style='width:100%' src='".base_url()."asset/foto_user/blank.png'>";
                    }else{
                      echo "<img class='img-thumbnail' style='width:100%' src='".base_url()."asset/foto_user/$row[foto]'>";
                    }
                    echo "<input class='required number form-control form-mini' type='file' name='foto'><small><center>Allowed : gif, jpg, png, jpeg (Max 1 MB)</center></small><br>
                    <button type='submit' name='submit' class='ps-btn btn-block'><center><i class='icon-pen'></i> Simpan Perubahan</center></button>";
                  ?><div style='clear:both'><br></div>
                </div>

                <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12 ">
                <?php 
                    echo $this->session->flashdata('message'); 
                    $this->session->unset_userdata('message');
                ?>
                    <div class="ps-block--vendor-status biodata">
                        <?php 
                            echo "<p style='font-size:17px'>Hai <b>$row[nama_lengkap]</b>, selamat datang di halaman Biodata diri! <br>
                                                            Pastikan data profil sesuai dengan KTP untuk kemudahan dalam bertransaksi.</p><br>

                            <div class='form-group row' style='margin-bottom:5px'>
                            <label class='col-sm-3 col-form-label' style='margin-bottom:1px'>Username</b></label>
                              <div class='col-sm-9'>
                              <input type='text' name='aa' class='form-control form-mini' value='$row[username]'>
                              </div>
                            </div>
                            <div class='form-group row' style='margin-bottom:5px'>
                            <label class='col-sm-3 col-form-label' style='margin-bottom:1px'>Password</b></label>
                              <div class='col-sm-9'>
                              <input type='text' name='a' class='form-control form-mini' placeholder='**************'>
                              </div>
                            </div>

                            <div class='form-group row' style='margin-bottom:5px'>
                            <label class='col-sm-3 col-form-label' style='margin-bottom:1px'>Nama Lengkap</b></label>
                              <div class='col-sm-9'>
                              <input type='text' name='b' class='form-control form-mini' value='$row[nama_lengkap]'>
                              </div>
                            </div>
                            <div class='form-group row' style='margin-bottom:5px'>
                            <label class='col-sm-3 col-form-label' style='margin-bottom:1px'>Jenis Kelamin</b></label>
                              <div class='col-sm-9'>"; 
                              if ($row['jenis_kelamin']=='Laki-laki'){ echo "<input type='radio' value='Laki-laki' name='d' checked> Laki-laki <input type='radio' value='Perempuan' name='d'> Perempuan "; }else{ echo "<input type='radio' value='Laki-laki' name='d'> Laki-laki <input type='radio' value='Perempuan' name='d' checked> Perempuan "; } 
                              echo "</div>
                            </div>
                            <div class='form-group row' style='margin-bottom:5px'>
                            <label class='col-sm-3 col-form-label' style='margin-bottom:1px'>Email</b></label>
                              <div class='col-sm-9'>
                              <input type='text' name='c' class='form-control form-mini' value='$row[email]'>
                              </div>
                            </div>
                            <div class='form-group row' style='margin-bottom:5px'>
                            <label class='col-sm-3 col-form-label' style='margin-bottom:1px'>No Hp</b></label>
                            <div class='col-sm-9'>
                              <input type='text' name='l' class='form-control form-mini' value='$row[no_hp]'>
                            </div>
                            </div>
                            
                            <div class='form-group row' style='margin-bottom:5px'>
                            <label class='col-sm-3 col-form-label' style='margin-bottom:1px'>Tempat/Tanggal Lahir</b></label>
                              <div class='col-sm-9'>
                              <div class='row'>
                                <div class='col'>
                                <input type='text' name='f' class='form-control form-mini' value='".($row['tempat_lahir'] == '' ? '-' : $row['tempat_lahir'])."'>
                                </div>
                                <div class='col'>
                                <input type='text' name='e' class='form-control form-mini ps-datepicker' value='".($row['tanggal_lahir'] == '0000-00-00' ? date('m/d/Y') : tgl($row['tanggal_lahir']))."'>
                                </div>
                              </div>
                              </div>
                            </div>

                            <div class='form-group row' style='margin-bottom:5px'>
                            <label class='col-sm-3 col-form-label' style='margin-bottom:1px'>Alamat Pengiriman</b></label>
                              <div class='col-sm-9'>
                              <input type='text' name='g' class='form-control form-mini' value='$row[alamat_lengkap]'>
                              </div>
                            </div>
                            
                            <div class='form-group row' style='margin-bottom:5px'>
                            <label class='col-sm-3 col-form-label' style='margin-bottom:1px'>Daerah Pengiriman</b></label>
                            <div class='col-sm-9'>
                              <div class='row'>
                                <div class='col'>
                                  <select class='form-control form-mini' name='provinsi_id' id='list_provinsi' required>";
                                  $obj = get_provinsi();
                                  echo "<option value=0>- Pilih Provinsi -</option>";
                                  for($i=0; $i < count($obj['rajaongkir']['results']); $i++){
                                    if ($row['provinsi_id']==$obj['rajaongkir']['results'][$i]['province_id']){
                                      echo "<option value='".$obj['rajaongkir']['results'][$i]['province_id']."' selected>".$obj['rajaongkir']['results'][$i]['province']."</option>";
                                    }else{
                                      echo "<option value='".$obj['rajaongkir']['results'][$i]['province_id']."'>".$obj['rajaongkir']['results'][$i]['province']."</option>";
                                    }
                                  }
                                  echo "</select>
                                </div>
                                <div class='col'>
                                  <select class='form-control form-mini' name='kota_id' id='list_kotakab' required>";
                                  $kota = get_kota($row['provinsi_id']);
                                  echo "<option value=0>- Pilih Kota / Kabupaten -</option>";
                                  for($i=0; $i < count($kota['rajaongkir']['results']); $i++){
                                    if ($row['kota_id']==$kota['rajaongkir']['results'][$i]['city_id']){
                                      echo "<option value='".$kota['rajaongkir']['results'][$i]['city_id']."' selected>".$kota['rajaongkir']['results'][$i]['city_name']."</option>";
                                    }else{
                                      echo "<option value='".$kota['rajaongkir']['results'][$i]['city_id']."'>".$kota['rajaongkir']['results'][$i]['city_name']."</option>";
                                    }
                                  }
                                  echo "</select>
                                </div>
                                <div class='col'>
                                  <select class='form-control form-mini' name='kecamatan_id' id='list_kecamatan' required>";
                                  $kec = get_kecamatan($row['kota_id']);
                                  echo "<option value=0>- Pilih Kecamatan -</option>";
                                  for($i=0; $i < count($kec['rajaongkir']['results']); $i++){
                                    if ($row['kecamatan_id']==$kec['rajaongkir']['results'][$i]['subdistrict_id']){
                                      echo "<option value='".$kec['rajaongkir']['results'][$i]['subdistrict_id']."' selected>".$kec['rajaongkir']['results'][$i]['subdistrict_name']."</option>";
                                    }else{
                                      echo "<option value='".$kec['rajaongkir']['results'][$i]['subdistrict_id']."'>".$kec['rajaongkir']['results'][$i]['subdistrict_name']."</option>";
                                    }
                                  }
                                  echo "</select>
                                </div>
                              </div>
                            </div>
                            </div>
                          </div>";
                          echo form_close();
                        ?>
                    </figure>
                </div>
              
            </div>
        </div>
    </div>
</div>
<script>
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
});
</script>