            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Tarik Dana (Withdraw)</h3>
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url().$this->uri->segment(1); ?>/tambah_withdraw'>Buat Permintaan</a>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-condensed">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Nama Bank</th>
                        <th>No Rekening</th>
                        <th>Atas Nama</th>
                        <th>Nominal</th>
                        <th>Status</th>
                        <th>Waktu Withdraw</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record->result_array() as $row){
                    if ($row['status']=='Pending'){ $color =  'red'; }else{ $color = 'green'; }
                    echo "<tr><td>$no</td>
                              <td>$row[nama_bank]</td>
                              <td>$row[no_rekening]</td>
                              <td>$row[pemilik_rekening]</td>
                              <td><b>".rupiah($row['nominal'])."</b></td>
                              <td style='color:$color'>$row[status]</td>
                              <td>".jam_tgl_indo($row['waktu_withdraw'])."</td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>