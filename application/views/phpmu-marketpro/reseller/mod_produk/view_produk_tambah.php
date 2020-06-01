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
        echo form_open_multipart('members/tambah_produk',$attributes); 
          echo "<input type='hidden' name='id' value=''>
              <div class='form-group row' style='margin-bottom:5px'>
                <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Kategori</b></label>
                  <div class='col-sm-10'>
                  <select name='a' class='form-control form-mini' onchange=\"showSub()\" required>
                    <option value='' selected>- Pilih Kategori Produk -</option>";
                    foreach ($record as $row){
                        echo "<option value='$row[id_kategori_produk]'>$row[nama_kategori]</option>";
                    }
                  echo "</select>
                  </div>
              </div>

              <div class='form-group row' style='margin-bottom:5px'>
                <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Sub-Kategori</b></label>
                  <div class='col-sm-10'>
                    <select name='aa' class='form-control form-mini' id='sub_kategori_produk'>
                    <option value='' selected>- Pilih Sub Kategori Produk -</option>
                    </select>
                  </div>
              </div>

              <div class='form-group row' style='margin-bottom:5px'>
              <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Nama Produk</b></label>
                <div class='col-sm-10'>
                <input type='text' class='form-control form-mini' name='b' required>
                </div>
              </div>    
              
              <div class='form-group row' style='margin-bottom:5px'>
              <label class='col-sm-2 col-form-label' style='margin-bottom:1px'></b></label>
                <div class='col-sm-10'>
                  <div class='form-row'>
                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                      <label style='margin-bottom:1px'>Satuan</label>
                      <input type='text' class='form-control form-mini' name='c' placeholder='-'>
                    </div>
                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                      <label style='margin-bottom:1px'>Berat /g</label>
                      <input type='number' class='form-control form-mini' name='berat' placeholder='-'>
                    </div>
                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                      <label style='margin-bottom:1px'>Stok Awal</label>
                      <input type='number' class='form-control form-mini' name='stok' placeholder='-'> 
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
                      <input type='number' class='form-control form-mini' name='d' placeholder='-'>
                    </div>
                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                      <label style='margin-bottom:1px'>Harga Jual</label>
                      <input type='number' class='form-control form-mini' name='f' placeholder='-'>
                    </div>
                    <div class='form-group col-md-4' style='margin-bottom:5px'>
                      <label style='margin-bottom:1px'>Diskon (Rp)</label>
                      <input type='number' class='form-control form-mini' name='diskon' placeholder='-'> 
                    </div>
                  </div>
                </div>
              </div> 

              <input type='hidden' class='form-control form-mini' name='e'>
              <div class='form-group row' style='margin-bottom:5px'>
                <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Cuplikan</b></label>
                  <div class='col-sm-10'>
                  <textarea class='form-control' name='fff' style='height:160px'></textarea>
                  </div>
              </div>

              <div class='form-group row' style='margin-bottom:5px'>
                  <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Keterangan</b></label>
                    <div class='col-sm-10'>
                    <textarea id='editor1' class='form-control' name='ff' style='height:180px'>$rows[keterangan]</textarea>
                    </div>
              </div>
              <div class='form-group row' style='margin-bottom:5px'>
                <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Gambar Produk</b></label>
                  <div class='col-sm-10'>
                    <input type='file' id='fileupload' class='form-control form-mini' name='userfile[]' multiple>Multiple Upload, Allowed File : .gif, jpg, png
                    <div id='dvPreview'></div>
                  </div>
              </div>
              <br>
              <div class='box-footer'>
                <button type='submit' name='submit' class='ps-btn'>Tambahkan</button>
                <button type='button' onclick=\"history.back()\" class='ps-btn ps-btn--black'>Cancel</button>
              </div>
            </div>
            
            </div>
            </div>
        </div>
    </div>";
