            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Rekap Penjualan Reseller</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered">
                    <thead>
                      <tr bgcolor='#e3e3e3'>
                        <th style='width:20px'>No</th>
                        <th>Nama Reseller</th>
                        <th>Modal</th>
                        <th>Trx. Sukses</th>
                        <th>Saldo</th>
                        <th>Withdraw</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record->result_array() as $row){
                    $tarik = $this->db->query("SELECT sum(nominal) as total FROM rb_withdraw WHERE id_reseller='$row[id_reseller]' AND status='Sukses'")->row_array();
                    if (cek_paket($row['id_reseller'])=='1'){ $bintang = "<i class='fa fa-star text-yellow'></i>"; }else{ $bintang = "<i class='fa fa-star-o'></i>"; }
                    echo "<tr><td>$no</td>
                              <td>$bintang <a href='".base_url()."administrator/detail_reseller/$row[id_reseller]'>$row[nama_reseller]</a></td>
                              <td>".rupiah(modal($row['id_reseller'],'4'))."</td>
                              <td>".rupiah(penjualan($row['id_reseller'],'4'))."</td>
                              <td>".rupiah(penjualan($row['id_reseller'],'4')-$tarik['total'])."</td>
                              <td>".rupiah($tarik['total'])."</td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>