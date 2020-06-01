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
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 "><br>
        <div class='table-responsive'>
        <a class='ps-btn' href='<?php echo base_url(); ?>members/tambah_produk'>Tambahkan Produk</a>
        <table id="example1" class="table table-striped table-condensed iconset">
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
              <th style='width:80px'>Action</th>
            </tr>
          </thead>
          <tbody>
        <?php 
          $no = 1;
          foreach ($record as $row){
            $jual = $this->model_reseller->jual_reseller(reseller($this->session->id_konsumen),$row['id_produk'])->row_array();
            $beli = $this->model_reseller->beli_reseller(reseller($this->session->id_konsumen),$row['id_produk'])->row_array();
            $disk = $this->model_app->edit('rb_produk_diskon',array('id_produk'=>$row['id_produk'],'id_reseller'=>reseller($this->session->id_konsumen)))->row_array();
            
            if ($disk['diskon']=='' OR $disk['diskon']=='0'){ $diskon = '0'; $line = ''; $harga = ''; }else{ $diskon = $disk['diskon']; $line = 'line-through'; $harga = "/ <span style='color:red'>".rupiah($row['harga_konsumen']-$disk['diskon'])."</span>";}
            if ($row['id_produk_perusahaan']!='0'){ $perusahaan = "<small><i style='color:green'>(Perusahaan)</i></small>"; }else{ $perusahaan = ''; }
            if ($row['id_produk_perusahaan']=='0'){ $modal = $row['harga_beli'];  }else{ $modal = $row['harga_reseller']; }
            if ($row['aktif']=='Y'){ $aktif = 'Ya'; }else{ $aktif = 'Tidak'; }
          echo "<tr><td>$no</td>
                    <td><a target='_BLANK' href='".base_url()."produk/detail/$row[produk_seo]'>$row[nama_produk]</a> $perusahaan</td>
                    <td>".rupiah($modal)."</td>
                    <td>".rupiah($diskon)."</td>
                    <td><span style='text-decoration:$line'>".rupiah($row['harga_konsumen'])."</span> $harga</td>
                    <td>".($beli['beli']-$jual['jual'])." $row[satuan]</td>
                    <td>$row[berat] g</td>
                    <td>$aktif</td>
                    <td><center>
                      <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url().$this->uri->segment(1)."/edit_produk/$row[id_produk]'><span class='fa fa-edit'></span></a>
                      <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_produk/$row[id_produk]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='fa fa-remove'></span></a>
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