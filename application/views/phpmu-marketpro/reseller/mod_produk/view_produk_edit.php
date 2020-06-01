<script language="JavaScript" type="text/JavaScript">
  function showSub(){
    <?php
    $query = $this->db->query("SELECT * FROM rb_kategori_produk");
    foreach ($query->result_array() as $data) {
       $id_kategori_produk = $data['id_kategori_produk'];
       echo "if (document.demo.a.value == \"".$id_kategori_produk."\")";
       echo "{";
       $query_sub_kategori = $this->db->query("SELECT * FROM rb_kategori_produk_sub where id_kategori_produk='$id_kategori_produk'");
       $content = "document.getElementById('sub_kategori_produk').innerHTML = \"  <option value=''>- Pilih Sub Kategori Produk -</option>";
       foreach ($query_sub_kategori->result_array() as $data2) {
           $content .= "<option value='".$data2['id_kategori_produk_sub']."'>".$data2['nama_kategori_sub']."</option>";
       }
       $content .= "\"";
       echo $content;
       echo "}\n";
    }
    ?>
    }
</script>

<div class="ps-page--single">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>">Home</a></li>
                <li><a href="#">Members</a></li>
                <li><?php echo $title; ?></li>
            </ul>
        </div>
    </div>
</div>
<div class="ps-vendor-dashboard pro" style='margin-top:10px'>
    <div class="container">
      <div class="ps-section__content">
        <?php 
          echo $this->session->flashdata('message'); 
          $this->session->unset_userdata('message');
        ?>
        <div class="row">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 "><br>

<?php 
  $attributes = array('class'=>'biodata','role'=>'form','name'=>'demo');
  echo form_open_multipart('members/edit_produk',$attributes);
  $disk = $this->model_app->edit('rb_produk_diskon',array('id_produk'=>$rows['id_produk'],'id_reseller'=>reseller($this->session->id_konsumen)))->row_array();
  $jual = $this->model_reseller->jual_reseller(reseller($this->session->id_konsumen),$rows['id_produk'])->row_array();
  $beli = $this->model_reseller->beli_reseller(reseller($this->session->id_konsumen),$rows['id_produk'])->row_array();

          echo "<input type='hidden' name='id' value='$rows[id_produk]'>
                <div class='form-group row' style='margin-bottom:5px'>
                  <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Kategori</b></label>
                    <div class='col-sm-10'>
                      <select name='a' class='form-control form-mini' onchange=\"showSub()\" required>
                        <option value='' selected>- Pilih Kategori Produk -</option>";
                        foreach ($record as $row){
                          if ($rows['id_kategori_produk']==$row['id_kategori_produk']){
                            echo "<option value='$row[id_kategori_produk]' selected>$row[nama_kategori]</option>";
                          }else{
                            echo "<option value='$row[id_kategori_produk]'>$row[nama_kategori]</option>";
                          }
                        }
                    echo "</select>
                  </div>
                </div>

                <div class='form-group row' style='margin-bottom:5px'>
                  <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Sub-Kategori</b></label>
                    <div class='col-sm-10'>
                    <select name='aa' class='form-control form-mini' id='sub_kategori_produk'>
                      <option value='' selected>- Pilih Sub Kategori Produk -</option>";
                      $sub_kategori_produk = $this->db->query("SELECT * FROM rb_kategori_produk_sub");
                      foreach ($sub_kategori_produk->result_array() as $row){
                        if ($rows['id_kategori_produk_sub']==$row['id_kategori_produk_sub']){
                          echo "<option value='$row[id_kategori_produk_sub]' selected>$row[nama_kategori_sub]</option>";
                        }else{
                          echo "<option value='$row[id_kategori_produk_sub]'>$row[nama_kategori_sub]</option>";
                        }
                      }
                echo "</select>
                </div>
              </div>
              <div class='form-group row' style='margin-bottom:5px'>
              <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Nama Produk</b></label>
                <div class='col-sm-10'>
                <input type='text' class='form-control form-mini' name='b' value='$rows[nama_produk]' required>
                </div>
              </div>

              <div class='form-group row' style='margin-bottom:5px'>
              <label class='col-sm-2 col-form-label' style='margin-bottom:1px'></b></label>
                <div class='col-sm-10'>
                  <div class='form-row'>
                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                      <label style='margin-bottom:1px'>Satuan</label>
                      <input type='text' class='form-control form-mini' name='c' value='$rows[satuan]' placeholder='-'>
                    </div>
                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                      <label style='margin-bottom:1px'>Berat /g</label>
                      <input type='number' class='form-control form-mini' name='berat' value='$rows[berat]' placeholder='-'>
                    </div>
                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                      <label style='margin-bottom:1px'>Stok <span style='font-size:95%' class='badge badge-secondary'>".($beli['beli']-$jual['jual'])."</span>, Tambahkan :</label>
                        <input type='number' class='form-control form-mini' value='0' name='stok'>  
                    </div>
                  </div>
                </div>
              </div>  

              <div class='form-group row' style='margin-bottom:5px'>
              <label class='col-sm-2 col-form-label' style='margin-bottom:1px'></b></label>
                <div class='col-sm-10'>
                  <div class='form-row'>
                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                      <label style='margin-bottom:1px'>Harga Modal</label>
                      <input type='number' class='form-control form-mini' name='d' value='$rows[harga_beli]' placeholder='-'>
                    </div>
                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                      <label style='margin-bottom:1px'>Harga Jual</label>
                      <input type='number' class='form-control form-mini' name='f' value='$rows[harga_konsumen]' placeholder='-'>
                    </div>
                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                      <label style='margin-bottom:1px'>Diskon (Rp)</label>
                      <input type='number' class='form-control form-mini' name='diskon' value='$disk[diskon]' placeholder='-'> 
                    </div>
                  </div>
                </div>
              </div>
              <input type='hidden' class='form-control form-mini' name='e' value='$rows[harga_reseller]'>

              <div class='form-group row' style='margin-bottom:5px'>
                <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Cuplikan</b></label>
                  <div class='col-sm-10'>
                  <textarea class='form-control' name='fff' style='height:160px'>$rows[tentang_produk]</textarea>
                  </div>
              </div>

              <div class='form-group row' style='margin-bottom:5px'>
                  <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Keterangan</b></label>
                    <div class='col-sm-10'>
                    <textarea id='editor1' class='form-control form-mini' name='ff' style='height:180px'>$rows[keterangan]</textarea>
                    </div>
              </div>

              <div class='form-group row' style='margin-bottom:5px'>
                <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Gambar Produk</b></label>
                  <div class='col-sm-10'>
                  <input type='file' id='fileupload' class='form-control form-mini' name='userfile[]' multiple>Multiple Upload, Allowed File : .gif, jpg, png
                                                                              <div id='dvPreview'></div>";
                                                                            if ($rows['gambar'] != ''){ echo "<i style='color:red'>Gambar Saat ini : </i><a target='_BLANK' href='".base_url()."asset/foto_produk/$rows[gambar]'>$rows[gambar]</a>"; } echo "
                  </div>
              </div>
              <br>
              <div class='box-footer'>
                <button type='submit' name='submit' class='ps-btn'>Update</button>
                <button type='button' onclick=\"history.back()\" class='ps-btn ps-btn--black'>Cancel</button>
              </div>
            </div>
            
            </div>
            </div>
        </div>
    </div>";
