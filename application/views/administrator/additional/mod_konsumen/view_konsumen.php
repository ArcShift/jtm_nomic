            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Daftar Semua Konsumen</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Nama Lengkap</th>
                        <th>Alamat Email</th>
                        <th>No Telpon</th>
                        <th>Jenis Kelamin</th>
                        <th>Waktu Daftar</th>
                        <th style='width:120px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record as $row){
                    if (reseller($row['id_konsumen'])!=''){
                      if (cek_paket(reseller($row['id_konsumen']))=='1'){ $bintang = "<i class='fa fa-star text-yellow'></i>"; }elseif (cek_paket(reseller($row['id_konsumen']))=='0'){ $bintang = "<i class='fa fa-star-o'></i>"; }else{ $bintang = ""; }
                    }else{
                      $bintang = '';
                    }
                    echo "<tr><td>$no</td>
                              <td>$bintang $row[nama_lengkap]</td>
                              <td>$row[email]</td>
                              <td>$row[no_hp]</td>
                              <td>$row[jenis_kelamin]</td>
                              <td>".tgl_indo($row['tanggal_daftar'])."</td>
                              <td><center>
                                <a class='btn btn-success btn-xs' title='Detail Data' href='".base_url()."administrator/detail_konsumen/$row[id_konsumen]'><span class='glyphicon glyphicon-search'></span> Detail</a>
                                <a class='btn btn-warning btn-xs' title='Edit Data' href='".base_url()."administrator/edit_konsumen/$row[id_konsumen]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."administrator/delete_konsumen/$row[id_konsumen]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>