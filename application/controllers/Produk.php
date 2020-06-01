<?php
/*
-- ---------------------------------------------------------------
-- MARKETPLACE MULTI BUYER MULTI SELLER + SUPPORT RESELLER SYSTEM
-- CREATED BY : ROBBY PRIHANDAYA
-- COPYRIGHT  : Copyright (c) 2018 - 2019, PHPMU.COM. (https://phpmu.com/)
-- LICENSE    : http://opensource.org/licenses/MIT  MIT License
-- CREATED ON : 2019-03-26
-- UPDATED ON : 2019-03-27
-- ---------------------------------------------------------------
*/
defined('BASEPATH') OR exit('No direct script access allowed');
class Produk extends CI_Controller {
	function index(){
		if ($this->input->post('kata')){
			if (cetak($this->input->post('filter'))=='0'){
				$jumlah= $this->db->query("SELECT a.* FROM rb_produk a where a.id_reseller!='0' AND a.id_produk_perusahaan='0' AND a.aktif='Y' AND a.nama_produk LIKE '%".cetak($this->input->post('kata'))."%'")->num_rows();
			}else{
				$exp = explode('|',cetak($this->input->post('filter')));
				if ($exp[0]=='kategori'){
					$jumlah= $this->db->query("SELECT a.* FROM rb_produk a where a.id_reseller!='0' AND a.id_produk_perusahaan='0' AND a.aktif='Y' AND a.id_kategori_produk='".$exp[1]."' AND a.nama_produk LIKE '%".cetak($this->input->post('kata'))."%'")->num_rows();
				}else{
					$jumlah= $this->db->query("SELECT a.* FROM rb_produk a where a.id_reseller!='0' AND a.id_produk_perusahaan='0' AND a.aktif='Y' AND a.id_kategori_produk_sub='".$exp[1]."' AND a.nama_produk LIKE '%".cetak($this->input->post('kata'))."%'")->num_rows();
				}
			}
		}else{
			$jumlah= $this->db->query("SELECT a.* FROM rb_produk a where a.id_reseller!='0' AND a.id_produk_perusahaan='0' AND a.aktif='Y'")->num_rows();
		}
		
		
		$config['base_url'] = base_url().'produk/index';
		$config['total_rows'] = $jumlah;
		$config['per_page'] = 12; 	
		if ($this->uri->segment('3')==''){
			$dari = 0;
		}else{
			$dari = $this->uri->segment('3');
		}

		if (is_numeric($dari)) {
			if (isset($_POST['kata'])){
				$data['title'] = "Pencarian - ''".cetak($this->input->post('kata'))."''";
				$data['description'] = description();
				$data['keywords'] = keywords();
				$data['record'] = $this->model_reseller->cari_produk(cetak($this->input->post('kata')),cetak($this->input->post('filter')));
				$data['rekomendasi'] = $this->model_reseller->cari_produk_rekomendasi(cetak($this->input->post('kata')),cetak($this->input->post('filter')));
			}else{
				$data['description'] = description();
				$data['keywords'] = keywords();
				$this->pagination->initialize($config);

				if (isset($_POST['cari'])){
					$dari = clean_rupiah(cetak($this->input->post('dari')));
					$sampai = clean_rupiah(cetak($this->input->post('sampai')));
					$data['title'] = "Produk Harga ".rupiah($dari)." - ".rupiah($sampai);
					$data['judul'] = "Harga ".rupiah($dari)." - ".rupiah($sampai);
					$data['record'] = $this->db->query("SELECT a.*, b.nama_reseller, c.nama_kota, z.diskon FROM rb_produk_diskon z JOIN rb_produk a ON z.id_produk=a.id_produk LEFT JOIN rb_reseller b ON a.id_reseller=b.id_reseller
	                                    LEFT JOIN rb_kota c ON b.kota_id=c.kota_id where a.id_reseller!='0' AND a.id_produk_perusahaan='0' AND a.aktif='Y' AND (a.harga_konsumen-z.diskon) BETWEEN $dari AND $sampai ORDER BY a.id_produk DESC LIMIT 0,24");
				}else{
					$data['title'] = title();
					$data['judul'] = 'Semua Produk Kami';
					$data['record'] = $this->db->query("SELECT a.*, b.nama_reseller, c.nama_kota FROM rb_produk a LEFT JOIN rb_reseller b ON a.id_reseller=b.id_reseller
	                                    LEFT JOIN rb_kota c ON b.kota_id=c.kota_id where a.id_reseller!='0' AND a.id_produk_perusahaan='0' AND a.aktif='Y' ORDER BY a.id_produk DESC LIMIT $dari,$config[per_page]");
				}
			}

			$this->template->load(template().'/template',template().'/reseller/view_produk',$data);
		}else{
			redirect('main');
		}
	}

	function kategori(){
		$cek = $this->model_app->edit('rb_kategori_produk',array('kategori_seo'=>$this->uri->segment(3)))->row_array();
		$jumlah= $this->model_app->view_where('rb_produk',array('id_kategori_produk'=>$cek['id_kategori_produk']))->num_rows();
		$config['base_url'] = base_url().'produk/kategori/'.$this->uri->segment(3);
		$config['total_rows'] = $jumlah;
		$config['per_page'] = 18; 	
		if ($this->uri->segment('4')==''){
			$dari = 0;
		}else{
			$dari = $this->uri->segment('4');
		}

		if (is_numeric($dari)) {
			$data['title'] = "Kategori / $cek[nama_kategori]";
			$data['judul'] = "Kategori / $cek[nama_kategori]";
			$data['description'] = description();
			$data['keywords'] = keywords();
			$this->pagination->initialize($config);
			$data['record'] = $this->db->query("SELECT a.*, b.nama_reseller, c.nama_kota FROM rb_produk a LEFT JOIN rb_reseller b ON a.id_reseller=b.id_reseller
                                    LEFT JOIN rb_kota c ON b.kota_id=c.kota_id where a.id_reseller!='0' AND a.id_produk_perusahaan='0' AND a.id_kategori_produk='$cek[id_kategori_produk]' AND a.aktif='Y' ORDER BY a.id_produk DESC LIMIT $dari,$config[per_page]");
			$this->pagination->initialize($config);
			$this->template->load(template().'/template',template().'/reseller/view_kategori_all',$data);
		}else{
			redirect('main');
		}
	}

	function subkategori(){
		$cek = $this->model_app->edit('rb_kategori_produk_sub',array('kategori_seo_sub'=>$this->uri->segment(3)))->row_array();
		
		$jumlah= $this->model_app->view_where('rb_produk',array('id_kategori_produk_sub'=>$cek['id_kategori_produk_sub']))->num_rows();
		$config['base_url'] = base_url().'produk/subkategori/'.$this->uri->segment(3);
		$config['total_rows'] = $jumlah;
		$config['per_page'] = 12; 	
		if ($this->uri->segment('4')==''){
			$dari = 0;
		}else{
			$dari = $this->uri->segment('4');
		}

		if (is_numeric($dari)) {
			$data['title'] = "Subkategori / $cek[nama_kategori_sub]";
			$data['judul'] = "Subkategori / $cek[nama_kategori_sub]";
			$data['description'] = description();
			$data['keywords'] = keywords();
			$this->pagination->initialize($config);
			$data['record'] = $this->db->query("SELECT a.*, b.nama_reseller, c.nama_kota FROM rb_produk a LEFT JOIN rb_reseller b ON a.id_reseller=b.id_reseller
                                    LEFT JOIN rb_kota c ON b.kota_id=c.kota_id where a.id_reseller!='0' AND a.id_produk_perusahaan='0' AND a.id_kategori_produk_sub='$cek[id_kategori_produk_sub]' AND a.aktif='Y' ORDER BY a.id_produk DESC LIMIT $dari,$config[per_page]");
			$this->pagination->initialize($config);
			$this->template->load(template().'/template',template().'/reseller/view_kategori_all',$data);
		}else{
			redirect('main');
		}
	}


	function reseller(){
		$jumlah= $this->model_app->view('rb_reseller')->num_rows();
		$config['base_url'] = base_url().'produk/reseller';
		$config['total_rows'] = $jumlah;
		$config['per_page'] = 9; 	
		if ($this->uri->segment('3')==''){
			$dari = 0;
		}else{
			$dari = $this->uri->segment('3');
		}

		if (is_numeric($dari)) {
			$data['title'] = 'Semua Daftar Pelapak';
			$data['description'] = description();
			$data['keywords'] = keywords();
			$this->pagination->initialize($config);
			if (isset($_POST['submit'])){
				$data['record'] = $this->model_reseller->cari_reseller(filter($this->input->post('cari_reseller')));
			}elseif (isset($_GET['cari_reseller'])){
				$data['record'] = $this->model_reseller->cari_reseller(filter($this->input->get('cari_reseller')));
			}else{
				$data['record'] = $this->db->query("SELECT * FROM rb_reseller a LEFT JOIN rb_kota b ON a.kota_id=b.kota_id ORDER BY id_reseller DESC LIMIT $dari,$config[per_page]");
			}
			$this->template->load(template().'/template',template().'/reseller/view_reseller',$data);
		}else{
			redirect('main');
		}
	}

	function detail_reseller(){
		$data['title'] = 'Detail Profile Reseller';
		$data['description'] = description();
		$data['keywords'] = keywords();
		$id = $this->uri->segment(3);
		$data['rows'] = $this->model_app->edit('rb_reseller',array('id_reseller'=>$id))->row_array();
		$data['record'] = $this->model_reseller->penjualan_list_konsumen($id,'reseller');
		$data['rekening'] = $this->model_app->view_where('rb_rekening_reseller',array('id_reseller'=>$id));
		$this->template->load(template().'/template',template().'/reseller/view_reseller_detail',$data);
	}


	function produk_reseller(){
		$id = $this->uri->segment(3);
		$jumlah= $this->model_app->view_where('rb_produk',array('id_reseller'=>$id))->num_rows();
		$config['base_url'] = base_url().'produk/produk_reseller/'.$this->uri->segment('3');
		$config['total_rows'] = $jumlah;
		$config['per_page'] = 12; 	
		if ($this->uri->segment('4')==''){
			$dari = 0;
		}else{
			$dari = $this->uri->segment('4');
		}

		if (is_numeric($dari)) {
			$data['title'] = 'Data Produk Reseller';
			$data['description'] = description();
			$data['keywords'] = keywords();
			$data['rows'] = $this->db->query("SELECT a.*, b.nama_kota FROM rb_reseller a JOIN rb_kota b ON a.kota_id=b.kota_id where a.id_reseller='$id'")->row_array();
			$data['record'] = $this->model_app->view_where_ordering_limit('rb_produk',array('id_reseller'=>$id,'aktif'=>'Y'),'id_produk','DESC',$dari,$config['per_page']);
			$this->pagination->initialize($config);
			$this->template->load(template().'/template',template().'/reseller/view_reseller_produk',$data);
		}else{
			redirect('main');
		}
	}

	function keranjang(){
		$id_reseller = $this->uri->segment(3);
		$id_produk   = $this->uri->segment(4);
		$j = $this->model_reseller->jual_reseller($id_reseller,$id_produk)->row_array();
        $b = $this->model_reseller->beli_reseller($id_reseller,$id_produk)->row_array();
        $stok = $b['beli']-$j['jual'];
		$qty = $this->input->post('qty');
		
		if (isset($_POST['update'])){
			$keranjang = $this->model_app->view_where("rb_penjualan_temp",array('session'=>$this->session->idp));
			for ($i=1; $i<=$keranjang->num_rows(); $i++) { 
				$dataa = array('jumlah'=>$this->input->post('qty'.$i),
							  'keterangan_order'=>$this->input->post('keterangan'.$i),);
                $wheree = array('id_penjualan_detail' => $this->input->post('id'.$i));
                $this->model_app->update('rb_penjualan_temp',$dataa,$wheree);
			}
			redirect('produk/keranjang');
		}

		if ($id_produk!=''){
			if ($stok < $qty){
				$produk = $this->model_app->edit('rb_produk',array('id_produk'=>$id_produk))->row_array();
				$produk_cek = filter($produk['nama_produk']);
				echo "<script>window.alert('Maaf, Stok untuk Produk $produk_cek pada Pelapak ini telah habis, silahkan menunggu atau order dengan pelapak lain!');
                                  window.location=('".base_url()."/produk/produk_reseller/$id_reseller')</script>";
			}else{
				$this->session->unset_userdata('produk');
				if ($this->session->idp == ''){
					$idp = date('YmdHis');
					$this->session->set_userdata(array('idp'=>$idp,'reseller'=>$id_reseller));
				}

				$reseller_cek = $this->db->query("SELECT b.id_reseller FROM `rb_penjualan_temp` a JOIN rb_produk b ON a.id_produk=b.id_produk where session='".$this->session->idp."' GROUP BY b.id_reseller");
				if ($reseller_cek->num_rows()<'3'){
					$cek = $this->model_app->view_where('rb_penjualan_temp',array('session'=>$this->session->idp,'id_produk'=>$id_produk))->num_rows();
					if ($cek >=1){
						$this->db->query("UPDATE rb_penjualan_temp SET jumlah=jumlah+$qty where session='".$this->session->idp."' AND id_produk='$id_produk'");
					}else{
						$harga = $this->model_app->view_where('rb_produk',array('id_produk'=>$id_produk))->row_array();
						$disk = $this->model_app->edit('rb_produk_diskon',array('id_produk'=>$id_produk,'id_reseller'=>$id_reseller))->row_array();
						if ($disk['diskon']==''){ $diskon = 0; }else{ $diskon = $disk['diskon']; }
	                    $harga_konsumen = $harga['harga_konsumen'];
						$data = array('session'=>$this->session->idp,
					        		  'id_produk'=>$id_produk,
					        		  'jumlah'=>$qty,
					        		  'diskon'=>$diskon,
					        		  'harga_jual'=>$harga_konsumen,
					        		  'satuan'=>$harga['satuan'],
					        		  'waktu_order'=>date('Y-m-d H:i:s'));
						$this->model_app->insert('rb_penjualan_temp',$data);
					}
					if (isset($_POST['keranjang'])){
						$prd = $this->db->query("SELECT * FROM rb_produk where id_produk='$id_produk'")->row_array();
						echo $this->session->set_flashdata('message', '<div class="alert alert-success"><center>Berhasil ditambahkan ke Keranjang Belanja,..</center></div>');
						redirect('produk/detail/'.$prd['produk_seo']);
					}else{
						redirect('produk/keranjang');
					}
					
				}else{
					if ($this->session->idp != ''){
						$data['rows'] = $this->model_app->edit('rb_reseller',array('id_reseller'=>$this->session->reseller))->row_array();
						$data['record'] = $this->model_app->view_join_where('rb_penjualan_temp','rb_produk','id_produk',array('session'=>$this->session->idp),'id_penjualan_detail','ASC');
					}
					$data['title'] = 'Keranjang Belanja';
					$data['description'] = description();
					$data['keywords'] = keywords();
					echo $this->session->set_flashdata('message', '<div class="alert alert-danger"><center>Maaf, 1 Transaksi maksimal ke 3 Toko saja,..</center></div>');
					redirect('produk/keranjang');
				}
			}
		}else{
			if ($this->session->idp != ''){
				$data['rows'] = $this->model_app->edit('rb_reseller',array('id_reseller'=>$this->session->reseller))->row_array();
				$data['total'] = $this->db->query("SELECT sum((a.harga_jual-a.diskon)*a.jumlah) as total, sum(b.berat*a.jumlah) as total_berat FROM `rb_penjualan_temp` a JOIN rb_produk b ON a.id_produk=b.id_produk where a.session='".$this->session->idp."'")->row_array();
				$data['record'] = $this->db->query("SELECT a.*, b.*, c.nama_reseller FROM rb_penjualan_temp a JOIN rb_produk b ON a.id_produk=b.id_produk JOIN rb_reseller c ON b.id_reseller=c.id_reseller where a.session='".$this->session->idp."' ORDER BY id_penjualan_detail ASC");
				$this->model_app->view_join_where('rb_penjualan_temp','rb_produk','id_produk',array('session'=>$this->session->idp),'id_penjualan_detail','ASC');
			}
				$data['title'] = 'Keranjang Belanja';
				$this->template->load(template().'/template',template().'/reseller/view_keranjang',$data);

		}
	}

	function keranjang_detail(){
		$data['rows'] = $this->model_reseller->penjualan_konsumen_detail($this->uri->segment(3))->row_array();
		$data['record'] = $this->model_app->view_join_where('rb_penjualan_temp','rb_produk','id_produk',array('session'=>$this->uri->segment(3)),'id_penjualan_detail','ASC');
		$data['title'] = 'Detail Belanja';
		$this->template->load(template().'/template',template().'/reseller/view_keranjang_detail',$data);
	}

	function keranjang_delete(){
		$id = array('id_penjualan_detail' => $this->uri->segment(3));
		$this->model_app->delete('rb_penjualan_temp',$id);
		$isi_keranjang = $this->db->query("SELECT sum(jumlah) as jumlah FROM rb_penjualan_temp where session='".$this->session->idp."'")->row_array();
		if ($isi_keranjang['jumlah']==''){
			$this->session->unset_userdata('idp');
			$this->session->unset_userdata('reseller');
		}
		redirect('produk/keranjang');
	}

	function kurirdata(){
		$iden = $this->model_reseller->penjualan_konsumen_detail($this->session->idp)->row_array();
		$this->load->library('rajaongkir');
		$tujuan=$this->input->get('kota');
		$dari=$iden['kota_id'];
		$berat=$this->input->get('berat');
		$kurir=$this->input->get('kurir');
		$dc=$this->rajaongkir->cost($dari,$tujuan,$berat,$kurir);
		$d=json_decode($dc,TRUE);
		$o='';
		if(!empty($d['rajaongkir']['results'])){
			$data['data']=$d['rajaongkir']['results'][0]['costs'];
			$this->load->view('phpmu-tigo/reseller/kurirdata',$data);			
		}else{
			$data['ongkir'] = 0;
			$this->load->view('phpmu-tigo/reseller/kurirdata',$data);	
		}
	}

	function kurirdata_non(){
		$this->load->library('rajaongkir');
		$tujuan=$this->input->get('kota');
		$dari=$this->input->get('tujuan');
		$berat=$this->input->get('berat');
		$kurir=$this->input->get('kurir');
		$dc=$this->rajaongkir->cost($dari,$tujuan,$berat,$kurir);
		$d=json_decode($dc,TRUE);
		$o='';
		if(!empty($d['rajaongkir']['results'])){
			$data['data']=$d['rajaongkir']['results'][0]['costs'];
			$this->load->view('phpmu-tigo/reseller/kurirdata',$data);			
		}else{
			$data['ongkir'] = 0;
			$this->load->view('phpmu-tigo/reseller/kurirdata',$data);	
		}
	}

	function rajaongkir_get_provinsi(){
        $row = $this->db->query("SELECT api_mutasibank, api_rajaongkir FROM identitas where id_identitas='1'")->row_array();
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
        
        $obj = json_decode($response, true);
        $select_prov = '<option value=0>- Pilih Provinsi -</option>';
        for($i=0; $i < count($obj['rajaongkir']['results']); $i++){
             $select_prov .= "<option value='".$obj['rajaongkir']['results'][$i]['province_id']."'>".$obj['rajaongkir']['results'][$i]['province']."</option>";
        }
        echo $select_prov;
    }
    
    function rajaongkir_get_kota(){
        $row = $this->db->query("SELECT api_mutasibank, api_rajaongkir FROM identitas where id_identitas='1'")->row_array();
        $id_province = $this->input->post('id_province',TRUE);
        
        $curl = curl_init();

        curl_setopt_array($curl, array(
          CURLOPT_URL => "https://pro.rajaongkir.com/api/city?province=$id_province",
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
        
        $obj = json_decode($response, true);
        $select_kotkab = '<option value=0>- Pilih Kota / Kabupaten -</option>';
        for($i=0; $i < count($obj['rajaongkir']['results']); $i++){
             $select_kotkab .= "<option value='".$obj['rajaongkir']['results'][$i]['city_id']."'>".$obj['rajaongkir']['results'][$i]['city_name']."</option>";
        }
        
        echo $select_kotkab;
        
    }
    
    
    function rajaongkir_get_kecamatan(){
		$row = $this->db->query("SELECT api_mutasibank, api_rajaongkir FROM identitas where id_identitas='1'")->row_array();
        $id_kota = $this->input->post('id_kota',TRUE);
        $curl = curl_init();
        curl_setopt_array($curl, array(
          CURLOPT_URL => "https://pro.rajaongkir.com/api/subdistrict?city=$id_kota",
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
        
        $obj = json_decode($response, true);
        $select_kecamatan = '<option value=0>- Pilih Kecamatan -</option>';
        for($i=0; $i < count($obj['rajaongkir']['results']); $i++){
             $select_kecamatan .= "<option value='".$obj['rajaongkir']['results'][$i]['subdistrict_id']."'>".$obj['rajaongkir']['results'][$i]['subdistrict_name']."</option>";
        }
        
        echo $select_kecamatan;
        
    }
    
    
    function rajaongkir_get_cost(){
		$row = $this->db->query("SELECT api_mutasibank, api_rajaongkir FROM identitas where id_identitas='1'")->row_array();
        //origin : kota asal ( ini karna kita dari tangerang selatan, kita default aja kota tangerang selatan = 457)
        $kota_asal      = $this->uri->segment(4);
        //$kecamatan_asal      = 6314;
        //destination : kota tujuan
        $kecamatan_tujuan    = $this->input->post('kecamatan_tujuan',TRUE);
        //kurir pengiriman
        $kurir          = $this->input->post('kurir_pengiriman',TRUE);
        //berat
        $berat          = $this->uri->segment(5);
        //&courier=jne
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => "https://pro.rajaongkir.com/api/cost",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => "origin=$kota_asal&originType=city&destination=$kecamatan_tujuan&destinationType=subdistrict&weight=$berat&courier=$kurir",
            CURLOPT_HTTPHEADER => array(
              "content-type: application/x-www-form-urlencoded",
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
        
        $obj = json_decode($response, true);
        
        $datas;
        for($i=0; $i < count($obj['rajaongkir']['results']); $i++){
            //$datas .= $obj['rajaongkir']['results'][$i]['name'];
            $serv = 88;
            for($j=0; $j < count($obj['rajaongkir']['results'][$i]['costs']); $j++){
                
                $nama_pengiriman = $obj['rajaongkir']['results'][$i]['name'];
                $service         = $obj['rajaongkir']['results'][$i]['costs'][$j]['service'];
                $biaya           = $obj['rajaongkir']['results'][$i]['costs'][$j]['cost'][0]['value'];
                $biaya_format    = number_format($obj['rajaongkir']['results'][$i]['costs'][$j]['cost'][0]['value']);
            
                $datas .='<li id="serv-'.$serv.'-'.$this->uri->segment(3).'" onclick="klikongkir'.$this->uri->segment(3).'(\''.$nama_pengiriman.'\',\''.$service.'\',\''.$biaya.'\',\''.$biaya_format.'\',this.id)" class="list-group-item clearall-kurir" style="cursor:pointer;margin:1px;"><span style="color:black;font-weight:bold">'.$obj['rajaongkir']['results'][$i]['name'].' - '.$service.'</span> <small><b style="color:red">Rp. '.number_format($obj['rajaongkir']['results'][$i]['costs'][$j]['cost'][0]['value']).'</b></small> / <small>Pengiriman : '.$obj['rajaongkir']['results'][$i]['costs'][$j]['cost'][0]['etd'].' hari</small></li>';
				$serv++;
            }
            
        }
        
        echo $datas;
        
    }

	function selesai_belanja(){
		if (isset($_POST['submit'])){
			$iden = $this->model_app->view_where('identitas',array('id_identitas'=>'1'))->row_array();
			if ($this->session->id_konsumen==''){
				$data = array('username'=>$this->input->post('email'),
							'password'=>hash("sha512", md5($this->input->post('telpon'))),
							'nama_lengkap'=>$this->input->post('nama'),
							'email'=>$this->input->post('email'),
							'alamat_lengkap'=>$this->input->post('alamat'),
							'kecamatan_id'=>$this->input->post('kecamatan'),
							'kota_id'=>$this->input->post('kota'),
							'provinsi_id'=>$this->input->post('provinsi'),
							'no_hp'=>$this->input->post('telpon'),
							'token'=>'-',
							'tanggal_daftar'=>date('Y-m-d'));
				$this->model_app->insert('rb_konsumen',$data);
				$id_konsumen = $this->db->insert_id();
			}else{
				$id_konsumen = $this->session->id_konsumen;
				$kon = $this->model_reseller->profile_konsumen($id_konsumen)->row_array();
				if ($kon['alamat_lengkap']!=cetak($this->input->post('alamat')) OR ($kon['kecamatan_id'].$kon['kota_id'].$kon['provinsi_id'])!=(cetak($this->input->post('kecamatan')).cetak($this->input->post('kota')).cetak($this->input->post('provinsi')))){
					$data_insert = array('id_konsumen'=>$this->session->id_konsumen,
							'alamat_lengkap'=>cetak($this->input->post('alamat')),
							'kecamatan_id'=>cetak($this->input->post('kecamatan')),
							'kota_id'=>cetak($this->input->post('kota')),
							'provinsi_id'=>cetak($this->input->post('provinsi')),
							'waktu_perubahan'=>date('Y-m-d H:i:s'));
					$this->model_app->insert('rb_konsumen_alamat',$data_insert);
					
					$data = array('alamat_lengkap'=>cetak($this->input->post('alamat')),
								  'kecamatan_id'=>cetak($this->input->post('kecamatan')),
								  'kota_id'=>cetak($this->input->post('kota')),
								  'provinsi_id'=>cetak($this->input->post('provinsi')));
					$where = array('id_konsumen' => $this->session->id_konsumen);
					$this->model_app->update('rb_konsumen', $data, $where);
				}
			}
			$keterangan = cetak($this->input->post('provinsi')).'|'.cetak($this->input->post('kota')).'|'.cetak($this->input->post('kecamatan')).'|'.cetak($this->input->post('alamat'));
			$kode_transaksi = 'TRX'.$id_konsumen.'.'.date('YmdHis');
			if ($this->session->idp!=''){
				$reseller_cek = $this->db->query("SELECT b.id_reseller FROM `rb_penjualan_temp` a JOIN rb_produk b ON a.id_produk=b.id_produk where session='".$this->session->idp."' GROUP BY b.id_reseller");
				$noo = 1;
				foreach ($reseller_cek->result_array() as $row) {
					$data = array('kode_transaksi'=>$kode_transaksi,
								'id_pembeli'=>$id_konsumen,
								'id_penjual'=>$row['id_reseller'],
								'status_pembeli'=>'konsumen',
								'status_penjual'=>'reseller',
								'kode_kurir'=>$this->input->post('kode_kurir'.$noo),
								'kurir'=>$this->input->post('kurir'.$noo),
								'service'=>$this->input->post('service'.$noo),
								'ongkir'=>$this->input->post('ongkir'.$noo),
								'keterangan'=>$keterangan,
								'waktu_transaksi'=>date('Y-m-d H:i:s'),
								'proses'=>'0');
					$this->model_app->insert('rb_penjualan',$data);
					$idp = $this->db->insert_id();

					$no = 1;
					$keranjang = $this->db->query("SELECT a.*, b.id_reseller FROM `rb_penjualan_temp` a JOIN rb_produk b ON a.id_produk=b.id_produk where session='".$this->session->idp."' AND b.id_reseller='$row[id_reseller]'");
					foreach ($keranjang->result_array() as $row) {
						$dataa = array('id_penjualan'=>$idp,
									'id_produk'=>$row['id_produk'],
									'jumlah'=>$row['jumlah'],
									'diskon'=>$row['diskon'],
									'harga_jual'=>$row['harga_jual'],
									'keterangan_order'=>$row['keterangan_order'],
									'satuan'=>$row['satuan']);
						$this->model_app->insert('rb_penjualan_detail',$dataa);
						$no++;
					}
					$noo++;
				}
				
				$this->db->query("DELETE FROM rb_penjualan_temp where session='".$this->session->idp."'");
				$this->session->unset_userdata('reseller');
				$this->session->unset_userdata('idp');
			}
			$kons = $this->model_reseller->profile_konsumen($id_konsumen)->row_array();
			$ttal = $this->db->query("SELECT a.kode_transaksi, a.kurir, a.service, a.proses, a.ongkir, sum(b.harga_jual*b.jumlah) as total, sum(b.diskon*b.jumlah) as diskon_total, sum(c.berat*b.jumlah) as total_berat FROM `rb_penjualan` a JOIN rb_penjualan_detail b ON a.id_penjualan=b.id_penjualan JOIN rb_produk c ON b.id_produk=c.id_produk where a.kode_transaksi='".$kode_transaksi."'")->row_array();
			$angka_acak = substr($kode_transaksi,-3);
			$total_tagihan = ($ttal['total']-$ttal['diskon_total'])+$ttal['ongkir']+$angka_acak;
			
			// Cek Duplikat Transfer Otomatis rentang waktu < 24 Jam
			$cek_duplikat = $this->db->query("SELECT a.*, b.proses, SUBSTR(timediff(now(), a.waktu_proses),1,2) as durasi FROM `rb_penjualan_otomatis` a JOIN rb_penjualan b ON a.kode_transaksi=b.kode_transaksi where a.nominal='$total_tagihan' AND b.proses='0' AND SUBSTR(timediff(now(), a.waktu_proses),1,2)<'24' GROUP BY b.kode_transaksi");
			if ($cek_duplikat->num_rows()>=1){
				$angka_acak_baru = rand(100,999);
				$total_tagihan_akhir = ($ttal['total']-$ttal['diskon_total'])+$ttal['ongkir']+$angka_acak_baru;
			}else{
				$total_tagihan_akhir = $total_tagihan;
			}
			$data_otomatis = array('kode_transaksi'=>$kode_transaksi,
						'nominal'=>$total_tagihan_akhir,
						'waktu_proses'=>date('Y-m-d H:i:s'));
			$this->model_app->insert('rb_penjualan_otomatis',$data_otomatis);
			
            
			$tgl_kirim = date("d-m-Y H:i:s");
			
			$logo = $this->db->query("SELECT * FROM logo ORDER BY id_logo DESC LIMIT 1")->row_array();
			$iden = $this->db->query("SELECT * FROM identitas where id_identitas='1'")->row_array();
            $subject      = "$iden[pengirim_email] - Tagihan dan Petunjuk Pembayaran";
	        $message  = "<html><body><img src='".base_url()."asset/logo/$logo[gambar]' style='height:87px'><br>
	        						<span style='font-size:20px'>Tagihan Transaksi #$kode_transaksi</span><br>
									 Hai $kons[nama_lengkap]! Terima kasih telah berbelanja di <a style='text-decoration:none; color:#000' href='$iden[url]'>$iden[url]</a>. <br>Silakan melakukan pembayaran untuk tagihan <b>#$kode_transaksi</b>.<br><br>

				<b>Detail Pemesanan</b>

				<table style='width:100%'>
					<tbody>";
					$no = 1;
					$record_detail = $this->db->query("SELECT a.id_penjual, a.kode_transaksi, b.*, c.nama_produk, c.gambar, c.satuan, c.berat, c.produk_seo, d.nama_reseller FROM `rb_penjualan` a JOIN rb_penjualan_detail b ON a.id_penjualan=b.id_penjualan JOIN rb_produk c ON b.id_produk=c.id_produk JOIN rb_reseller d ON c.id_reseller=d.id_reseller where a.kode_transaksi='".$kode_transaksi."'");
					foreach ($record_detail->result_array() as $det) {
					    $sub_total = $det['jumlah']*($det['harga_jual']-$det['diskon']);
						$message  .= "<tr>
										<td><h1>$no</h1></td>
										<td><a style='text-decoration:none; color:green; font-size:16px' href='".base_url()."produk/detail/$det[produk_seo]' title='$det[nama_produk]'><b>$det[nama_produk]</b></a>
											<br> Seller : <a href='".base_url()."produk/produk_reseller/$det[id_penjual]'>$det[nama_reseller]</a>
											<br> $det[jumlah] ($det[berat] g) x ".rupiah($det['harga_jual']-$det['diskon'])."
											<br><b>Subtotal : Rp ".rupiah($sub_total)."</b>
										</td>
									</tr>";
						$no++;
					}
					$message  .= "</tbody>
		        </table>";

		        $message      .= "<br><span style='color:#999'>Total Belanja + Ongkir</span><br>
		        				 <span style='font-size:20px; font-weight:bold; color:red'>Rp ".rupiah($total_tagihan_akhir)."</span><br>
		        				 <span style='color:#333;font-size:12px;'>Transfer Tepat hingga 3 digit terakhir</span><br>
		        				 <span style='color:#999;font-size:12px;'>Perbedaan nilai transfer akan menghambat proses verifikasi</span><br><br>

		        				 <b>METODE PEMBAYARAN :</b><br>
		        				 Silakan melakukan pembayaran ke salah satu rekening di bawah ini:<br><br>

								 <table style='width:100%'>";
								 $rekening = $this->model_app->view('rb_rekening');
                                 foreach ($rekening->result_array() as $row){
						            $message  .= "<tr><td style='width:88px'><img style='width:69px;height:auto;line-height:100%;outline:none;text-decoration:none;border:0 none' src='".base_url()."asset/images/$row[gambar]'></td>
						            	<td width='120px' colspan='2'>
						            	$row[nama_bank], <br>A/N : $row[pemilik_rekening], <br><b>$row[no_rekening] </b></td></tr>";
								 }
								 $message  .= "</table>

				<br>Rincian pemesananmu dapat dilihat di halaman <a style='text-decoration:none; color:green' target='_BLANK' href='".base_url()."konfirmasi/tracking/$kode_transaksi'>detail transaksi</a>, <br>
				Sudah melakukan pembayaran namun orderan belum terproses? Konfirmasi Pembayaran anda <a href='".base_url()."konfirmasi'>disini</a>.</body></html> \n";
			
			echo kirim_email($subject,$message,$kons['email']);
			
			$this->session->set_userdata(array('id_konsumen'=>$id_konsumen, 'level'=>'konsumen'));
			redirect('konfirmasi/tracking/'.$kode_transaksi.'?sukses');
		}else{
			redirect('produk/checkouts');
		}
		
	}

	function checkouts(){
		if (isset($_POST['submit'])){
				if ($this->session->idp!=''){
					$this->load->library('email');
					$data = array('username'=>$this->input->post('b'),
			        			  'password'=>hash("sha512", md5(date('YmdHis'))),
			        			  'nama_lengkap'=>$this->input->post('a'),
			        			  'email'=>$this->input->post('b'),
			        			  'jenis_kelamin'=>'Laki-laki',
			        			  'tanggal_lahir'=>date('Y-m-d'),
								  'tempat_lahir'=>'Belum ada informasi',
								  'alamat_lengkap'=>$this->input->post('c'),
								  'kecamatan'=>$this->input->post('g'),
								  'kota_id'=>$this->input->post('f'),
								  'no_hp'=>$this->input->post('h'),
								  'tanggal_daftar'=>date('Y-m-d H:i:s'));
					$this->model_app->insert('rb_konsumen',$data);
					$id = $this->db->insert_id();
					
					$data = array('kode_transaksi'=>$this->session->idp,
				        		  'id_pembeli'=>$id,
				        		  'id_penjual'=>$this->session->reseller,
				        		  'status_pembeli'=>'konsumen',
				        		  'status_penjual'=>'reseller',
				        		  'waktu_transaksi'=>date('Y-m-d H:i:s'),
				        		  'proses'=>'0');
					$this->model_app->insert('rb_penjualan',$data);
					$idp = $this->db->insert_id();

					$keranjang = $this->model_app->view_where('rb_penjualan_temp',array('session'=>$this->session->idp));
					foreach ($keranjang->result_array() as $row) {
						$dataa = array('id_penjualan'=>$idp,
					        		   'id_produk'=>$row['id_produk'],
					        		   'jumlah'=>$row['jumlah'],
					        		   'harga_jual'=>$row['harga_jual'],
					        		   'satuan'=>$row['satuan']);
						$this->model_app->insert('rb_penjualan_detail',$dataa);
					}

					$session = array('session' => $this->session->idp);
					$this->model_app->delete('rb_penjualan_temp',$session);

					$data['title'] = 'Transaksi Success';
					$data['email'] = $this->input->post('b');
					$data['orders'] = $this->session->idp;

					$iden = $this->model_app->view_where('identitas',array('id_identitas'=>'1'))->row_array();
					$res = $this->model_app->view_where('rb_reseller',array('id_reseller'=>$this->session->reseller))->row_array();
					$alamat = $this->db->query("SELECT a.nama_kota as kota, b.nama_provinsi as propinsi FROM `rb_kota`a JOIN rb_provinsi b ON a.provinsi_id=b.provinsi_id where a.kota_id='".$this->input->post('f')."'")->row_array();
					$data['rekening_reseller'] = $this->model_app->view_where('rb_rekening_reseller',array('id_reseller'=>$this->session->reseller));

					$email_tujuan = $this->input->post('b');
					$tglaktif = date("d-m-Y H:i:s");

					$subject      = "$iden[nama_website] - Detail Orderan anda";
					$message      = "<html><body>Halooo! <b>".$this->input->post('a')."</b> ... <br> Hari ini pada tanggal <span style='color:red'>$tglaktif</span> Anda telah order produk di $iden[nama_website].
						<br><table style='width:100%;'>
			   				<tr><td style='background:#337ab7; color:#fff; pading:20px' cellpadding=6 colspan='2'><b>Berikut Data Anda : </b></td></tr>
							<tr><td width='140px'><b>Nama Lengkap</b></td>  <td> : ".$this->input->post('a')."</td></tr>
							<tr><td><b>Alamat Email</b></td>			<td> : ".$this->input->post('b')."</td></tr>
							<tr><td><b>No Telpon</b></td>				<td> : ".$this->input->post('h')."</td></tr>
							<tr><td><b>Alamat</b></td>					<td> : ".$this->input->post('c')." </td></tr>
							<tr><td><b>Provinsi</b></td>				<td> : ".$alamat['propinsi']." </td></tr>
							<tr><td><b>Kabupaten/Kota</b></td>			<td> : ".$alamat['kota']." </td></tr>
							<tr><td><b>Kecamatan</b></td>				<td> : ".$this->input->post('g')." </td></tr>
						</table><br>

						<table style='width:100%;'>
			   				<tr><td style='background:#337ab7; color:#fff; pading:20px' cellpadding=6 colspan='2'><b>Berikut Data Reseller : </b></td></tr>
							<tr><td width='140px'><b>Nama Reseller</b></td>	<td> : ".$res['nama_reseller']."</td></tr>
							<tr><td><b>Alamat</b></td>					<td> : ".$res['alamat_lengkap']."</td></tr>
							<tr><td><b>No Telpon</b></td>				<td> : ".$res['no_telpon']."</td></tr>
							<tr><td><b>Email</b></td>					<td> : ".$res['email']." </td></tr>
							<tr><td><b>Keterangan</b></td>				<td> : ".$res['keterangan']." </td></tr>
						</table><br>

						No Orderan anda : <b>".$this->session->idp."</b><br>
						Berikut Detail Data Orderan Anda :
						<table style='width:100%;' class='table table-striped'>
					          <thead>
					            <tr bgcolor='#337ab7'>
					              <th style='width:40px'>No</th>
					              <th width='47%'>Nama Produk</th>
					              <th>Harga</th>
					              <th>Qty</th>
					              <th>Berat</th>
					              <th>Subtotal</th>
					            </tr>
					          </thead>
					          <tbody>";

					          $no = 1;
					          $belanjaan = $this->model_app->view_join_where('rb_penjualan_detail','rb_produk','id_produk',array('id_penjualan'=>$idp),'id_penjualan_detail','ASC');
					          foreach ($belanjaan as $row){
					          $sub_total = ($row['harga_jual']*$row['jumlah']);
					$message .= "<tr bgcolor='#e3e3e3'><td>$no</td>
					                    <td>$row[nama_produk]</td>
					                    <td>".rupiah($row['harga_jual'])."</td>
					                    <td>$row[jumlah]</td>
					                    <td>".($row['berat']*$row['jumlah'])." Gram</td>
					                    <td>Rp ".rupiah($sub_total)."</td>
					                </tr>";
					            $no++;
					          }
					          $total = $this->db->query("SELECT sum((a.harga_jual*a.jumlah)-a.diskon) as total, sum(b.berat*a.jumlah) as total_berat FROM `rb_penjualan_detail` a JOIN rb_produk b ON a.id_produk=b.id_produk where a.id_penjualan='".$idp."'")->row_array();
					$message .= "<tr bgcolor='lightgreen'>
					                  <td colspan='5'><b>Total Harga</b></td>
					                  <td><b>Rp ".rupiah($total['total'])."</b></td>
					                </tr>

					                <tr bgcolor='lightblue'>
					                  <td colspan='5'><b>Total Berat</b></td>
					                  <td><b>$total[total_berat] Gram</b></td>
					                </tr>

					        </tbody>
					      </table><br>

					      Silahkan melakukan pembayaran ke rekening reseller :
					      <table style='width:100%;' class='table table-hover table-condensed'>
							<thead>
							  <tr bgcolor='#337ab7'>
							    <th width='20px'>No</th>
							    <th>Nama Bank</th>
							    <th>No Rekening</th>
							    <th>Atas Nama</th>
							  </tr>
							</thead>
							<tbody>";
							    $noo = 1;
							    $rekening = $this->model_app->view_where('rb_rekening_reseller',array('id_reseller'=>$this->session->reseller));
							    foreach ($rekening->result_array() as $row){
					$message .= "<tr bgcolor='#e3e3e3'><td>$noo</td>
							              <td>$row[nama_bank]</td>
							              <td>$row[no_rekening]</td>
							              <td>$row[pemilik_rekening]</td>
							          </tr>";
							      $noo++;
							    }
					$message .= "</tbody>
						  </table><br><br>

					      Jika sudah melakukan transfer, jangan lupa konfirmasi transferan anda <a href='".base_url()."konfirmasi'>disini</a><br>
					      Admin, $iden[nama_website] </body></html> \n";
					
					$this->email->from($iden['email'], $iden['nama_website']);
					$this->email->to($email_tujuan);
					$this->email->cc('');
					$this->email->bcc('');

					$this->email->subject($subject);
					$this->email->message($message);
					$this->email->set_mailtype("html");
					$this->email->send();
					
					$config['protocol'] = 'sendmail';
					$config['mailpath'] = '/usr/sbin/sendmail';
					$config['charset'] = 'utf-8';
					$config['wordwrap'] = TRUE;
					$config['mailtype'] = 'html';
					$this->email->initialize($config);

					$this->session->unset_userdata('idp');
					$this->session->unset_userdata('reseller');
					$this->template->load('phpmu-one/template','phpmu-one/view_order_success',$data);
				}else{
					redirect('produk/keranjang');
				}
		}else{
			$data['title'] = 'Checkout Order';
			$data['provinsi'] = $this->model_app->view_ordering('rb_provinsi','provinsi_id','DESC');
			$data['rows'] = $this->model_app->view_where('rb_reseller',array('id_reseller'=>$this->session->reseller))->row_array();
			$data['record'] = $this->model_app->view_join_where('rb_penjualan_temp','rb_produk','id_produk',array('session'=>$this->session->idp),'id_penjualan_detail','ASC');
			if ($this->session->id_konsumen==''){
				$this->template->load(template().'/template',template().'/reseller/view_checkouts_option',$data);
			}else{
				$this->template->load(template().'/template',template().'/reseller/view_checkouts_konsumen',$data);
			}
		}
	}

	function order(){
		$this->session->set_userdata(array('produk'=>$this->uri->segment(3)));
		redirect('produk/reseller');
	}

	public function detail(){
		$ids = $this->uri->segment(3);
		$dat = $this->db->query("SELECT * FROM rb_produk where produk_seo='$ids' AND id_reseller!='0'");
		$row = $dat->row();
		if (isset($_POST['submit_rating'])){
			$data = array('id_konsumen'=>$this->session->id_konsumen,
							'id_produk'=>$row->id_produk,
							'rating'=>$this->input->post('rating'),
							'ulasan'=>$this->input->post('ulasan'),
							'waktu_kirim'=>date('Y-m-d H:i:s'));
							
			$this->model_app->insert('rb_produk_ulasan',$data);
			echo $this->session->set_flashdata('message_ulasan', '<div class="alert alert-success"><center>Berhasil Mengirimkan Ulasan,..</center></div>');
			redirect('produk/detail/'.$row->produk_seo);
		}else{
			$total = $dat->num_rows();
				if ($total == 0){
					redirect('main');
				}

			$dataa = array('dilihat'=>$row->dilihat+1);
			$where = array('id_produk' => $row->id_produk);
			$this->model_utama->update('rb_produk', $dataa, $where);

			$data['title'] = $row->nama_produk;
			$data['record'] = $this->model_app->view_where('rb_produk',array('id_produk'=>$row->id_produk))->row_array();
			$this->template->load(template().'/template',template().'/reseller/view_produk_detail',$data);
		}
	}

	function save(){
        $result = array('id_konsumen'=>$this->session->id_konsumen,
				'id_produk'=>cetak($this->input->post('id')),
				'waktu_simpan'=>date('Y-m-d H:i:s'));
				$this->model_app->insert('rb_konsumen_simpan',$result);
        echo json_encode($result);
	}
	
	function quick_view(){
		$data['record'] = $this->db->query("SELECT * FROM rb_produk where id_produk='".cetak($this->input->post('id'))."'")->row_array();
		$this->load->view(template().'/reseller/view_produk_quick',$data);
	}
}
