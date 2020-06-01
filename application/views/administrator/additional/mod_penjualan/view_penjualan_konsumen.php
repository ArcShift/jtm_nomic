            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Transaksi Penjualan / Orderan Konsumen</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped table-condensed">
                    <thead>
                      <tr>
                        <th style='width:40px'>No</th>
                        <th>Kode Transaksi</th>
                        <th>Nama Konsumen</th>
                        <th>Kurir</th>
                        <th>Status</th>
                        <th>Total + Ongkirr</th>
                        <th>Waktu Transaksi</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record->result_array() as $row){
                      $total = $this->db->query("SELECT sum((a.harga_jual-a.diskon)*a.jumlah) as total FROM `rb_penjualan_detail` a where a.id_penjualan='$row[id_penjualan]'")->row_array();
                      $produk = $this->db->query("SELECT * FROM `rb_penjualan_detail` a where a.id_penjualan='$row[id_penjualan]'")->num_rows();
                      echo "<tr><td>$no</td>
                              <td>$row[kode_transaksi]</td>
                              <td><a href='".base_url().$this->uri->segment(1)."/detail_konsumen/$row[id_konsumen]'>$row[nama_lengkap]</a></td>
                              <td><span style='text-transform:uppercase'>$row[kode_kurir]</span> - $row[service]</td>
                              <td>".status($row['proses'])."</td>
                              <td>Rp ".rupiah($total['total']+$row['ongkir'])."</span> ($produk Produk)</td>
                              <td>".jam_tgl_indo($row['waktu_transaksi'])."</td>
                              <td><center>
                                <a class='btn btn-success btn-xs' title='Detail Data' href='".base_url().$this->uri->segment(1)."/detail_penjualan_konsumen/$row[id_penjualan]'><span class='glyphicon glyphicon-search'></span> Detail</a>
                                <a class='btn btn-warning btn-xs' title='Edit Data' href='".base_url().$this->uri->segment(1)."/edit_penjualan_konsumen/$row[id_penjualan]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_penjualan_konsumen/$row[id_penjualan]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>
              </div>
              </div>
              