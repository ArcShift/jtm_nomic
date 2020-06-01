<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Buat Permintaan Tarik Dana</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/tambah_withdraw',$attributes); 
              $penjualan_perusahaan = $this->model_reseller->penjualan_perusahaan($this->session->id_reseller)->row_array();
              $tarik = $this->db->query("SELECT sum(nominal) as total FROM rb_withdraw WHERE id_reseller='".$this->session->id_reseller."' AND status='Sukses'")->row_array();
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th width='120px' scope='row'>Saldo Anda</th>    <td><input type='text' class='form-control' style='color:Red' value='".rupiah($penjualan_perusahaan['total']-$tarik['total'])."' disabled></td></tr>
                    <tr><th scope='row'>Tarik (Rp)</th>                 <td><input type='number' class='form-control' name='b' required></td></tr>
                    <tr><th scope='row'>Ke Rekening</th>                   <td><select name='a' class='form-control' required>
                                                                                <option value='' selected>- Pilih -</option>";
                                                                                $rekening = $this->db->query("SELECT * FROM rb_rekening_reseller where id_reseller='".$this->session->id_reseller."'");
                                                                                foreach ($rekening->result_array() as $row) {
                                                                                  echo "<option value='$row[id_rekening_reseller]'>$row[nama_bank], $row[no_rekening], A/N : $row[pemilik_rekening]</option>";
                                                                                }
                                                                                echo "</select></td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Kirim Permintaan</button>
                    <a href='".base_url().$this->uri->segment(1)."/withdraw'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div>";
