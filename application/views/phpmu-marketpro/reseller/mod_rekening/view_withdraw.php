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
        <a class='ps-btn' href='<?php echo base_url(); ?>members/tambah_withdraw'>Buat Permintaan</a>
        <table id="example1" class="table table-striped table-condensed iconset">
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
          $ex = explode(';',$row['keterangan']);
          echo "<tr><td>$no</td>
                    <td>$ex[0]</td>
                    <td>$ex[1]</td>
                    <td>$ex[2]</td>
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
      </div>
        </div>
    </div>
</div>