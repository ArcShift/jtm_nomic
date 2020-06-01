<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Profile</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/edit_reseller',$attributes); 
              $ko = $this->db->query("SELECT * FROM rb_kota where kota_id='$rows[kota_id]'")->row_array();
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden'  value='$rows[id_reseller]' name='id'>";
                    if (trim($rows['foto'])==''){ $foto_user = 'blank.png'; }else{ $foto_user = $rows['foto']; }
                    echo "<tr bgcolor='#e3e3e3'><th rowspan='14' width='110px'><center><img style='border:1px solid #cecece; height:85px; width:85px' src='".base_url()."asset/foto_user/$foto_user' class='img-circle img-thumbnail'></center></th></tr>
                    <tr><th width='130px' scope='row'>Username</th>       <td><input class='form-control' type='text' name='a' value='$rows[username]' disabled></td></tr>
                    <tr><th scope='row'>Password</th>                     <td><input class='form-control' type='password' name='b'></td></tr>
                    <tr><th scope='row'>Nama Reseller</th>                <td><input class='form-control' type='text' name='c' value='$rows[nama_reseller]'></td></tr>
                    <tr><th scope='row'>Jenis Kelamin</th>                <td>"; if ($rows['jenis_kelamin']=='Laki-laki'){ echo "<input type='radio' value='Laki-laki' name='d' checked> Laki-laki <input type='radio' value='Perempuan' name='d'> Perempuan "; }else{ echo "<input type='radio' value='Laki-laki' name='d'> Laki-laki <input type='radio' value='Perempuan' name='d' checked> Perempuan "; } echo "</td></tr>
                    <tr><th scope='row'>Provinsi</th>                     <td><select class='form-control form-mini' name='provinsi_id' id='list_provinsi' required>";
                    $obj = get_provinsi();
                    echo "<option value=0>- Pilih Provinsi -</option>";
                    for($i=0; $i < count($obj['rajaongkir']['results']); $i++){
                      if ($rows['provinsi_id']==$obj['rajaongkir']['results'][$i]['province_id']){
                        echo "<option value='".$obj['rajaongkir']['results'][$i]['province_id']."' selected>".$obj['rajaongkir']['results'][$i]['province']."</option>";
                      }else{
                        echo "<option value='".$obj['rajaongkir']['results'][$i]['province_id']."'>".$obj['rajaongkir']['results'][$i]['province']."</option>";
                      }
                    }
                    echo "</select></td></tr>
                    <tr><th scope='row'>Kota</th>                         <td><select class='form-control form-mini' name='kota_id' id='list_kotakab' required>";
                    $kota = get_kota($rows['provinsi_id']);
                    echo "<option value=0>- Pilih Kota / Kabupaten -</option>";
                    for($i=0; $i < count($kota['rajaongkir']['results']); $i++){
                      if ($rows['kota_id']==$kota['rajaongkir']['results'][$i]['city_id']){
                        echo "<option value='".$kota['rajaongkir']['results'][$i]['city_id']."' selected>".$kota['rajaongkir']['results'][$i]['city_name']."</option>";
                      }else{
                        echo "<option value='".$kota['rajaongkir']['results'][$i]['city_id']."'>".$kota['rajaongkir']['results'][$i]['city_name']."</option>";
                      }
                    }
                    echo "</select></td></tr>
                    <tr><th scope='row'>Kecamatan</th>                         <td><select class='form-control form-mini' name='kecamatan_id' id='list_kecamatan' required>";
                    $kec = get_kecamatan($rows['kota_id']);
                    echo "<option value=0>- Pilih Kecamatan -</option>";
                    for($i=0; $i < count($kec['rajaongkir']['results']); $i++){
                      if ($rows['kecamatan_id']==$kec['rajaongkir']['results'][$i]['subdistrict_id']){
                        echo "<option value='".$kec['rajaongkir']['results'][$i]['subdistrict_id']."' selected>".$kec['rajaongkir']['results'][$i]['subdistrict_name']."</option>";
                      }else{
                        echo "<option value='".$kec['rajaongkir']['results'][$i]['subdistrict_id']."'>".$kec['rajaongkir']['results'][$i]['subdistrict_name']."</option>";
                      }
                    }
                    echo "</select></td></tr>
                    <tr><th scope='row'>Alamat Lengkap</th>               <td><input class='form-control' type='text' name='e' value='$rows[alamat_lengkap]'></td></tr>
                    <tr><th scope='row'>No Hp</th>                        <td><input class='form-control' type='number' name='f' value='$rows[no_telpon]'></td></tr>
                    <tr><th scope='row'>Alamat Email</th>                 <td><input class='form-control' type='email' name='g' value='$rows[email]'></td></tr>
                    <tr><th scope='row'>Kode Pos</th>                     <td><input class='form-control' type='number' name='h' value='$rows[kode_pos]'></td></tr>
                    <tr><th scope='row'>Keterangan</th>                   <td><textarea class='form-control' name='i'>$rows[keterangan]</textarea></td></tr>
                    <input class='form-control' type='hidden' name='j' value='$rows[referral]'>
                    <tr><th scope='row'>Ganti Foto</th>                         <td><input type='file' class='form-control' name='gg'>";
                                                                               if ($rows['foto'] != ''){ echo "<i style='color:red'>Foto Profile saat ini : </i><a target='_BLANK' href='".base_url()."asset/foto_user/$rows[foto]'>$rows[foto]</a>"; } echo "</td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='index.php'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div>";
