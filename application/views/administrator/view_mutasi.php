<div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Mutasi Bank</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="mutasi" class="table table-bordered table-sm table-striped">
                    <thead>
                      <tr>
                        <th>Status</th>
                        <th>Nominal</th>
                        <th>Keterangan</th>
                        <th>Waktu</th>
                        <th>Balance</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $riwayat = json_decode($response);
                    $no = 1;
                    foreach($riwayat->data as $item){
                        if ($item->type=='DB'){ 
                            $color = 'danger'; 
                            $text = 'red';
                        }else{ 
                            $color = 'success'; 
                            $text = 'green';
                        }
                        echo "<tr>
                            <td class='$color'><b style='padding-left:10px; color:$text'>".$item->type."</b></td>
                            <td style='color:blue; font-weight:bold'><span style='padding-left:10px'>".rupiah($item->amount)."</span></td>
                            <td><i>".$item->description."</i></td>
                            <td>".tgl_view($item->transaction_date)."</td>
                            <td style='color:green; font-weight:bold'>".rupiah($item->balance)."</td>
                        </tr>";
                        $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>