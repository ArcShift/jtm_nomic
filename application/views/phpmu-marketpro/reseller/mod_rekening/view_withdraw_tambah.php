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
              $attributes = array('class'=>'biodata','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/tambah_withdraw',$attributes); 
          echo "<div class='form-group row' style='margin-bottom:5px'>
                <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Saldo Anda</b></label>
                  <div class='col-sm-10'>
                  <input type='text' class='form-control form-mini' style='color:Red' value='".rupiah(saldo(reseller($this->session->id_konsumen)))."' disabled>
                  </div>
                </div>  

                <div class='form-group row' style='margin-bottom:5px'>
                <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Tarik (Rp)</b></label>
                  <div class='col-sm-10'>
                  <input type='text' class='form-control form-mini formatNumber' name='b' value='0' required>
                  </div>
                </div> 

                <div class='form-group row' style='margin-bottom:5px'>
                <label class='col-sm-2 col-form-label' style='margin-bottom:1px'>Ke Rekening</b></label>
                  <div class='col-sm-10'>
                  <select name='a' class='form-control form-mini' required>
                    <option value='' selected>- Pilih -</option>";
                    $rekening = $this->db->query("SELECT * FROM rb_konsumen_detail where id_konsumen='".$this->session->id_konsumen."' AND status='rekening'");
                    foreach ($rekening->result_array() as $row) {
                      $ex = explode(';',$row['keterangan']);
                      echo "<option value='$row[id_konsumen_detail]'>$ex[0], $ex[1], A/N : $ex[2]</option>";
                    }
                  echo "</select>
                  </div>
                </div> 
                <br>
                <div class='box-footer'>
                  <button type='submit' name='submit' class='ps-btn'>Kirim Permintaan</button>
                  <button type='button' onclick=\"history.back()\" class='ps-btn ps-btn--black'>Cancel</button>
                </div>
              </div>
          
              </div>
              </div>
          </div>
      </div>";
