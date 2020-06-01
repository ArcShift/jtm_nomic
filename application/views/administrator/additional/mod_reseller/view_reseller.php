            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Daftar Semua reseller</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Nama Reseller</th>
                        <th>Alamat Toko</th>
                        <th>No Telpon</th>
                        <th>Status Akun</th>
                        <th style='width:120px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record as $row){
                    if (cek_paket($row['id_reseller'])=='1'){ $bintang = "<i class='fa fa-star text-yellow'></i>"; }else{ $bintang = "<i class='fa fa-star-o'></i>"; }
                    
                    $cek_paket = $this->db->query("SELECT * FROM rb_reseller_paket a JOIN rb_paket b ON a.id_paket=b.id_paket where a.id_reseller='$row[id_reseller]'");
                    if ($cek_paket->num_rows()>=1){
                        $rowp = $cek_paket->row_array();
                          if ($rowp['status']=='Y'){
                            $akhir  = strtotime($rowp['expire_date']); //Waktu awal
                            $awal = time(); // Waktu sekarang atau akhir
                            $diff  = $akhir - $awal;
                            
                            if (floor($diff / (60 * 60 * 24))<1){
                                $this->db->query("UPDATE rb_reseller_paket set status='N' where id_reseller='$row[id_reseller]'");
                            }
                          }
                    }
                    
                    echo "<tr><td>$no</td>
                              <td>$bintang $row[nama_reseller]</td>
                              <td>$row[alamat_lengkap]</td>
                              <td>$row[no_telpon]</td>
                              <td>".cek_status_paket($row['id_reseller'])."</td>
                              <td><center>
                                <a class='btn btn-success btn-xs' title='Detail Data' href='".base_url()."administrator/detail_reseller/$row[id_reseller]'><span class='glyphicon glyphicon-search'></span> Detail</a>
                                <a class='btn btn-warning btn-xs' title='Edit Data' href='".base_url()."administrator/edit_reseller/$row[id_reseller]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."administrator/delete_reseller/$row[id_reseller]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>