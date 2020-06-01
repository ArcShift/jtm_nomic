      <div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Detail Data Reseller</h3>
                </div>
                <div class='box-body'>

                  <div class='panel-body'>
                    <ul id='myTabs' class='nav nav-tabs' role='tablist'>
                      <li role='presentation' class='active'><a href='#profile' id='profile-tab' role='tab' data-toggle='tab' aria-controls='profile' aria-expanded='true'>Data Konsumen </a></li>
                      <li role='presentation' class=''><a href='#produk' role='tab' id='produk-tab' data-toggle='tab' aria-controls='produk' aria-expanded='false'>Semua Produk</a></li>
                      <li role='presentation' class=''><a href='#pembelian' role='tab' id='pembelian-tab' data-toggle='tab' aria-controls='pembelian' aria-expanded='false'>History Pembelian</a></li>
                      <li role='presentation' class=''><a href='#penjualan' role='tab' id='penjualan-tab' data-toggle='tab' aria-controls='penjualan' aria-expanded='false'>History Penjualan</a></li>
                    </ul><br>

                    <div id='myTabContent' class='tab-content'>
                      <div role='tabpanel' class='tab-pane fade active in' id='profile' aria-labelledby='profile-tab'>
                          <div class='col-md-12'>
                            <table class='table table-condensed table-bordered'>
                            <tbody>
                              <?php 
                              if (trim($rows['foto'])==''){ $foto_user = 'blank.png'; }else{ $foto_user = $rows['foto']; } 
                                $ko = $this->db->query("SELECT * FROM rb_kota where kota_id='$rows[kota_id]'")->row_array();
                              ?>
                              <tr bgcolor='#e3e3e3'><th rowspan='13' width='110px'><center><?php echo "<img style='border:1px solid #cecece; height:85px; width:85px' src='".base_url()."asset/foto_user/$foto_user' class='img-circle img-thumbnail'>"; ?></center></th></tr>

                              <tr><th width='130px' scope='row'>Nama Reseller</th> <td><?php echo $rows['nama_reseller']?></td></tr>
                              <tr><th scope='row'>Daerah</th> <td><?php echo kecamatan($rows['kecamatan_id'],$rows['kota_id']); ?></td></tr>
                              <tr><th scope='row'>Alamat Lengkap</th> <td><?php echo $rows['alamat_lengkap']?></td></tr>
                              <tr><th scope='row'>No Hp</th> <td><?php echo $rows['no_telpon']?></td></tr>

                              <tr><th scope='row'>Keterangan</th> <td><?php echo $rows['keterangan']?></td></tr>
                              <tr><th scope='row'>Status Akun</th> <td><?php echo cek_status_paket($rows['id_reseller']); ?></td></tr>
                              <tr><th scope='row'>Tanggal Daftar</th> <td><?php echo tgl_indo($rows['tanggal_daftar']); ?></td></tr>
                            </tbody>
                            </table>
                          </div>
                          <div style='clear:both'></div>
                      </div>

                      <div role='tabpanel' class='tab-pane fade' id='pembelian' aria-labelledby='pembelian-tab'>
                          <div class='col-md-12'>
                            <table id="example1" class="table table-bordered table-striped">
                              <thead>
                                <tr>
                                  <th style='width:30px'>No</th>
                                  <th>Kode Transaksi</th>
                                  <th>Nama Pembeli</th>
                                  <th>Waktu Transaksi</th>
                                  <th>Status</th>
                                  <th>Total Tagihan</th>
                                  <th>Proses / Keterangan</th>
                                </tr>
                              </thead>
                              <tbody>
                            <?php 
                              $no = 1;
                              foreach ($record->result_array() as $row){
                              if ($row['proses']=='0'){ $proses = '<i class="text-danger">Pending</i>'; }elseif($row['proses']=='1'){ $proses = '<i class="text-success">Proses</i>'; }else{ $proses = '<i class="text-info">Konfirmasi</i>'; }
                              $total = $this->db->query("SELECT sum((a.harga_jual*a.jumlah)-a.diskon) as total FROM `rb_penjualan_detail` a where a.id_penjualan='$row[id_penjualan]'")->row_array();
                              if ($row['service']==''){ $service = "<i style='color:green'>Pembelian ke Pusat</i>"; }else{ $service = "<i style='color:blue'>$row[service]</i>"; }
                              echo "<tr><td>$no</td>
                                        <td><a href='".base_url()."administrator/detail_penjualan/$row[id_penjualan]'>$row[kode_transaksi]</a></td>
                                        <td>$row[nama_reseller]</td>
                                        <td>$row[waktu_transaksi]</td>
                                        <td>$proses</td>
                                        <td style='color:red;'>Rp ".rupiah($total['total'])."</td>
                                        <td>$service</td>
                                    </tr>";
                                $no++;
                              }
                            ?>
                            </tbody>
                          </table>
                          </div>
                      </div>

                      <div role='tabpanel' class='tab-pane fade' id='penjualan' aria-labelledby='penjualan-tab'>
                          <div class='col-md-12'>
                            <table id="example2" class="table table-bordered table-striped">
                              <thead>
                                <tr>
                                  <th style='width:40px'>No</th>
                                  <th>Kode Transaksi</th>
                                  <th>Nama Konsumen</th>
                                  <th>Waktu Transaksi</th>
                                  <th>Status</th>
                                  <th>Total</th>
                                </tr>
                              </thead>
                              <tbody>
                            <?php 
                              $no = 1;
                              foreach ($penjualan->result_array() as $row){
                              if ($row['proses']=='0'){ $proses = '<i class="text-danger">Pending</i>'; $status = 'Proses'; $icon = 'star-empty'; $ubah = 1; }elseif($row['proses']=='1'){ $proses = '<i class="text-success">Proses</i>'; $status = 'Pending'; $icon = 'star text-yellow'; $ubah = 0; }elseif($row['proses']=='3'){ 
                        $proses = '<i class="text-success">Dikirim</i>'; $status = 'Dikirim'; $icon = 'star text-yellow'; $ubah = 0; 
                    }else{ $proses = '<i class="text-info">Konfirmasi</i>'; $status = 'Proses'; $icon = 'star'; $ubah = 1; }
                              $total = $this->db->query("SELECT sum((a.harga_jual*a.jumlah)-a.diskon) as total FROM `rb_penjualan_detail` a where a.id_penjualan='$row[id_penjualan]'")->row_array();
                              echo "<tr><td>$no</td>
                                        <td>$row[kode_transaksi]</td>
                                        <td><a href='".base_url()."administrator/detail_konsumen/$row[id_konsumen]'>$row[nama_lengkap]</a></td>
                                        <td>$row[waktu_transaksi]</td>
                                        <td>$proses</td>
                                        <td style='color:red;'>Rp ".rupiah($total['total'])."</td>
                                    </tr>";
                                $no++;
                              }
                            ?>
                            </tbody>
                          </table>
                          </div>
                      </div>


                      <div role='tabpanel' class='tab-pane fade' id='produk' aria-labelledby='produk-tab'>
                          <div class='col-md-12'>
                            <?php
                              $id_reseller = $this->uri->segment(3);
                              echo "<table id='example3' class='table table-bordered table-striped table-condensed'>
                                <thead>
                                  <tr>
                                    <th style='width:30px'>No</th>
                                    <th>Nama Produk</th>
                                    <th>Modal (Rp)</th>
                                    <th>Diskon (Rp)</th>
                                    <th>Jual (Rp)</th>
                                    <th>Stok</th>
                                    <th>Berat</th>
                                    <th>Aktif</th>
                                    <th></th>
                                  </tr>
                                </thead>
                                <tbody>";
                                $no = 1;
                                $record_produk = $this->model_app->view_where_ordering('rb_produk',array('id_reseller'=>$id_reseller),'id_produk','DESC');
                                foreach ($record_produk as $row){
                                  $jual = $this->model_reseller->jual_reseller($id_reseller,$row['id_produk'])->row_array();
                                  $beli = $this->model_reseller->beli_reseller($id_reseller,$row['id_produk'])->row_array();
                                  $disk = $this->model_app->edit('rb_produk_diskon',array('id_produk'=>$row['id_produk'],'id_reseller'=>$id_reseller))->row_array();
                                  if ($disk['diskon']=='' OR $disk['diskon']=='0'){ $diskon = '0'; $line = ''; $harga = ''; }else{ $diskon = $disk['diskon']; $line = 'line-through'; $harga = "/ <span style='color:red'>".rupiah($row['harga_konsumen']-$disk['diskon'])."</span>";}
                                  if ($row['id_produk_perusahaan']!='0'){ $perusahaan = "<small><i style='color:green'>(Perusahaan)</i></small>"; }else{ $perusahaan = ''; }
                                  if ($row['id_produk_perusahaan']=='0'){ $modal = $row['harga_beli'];  }else{ $modal = $row['harga_reseller']; }
                                  if ($row['aktif']=='Y'){ $aktif = 'Ya'; }else{ $aktif = 'Tidak'; }
                                echo "<tr><td>$no</td>
                                          <td>$row[nama_produk] $perusahaan</td>
                                          <td>".rupiah($modal)."</td>
                                          <td>".rupiah($diskon)."</td>
                                          <td><span style='text-decoration:$line'>".rupiah($row['harga_konsumen'])."</span> $harga</td>
                                          <td>".($beli['beli']-$jual['jual'])." $row[satuan]</td>
                                          <td>$row[berat] g</td>
                                          <td>$aktif</td>
                                          <td><a class='btn btn-success btn-xs' title='Add Data' href='".base_url()."administrator/add_penawaran/$row[id_produk]' onclick=\"return confirm('Apa anda yakin untuk masukkan ke daftar Flash Deal?')\"><span class='glyphicon glyphicon-plus'></span> Flash Deal</a></td>
                                      </tr>";
                                  $no++;
                                }
                              echo "</tbody>
                            </table>";
                            ?>
                          </div>
                      </div>

                    </div>
                  </div>
                </div>
            </div>
        </div>