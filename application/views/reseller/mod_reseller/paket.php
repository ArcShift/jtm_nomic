            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Pilih Paket</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                <?php 
                    $cek_paket = $this->db->query("SELECT * FROM rb_reseller_paket a JOIN rb_paket b ON a.id_paket=b.id_paket where a.id_reseller='".$this->session->id_reseller."'");
                      foreach ($cek_paket->result_array() as $rowp) {
                        if ($rowp['status']=='Y'){
                          $akhir  = strtotime($rowp['expire_date']); //Waktu awal
                          $awal = time(); // Waktu sekarang atau akhir
                          $diff  = $akhir - $awal;
                          echo "<div class='alert alert-success'><strong>PENTING</strong> - Saat ini akun anda Aktif pada paket <b>$rowp[nama_paket]</b>, untuk Durasi $rowp[durasi] Hari.<br>
                                                Dan Masa aktif Paket Akan Berakhir pada ".tgl_indo($rowp['expire_date'])." (".floor($diff / (60 * 60 * 24)) ." hari lagi).</div>";
                        }else{
                          echo "<div class='alert alert-warning'><strong>PENTING</strong> - Anda telah memilih paket <b>$rowp[nama_paket]</b>, untuk Durasi $rowp[durasi] Hari,
                          <br>Silahkan melakukan Pembayaran Tepat <b style='color:#000; text-decoration:underline'>Rp ".rupiah($rowp['harga']+$rowp['id_reseller_paket'])."</b><br>";
                                $noo = 1;
                                $rekening = $this->model_app->view('rb_rekening');
                                foreach ($rekening->result_array() as $row){
                                    echo "<span style='color:#000'>$noo. $row[nama_bank], <b>$row[no_rekening]</b>, A/N $row[pemilik_rekening]</span><br>";
                                    $noo++;
                                }
                          echo "</div>";
                        }
                      }

                      echo $this->session->flashdata('message'); 
                      $this->session->unset_userdata('message');
                ?>
                  <?php 
                    $no = 1;
                    foreach ($record->result_array() as $row){
                    if ($no==1){ 
                      $bintang = "<i class='fa fa-star fa-fw'></i>";
                      $tombol = "warning";
                    }elseif ($no==2){ 
                      $bintang = "<i class='fa fa-star fa-fw'></i><i class='fa fa-star fa-fw'></i>";
                      $tombol = "info";
                    }elseif ($no==3){ 
                      $bintang = "<i class='fa fa-star fa-fw'></i><i class='fa fa-star fa-fw'></i><i class='fa fa-star fa-fw'></i>";
                      $tombol = "success";
                    }
                    echo "<div class='col-lg-4 col-12 col-md-6' style='border-right: 1px solid #e3e3e3; border-left: 1px solid #e3e3e3;'>
                            <h3 class='mb-10 text-center'>$row[nama_paket]</h3>
                            <center>
                            $row[judul]<br><br>
                            <div class='price-block'>
                            <div class='price-block-wrapper'>
                              <div class='currency'>Rp.</div>
                              <div class='harga'>".rupiah($row['harga'])."</div>
                              <div class='waktu_block'>
                                <div class='waktu'>$row[durasi]/hari</div>
                              </div>
                            </div>
                            </div><br>
                            <a class='btn btn-$tombol btn-lg'  onclick=\"return confirm('Apa anda yakin untuk pilih paket ".$row['nama_paket']."?')\" href='".base_url().$this->uri->segment(1)."/upgrade?paket=$row[id_paket]'>$bintang Pilih Sekarang</a>
                            </center><hr style='margin-top:5px; margin-bottom:10px'>
                            ".nl2br($row['keterangan'])."
                          </div>
                          
                          <br class='visible-xs'><br class='visible-xs'>";
                      $no++;
                    }
                  ?>
              </div><br><br>
            </div>
          </div>