<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Identitas Website</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/identitaswebsite',$attributes); 
          echo "<div class='col-md-6 col-xs-12'>
                  <input type='hidden' name='id' value='$record[id_identitas]'>
                  <input type='hidden' class='form-control' name='d' value='$record[facebook]'>
                  <input type='hidden' class='form-control' name='e' value='$record[rekening]'>

                    <div class='form-group'>
                      <label class='col-sm-3 control-label'>Nama Website</label>
                      <div class='col-sm-9'>
                        <input type='text' class='form-control' placeholder='' name='a' value='$record[nama_website]'>
                      </div>
                    </div>
                    
                    <div class='form-group'>
                      <label class='col-sm-3 control-label'>Domain</label>
                      <div class='col-sm-9'>
                        <input type='text' class='form-control' placeholder='' name='c' value='$record[url]'>
                      </div>
                    </div>

                    <div class='form-group'>
                      <label class='col-sm-3 control-label'>No Telpon</label>
                      <div class='col-sm-9'>
                        <input type='text' class='form-control' placeholder='' name='f' value='$record[no_telp]'>
                      </div>
                    </div>

                    <div class='form-group'>
                      <label class='col-sm-3 control-label'>Akhir Flash Deal</label>
                      <div class='col-sm-9'>
                        <input type='text' class='form-control datepicker1' placeholder='' name='flash_deal' value='".tgl_view($record['flash_deal'])."'>
                      </div>
                    </div>

                    <div class='form-group'>
                      <label class='col-sm-3 control-label'>Meta Deskripsi</label>
                      <div class='col-sm-9'>
                        <textarea class='form-control' style='height:90px' placeholder='' name='g'>$record[meta_deskripsi]</textarea>
                      </div>
                    </div>
                    <div class='form-group'>
                      <label class='col-sm-3 control-label'>Meta Keyword</label>
                      <div class='col-sm-9'>
                        <textarea class='form-control' style='height:90px' placeholder='' name='h'>$record[meta_keyword]</textarea>
                      </div>
                    </div>
                    <input type='hidden' class='form-control' placeholder='' value='$record[maps]'>
                    <div class='form-group'>
                      <label class='col-sm-3 control-label'>Favicon</label>
                      <div class='col-sm-9'>
                        <input type='file' class='form-control' name='j'>
                        Favicon Aktif Saat ini : <img style='width:32px; height:32px' src='".base_url()."asset/images/$record[favicon]'>
                      </div>
                    </div>
                </div>
                <div class='col-md-6 col-xs-12'>
                <div class='form-group'>
                    <label class='col-sm-3 control-label'>Info Atas</label>
                    <div class='col-sm-9'>
                    <textarea class='form-control' placeholder='' name='info_atas'>$record[info_atas]</textarea>
                    </div>
                  </div>
                  
                  <div class='form-group'>
                    <label class='col-sm-3 control-label'>API Rajaongkir</label>
                    <div class='col-sm-9'>
                      <input type='text' class='form-control' style='color:green' name='api_rajaongkir' placeholder='' value='$record[api_rajaongkir]'>
                    </div>
                  </div>

                  <div class='form-group'>
                    <label class='col-sm-3 control-label'>API Mutasi Bank</label>
                    <div class='col-sm-9'>
                      <textarea class='form-control' style='color:green' placeholder='' name='api_mutasibank'>$record[api_mutasibank]</textarea>
                    </div>
                  </div>

                  <div class='form-group'>
                    <label class='col-sm-3 control-label'>Callback URL</label>
                    <div class='col-sm-9'>
                    <input type='text' class='form-control' style='color:green' value='".$this->uri->segment(1)."/mutasi_ty35fgdfgd777bba064b72be' disabled>
                    </div>
                  </div>

                  <div class='form-group'>
                    <label class='col-sm-3 control-label'>Free Reseller</label>
                    <div class='col-sm-9'>
                    <input type='number' class='form-control' placeholder='' name='free_reseller' value='$record[free_reseller]'>
                    </div>
                  </div>

                  <div class='form-group'>
                    <label class='col-sm-3 control-label'>Pengirim E-mail</label>
                    <div class='col-sm-9'>
                    <input type='text' class='form-control' placeholder='' name='pengirim_email' value='$record[pengirim_email]'>
                    </div>
                  </div>

                  <div class='form-group'>
                    <label class='col-sm-3 control-label'>Gmail</label>
                    <div class='col-sm-9'>
                      <input type='text' class='form-control' placeholder='' name='b' value='$record[email]'>
                      <small><i style='color:Red'>Set Less secure app access ''ON'', and 2-Step Verification ''OFF''</i></small>
                    </div>
                  </div>

                  <div class='form-group'>
                    <label class='col-sm-3 control-label'>Pass. Gmail</label>
                    <div class='col-sm-9'>
                    <input type='password' class='form-control' placeholder='*************' name='password'>
                    </div>
                  </div>
                </div>
              <div style='clear:both'></div>
              <div class='box-footer'>
                <button type='submit' name='submit' class='btn btn-info'>Simpan Perubahan</button>
                <a href='".base_url().$this->uri->segment(1)."/identitaswebsite'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
              </div>
            </div></div></div>";
            echo form_close();
