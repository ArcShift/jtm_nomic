            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Reseller Withdraw</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Nama Reseller</th>
                        <th>Nominal</th>
                        <th>Data Bank</th>
                        <th>Status</th>
                        <th>Waktu Proses</th>
                        <th style='width:70px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record->result_array() as $row){
                    if ($row['status']=='Sukses'){ $color = 'green'; $status = 'Pending'; $tombol = 'default'; $info = "onclick=\"return confirm('Yakin ingin mengubah status jadi Pending??')\""; }else{ $color = 'red'; $status = 'Sukses'; $tombol = 'success'; $info = ''; }
                    echo "<tr><td>$no</td>
                              <td><a href='".base_url()."administrator/detail_reseller/$row[id_reseller]'>$row[nama_reseller]</a></td>
                              <td><b>".rupiah($row['nominal'])."</b></td>
                              <td>$row[nama_bank], <b>$row[no_rekening]</b>, A/N. $row[pemilik_rekening]</td>
                              <td style='color:$color'>$row[status]</td>
                              <td>".jam_tgl_indo($row['waktu_withdraw'])."</td>
                              <td><center>
                                <a class='btn btn-$tombol btn-xs' title='Sukses Data' href='".base_url()."administrator/proses_withdraw/$row[id_withdraw]/$status' $info><span class='glyphicon glyphicon-ok'></span></a>";
                                if ($row['status']=='Batal'){
                                  echo " <a class='btn btn-default btn-xs' title='Batalkan Data' href='#' onclick=\"return confirm('Maaf, Permintaan ini telah dibatalkan!')\"><span class='glyphicon glyphicon-remove'></span></a>";
                                }else{
                                  echo " <a class='btn btn-danger btn-xs' title='Batalkan Data' href='".base_url()."administrator/proses_withdraw/$row[id_withdraw]/Batal' onclick=\"return confirm('Apa anda yakin untuk Batalkan Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>";
                                }
                                echo "</center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>