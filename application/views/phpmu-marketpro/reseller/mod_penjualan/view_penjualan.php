<div class="ps-page--single">
<div class="ps-breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>">Home</a></li>
            <li><a href="#">Members</a></li>
            <li><?php echo $title; ?></li>
        </ul>
    </div>
</div>
</div>
<div class="ps-vendor-dashboard pro" style='margin-top:10px'>
    <div class="container">
      <div class="ps-section__content">
        <?php 
          echo $this->session->flashdata('message'); 
          $this->session->unset_userdata('message');
        ?>
        <div class="row">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 penjualan"><br>
        <div class='table-responsive'>

                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                      <li class="nav-item"><a class="nav-link active" href='#baru' id='baru-tab' role='tab' data-toggle='tab' aria-controls='baru' aria-expanded='true'>Pesanan Baru <span class="badge badge-secondary"><?php echo total_penjualan('0',reseller($this->session->id_konsumen)); ?></span></a></li>
                      <li class="nav-item"><a class="nav-link" href='#siap' role='tab' id='siap-tab' data-toggle='tab' aria-controls='siap' aria-expanded='false'>Siap Dikirim <span class="badge badge-secondary"><?php echo total_penjualan('1',reseller($this->session->id_konsumen)); ?></span></a></li>
                      <li class="nav-item"><a class="nav-link" href='#dikirim' role='tab' id='dikirim-tab' data-toggle='tab' aria-controls='dikirim' aria-expanded='false'>Sedang Dikirim <span class="badge badge-secondary"><?php echo total_penjualan('3',reseller($this->session->id_konsumen)); ?></span></a></li>
                      <li class="nav-item"><a class="nav-link" href='#selesai' role='tab' id='selesai-tab' data-toggle='tab' aria-controls='selesai' aria-expanded='false'>Sampai Tujuan <span class="badge badge-secondary"><?php echo total_penjualan('4',reseller($this->session->id_konsumen)); ?></span></a></li>
                    </ul><br>

                    <div class="tab-content" id="myTabContent">
                      <div role='tabpanel' class='tab-pane fade show active' id='baru' aria-labelledby='baru-tab'>
                      <table id="example1" class="table table-striped table-condensed iconset">
                        <thead>
                          <tr>
                            <th style='width:40px'>No</th>
                            <th>Kode Transaksi</th>
                            <th>Nama Konsumen</th>
                            <th>Kurir</th>
                            <th>Status</th>
                            <th>Total + Ongkir</th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                      <?php 
                        $no = 1;
                        foreach ($menunggu->result_array() as $row){
                        if ($row['proses']=='0'){ $proses = '<i class="text-danger">Pending</i>'; $status = 'Proses'; $icon = 'star-empty'; $ubah = 1; }elseif($row['proses']=='1'){ $proses = '<i class="text-success">Proses</i>'; $status = 'Pending'; $icon = 'star text-yellow'; $ubah = 0; }elseif($row['proses']=='3'){ 
                            $proses = '<i class="text-success">Dikirim</i>'; $status = 'Dikirim'; $icon = 'star text-yellow'; $ubah = 0; 
                        }else{ $proses = '<i class="text-info">Konfirmasi</i>'; $status = 'Proses'; $icon = 'star'; $ubah = 1; }
                        $total = $this->db->query("SELECT sum((a.harga_jual*a.jumlah)-a.diskon) as total FROM `rb_penjualan_detail` a where a.id_penjualan='$row[id_penjualan]'")->row_array();
                        echo "<tr><td>$no</td>
                                  <td>$row[kode_transaksi]</td>
                                  <td><a href='".base_url().$this->uri->segment(1)."/detail_konsumen/$row[id_konsumen]'>$row[nama_lengkap]</a></td>
                                  <td><span style='text-transform:uppercase'>$row[kurir]</span> - $row[service]</td>
                                  <td>".status($row['proses'])."</td>
                                  <td style='color:red;'>Rp ".rupiah($total['total']+$row['ongkir'])."</td>
                                  <td><center>
                                    <a class='btn btn-primary btn-xs' title='Proses Data' href='".base_url().$this->uri->segment(1)."/proses_penjualan/$row[id_penjualan]/1' onclick=\"return confirm('Apa anda yakin untuk ubah status jadi Proses?')\"><span class='fa fa-star'></span></a>
                                    <a class='btn btn-success btn-xs' title='Detail Data' href='".base_url().$this->uri->segment(1)."/detail_penjualan/$row[id_penjualan]'><span class='fa fa-search'></span></a>
                                    <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_penjualan/$row[id_penjualan]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='fa fa-remove'></span></a>
                                  </center></td>
                              </tr>";
                          $no++;
                        }
                      ?>
                      </tbody>
                    </table>
                    </div>

                    <div role='tabpanel' class='tab-pane fade' id='siap' aria-labelledby='siap-tab'>
                    <table id="example11" class="table table-striped table-condensed iconset">
                        <thead>
                          <tr>
                            <th style='width:40px'>No</th>
                            <th>Kode Transaksi</th>
                            <th>Nama Konsumen</th>
                            <th>Kurir</th>
                            <th>Status</th>
                            <th>Total + Ongkir</th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                      <?php 
                        $no = 1;
                        foreach ($diterima->result_array() as $row){
                        if ($row['proses']=='0'){ $proses = '<i class="text-danger">Pending</i>'; $status = 'Proses'; $icon = 'star-empty'; $ubah = 1; }elseif($row['proses']=='1'){ $proses = '<i class="text-success">Proses</i>'; $status = 'Pending'; $icon = 'star text-yellow'; $ubah = 0; }elseif($row['proses']=='3'){ 
                            $proses = '<i class="text-success">Dikirim</i>'; $status = 'Dikirim'; $icon = 'star text-yellow'; $ubah = 0; 
                        }else{ $proses = '<i class="text-info">Konfirmasi</i>'; $status = 'Proses'; $icon = 'star'; $ubah = 1; }
                        $total = $this->db->query("SELECT sum((a.harga_jual-a.diskon)*a.jumlah) as total FROM `rb_penjualan_detail` a where a.id_penjualan='$row[id_penjualan]'")->row_array();
                        echo "<tr><td>$no</td>
                                  <td>$row[kode_transaksi]</td>
                                  <td><a href='".base_url().$this->uri->segment(1)."/detail_konsumen/$row[id_konsumen]'>$row[nama_lengkap]</a></td>
                                  <td><span style='text-transform:uppercase'>$row[kurir]</span> - $row[service]</td>
                                  <td>".status($row['proses'])."</td>
                                  <td style='color:red;'>Rp ".rupiah($total['total']+$row['ongkir'])."</td>
                                  <td><center>
                                    <a class='btn btn-success btn-xs' title='Detail Data' href='".base_url().$this->uri->segment(1)."/detail_penjualan/$row[id_penjualan]'><span class='fa fa-search'></span></a>
                                    <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_penjualan/$row[id_penjualan]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='fa fa-remove'></span></a>
                                  </center></td>
                              </tr>";
                          $no++;
                        }
                      ?>
                      </tbody>
                    </table>
                    </div>

                    <div role='tabpanel' class='tab-pane fade' id='dikirim' aria-labelledby='dikirim-tab'>
                    <table id="example11" class="table table-striped table-condensed iconset">
                        <thead>
                          <tr>
                            <th style='width:40px'>No</th>
                            <th>Kode Transaksi</th>
                            <th>Nama Konsumen</th>
                            <th>Kurir</th>
                            <th>Status</th>
                            <th>Total + Ongkir</th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                      <?php 
                        $no = 1;
                        foreach ($dikirim->result_array() as $row){
                        if ($row['proses']=='0'){ $proses = '<i class="text-danger">Pending</i>'; $status = 'Proses'; $icon = 'star-empty'; $ubah = 1; }elseif($row['proses']=='1'){ $proses = '<i class="text-success">Proses</i>'; $status = 'Pending'; $icon = 'star text-yellow'; $ubah = 0; }elseif($row['proses']=='3'){ 
                            $proses = '<i class="text-success">Dikirim</i>'; $status = 'Dikirim'; $icon = 'star text-yellow'; $ubah = 0; 
                        }else{ $proses = '<i class="text-info">Konfirmasi</i>'; $status = 'Proses'; $icon = 'star'; $ubah = 1; }
                        $total = $this->db->query("SELECT sum((a.harga_jual-a.diskon)*a.jumlah) as total FROM `rb_penjualan_detail` a where a.id_penjualan='$row[id_penjualan]'")->row_array();
                        echo "<tr><td>$no</td>
                                  <td>$row[kode_transaksi]</td>
                                  <td><a href='".base_url().$this->uri->segment(1)."/detail_konsumen/$row[id_konsumen]'>$row[nama_lengkap]</a></td>
                                  <td><span style='text-transform:uppercase'>$row[kurir]</span> - $row[service]</td>
                                  <td>".status($row['proses'])."</td>
                                  <td style='color:red;'>Rp ".rupiah($total['total']+$row['ongkir'])."</td>
                                  <td><center>
                                  <a class='btn btn-primary btn-xs' title='Proses Data' href='".base_url().$this->uri->segment(1)."/proses_penjualan/$row[id_penjualan]/1' onclick=\"return confirm('Apa anda yakin untuk ubah status jadi Proses?')\"><span class='fa fa-star'></span></a>
                                    <a class='btn btn-success btn-xs' title='Detail Data' href='".base_url().$this->uri->segment(1)."/detail_penjualan/$row[id_penjualan]'><span class='fa fa-search'></span></a>
                                    <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_penjualan/$row[id_penjualan]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='fa fa-remove'></span></a>
                                  </center></td>
                              </tr>";
                          $no++;
                        }
                      ?>
                      </tbody>
                    </table>
                    </div>

                    <div role='tabpanel' class='tab-pane fade' id='selesai' aria-labelledby='selesai-tab'>
                    <table id="example11" class="table table-striped table-condensed iconset">
                        <thead>
                          <tr>
                            <th style='width:40px'>No</th>
                            <th>Kode Transaksi</th>
                            <th>Nama Konsumen</th>
                            <th>Kurir</th>
                            <th>Status</th>
                            <th>Total + Ongkir</th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                      <?php 
                        $no = 1;
                        foreach ($selesai->result_array() as $row){
                        if ($row['proses']=='0'){ $proses = '<i class="text-danger">Pending</i>'; $status = 'Proses'; $icon = 'star-empty'; $ubah = 1; }elseif($row['proses']=='1'){ $proses = '<i class="text-success">Proses</i>'; $status = 'Pending'; $icon = 'star text-yellow'; $ubah = 0; }elseif($row['proses']=='3'){ 
                            $proses = '<i class="text-success">Dikirim</i>'; $status = 'Dikirim'; $icon = 'star text-yellow'; $ubah = 0; 
                        }else{ $proses = '<i class="text-info">Konfirmasi</i>'; $status = 'Proses'; $icon = 'star'; $ubah = 1; }
                        $total = $this->db->query("SELECT sum((a.harga_jual-a.diskon)*a.jumlah) as total FROM `rb_penjualan_detail` a where a.id_penjualan='$row[id_penjualan]'")->row_array();
                        echo "<tr><td>$no</td>
                                  <td>$row[kode_transaksi]</td>
                                  <td><a href='".base_url().$this->uri->segment(1)."/detail_konsumen/$row[id_konsumen]'>$row[nama_lengkap]</a></td>
                                  <td><span style='text-transform:uppercase'>$row[kurir]</span> - $row[service]</td>
                                  <td>".status($row['proses'])."</td>
                                  <td style='color:red;'>Rp ".rupiah($total['total']+$row['ongkir'])."</td>
                                  <td><center>
                                  <a class='btn btn-primary btn-xs' title='Proses Data' href='".base_url().$this->uri->segment(1)."/proses_penjualan/$row[id_penjualan]/1' onclick=\"return confirm('Apa anda yakin untuk ubah status jadi Proses?')\"><span class='fa fa-star'></span></a>
                                    <a class='btn btn-success btn-xs' title='Detail Data' href='".base_url().$this->uri->segment(1)."/detail_penjualan/$row[id_penjualan]'><span class='fa fa-search'></span></a>
                                    <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_penjualan/$row[id_penjualan]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='fa fa-remove'></span></a>
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
              </div>
              </div>
              </div>
              </div>
              </div>
              