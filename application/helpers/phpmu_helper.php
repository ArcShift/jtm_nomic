<?php 
    function cek_session_members(){
        $ci = & get_instance();
        $session = $ci->session->userdata('level');
        if ($session != 'konsumen'){
          echo $ci->session->set_flashdata('message', '<div class="alert alert-danger"><center>Anda harus login untuk akses halaman tersebut!</center></div>');
          redirect('auth/login');
        }
    }

    function selisih_waktu_run($tgl1,$tgl2){
        $akhir = str_replace('-','',$tgl2);
        $awal = str_replace('-','',$tgl1);
        $lama = $akhir-$awal;
        return $lama; 
    }

    function cek_session_reseller(){
        $ci = & get_instance();
        $session = $ci->session->userdata('level');
        if ($session != 'reseller'){
            redirect(base_url());
        }
    }
    
    function replace_url($data){
        return str_replace("https://","",$data);
    }

    function filter($str){
        return strip_tags(htmlentities($str, ENT_QUOTES, 'UTF-8'));
    }

    function rupiah($total){
        return number_format($total,0);
    }

    function terbilang($x){
      $abil = array("", "Satu", "Dua", "Tiga", "Empat", "Lima", "Enam", "Tujuh", "Delapan", "Sembilan", "Sepuluh", "Sebelas");
      if ($x < 12)
        return " " . $abil[$x];
      elseif ($x < 20)
        return Terbilang($x - 10) . " Belas";
      elseif ($x < 100)
        return Terbilang($x / 10) . " Puluh" . Terbilang($x % 10);
      elseif ($x < 200)
        return " Seratus" . Terbilang($x - 100);
      elseif ($x < 1000)
        return Terbilang($x / 100) . " Ratus" . Terbilang($x % 100);
      elseif ($x < 2000)
        return " Seribu" . Terbilang($x - 1000);
      elseif ($x < 1000000)
        return Terbilang($x / 1000) . " Ribu" . Terbilang($x % 1000);
      elseif ($x < 1000000000)
        return Terbilang($x / 1000000) . " Juta" . Terbilang($x % 1000000);
    }

    function cetak($str){
        return strip_tags(htmlentities($str, ENT_QUOTES, 'UTF-8'));
    }

    function cetak_meta($str,$mulai,$selesai){
        return strip_tags(html_entity_decode(substr(str_replace('"','',$str),$mulai,$selesai), ENT_COMPAT, 'UTF-8'));
    }

    function sensor($teks){
        $ci = & get_instance();
        $query = $ci->db->query("SELECT * FROM katajelek");
        foreach ($query->result_array() as $r) {
            $teks = str_replace($r['kata'], $r['ganti'], $teks);       
        }
        return $teks;
    }  

    function getSearchTermToBold($text, $words){
        preg_match_all('~[A-Za-z0-9_äöüÄÖÜ]+~', $words, $m);
        if (!$m)
            return $text;
        $re = '~(' . implode('|', $m[0]) . ')~i';
        return preg_replace($re, '<b style="color:red">$0</b>', $text);
    }

    function tgl_indo($tgl){
            $tanggal = substr($tgl,8,2);
            $bulan = getBulan(substr($tgl,5,2));
            $tahun = substr($tgl,0,4);
            return $tanggal.' '.$bulan.' '.$tahun;       
    } 

    function tgl_flashdeal($tgl){
        $tanggal = substr($tgl,8,2);
        $bulan = getBulan(substr($tgl,5,2));
        $tahun = substr($tgl,0,4);
        return $bulan.' '.$tanggal.', '.$tahun;       
} 

    function jam_tgl_indo($tgl){
        $ex = explode(' ',$tgl);
        $tanggal = substr($ex[0],8,2);
        $bulan = getBulan(substr($ex[0],5,2));
        $tahun = substr($ex[0],0,4);
        return $tanggal.' '.$bulan.' '.$tahun.', '.$ex[1];       
} 

    function tgl_simpan($tgl){
            $tanggal = substr($tgl,0,2);
            $bulan = substr($tgl,3,2);
            $tahun = substr($tgl,6,4);
            return $tahun.'-'.$bulan.'-'.$tanggal;       
    }

    function tgl_view($tgl){
            $tanggal = substr($tgl,8,2);
            $bulan = substr($tgl,5,2);
            $tahun = substr($tgl,0,4);
            return $tanggal.'-'.$bulan.'-'.$tahun;       
    }

    function tgl($tgl){
        $tanggal = substr($tgl,8,2);
        $bulan = substr($tgl,5,2);
        $tahun = substr($tgl,0,4);
        return $bulan.'/'.$tanggal.'/'.$tahun;       
    }

    function tgls($tgl){
        $tanggal = substr($tgl,3,2);
        $bulan = substr($tgl,0,2);
        $tahun = substr($tgl,6,4);
        return $tahun.'-'.$bulan.'-'.$tanggal;       
    }

    function tgl_grafik($tgl){
            $tanggal = substr($tgl,8,2);
            $bulan = getBulan(substr($tgl,5,2));
            $tahun = substr($tgl,0,4);
            return $tanggal.'_'.$bulan;       
    }   

    function generateRandomString($length = 10) {
        return substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, $length);
    } 

    function seo_title($s) {
        $c = array (' ');
        $d = array ('-','/','\\',',','.','#',':',';','\'','"','[',']','{','}',')','(','|','`','~','!','@','%','$','^','&','*','=','?','+','–');
        $s = str_replace($d, '', $s); // Hilangkan karakter yang telah disebutkan di array $d
        $s = strtolower(str_replace($c, '-', $s)); // Ganti spasi dengan tanda - dan ubah hurufnya menjadi kecil semua
        return $s;
    }

    function hari_ini($w){
        $seminggu = array("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");
        $hari_ini = $seminggu[$w];
        return $hari_ini;
    }

    function getBulan($bln){
                switch ($bln){
                    case 1: 
                        return "Jan";
                        break;
                    case 2:
                        return "Feb";
                        break;
                    case 3:
                        return "Mar";
                        break;
                    case 4:
                        return "Apr";
                        break;
                    case 5:
                        return "Mei";
                        break;
                    case 6:
                        return "Jun";
                        break;
                    case 7:
                        return "Jul";
                        break;
                    case 8:
                        return "Agu";
                        break;
                    case 9:
                        return "Sep";
                        break;
                    case 10:
                        return "Okt";
                        break;
                    case 11:
                        return "Nov";
                        break;
                    case 12:
                        return "Des";
                        break;
                }
            } 

    function bulan($bln){
                switch ($bln){
                    case 1: 
                        return "Januari";
                        break;
                    case 2:
                        return "Februari";
                        break;
                    case 3:
                        return "Maret";
                        break;
                    case 4:
                        return "April";
                        break;
                    case 5:
                        return "Mei";
                        break;
                    case 6:
                        return "Juni";
                        break;
                    case 7:
                        return "Juli";
                        break;
                    case 8:
                        return "Agustus";
                        break;
                    case 9:
                        return "September";
                        break;
                    case 10:
                        return "Oktober";
                        break;
                    case 11:
                        return "November";
                        break;
                    case 12:
                        return "Desember";
                        break;
                }
            } 

function cek_terakhir($datetime, $full = false) {
	 $today = time();    
     $createdday= strtotime($datetime); 
     $datediff = abs($today - $createdday);  
     $difftext="";  
     $years = floor($datediff / (365*60*60*24));  
     $months = floor(($datediff - $years * 365*60*60*24) / (30*60*60*24));  
     $days = floor(($datediff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));  
     $hours= floor($datediff/3600);  
     $minutes= floor($datediff/60);  
     $seconds= floor($datediff);  
     //year checker  
     if($difftext=="")  
     {  
       if($years>1)  
        $difftext=$years." Tahun";  
       elseif($years==1)  
        $difftext=$years." Tahun";  
     }  
     //month checker  
     if($difftext=="")  
     {  
        if($months>1)  
        $difftext=$months." Bulan";  
        elseif($months==1)  
        $difftext=$months." Bulan";  
     }  
     //month checker  
     if($difftext=="")  
     {  
        if($days>1)  
        $difftext=$days." Hari";  
        elseif($days==1)  
        $difftext=$days." Hari";  
     }  
     //hour checker  
     if($difftext=="")  
     {  
        if($hours>1)  
        $difftext=$hours." Jam";  
        elseif($hours==1)  
        $difftext=$hours." Jam";  
     }  
     //minutes checker  
     if($difftext=="")  
     {  
        if($minutes>1)  
        $difftext=$minutes." Menit";  
        elseif($minutes==1)  
        $difftext=$minutes." Menit";  
     }  
     //seconds checker  
     if($difftext=="")  
     {  
        if($seconds>1)  
        $difftext=$seconds." Detik";  
        elseif($seconds==1)  
        $difftext=$seconds." Detik";  
     }  
     return $difftext;  
    }

    function rate_bintang($id_produk){
        $ci = & get_instance();
        $rates = $ci->db->query("SELECT sum(rating) as rating, count(*) as jumlah, sum(rating)/count(*) as total FROM rb_produk_ulasan where id_produk='$id_produk'")->row_array();
        $rates_cek = $ci->db->query("SELECT * FROM rb_produk_ulasan where id_produk='$id_produk'")->num_rows();
        if ($rates_cek<='0'){
            $rate .= "<option value='1'>$i</option>
                      <option value='2'>$i</option>
                      <option value='2'>$i</option>
                      <option value='2'>$i</option>
                      <option value='2'>$i</option>";
        }else{
            for ($i=1; $i <= 5; $i++) { 
                if ($i<=number_format($rates['total'],0)){
                    $rate .= "<option value='1'>$i</option>";
                }else{
                    $rate .= "<option value='2'>$i</option>";
                }   
            }
        }
        return $rate;
    }



    function rate_bintang_ulasan($bintang){
        $ci = & get_instance();
        if ($bintang<='0'){
            $rate .= "<option value='1'>$i</option>
                      <option value='2'>$i</option>
                      <option value='2'>$i</option>
                      <option value='2'>$i</option>
                      <option value='2'>$i</option>";
        }else{
            for ($i=1; $i <= 5; $i++) { 
                if ($i<=number_format($bintang,0)){
                    $rate .= "<option value='1'>$i</option>";
                }else{
                    $rate .= "<option value='2'>$i</option>";
                }   
            }


        }
        return $rate;
    }

    function reseller($id_konsumen){
        $ci = & get_instance();
        $res = $ci->db->query("SELECT id_reseller FROM rb_reseller where id_konsumen='$id_konsumen'")->row_array();
        return $res['id_reseller'];
    }

    function saldo($id_reseller){
        $ci = & get_instance();
        $penjualan_perusahaan = $ci->model_reseller->penjualan_perusahaan($id_reseller)->row_array();
        $tarik = $ci->db->query("SELECT sum(nominal) as total FROM rb_withdraw WHERE id_reseller='$id_reseller' AND status='Sukses'")->row_array();
        return $penjualan_perusahaan['total']-$tarik['total'];
    }

    function rate_jumlah($id_produk){
        $ci = & get_instance();
        $rate = $ci->db->query("SELECT sum(rating) as rating, count(*) as jumlah, sum(rating)/count(*) as total FROM rb_produk_ulasan where id_produk='$id_produk'")->row_array();
        return $rate['jumlah'];
    }

    function rate_total($id_produk){
        $ci = & get_instance();
        $rate = $ci->db->query("SELECT sum(rating) as rating, count(*) as jumlah, sum(rating)/count(*) as total FROM rb_produk_ulasan where id_produk='$id_produk'")->row_array();
        return number_format($rate['total']);
    }

    function clean_rupiah($total){
        $total1 = str_replace(".","",$total);
        $total2 = str_replace(",","",$total1);
        return $total2;
    }

    function alamat($kode_transaksi){
        $ci = & get_instance();
        $row = $ci->db->query("SELECT keterangan FROM rb_penjualan where kode_transaksi='$kode_transaksi' GROUP BY kode_transaksi")->row_array();
        $ex = explode('|',$row['keterangan']);
        return $ex[3].'<br>'.kecamatan($ex[2],$ex[1]);
    }

    function status($status){
        if ($status=='0'){ 
            $proses = '<span class="text">Pending</span>'; 
        }elseif($status=='1'){ 
            $proses = '<span class="text-danger">Proses</span>'; 
        }elseif($status=='2'){ 
            $proses = '<span class="text-info">Konfirmasi</span>'; 
        }elseif($status=='3'){ 
            $proses = '<span class="text-success">Dikirim</span>'; 
        }else{ 
            $proses = '<span class="text-success">Selesai</span>'; 
        }
        return $proses;
    }

    function cek_paket($id_reseller){
        $ci = & get_instance();
        return $ci->db->query("SELECT * FROM rb_reseller_paket a JOIN rb_paket b ON a.id_paket=b.id_paket where a.id_reseller='$id_reseller' AND status='Y'")->num_rows();
    }

    function cek_paket_bintang($id_reseller){
        $ci = & get_instance();
        $row = $ci->db->query("SELECT * FROM rb_reseller_paket a JOIN rb_paket b ON a.id_paket=b.id_paket where a.id_reseller='$id_reseller' AND status='Y'")->row_array();
        return $row['id_paket'];
    }

    function cek_paket_icon($id_reseller){
        $ci = & get_instance();
        $rows = $ci->db->query("SELECT * FROM rb_reseller_paket a JOIN rb_paket b ON a.id_paket=b.id_paket where a.id_reseller='$id_reseller' AND status='Y'")->row_array();
        if ($rows['icon_kode']!=''){
            $icon = "<i style='margin-right:5px; font-size: 16px;' class='$rows[icon_kode] float-left'></i>";
        }elseif ($rows['icon_image']!=''){
            $icon = "<img style='width:20px; margin-right:5px; float:left' src='".base_url()."asset/foto_produk/$rows[icon_image]'>";
        }else{
            $icon = "";
        }
        return $icon;
    }

    function cek_status_paket($id_reseller){
        $ci = & get_instance();
        $rowp = $ci->db->query("SELECT * FROM rb_reseller_paket a JOIN rb_paket b ON a.id_paket=b.id_paket where a.id_reseller='$id_reseller'")->row_array();
        if ($rowp['status']=='Y'){
            $akhir  = strtotime($rowp['expire_date']); //Waktu awal
            $awal = time(); // Waktu sekarang atau akhir
            $diff  = $akhir - $awal;
            return "<span style='color:green'>$rowp[nama_paket]</b>, Berakhir ".tgl_indo($rowp['expire_date'])." (".floor($diff / (60 * 60 * 24)) ." hari lagi)</span>";
        }elseif ($rowp['status']=='N'){
            return "<span style='color:red'>PENDING PAYMENT <b>$rowp[nama_paket]</b>, <b style='color:#000; text-decoration:underline'>Rp ".rupiah($rowp['harga']+$rowp['id_reseller_paket'])."</b></span>";
        }else{
            return "<span style='color:red'>Reseller Free</span>";
        }
    }

    function total_order($status,$id_konsumen){
        $ci = & get_instance();
        return $ci->db->query("SELECT * FROM rb_penjualan where id_pembeli='$id_konsumen' AND status_pembeli='konsumen' AND proses='$status'")->num_rows();
    }

    function total_penjualan($status,$id_konsumen){
        $ci = & get_instance();
        return $ci->db->query("SELECT * FROM rb_penjualan where id_penjual='$id_konsumen' AND status_penjual='reseller' AND proses='$status'")->num_rows();
    }

    function kirim_email($subjek,$message,$tujuan){
        $ci = & get_instance();
        $iden = $ci->db->query("SELECT * FROM identitas where id_identitas='1'")->row_array();
        $ci->load->library('email');
        //SMTP & mail configuration
        $config['protocol']    = 'smtp';
        $config['smtp_host']    = 'ssl://smtp.googlemail.com';
        $config['smtp_port']    = '465';
        $config['smtp_timeout'] = '7';
        $config['smtp_user']    = "$iden[email]";
        $config['smtp_pass']    = "$iden[password]";
        $config['charset']    = 'utf-8';
        $config['newline']    = "\r\n";
        $config['mailtype'] = 'html'; // or html
        $config['validation'] = TRUE; // bool whether to validate email or not      
        $ci->email->initialize($config);
        $ci->email->from("$iden[email]", "$iden[pengirim_email]");
        $ci->email->to($tujuan);
        $ci->email->cc('');
        $ci->email->bcc('');
        $ci->email->subject($subjek);
        $ci->email->message($message);
        $ci->email->send();
    }

    function penjualan($id_reseller,$proses){
        $ci = & get_instance();
        $row = $ci->db->query("SELECT sum(z.penjualan) as total FROM (SELECT b.ongkir+sum((a.harga_jual-a.diskon)*a.jumlah) as penjualan
                                FROM `rb_penjualan_detail` a JOIN rb_penjualan b ON a.id_penjualan=b.id_penjualan 
                                JOIN rb_produk c ON a.id_produk=c.id_produk
                                where b.id_penjual='$id_reseller' AND b.status_pembeli='konsumen' AND b.proses='$proses' GROUP BY b.kode_transaksi) as z")->row_array();
        return $row['total'];
    }

    function modal($id_reseller,$proses){
        $ci = & get_instance();
        $row = $ci->db->query("SELECT sum(c.harga_beli*a.jumlah) as modal
                                FROM `rb_penjualan_detail` a JOIN rb_penjualan b ON a.id_penjualan=b.id_penjualan 
                                JOIN rb_produk c ON a.id_produk=c.id_produk
                                where b.id_penjual='$id_reseller' AND b.status_pembeli='konsumen' AND b.proses='$proses'")->row_array();
        return $row['modal'];
    }
    
    function kecamatan($kecamatan,$kota){
        $ci = & get_instance();
        $row = $ci->db->query("SELECT api_mutasibank, api_rajaongkir FROM identitas where id_identitas='1'")->row_array();
        $curl = curl_init();
        curl_setopt_array($curl, array(
          CURLOPT_URL => "https://pro.rajaongkir.com/api/subdistrict?city=$kota",
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => "",
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 30,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "GET",
          CURLOPT_HTTPHEADER => array(
            "key: $row[api_rajaongkir]"
          ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);
        $obj = json_decode($response, true);
        for($i=0; $i < count($obj['rajaongkir']['results']); $i++){
            if ($obj['rajaongkir']['results'][$i]['subdistrict_id'] == $kecamatan){
                $select_kecamatan =  $obj['rajaongkir']['results'][$i]['subdistrict_name'].', '.$obj['rajaongkir']['results'][$i]['city'].', '.$obj['rajaongkir']['results'][$i]['province'];
            }
        }
        return $select_kecamatan;
    }

    function get_provinsi(){
        $ci = & get_instance();
        $row = $ci->db->query("SELECT api_mutasibank, api_rajaongkir FROM identitas where id_identitas='1'")->row_array();
        $curl = curl_init();
        curl_setopt_array($curl, array(
          CURLOPT_URL => "https://pro.rajaongkir.com/api/province",
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => "",
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 30,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "GET",
          CURLOPT_HTTPHEADER => array(
            "key: $row[api_rajaongkir]"
          ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
          echo "cURL Error #:" . $err;
        } else {
          //echo $response;
        }
        return json_decode($response, true);
    }

    function get_kota($id){
        $ci = & get_instance();
        $row = $ci->db->query("SELECT api_mutasibank, api_rajaongkir FROM identitas where id_identitas='1'")->row_array();
        $curl = curl_init();
        curl_setopt_array($curl, array(
          CURLOPT_URL => "https://pro.rajaongkir.com/api/city?province=$id",
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => "",
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 30,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "GET",
          CURLOPT_HTTPHEADER => array(
            "key: $row[api_rajaongkir]"
          ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
          echo "cURL Error #:" . $err;
        } else {
          //echo $response;
        }
    
        return json_decode($response, true);
    }

    function get_kecamatan($id){
        $ci = & get_instance();
        $row = $ci->db->query("SELECT api_mutasibank, api_rajaongkir FROM identitas where id_identitas='1'")->row_array();
        $curl = curl_init();
        curl_setopt_array($curl, array(
          CURLOPT_URL => "https://pro.rajaongkir.com/api/subdistrict?city=$id",
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => "",
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 30,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "GET",
          CURLOPT_HTTPHEADER => array(
            "key: $row[api_rajaongkir]"
          ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
          echo "cURL Error #:" . $err;
        } else {
          //echo $response;
        }
    
        return json_decode($response, true);
    }

    function cek_resi($no_resi,$kurir){
        $ci = & get_instance();
        $row = $ci->db->query("SELECT api_mutasibank, api_rajaongkir FROM identitas where id_identitas='1'")->row_array();
        $curl = curl_init();
        curl_setopt_array($curl, array(
        CURLOPT_URL => "https://pro.rajaongkir.com/api/waybill",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "POST",
        CURLOPT_POSTFIELDS => "waybill=$no_resi&courier=$kurir",
        CURLOPT_HTTPHEADER => array(
            "content-type: application/x-www-form-urlencoded",
            "key: $row[api_rajaongkir]"
        ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);
        return json_decode($response, true);
    }