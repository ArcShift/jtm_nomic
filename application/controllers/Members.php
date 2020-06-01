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
class Members extends CI_Controller {
	function foto(){
		cek_session_members();
		if (isset($_POST['submit'])){
			$this->model_reseller->modupdatefoto();
			redirect('members/profile');
		}else{
			redirect('members/profile');
		}
	}

	function profile(){
		cek_session_members();
		$data['title'] = 'Profile Anda';
		$data['row'] = $this->model_reseller->profile_konsumen($this->session->id_konsumen)->row_array();
		$this->template->load(template().'/template',template().'/reseller/view_profile',$data);
	}

	function wishlist(){
		cek_session_members();
		$data['title'] = 'Wishlist - Produk Tersimpan';
		$data['row'] = $this->model_reseller->profile_konsumen($this->session->id_konsumen)->row_array();
		$this->template->load(template().'/template',template().'/reseller/view_produk_wishlist',$data);
	}

	function wishlist_update(){
		cek_session_members();
		$data['record'] = $this->db->query("SELECT a.*, b.nama_reseller, c.nama_kota, z.id_konsumen_simpan FROM rb_konsumen_simpan z JOIN rb_produk a ON z.id_produk=a.id_produk LEFT JOIN rb_reseller b ON a.id_reseller=b.id_reseller
										LEFT JOIN rb_kota c ON b.kota_id=c.kota_id where a.id_reseller!='0' AND a.id_produk_perusahaan='0' AND a.aktif='Y' AND z.id_konsumen='".$this->session->id_konsumen."' ORDER BY a.id_produk DESC");
		$this->load->view(template().'/reseller/view_produk_wishlist_update',$data);
	}

	function delete_wishlist(){
		cek_session_members();
        $id = array('id_konsumen_simpan' => $this->uri->segment(3), 'id_konsumen'=>$this->session->id_konsumen);
		$this->model_app->delete('rb_konsumen_simpan',$id);
		redirect($this->uri->segment(1).'/wishlist');
	}

	function edit_profile(){
		cek_session_members();
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_reseller->profile_update($this->session->id_konsumen);
			redirect('members/profile');
		}else{
			$data['title'] = 'Lengkapi Data Profile';
			$data['row'] = $this->model_reseller->profile_konsumen($this->session->id_konsumen)->row_array();
			$row = $this->model_reseller->profile_konsumen($this->session->id_konsumen)->row_array();
			$data['provinsi'] = $this->model_app->view_ordering('rb_provinsi','provinsi_id','ASC');
			$data['rowse'] = $this->db->query("SELECT provinsi_id FROM rb_kota where kota_id='$row[kota_id]'")->row_array();
			$this->template->load(template().'/template',template().'/reseller/view_profile_edit',$data);
		}
	}

	function sosial_media(){
		cek_session_members();
		$data['title'] = 'Sosial Media';
		$data['row'] = $this->model_reseller->profile_konsumen($this->session->id_konsumen)->row_array();
		$data['rows'] = $this->model_app->view_where('rb_konsumen_detail',array('id_konsumen'=>$this->session->id_konsumen,'status'=>'sosmed'))->row_array();
		$this->template->load(template().'/template',template().'/reseller/view_sosmed',$data);
	}

	function edit_sosial_media(){
		cek_session_members();
		if (isset($_POST['submit'])){
			$keterangan = cetak($this->input->post('a')).';'.cetak($this->input->post('b')).';'.cetak($this->input->post('c')).';'.cetak($this->input->post('d')).';'.cetak($this->input->post('e')).';'.cetak($this->input->post('f')).';'.cetak($this->input->post('g')).';'.cetak($this->input->post('h'));
			$data = array('id_konsumen'=>$this->session->id_konsumen,
							'keterangan'=>$keterangan,
							'status'=>'sosmed',
							'waktu_input'=>date('Y-m-d H:i:s'));
			$cek_sosmed = $this->model_app->view_where('rb_konsumen_detail',array('id_konsumen'=>$this->session->id_konsumen,'status'=>'sosmed'));
			if ($cek_sosmed->num_rows()>=1){
				$where = array('id_konsumen' => $this->session->id_konsumen,'status'=>'sosmed');
				$this->model_app->update('rb_konsumen_detail', $data, $where);
			}else{
				$this->model_app->insert('rb_konsumen_detail',$data);
			}
			redirect('members/sosial_media');
		}else{
			$data['title'] = 'Sosial Media';
			$data['row'] = $this->model_reseller->profile_konsumen($this->session->id_konsumen)->row_array();
			$data['rows'] = $this->model_app->view_where('rb_konsumen_detail',array('id_konsumen'=>$this->session->id_konsumen,'status'=>'sosmed'))->row_array();
			$this->template->load(template().'/template',template().'/reseller/view_sosmed_edit',$data);
		}
	}

	function rekening_bank(){
		cek_session_members();
		$data['title'] = 'Rekening Bank';
		$data['row'] = $this->model_reseller->profile_konsumen($this->session->id_konsumen)->row_array();
		$data['record'] = $this->model_app->view_where('rb_konsumen_detail',array('id_konsumen'=>$this->session->id_konsumen,'status'=>'rekening'));
		$this->template->load(template().'/template',template().'/reseller/view_rekening',$data);
	}

	function tambah_rekening_bank(){
		cek_session_members();
		if (isset($_POST['submit'])){
			$keterangan = cetak($this->input->post('a')).';'.cetak($this->input->post('b')).';'.cetak($this->input->post('c'));
			$data = array('id_konsumen'=>$this->session->id_konsumen,
							'keterangan'=>$keterangan,
							'status'=>'rekening',
							'waktu_input'=>date('Y-m-d H:i:s'));
				$this->model_app->insert('rb_konsumen_detail',$data);
			redirect('members/rekening_bank');
		}else{
			$data['title'] = 'Rekening Bank';
			$data['row'] = $this->model_reseller->profile_konsumen($this->session->id_konsumen)->row_array();
			$this->template->load(template().'/template',template().'/reseller/view_rekening_tambah',$data);
		}
	}

	function edit_rekening_bank(){
		cek_session_members();
		if (isset($_POST['submit'])){
			$keterangan = cetak($this->input->post('a')).';'.cetak($this->input->post('b')).';'.cetak($this->input->post('c'));
			$data = array('id_konsumen'=>$this->session->id_konsumen,
							'keterangan'=>$keterangan,
							'status'=>'rekening');
			$where = array('id_konsumen'=>$this->session->id_konsumen,'status'=>'rekening','id_konsumen_detail'=>$this->input->post('id'));
			$this->model_app->update('rb_konsumen_detail', $data, $where);
			redirect('members/rekening_bank');
		}else{
			$data['title'] = 'Rekening Bank';
			$data['row'] = $this->model_reseller->profile_konsumen($this->session->id_konsumen)->row_array();
			$data['rows'] = $this->model_app->view_where('rb_konsumen_detail',array('id_konsumen'=>$this->session->id_konsumen,'status'=>'rekening','id_konsumen_detail'=>$this->uri->segment('3')))->row_array();
			$this->template->load(template().'/template',template().'/reseller/view_rekening_edit',$data);
		}
	}

	function delete_rekening_bank(){
        cek_session_members();
		$id = array('id_konsumen'=>$this->session->id_konsumen,'status'=>'rekening','id_konsumen_detail'=>$this->uri->segment('3'));
        $this->model_app->delete('rb_konsumen_detail',$id);
		redirect($this->uri->segment(1).'/rekening_bank');
	}

	function reseller(){
		cek_session_members();
		$jumlah= $this->model_app->view('rb_reseller')->num_rows();
		$config['base_url'] = base_url().'members/reseller';
		$config['total_rows'] = $jumlah;
		$config['per_page'] = 12; 	
		if ($this->uri->segment('3')==''){
			$dari = 0;
		}else{
			$dari = $this->uri->segment('3');
		}

		if (is_numeric($dari)) {
			$data['title'] = 'Semua Daftar Reseller';
			$this->pagination->initialize($config);
			if (isset($_POST['submit'])){
				$data['record'] = $this->model_reseller->cari_reseller(filter($this->input->post('cari_reseller')));
			}elseif (isset($_GET['cari_reseller'])){
				$data['record'] = $this->model_reseller->cari_reseller(filter($this->input->get('cari_reseller')));
				$total = $this->model_reseller->cari_reseller(filter($this->input->get('cari_reseller')));
				if ($total->num_rows()==1){
					$row = $total->row_array();
					redirect('produk/keranjang/'.$row['id_reseller'].'/'.$this->session->produk);
				}
			}else{
				$data['record'] = $this->db->query("SELECT * FROM rb_reseller a LEFT JOIN rb_kota b ON a.kota_id=b.kota_id ORDER BY id_reseller DESC LIMIT $dari,$config[per_page]");
			}
			$this->template->load(template().'/template',template().'/reseller/view_reseller',$data);
		}else{
			redirect('main');
		}
	}

	function detail_reseller(){
		cek_session_members();
		$data['title'] = 'Detail Profile Reseller';
		$id = $this->uri->segment(3);
		$data['rows'] = $this->model_app->edit('rb_reseller',array('id_reseller'=>$id))->row_array();
		$data['record'] = $this->model_reseller->penjualan_list_konsumen($id,'reseller');
		$data['rekening'] = $this->model_app->view_where('rb_rekening_reseller',array('id_reseller'=>$id));
		$this->template->load(template().'/template',template().'/reseller/view_reseller_detail',$data);

	}

	function orders_report(){
		cek_session_members();
		if (isset($_GET['sukses'])){
			$data = array('proses'=>'4');
			$where = array('id_penjualan'=>$this->input->get('sukses'),'id_pembeli'=>$this->session->id_konsumen,'status_pembeli'=>'konsumen');
			$this->model_app->update('rb_penjualan', $data, $where);
			echo $this->session->set_flashdata('message', '<div class="alert alert-success"><center>Terima kasih karena telah mengkonfirmasi Penerimaan pesanan anda,.. ^_^</center></div>');
			redirect('members/orders_report');
		}
		$jumlah= $this->db->query("SELECT * FROM `rb_penjualan` a JOIN rb_reseller b ON a.id_penjual=b.id_reseller where a.status_penjual='reseller' AND a.id_pembeli='".$this->session->id_konsumen."' ORDER BY a.id_penjualan DESC")->num_rows();
		$config['base_url'] = base_url().'members/orders_report';
		$config['total_rows'] = $jumlah;
		$config['per_page'] = 50; 	
		if ($this->uri->segment('3')==''){
			$dari = 0;
		}else{
			$dari = $this->uri->segment('3');
		}
		$data['title'] = 'Laporan Pesanan Anda';
		$data['row'] = $this->model_reseller->profile_konsumen($this->session->id_konsumen)->row_array();
		$data['pending'] = $this->db->query("SELECT * FROM `rb_penjualan` a JOIN rb_reseller b ON a.id_penjual=b.id_reseller where a.status_penjual='reseller' AND a.id_pembeli='".$this->session->id_konsumen."' AND a.proses='0' ORDER BY a.id_penjualan DESC LIMIT $dari,$config[per_page]");
		$data['proses'] = $this->db->query("SELECT * FROM `rb_penjualan` a JOIN rb_reseller b ON a.id_penjual=b.id_reseller where a.status_penjual='reseller' AND a.id_pembeli='".$this->session->id_konsumen."' AND a.proses='1' ORDER BY a.id_penjualan DESC LIMIT $dari,$config[per_page]");
		$data['dikirim'] = $this->db->query("SELECT * FROM `rb_penjualan` a JOIN rb_reseller b ON a.id_penjual=b.id_reseller where a.status_penjual='reseller' AND a.id_pembeli='".$this->session->id_konsumen."' AND a.proses='3' ORDER BY a.id_penjualan DESC LIMIT $dari,$config[per_page]");
		$data['selesai'] = $this->db->query("SELECT * FROM `rb_penjualan` a JOIN rb_reseller b ON a.id_penjual=b.id_reseller where a.status_penjual='reseller' AND a.id_pembeli='".$this->session->id_konsumen."' AND a.proses='4' ORDER BY a.id_penjualan DESC LIMIT $dari,$config[per_page]");
		$this->pagination->initialize($config);
		$this->template->load(template().'/template',template().'/reseller/view_orders_report',$data);
	}

	function produk_reseller(){
		cek_session_members();
		$jumlah= $this->model_app->view('rb_produk')->num_rows();
		$config['base_url'] = base_url().'members/produk_reseller/'.$this->uri->segment('3');
		$config['total_rows'] = $jumlah;
		$config['per_page'] = 12; 	
		if ($this->uri->segment('4')==''){
			$dari = 0;
		}else{
			$dari = $this->uri->segment('4');
		}

		if (is_numeric($dari)) {
			$data['title'] = 'Data Produk Reseller';
			$id = $this->uri->segment(3);
			$data['rows'] = $this->db->query("SELECT * FROM rb_reseller a JOIN rb_kota b ON a.kota_id=b.kota_id where a.id_reseller='$id'")->row_array();
			$data['record'] = $this->model_app->view_where_ordering_limit('rb_produk',array('id_reseller!='=>'0'),'id_produk','DESC',$dari,$config['per_page']);
			$this->pagination->initialize($config);
			$this->template->load(template().'/template',template().'/reseller/view_reseller_produk',$data);
		}else{
			redirect('main');
		}
	}

	function keranjang(){
		cek_session_members();
		$id_reseller = $this->uri->segment(3);
		$id_produk   = $this->uri->segment(4);

		$j = $this->model_reseller->jual_reseller($id_reseller,$id_produk)->row_array();
        $b = $this->model_reseller->beli_reseller($id_reseller,$id_produk)->row_array();
        $stok = $b['beli']-$j['jual'];

		if ($id_produk!=''){
			if ($stok <= '0'){
				$produk = $this->model_app->edit('rb_produk',array('id_produk'=>$id_produk))->row_array();
				$produk_cek = filter($produk['nama_produk']);
				echo "<script>window.alert('Maaf, Stok untuk Produk $produk_cek pada Reseller ini telah habis!');
                                  window.location=('".base_url()."members/reseller')</script>";
			}else{
				$this->session->unset_userdata('produk');
				if ($this->session->idp == ''){
					$kode_transaksi = 'TRX-'.date('YmdHis');
					$data = array('kode_transaksi'=>$kode_transaksi,
				        		  'id_pembeli'=>$this->session->id_konsumen,
				        		  'id_penjual'=>$id_reseller,
				        		  'status_pembeli'=>'konsumen',
				        		  'status_penjual'=>'reseller',
				        		  'waktu_transaksi'=>date('Y-m-d H:i:s'),
				        		  'proses'=>'0');
					$this->model_app->insert('rb_penjualan',$data);
					$idp = $this->db->insert_id();
					$this->session->set_userdata(array('idp'=>$idp));
				}

				$qty = $this->input->post('qty');
				$reseller = $this->model_app->view_where('rb_penjualan',array('id_penjualan'=>$this->session->idp))->row_array();
				$cek = $this->model_app->view_where('rb_penjualan_detail',array('id_penjualan'=>$this->session->idp,'id_produk'=>$id_produk))->num_rows();
				if ($reseller['id_penjual']==$id_reseller){
					if ($cek >=1){
						$this->db->query("UPDATE rb_penjualan_detail SET jumlah=jumlah+$qty where id_penjualan='".$this->session->idp."' AND id_produk='$id_produk'");
					}else{
						$harga = $this->model_app->view_where('rb_produk',array('id_produk'=>$id_produk))->row_array();
						$disk = $this->model_app->edit('rb_produk_diskon',array('id_produk'=>$id_produk,'id_reseller'=>$id_reseller))->row_array();
	                    $harga_konsumen = $harga['harga_konsumen']-$disk['diskon'];
						$data = array('id_penjualan'=>$this->session->idp,
					        		  'id_produk'=>$id_produk,
					        		  'jumlah'=>$qty,
					        		  'harga_jual'=>$harga_konsumen,
					        		  'satuan'=>$harga['satuan']);
						$this->model_app->insert('rb_penjualan_detail',$data);
					}
					redirect('members/keranjang');
				}else{
					if ($this->session->idp != ''){
						$data['rows'] = $this->model_reseller->penjualan_konsumen_detail($this->session->idp)->row_array();
						$data['record'] = $this->model_app->view_join_where('rb_penjualan_detail','rb_produk','id_produk',array('id_penjualan'=>$this->session->idp),'id_penjualan_detail','ASC');
					}
					$data['title'] = 'Keranjang Belanja';
					$data['error_reseller'] = "<div class='alert alert-danger'>Maaf, Dalam 1 Transaksi hanya boleh order dari 1 Reseller saja.</div>";
					$this->template->load(template().'/template',template().'/reseller/members/view_keranjang',$data);
				}
			}
		}else{
			if ($this->session->idp != ''){
				$data['rows'] = $this->model_reseller->penjualan_konsumen_detail($this->session->idp)->row_array();
				$data['rowsk'] = $this->model_reseller->view_join_where_one('rb_konsumen','rb_kota','kota_id',array('id_konsumen'=>$this->session->id_konsumen))->row_array();
				$data['record'] = $this->model_app->view_join_where('rb_penjualan_detail','rb_produk','id_produk',array('id_penjualan'=>$this->session->idp),'id_penjualan_detail','ASC');
			}
				$data['title'] = 'Keranjang Belanja';
				$this->template->load(template().'/template',template().'/reseller/members/view_keranjang',$data);

		}
	}

	function keranjang_detail(){
		$data['rows'] = $this->model_reseller->penjualan_konsumen_detail($this->uri->segment(3))->row_array();
		$data['record'] = $this->model_app->view_join_where('rb_penjualan_detail','rb_produk','id_produk',array('id_penjualan'=>$this->uri->segment(3)),'id_penjualan_detail','ASC');
		$data['title'] = 'Detail Belanja';
		$this->template->load(template().'/template',template().'/reseller/members/view_keranjang_detail',$data);
	}

	function keranjang_delete(){
		$id = array('id_penjualan_detail' => $this->uri->segment(3));
		$this->model_app->delete('rb_penjualan_detail',$id);
		$isi_keranjang = $this->db->query("SELECT sum(jumlah) as jumlah FROM rb_penjualan_detail where id_penjualan='".$this->session->idp."'")->row_array();
		if ($isi_keranjang['jumlah']==''){
			$idp = array('id_penjualan' => $this->session->idp);
			$this->model_app->delete('rb_penjualan',$idp);
			$this->session->unset_userdata('idp');
		}
		redirect('members/keranjang');
	}

	function selesai_belanja(){
		if (isset($_POST['submit'])){
			$iden = $this->model_app->view_where('identitas',array('id_identitas'=>'1'))->row_array();
			$cekres = $this->model_app->view_where('rb_penjualan',array('id_penjualan'=>$this->session->idp))->row_array();
			$kons = $this->model_reseller->profile_konsumen($this->session->id_konsumen)->row_array();

			$res = $this->model_app->view_where('rb_reseller',array('id_reseller'=>$cekres['id_penjual']))->row_array();
			$data['rekening_reseller'] = $this->model_app->view_where('rb_rekening_reseller',array('id_reseller'=>$cekres['id_penjual']));

			$data1 = array('kurir'=>$this->input->post('kurir'),
						   'service'=>$this->input->post('service'),
						   'ongkir'=>$this->input->post('ongkir'));
			$where1 = array('id_penjualan'=>$this->session->idp);
			$this->model_app->update('rb_penjualan', $data1, $where1);

			$keranjangd = $this->model_app->view_where('rb_penjualan_detail',array('id_penjualan'=>$this->session->idp));
			$no = 1;
			foreach ($keranjangd->result_array() as $row) {
				$keterangan = $_POST['warna'.$no].' - '.$_POST['ukuran'.$no];
				$data1a = array('keterangan_order'=>$keterangan);
				$where1a = array('id_penjualan_detail'=>$row['id_penjualan_detail']);
				$this->model_app->update('rb_penjualan_detail', $data1a, $where1a);
				$no++;
			}
			$this->load->library('email');
			$email_tujuan = $kons['email'];
			$tglaktif = date("d-m-Y H:i:s");

			$subject      = "$iden[nama_website] - Detail Orderan anda";
			$message      = "<html><body>Halooo! <b>".$kons['nama_lengkap']."</b> ... <br> Hari ini pada tanggal <span style='color:red'>$tglaktif</span> Anda telah order produk di $iden[nama_website].
				<br><table style='width:100%;'>
	   				<tr><td style='background:#337ab7; color:#fff; pading:20px' cellpadding=6 colspan='2'><b>Berikut Data Anda : </b></td></tr>
					<tr><td width='140px'><b>Nama Lengkap</b></td>  <td> : ".$kons['nama_lengkap']."</td></tr>
					<tr><td><b>Alamat Email</b></td>			<td> : ".$kons['email']."</td></tr>
					<tr><td><b>No Telpon</b></td>				<td> : ".$kons['no_hp']."</td></tr>
					<tr><td><b>Alamat</b></td>					<td> : ".$kons['alamat_lengkap']." </td></tr>
					<tr><td><b>Negara</b></td>					<td> : ".$kons['negara']." </td></tr>
					<tr><td><b>Provinsi</b></td>				<td> : ".$kons['propinsi']." </td></tr>
					<tr><td><b>Kabupaten/Kota</b></td>			<td> : ".$kons['kota']." </td></tr>
					<tr><td><b>Kecamatan</b></td>				<td> : ".$kons['kecamatan']." </td></tr>
				</table><br>

				<table style='width:100%;'>
	   				<tr><td style='background:#337ab7; color:#fff; pading:20px' cellpadding=6 colspan='2'><b>Berikut Data Reseller : </b></td></tr>
					<tr><td width='140px'><b>Nama Reseller</b></td>	<td> : ".$res['nama_reseller']."</td></tr>
					<tr><td><b>Alamat</b></td>					<td> : ".$res['alamat_lengkap']."</td></tr>
					<tr><td><b>No Telpon</b></td>				<td> : ".$res['no_telpon']."</td></tr>
					<tr><td><b>Email</b></td>					<td> : ".$res['email']." </td></tr>
					<tr><td><b>Keterangan</b></td>				<td> : ".$res['keterangan']." </td></tr>
				</table><br>

				No Orderan anda : <b>".$cekres['kode_transaksi']."</b><br>
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
			          $belanjaan = $this->model_app->view_join_where('rb_penjualan_detail','rb_produk','id_produk',array('id_penjualan'=>$this->session->idp),'id_penjualan_detail','ASC');
			          foreach ($belanjaan as $row){
			          $sub_total = ($row['harga_jual']*$row['jumlah']);
			$message .= "<tr bgcolor='#e3e3e3'><td>$no</td>
			                    <td>$row[nama_produk]</td>
			                    <td>".rupiah($row['harga_jual'])."</td>
			                    <td>$row[jumlah]</td>
			                    <td>".($row['berat']*$row['jumlah'])." Kg</td>
			                    <td>Rp ".rupiah($sub_total)."</td>
			                </tr>";
			            $no++;
			          }
			          $total = $this->db->query("SELECT sum((a.harga_jual*a.jumlah)-a.diskon) as total, sum(b.berat*a.jumlah) as total_berat FROM `rb_penjualan_detail` a JOIN rb_produk b ON a.id_produk=b.id_produk where a.id_penjualan='".$this->session->idp."'")->row_array();
			$message .= "<tr bgcolor='lightgreen'>
			                  <td colspan='5'><b>Total Harga</b></td>
			                  <td><b>Rp ".rupiah($total['total'])."</b></td>
			                </tr>

			                <tr bgcolor='lightblue'>
			                  <td colspan='5'><b>Total Berat</b></td>
			                  <td><b>$total[total_berat] Kg</b></td>
			                </tr>

			        </tbody>
			      </table><br>

			      Silahkan melakukan pembayaran ke rekening berikut :
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
					    $rekening = $this->model_app->view('rb_rekening');
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
		}
		redirect('members/orders_report/orders');
	}

	function batalkan_transaksi(){
		echo $this->session->set_flashdata('message', '<div class="alert alert-danger"><center>Anda Telah mebatalkan Transaksi!</center></div>');
		$idp = array('id_penjualan' => $this->session->idp);
		$this->model_app->delete('rb_penjualan',$idp);
		$idp_detail = array('id_penjualan' => $this->session->idp);
		$this->model_app->delete('rb_penjualan_detail',$idp_detail);

		$this->session->unset_userdata('idp');
		redirect('members/profile');
	}

	function order(){
		cek_session_members();
		$this->session->set_userdata(array('produk'=>$this->uri->segment(3)));
		$cek = $this->db->query("SELECT b.nama_kota FROM rb_konsumen a JOIN rb_kota b ON a.kota_id=b.kota_id where a.id_konsumen='".$this->session->id_konsumen."'")->row_array();
		redirect('members/reseller?cari_reseller='.$cek['nama_kota']);
	}

	public function username_check(){
        // allow only Ajax request    
        if($this->input->is_ajax_request()) {
	        // grab the email value from the post variable.
	        $username = $this->input->post('a');

            if(!$this->form_validation->is_unique($username, 'rb_konsumen.username')) {          
	         	$this->output->set_content_type('application/json')->set_output(json_encode(array('messageusername' => 'Maaf, Username ini sudah terdaftar,..')));
            }

        }
    }

    public function email_check(){
        // allow only Ajax request    
        if($this->input->is_ajax_request()) {
	        // grab the email value from the post variable.
	        $email = $this->input->post('d');

	        if(!$this->form_validation->is_unique($email, 'rb_konsumen.email')) {          
	         	$this->output->set_content_type('application/json')->set_output(json_encode(array('message' => 'Maaf, Email ini sudah terdaftar,..')));
            }
        }
	}
	

	// Controller Modul Produk

	function produk(){
		cek_session_members();
		if (isset($_POST['submit'])){
			$jml = $this->model_app->view('rb_produk')->num_rows();
			for ($i=1; $i<=$jml; $i++){
				$a  = $_POST['a'][$i];
				$b  = $_POST['b'][$i];
				$cek = $this->model_app->edit('rb_produk_diskon',array('id_produk'=>$a,'id_reseller'=>reseller($this->session->id_konsumen)))->num_rows();
				if ($cek >= 1){
					if ($b > 0){
						$data = array('diskon'=>$b);
						$where = array('id_produk' => $a,'id_reseller' => reseller($this->session->id_konsumen));
						$this->model_app->update('rb_produk_diskon', $data, $where);
					}else{
						$this->model_app->delete('rb_produk_diskon',array('id_produk'=>$a,'id_reseller'=>reseller($this->session->id_konsumen)));
					}
				}else{
					if ($b > 0){
						$data = array('id_produk'=>$a,
			                          'id_reseller'=>reseller($this->session->id_konsumen),
			                          'diskon'=>$b);
						$this->model_app->insert('rb_produk_diskon',$data);
					}
				}
			}
			redirect($this->uri->segment(1).'/produk');
		}else{
			$data['title'] = 'Produk Anda';
			$data['record'] = $this->model_app->view_where_ordering('rb_produk',array('id_reseller'=>reseller($this->session->id_konsumen)),'id_produk','DESC');
			$this->template->load(template().'/template',template().'/reseller/mod_produk/view_produk',$data);
		}
	}

	function tambah_produk(){
        cek_session_members();
        if (isset($_POST['submit'])){
			$iden = $this->db->query("SELECT * FROM identitas where id_identitas='1'")->row_array();
			$cek_produk = $this->db->query("SELECT * FROM rb_produk where id_reseller='".reseller($this->session->id_konsumen)."'");
			$status = cek_paket(reseller($this->session->id_konsumen));
			if ($status>=1){
				$cekpa = $this->db->query("SELECT a.id_reseller, b.max_produk, b.nama_paket FROM `rb_reseller_paket` a JOIN rb_paket b ON a.id_paket=b.id_paket where a.status='Y' AND a.id_reseller='".reseller($this->session->id_konsumen)."'")->row_array();
				if ($cek_produk->num_rows()>=$cekpa['max_produk']){
					echo $this->session->set_flashdata('message', "<div class='alert alert-danger'><b>PENTING</b> - Maaf, Paket anda $cekpa[nama_paket] hanya bisa posting maksimal $cekpa[max_produk] Produk.</div>");
					redirect($this->uri->segment(1).'/produk');
				}else{
					$files = $_FILES;
					$cpt = count($_FILES['userfile']['name']);
					for($i=0; $i<$cpt; $i++){
						$_FILES['userfile']['name']= $files['userfile']['name'][$i];
						$_FILES['userfile']['type']= $files['userfile']['type'][$i];
						$_FILES['userfile']['tmp_name']= $files['userfile']['tmp_name'][$i];
						$_FILES['userfile']['error']= $files['userfile']['error'][$i];
						$_FILES['userfile']['size']= $files['userfile']['size'][$i];
						$this->load->library('upload');
						$this->upload->initialize($this->set_upload_options());
						$this->upload->do_upload();
						$fileName = $this->upload->data()['file_name'];
						$images[] = $fileName;
					}
					$fileName = implode(';',$images);
					$fileName = str_replace(' ','_',$fileName);
					if (trim($fileName)!=''){
						$data = array('id_kategori_produk'=>$this->input->post('a'),
									'id_kategori_produk_sub'=>$this->input->post('aa'),
									'id_reseller'=>reseller($this->session->id_konsumen),
									'nama_produk'=>$this->input->post('b'),
									'produk_seo'=>seo_title($this->input->post('b')),
									'satuan'=>$this->input->post('c'),
									'harga_beli'=>$this->input->post('d'),
									'harga_reseller'=>$this->input->post('e'),
									'harga_konsumen'=>$this->input->post('f'),
									'berat'=>$this->input->post('berat'),
									'gambar'=>$fileName,
									'tentang_produk'=>$this->input->post('fff'),
									'keterangan'=>$this->input->post('ff'),
									'username'=>$this->session->username,
									'waktu_input'=>date('Y-m-d H:i:s'));
					}else{
						$data = array('id_kategori_produk'=>$this->input->post('a'),
									'id_kategori_produk_sub'=>$this->input->post('aa'),
									'id_reseller'=>reseller($this->session->id_konsumen),
									'nama_produk'=>$this->input->post('b'),
									'produk_seo'=>seo_title($this->input->post('b')),
									'satuan'=>$this->input->post('c'),
									'harga_beli'=>$this->input->post('d'),
									'harga_reseller'=>$this->input->post('e'),
									'harga_konsumen'=>$this->input->post('f'),
									'berat'=>$this->input->post('berat'),
									'tentang_produk'=>$this->input->post('fff'),
									'keterangan'=>$this->input->post('ff'),
									'username'=>$this->session->username,
									'waktu_input'=>date('Y-m-d H:i:s'));
					}
					$this->model_app->insert('rb_produk',$data);
					$id_produk = $this->db->insert_id();
					if ($this->input->post('diskon') > 0){
						$cek = $this->db->query("SELECT * FROM rb_produk_diskon where id_produk='".$id_produk."' AND id_reseller='".reseller($this->session->id_konsumen)."'");
						if ($cek->num_rows()>=1){
							$data = array('diskon'=>$this->input->post('diskon'));
							$where = array('id_produk' => $id_produk,'id_reseller' => reseller($this->session->id_konsumen));
							$this->model_app->update('rb_produk_diskon', $data, $where);
						}else{
							$data = array('id_produk'=>$id_produk,
										'id_reseller'=>reseller($this->session->id_konsumen),
										'diskon'=>$this->input->post('diskon'));
							$this->model_app->insert('rb_produk_diskon',$data);
						}
					}


					if ($this->input->post('stok') != ''){
						$kode_transaksi = "TRX-".date('YmdHis');
						$data = array('kode_transaksi'=>$kode_transaksi,
									'id_pembeli'=>reseller($this->session->id_konsumen),
									'id_penjual'=>'1',
									'status_pembeli'=>'reseller',
									'status_penjual'=>'admin',
									'service'=>'Stok Otomatis (Pribadi)',
									'waktu_transaksi'=>date('Y-m-d H:i:s'),
									'proses'=>'1');
						$this->model_app->insert('rb_penjualan',$data);
						$idp = $this->db->insert_id();

						$data = array('id_penjualan'=>$idp,
									'id_produk'=>$id_produk,
									'jumlah'=>$this->input->post('stok'),
									'harga_jual'=>$this->input->post('e'),
									'satuan'=>$this->input->post('c'));
						$this->model_app->insert('rb_penjualan_detail',$data);
					}
					redirect($this->uri->segment(1).'/produk');
				}
				
			}else{
				if ($cek_produk->num_rows()>=$iden['free_reseller']){
					echo $this->session->set_flashdata('message', "<div class='alert alert-danger'><b>PENTING</b> - Maaf, Reseller dengan status FREE hanya bisa posting maksimal $iden[free_reseller] Produk.</div>");
					redirect($this->uri->segment(1).'/produk');
				}else{
					$files = $_FILES;
					$cpt = count($_FILES['userfile']['name']);
					for($i=0; $i<$cpt; $i++){
						$_FILES['userfile']['name']= $files['userfile']['name'][$i];
						$_FILES['userfile']['type']= $files['userfile']['type'][$i];
						$_FILES['userfile']['tmp_name']= $files['userfile']['tmp_name'][$i];
						$_FILES['userfile']['error']= $files['userfile']['error'][$i];
						$_FILES['userfile']['size']= $files['userfile']['size'][$i];
						$this->load->library('upload');
						$this->upload->initialize($this->set_upload_options());
						$this->upload->do_upload();
						$fileName = $this->upload->data()['file_name'];
						$images[] = $fileName;
					}
					$fileName = implode(';',$images);
					$fileName = str_replace(' ','_',$fileName);
					if (trim($fileName)!=''){
						$data = array('id_kategori_produk'=>$this->input->post('a'),
									'id_kategori_produk_sub'=>$this->input->post('aa'),
									'id_reseller'=>reseller($this->session->id_konsumen),
									'nama_produk'=>$this->input->post('b'),
									'produk_seo'=>seo_title($this->input->post('b')),
									'satuan'=>$this->input->post('c'),
									'harga_beli'=>$this->input->post('d'),
									'harga_reseller'=>$this->input->post('e'),
									'harga_konsumen'=>$this->input->post('f'),
									'berat'=>$this->input->post('berat'),
									'gambar'=>$fileName,
									'tentang_produk'=>$this->input->post('fff'),
									'keterangan'=>$this->input->post('ff'),
									'username'=>$this->session->username,
									'waktu_input'=>date('Y-m-d H:i:s'));
					}else{
						$data = array('id_kategori_produk'=>$this->input->post('a'),
									'id_kategori_produk_sub'=>$this->input->post('aa'),
									'id_reseller'=>reseller($this->session->id_konsumen),
									'nama_produk'=>$this->input->post('b'),
									'produk_seo'=>seo_title($this->input->post('b')),
									'satuan'=>$this->input->post('c'),
									'harga_beli'=>$this->input->post('d'),
									'harga_reseller'=>$this->input->post('e'),
									'harga_konsumen'=>$this->input->post('f'),
									'berat'=>$this->input->post('berat'),
									'tentang_produk'=>$this->input->post('fff'),
									'keterangan'=>$this->input->post('ff'),
									'username'=>$this->session->username,
									'waktu_input'=>date('Y-m-d H:i:s'));
					}
					$this->model_app->insert('rb_produk',$data);
					$id_produk = $this->db->insert_id();
					if ($this->input->post('diskon') > 0){
						$cek = $this->db->query("SELECT * FROM rb_produk_diskon where id_produk='".$id_produk."' AND id_reseller='".reseller($this->session->id_konsumen)."'");
						if ($cek->num_rows()>=1){
							$data = array('diskon'=>$this->input->post('diskon'));
							$where = array('id_produk' => $id_produk,'id_reseller' => reseller($this->session->id_konsumen));
							$this->model_app->update('rb_produk_diskon', $data, $where);
						}else{
							$data = array('id_produk'=>$id_produk,
										'id_reseller'=>reseller($this->session->id_konsumen),
										'diskon'=>$this->input->post('diskon'));
							$this->model_app->insert('rb_produk_diskon',$data);
						}
					}


					if ($this->input->post('stok') != ''){
						$kode_transaksi = "TRX-".date('YmdHis');
						$data = array('kode_transaksi'=>$kode_transaksi,
									'id_pembeli'=>reseller($this->session->id_konsumen),
									'id_penjual'=>'1',
									'status_pembeli'=>'reseller',
									'status_penjual'=>'admin',
									'service'=>'Stok Otomatis (Pribadi)',
									'waktu_transaksi'=>date('Y-m-d H:i:s'),
									'proses'=>'1');
						$this->model_app->insert('rb_penjualan',$data);
						$idp = $this->db->insert_id();

						$data = array('id_penjualan'=>$idp,
									'id_produk'=>$id_produk,
									'jumlah'=>$this->input->post('stok'),
									'harga_jual'=>$this->input->post('e'),
									'satuan'=>$this->input->post('c'));
						$this->model_app->insert('rb_penjualan_detail',$data);
					}
					redirect($this->uri->segment(1).'/produk');
				}
			}
            
        }else{
			$data['title'] = 'Tambah Produk';
            $data['record'] = $this->model_app->view_ordering('rb_kategori_produk','id_kategori_produk','DESC');
            $this->template->load(template().'/template',template().'/reseller/mod_produk/view_produk_tambah',$data);
        }
    }

    function edit_produk(){
        cek_session_members();
        $id = $this->uri->segment(3);
        if (isset($_POST['submit'])){
            $files = $_FILES;
            $cpt = count($_FILES['userfile']['name']);
            for($i=0; $i<$cpt; $i++){
                $_FILES['userfile']['name']= $files['userfile']['name'][$i];
                $_FILES['userfile']['type']= $files['userfile']['type'][$i];
                $_FILES['userfile']['tmp_name']= $files['userfile']['tmp_name'][$i];
                $_FILES['userfile']['error']= $files['userfile']['error'][$i];
                $_FILES['userfile']['size']= $files['userfile']['size'][$i];
                $this->load->library('upload');
                $this->upload->initialize($this->set_upload_options());
                $this->upload->do_upload();
                $fileName = $this->upload->data()['file_name'];
                $images[] = $fileName;
            }
            $fileName = implode(';',$images);
            $fileName = str_replace(' ','_',$fileName);
            if (trim($fileName)!=''){
                $data = array('id_kategori_produk'=>$this->input->post('a'),
                			  'id_kategori_produk_sub'=>$this->input->post('aa'),
                              'nama_produk'=>$this->input->post('b'),
                              'produk_seo'=>seo_title($this->input->post('b')),
                              'satuan'=>$this->input->post('c'),
                              'harga_beli'=>$this->input->post('d'),
                              'harga_reseller'=>$this->input->post('e'),
                              'harga_konsumen'=>$this->input->post('f'),
                              'berat'=>$this->input->post('berat'),
                              'gambar'=>$fileName,
                              'keterangan'=>$this->input->post('ff'),
                              'username'=>reseller($this->session->id_konsumen));
            }else{
                $data = array('id_kategori_produk'=>$this->input->post('a'),
                			  'id_kategori_produk_sub'=>$this->input->post('aa'),
                              'nama_produk'=>$this->input->post('b'),
                              'produk_seo'=>seo_title($this->input->post('b')),
                              'satuan'=>$this->input->post('c'),
                              'harga_beli'=>$this->input->post('d'),
                              'harga_reseller'=>$this->input->post('e'),
                              'harga_konsumen'=>$this->input->post('f'),
                              'berat'=>$this->input->post('berat'),
                              'keterangan'=>$this->input->post('ff'),
                              'username'=>reseller($this->session->id_konsumen));
            }

            $where = array('id_produk' => $this->input->post('id'),'id_reseller'=>reseller($this->session->id_konsumen));
            $this->model_app->update('rb_produk', $data, $where);

            if ($this->input->post('diskon') >= 0){
            	$cek = $this->db->query("SELECT * FROM rb_produk_diskon where id_produk='".$this->input->post('id')."' AND id_reseller='".reseller($this->session->id_konsumen)."'");
				if ($cek->num_rows()>=1){
					$data = array('diskon'=>$this->input->post('diskon'));
					$where = array('id_produk' => $this->input->post('id'),'id_reseller' => reseller($this->session->id_konsumen));
					$this->model_app->update('rb_produk_diskon', $data, $where);
				}else{
					$data = array('id_produk'=>$this->input->post('id'),
			                      'id_reseller'=>reseller($this->session->id_konsumen),
			                      'diskon'=>$this->input->post('diskon'));
					$this->model_app->insert('rb_produk_diskon',$data);
				}
			}

			if ($this->input->post('stok') > '0'){
				$kode_transaksi = "TRX-".date('YmdHis');
				$data1 = array('kode_transaksi'=>$kode_transaksi,
			        		  'id_pembeli'=>reseller($this->session->id_konsumen),
			        		  'id_penjual'=>'1',
			        		  'status_pembeli'=>'reseller',
							  'status_penjual'=>'admin',
							  'no_resi'=>'-',
							  'kode_kurir'=>'-',
							  'kurir'=>'-',
							  'service'=>'Stok Otomatis (Pribadi)',
							  'ongkir'=>'0',
							  'keterangan'=>'-',
			        		  'waktu_transaksi'=>date('Y-m-d H:i:s'),
			        		  'proses'=>'1');
				$this->model_app->insert('rb_penjualan',$data1);
				$idp = $this->db->insert_id();

				$data2 = array('id_penjualan'=>$idp,
		        			  'id_produk'=>$this->input->post('id'),
							  'jumlah'=>$this->input->post('stok'),
							  'diskon'=>'0',
		        			  'harga_jual'=>$this->input->post('e'),
							  'satuan'=>$this->input->post('c'),
							  'keterangan_order'=>'-');
				$this->model_app->insert('rb_penjualan_detail',$data2);
			}

            redirect($this->uri->segment(1).'/produk');
        }else{
			$data['title'] = 'Edit Produk';
            $data['record'] = $this->model_app->view_ordering('rb_kategori_produk','id_kategori_produk','DESC');
            $data['rows'] = $this->model_app->edit('rb_produk',array('id_produk'=>$id,'id_reseller'=>reseller($this->session->id_konsumen)))->row_array();
            $this->template->load(template().'/template',template().'/reseller/mod_produk/view_produk_edit',$data);
        }
    }

    private function set_upload_options(){
        $config = array();
        $config['upload_path'] = 'asset/foto_produk/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = '5000'; // kb
        $config['encrypt_name'] = FALSE;
        $this->load->library('upload', $config);
      return $config;
    }

    function delete_produk(){
        cek_session_members();
        $id = array('id_produk' => $this->uri->segment(3));
        $this->model_app->delete('rb_produk',$id);
        $this->model_app->delete('rb_produk_diskon',$id);
        redirect($this->uri->segment(1).'/produk');
	}
	
	// Upload image summernote
    function upload_image(){
		cek_session_members();
        if(isset($_FILES["image"]["name"])){
            $config['upload_path'] = 'asset/images/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG|swf';
            $config['max_size'] = '3000'; // kb
            $this->load->library('upload', $config);
            if(!$this->upload->do_upload('image')){
                $this->upload->display_errors();
                return FALSE;
            }else{
                $data = $this->upload->data();
                //Compress Image
                $config['image_library']='gd2';
                $config['source_image']='asset/images/'.$data['file_name'];
                $config['create_thumb']= FALSE;
                $config['maintain_ratio']= TRUE;
                $config['quality']= '60%';
                $config['width']= 800;
                $config['height']= 800;
                $config['new_image']= 'asset/images/thumb_'.$data['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();
                echo base_url().'asset/images/'.$data['file_name'];
            }
        }
	}
	
	// Controller Modul COD

	function alamat_cod(){
		cek_session_members();
		$data['title'] = "Alamat Cash on Delivery (COD)";
		$data['record'] = $this->model_app->view_where('rb_reseller_cod',array('id_reseller'=>reseller($this->session->id_konsumen)));
		$this->template->load(template().'/template',template().'/reseller/mod_alamat_cod/view',$data);
	}

	function tambah_cod(){
		cek_session_members();
		if (isset($_POST['submit'])){
			$data = array('id_reseller'=>reseller($this->session->id_konsumen),
			              'nama_alamat'=>$this->input->post('a'),
			              'biaya_cod'=>$this->input->post('b'));
						$this->model_app->insert('rb_reseller_cod',$data);
			redirect($this->uri->segment(1).'/alamat_cod');
		}else{
			$data['title'] = "Tambah Alamat Cash on Delivery (COD)";
			$this->template->load(template().'/template',template().'/reseller/mod_alamat_cod/tambah',$data);
		}
	}

	function edit_cod(){
		cek_session_members();
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$data = array('id_reseller'=>reseller($this->session->id_konsumen),
			              'nama_alamat'=>$this->input->post('a'),
			              'biaya_cod'=>$this->input->post('b'));
			$where = array('id_cod' => $this->input->post('id'),'id_reseller' => reseller($this->session->id_konsumen));
			$this->model_app->update('rb_reseller_cod', $data, $where);
			redirect($this->uri->segment(1).'/alamat_cod');
		}else{
			$data['title'] = "Edit Alamat Cash on Delivery (COD)";
			$data['rows'] = $this->model_app->edit('rb_reseller_cod',array('id_cod'=>$id))->row_array();
			$this->template->load(template().'/template',template().'/reseller/mod_alamat_cod/edit',$data);
		}
	}

	function delete_cod(){
		cek_session_members();
		$id = array('id_cod' => $this->uri->segment(3),'id_reseller' => reseller($this->session->id_konsumen));
		$this->model_app->delete('rb_reseller_cod',$id);
		redirect($this->uri->segment(1).'/alamat_cod');
	}
 
    //Delete image summernote
    function delete_image(){
        $src = $this->input->post('src');
        $file_name = str_replace(base_url(), '', $src);
        if(unlink($file_name)){
            echo 'File Delete Successfully';
        }
	}
	

	// Controller Modul Pembelian

	function pembelian(){
		cek_session_members();
		$this->session->unset_userdata('idp');
		$data['title'] = "Data Pembelian Ke Pusat dan History Stok";
		$data['record'] = $this->model_reseller->reseller_pembelian(reseller($this->session->id_konsumen),'admin');
		$this->template->load(template().'/template',template().'/reseller/mod_pembelian/view_pembelian',$data);
	}

	function detail_pembelian(){
		cek_session_members();
		$data['title'] = "Detail Data Pembelian Ke Pusat";
		$data['rows'] = $this->model_reseller->penjualan_detail($this->uri->segment(3))->row_array();
		$data['record'] = $this->model_app->view_join_where('rb_penjualan_detail','rb_produk','id_produk',array('id_penjualan'=>$this->uri->segment(3)),'id_penjualan_detail','DESC');
		$this->template->load(template().'/template',template().'/reseller/mod_pembelian/view_pembelian_detail',$data);
	}

	function tambah_pembelian(){
		cek_session_members();
		if(isset($_POST['submit'])){
			if ($this->session->idp == ''){
				$kode_transaksi = "TRX-".date('YmdHis');
				$data = array('kode_transaksi'=>$kode_transaksi,
			        		  'id_pembeli'=>reseller($this->session->id_konsumen),
			        		  'id_penjual'=>'1',
			        		  'status_pembeli'=>'reseller',
			        		  'status_penjual'=>'admin',
			        		  'waktu_transaksi'=>date('Y-m-d H:i:s'),
			        		  'proses'=>'0');
				$this->model_app->insert('rb_penjualan',$data);
				$idp = $this->db->insert_id();
				$this->session->set_userdata(array('idp'=>$idp));
			}

	        if ($this->input->post('idpd')==''){
				$data = array('id_penjualan'=>$this->session->idp,
		        			  'id_produk'=>$this->input->post('aa'),
		        			  'jumlah'=>$this->input->post('dd'),
		        			  'harga_jual'=>$this->input->post('bb'),
		        			  'satuan'=>$this->input->post('ee'));
				$this->model_app->insert('rb_penjualan_detail',$data);
			}else{
		        $data = array('id_produk'=>$this->input->post('aa'),
		        			  'jumlah'=>$this->input->post('dd'),
		        			  'harga_jual'=>$this->input->post('bb'),
		        			  'satuan'=>$this->input->post('ee'));
				$where = array('id_penjualan_detail' => $this->input->post('idpd'));
				$this->model_app->update('rb_penjualan_detail', $data, $where);
			}
			redirect($this->uri->segment(1).'/tambah_pembelian');
		}else{
			$data['title'] = "Tambah Pembelian Ke Pusat";
			$data['rows'] = $this->model_reseller->penjualan_detail($this->session->idp)->row_array();
			$data['record'] = $this->model_app->view_join_where('rb_penjualan_detail','rb_produk','id_produk',array('id_penjualan'=>$this->session->idp),'id_penjualan_detail','DESC');
			$data['barang'] = $this->model_app->view_where_ordering('rb_produk',array('id_reseller'=>'0'),'id_produk','ASC');
			$data['reseller'] = $this->model_app->view_ordering('rb_reseller','id_reseller','ASC');
			if ($this->uri->segment(3)!=''){
				$data['row'] = $this->model_app->view_where('rb_penjualan_detail',array('id_penjualan_detail'=>$this->uri->segment(3)))->row_array();
			}
			$this->template->load(template().'/template',template().'/reseller/mod_pembelian/view_pembelian_tambah',$data);
		}
	}

	function delete_pembelian(){
        cek_session_members();
		$id = array('id_penjualan' => $this->uri->segment(3));
		$this->model_app->delete('rb_penjualan',$id);
		$this->model_app->delete('rb_penjualan_detail',$id);
		redirect($this->uri->segment(1).'/pembelian');
	}

	function delete_pembelian_tambah_detail(){
        cek_session_members();
		$id = array('id_penjualan_detail' => $this->uri->segment(3));
		$this->model_app->delete('rb_penjualan_detail',$id);
		redirect($this->uri->segment(1).'/tambah_pembelian');
	}

	function konfirmasi_pembayaran(){
		cek_session_members();
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/files/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size'] = '10000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('f');
            $hasil=$this->upload->data();
            if ($hasil['file_name']==''){
				$data = array('id_penjualan'=>$this->input->post('id'),
			        		  'total_transfer'=>$this->input->post('b'),
			        		  'id_rekening'=>$this->input->post('c'),
			        		  'nama_pengirim'=>$this->input->post('d'),
			        		  'tanggal_transfer'=>$this->input->post('e'),
			        		  'waktu_konfirmasi'=>date('Y-m-d H:i:s'));
				$this->model_app->insert('rb_konfirmasi_pembayaran',$data);
			}else{
				$data = array('id_penjualan'=>$this->input->post('id'),
			        		  'total_transfer'=>$this->input->post('b'),
			        		  'id_rekening'=>$this->input->post('c'),
			        		  'nama_pengirim'=>$this->input->post('d'),
			        		  'tanggal_transfer'=>$this->input->post('e'),
			        		  'bukti_transfer'=>$hasil['file_name'],
			        		  'waktu_konfirmasi'=>date('Y-m-d H:i:s'));
				$this->model_app->insert('rb_konfirmasi_pembayaran',$data);
			}
				$data1 = array('proses'=>'2');
				$where = array('id_penjualan' => $this->input->post('id'));
				$this->model_app->update('rb_penjualan', $data1, $where);
			redirect($this->uri->segment(1).'/pembelian');
		}else{
			$data['title'] = "Konfirmasi Pembayaran Pembelian Ke Pusat";
			$data['record'] = $this->model_app->view('rb_rekening');
			$data['total'] = $this->db->query("SELECT sum((a.harga_jual*a.jumlah)-a.diskon) as total FROM `rb_penjualan_detail` a where a.id_penjualan='".$this->uri->segment(3)."'")->row_array();
			$data['rows'] = $this->model_app->view_where('rb_penjualan',array('id_penjualan'=>$this->uri->segment(3)))->row_array();
			$this->template->load(template().'/template',template().'/reseller/mod_pembelian/view_konfirmasi_pembayaran',$data);
		}
	}


	function penjualan(){
		cek_session_members();
		$this->session->unset_userdata('idp');
		$id = reseller($this->session->id_konsumen);
		$data['title'] = "Data Penjualan";
		$data['menunggu'] = $this->model_reseller->menunggu_pembayaran($id,'reseller');
		$data['diterima'] = $this->model_reseller->penjualan_status($id,'reseller','1');
		$data['dikirim'] = $this->model_reseller->penjualan_status($id,'reseller','3');
		$data['selesai'] = $this->model_reseller->penjualan_status($id,'reseller','4');
		$this->template->load(template().'/template',template().'/reseller/mod_penjualan/view_penjualan',$data);
	}

	function detail_penjualan(){
		cek_session_members();
		if (isset($_POST['submit'])){
				$data1 = array('no_resi'=>$this->input->post('no_resi'),
								'proses'=>'3');
				$where = array('id_penjualan' => $this->uri->segment(3),'id_penjual'=>reseller($this->session->id_konsumen));
				$this->model_app->update('rb_penjualan', $data1, $where);
			redirect($this->uri->segment(1).'/detail_penjualan/'.$this->uri->segment(3));
		}else{
			$data['title'] = "Detail Data Penjualan";
			$data['rows'] = $this->model_reseller->penjualan_konsumen_detail_reseller($this->uri->segment(3))->row_array();
			$data['record'] = $this->model_app->view_join_where('rb_penjualan_detail','rb_produk','id_produk',array('id_penjualan'=>$this->uri->segment(3)),'id_penjualan_detail','DESC');
			$this->template->load(template().'/template',template().'/reseller/mod_penjualan/view_penjualan_detail',$data);
		}
	}

	function tambah_penjualan(){
		cek_session_members();
		if (isset($_POST['submit1'])){
			if ($this->session->idp == ''){
				$data = array('kode_transaksi'=>$this->input->post('a'),
			        		  'id_pembeli'=>$this->input->post('b'),
			        		  'id_penjual'=>reseller($this->session->id_konsumen),
			        		  'status_pembeli'=>'konsumen',
			        		  'status_penjual'=>'reseller',
			        		  'waktu_transaksi'=>date('Y-m-d H:i:s'),
			        		  'proses'=>'0');
				$this->model_app->insert('rb_penjualan',$data);
				$idp = $this->db->insert_id();
				$this->session->set_userdata(array('idp'=>$idp));
			}else{
				$data = array('kode_transaksi'=>$this->input->post('a'),
			        		  'id_pembeli'=>$this->input->post('b'));
				$where = array('id_penjualan' => $this->session->idp);
				$this->model_app->update('rb_penjualan', $data, $where);
			}
				redirect($this->uri->segment(1).'/tambah_penjualan');

		}elseif(isset($_POST['submit'])){
			$jual = $this->model_reseller->jual_reseller(reseller($this->session->id_konsumen), $this->input->post('aa'))->row_array();
            $beli = $this->model_reseller->beli_reseller(reseller($this->session->id_konsumen), $this->input->post('aa'))->row_array();
            $stok = $beli['beli']-$jual['jual'];
            if ($this->input->post('dd') > $stok){
            	echo "<script>window.alert('Maaf, Stok Tidak Mencukupi!');
                                  window.location=('".base_url().$this->uri->segment(1)."/tambah_penjualan')</script>";
            }else{
		        if ($this->input->post('idpd')==''){
					$data = array('id_penjualan'=>$this->session->idp,
			        			  'id_produk'=>$this->input->post('aa'),
			        			  'jumlah'=>$this->input->post('dd'),
			        			  'harga_jual'=>$this->input->post('bb'),
			        			  'satuan'=>$this->input->post('ee'));
					$this->model_app->insert('rb_penjualan_detail',$data);
				}else{
			        $data = array('id_produk'=>$this->input->post('aa'),
			        			  'jumlah'=>$this->input->post('dd'),
			        			  'harga_jual'=>$this->input->post('bb'),
			        			  'satuan'=>$this->input->post('ee'));
					$where = array('id_penjualan_detail' => $this->input->post('idpd'));
					$this->model_app->update('rb_penjualan_detail', $data, $where);
				}
				redirect($this->uri->segment(1).'/tambah_penjualan');
			}
			
		}else{
			$data['rows'] = $this->model_reseller->penjualan_konsumen_detail_reseller($this->session->idp)->row_array();
			$data['record'] = $this->model_app->view_join_where('rb_penjualan_detail','rb_produk','id_produk',array('id_penjualan'=>$this->session->idp),'id_penjualan_detail','DESC');
			$data['barang'] = $this->model_app->view_ordering('rb_produk','id_produk','ASC');
			$data['konsumen'] = $this->model_app->view_ordering('rb_konsumen','id_konsumen','ASC');
			if ($this->uri->segment(3)!=''){
				$data['row'] = $this->model_app->view_where('rb_penjualan_detail',array('id_penjualan_detail'=>$this->uri->segment(3)))->row_array();
			}
			$this->template->load(template().'/template',template().'/reseller/mod_penjualan/view_penjualan_tambah',$data);
		}
	}

	function edit_penjualan(){
		cek_session_members();
		if (isset($_POST['submit1'])){
			$data = array('kode_transaksi'=>$this->input->post('a'),
			        	  'id_pembeli'=>$this->input->post('b'),
			        	  'waktu_transaksi'=>$this->input->post('c'));
			$where = array('id_penjualan' => $this->input->post('idp'));
			$this->model_app->update('rb_penjualan', $data, $where);
			redirect($this->uri->segment(1).'/edit_penjualan/'.$this->input->post('idp'));

		}elseif(isset($_POST['submit'])){
			$cekk = $this->db->query("SELECT * FROM rb_penjualan_detail where id_penjualan='".$this->input->post('idp')."' AND id_produk='".$this->input->post('aa')."'")->row_array();
			$jual = $this->model_reseller->jual_reseller(reseller($this->session->id_konsumen), $this->input->post('aa'))->row_array();
            $beli = $this->model_reseller->beli_reseller(reseller($this->session->id_konsumen), $this->input->post('aa'))->row_array();
            $stok = $beli['beli']-$jual['jual']+$cekk['jumlah'];
            if ($this->input->post('dd') > $stok){
            	echo "<script>window.alert('Maaf, Stok $stok Tidak Mencukupi!');
                                  window.location=('".base_url().$this->uri->segment(1)."/edit_penjualan/".$this->input->post('idp')."')</script>";
            }else{
				if ($this->input->post('idpd')==''){
					$data = array('id_penjualan'=>$this->input->post('idp'),
			        			  'id_produk'=>$this->input->post('aa'),
			        			  'jumlah'=>$this->input->post('dd'),
			        			  'harga_jual'=>$this->input->post('bb'),
			        			  'satuan'=>$this->input->post('ee'));
					$this->model_app->insert('rb_penjualan_detail',$data);
				}else{
			        $data = array('id_produk'=>$this->input->post('aa'),
			        			  'jumlah'=>$this->input->post('dd'),
			        			  'harga_jual'=>$this->input->post('bb'),
			        			  'satuan'=>$this->input->post('ee'));
					$where = array('id_penjualan_detail' => $this->input->post('idpd'));
					$this->model_app->update('rb_penjualan_detail', $data, $where);
				}
				redirect($this->uri->segment(1).'/edit_penjualan/'.$this->input->post('idp'));
			}
			
		}else{
			$data['rows'] = $this->model_reseller->penjualan_konsumen_detail_reseller($this->uri->segment(3))->row_array();
			$data['record'] = $this->model_app->view_join_where('rb_penjualan_detail','rb_produk','id_produk',array('id_penjualan'=>$this->uri->segment(3)),'id_penjualan_detail','DESC');
			$data['barang'] = $this->model_app->view_ordering('rb_produk','id_produk','ASC');
			$data['konsumen'] = $this->model_app->view_ordering('rb_konsumen','id_konsumen','ASC');
			if ($this->uri->segment(4)!=''){
				$data['row'] = $this->model_app->view_where('rb_penjualan_detail',array('id_penjualan_detail'=>$this->uri->segment(4)))->row_array();
			}
			$this->template->load(template().'/template',template().'/reseller/mod_penjualan/view_penjualan_edit',$data);
		}
	}

	function proses_penjualan(){
		cek_session_members();
        $data = array('proses'=>$this->uri->segment(4));
		$where = array('id_penjualan' => $this->uri->segment(3));
		$this->model_app->update('rb_penjualan', $data, $where);
		
		$rows = $this->model_app->view_where('rb_penjualan',array('id_penjualan' => $this->uri->segment(3)))->row_array();
		$dataa = array('pembayaran'=>'1');
		$wheree = array('kode_transaksi' => $rows['kode_transaksi']);
		$this->model_app->update('rb_penjualan_otomatis', $dataa, $wheree);
		
		redirect($this->uri->segment(1).'/penjualan');
	}

	function proses_penjualan_detail(){
		cek_session_members();
        $data = array('proses'=>$this->uri->segment(4));
		$where = array('id_penjualan' => $this->uri->segment(3));
		$this->model_app->update('rb_penjualan', $data, $where);
		redirect($this->uri->segment(1).'/detail_penjualan/'.$this->uri->segment(3));
	}

	function delete_penjualan(){
        cek_session_members();
		$id = array('id_penjualan' => $this->uri->segment(3));
		$this->model_app->delete('rb_penjualan',$id);
		$this->model_app->delete('rb_penjualan_detail',$id);
		redirect($this->uri->segment(1).'/penjualan');
	}

	function delete_penjualan_detail(){
        cek_session_members();
		$id = array('id_penjualan_detail' => $this->uri->segment(4));
		$this->model_app->delete('rb_penjualan_detail',$id);
		redirect($this->uri->segment(1).'/edit_penjualan/'.$this->uri->segment(3));
	}

	function delete_penjualan_tambah_detail(){
        cek_session_members();
		$id = array('id_penjualan_detail' => $this->uri->segment(3));
		$this->model_app->delete('rb_penjualan_detail',$id);
		redirect($this->uri->segment(1).'/tambah_penjualan');
	}

	function detail_konsumen(){
		cek_session_members();
		$id = $this->uri->segment(3);
		$edit = $this->model_app->edit('rb_konsumen',array('id_konsumen'=>$id))->row_array();
		$data = array('rows' => $edit);
		$this->template->load(template().'/template',template().'/reseller/mod_konsumen/view_konsumen_detail',$data);
	}

	function pembayaran_konsumen(){
		cek_session_members();
		$data['record'] = $this->db->query("SELECT a.*, b.*, c.kode_transaksi, c.proses FROM `rb_konfirmasi_pembayaran_konsumen` a JOIN rb_rekening b ON a.id_rekening=b.id_rekening JOIN rb_penjualan c ON a.id_penjualan=c.id_penjualan where c.id_penjual='".reseller($this->session->id_konsumen)."' AND c.status_penjual='reseller'");
		$this->template->load(template().'/template',template().'/reseller/mod_konsumen/view_konsumen_pembayaran',$data);
	}

	function download(){
		$name = $this->uri->segment(3);
		$data = file_get_contents("asset/files/".$name);
		force_download($name, $data);
	}

	function keuangan(){
		cek_session_members();
		$id = reseller($this->session->id_konsumen);
		$record = $this->model_reseller->reseller_pembelian($id,'admin');
		$penjualan = $this->model_reseller->penjualan_list_konsumen($id,'reseller');
		$edit = $this->model_app->edit('rb_reseller',array('id_reseller'=>$id))->row_array();
		$reward = $this->model_app->view_ordering('rb_reward','id_reward','ASC');

		$data = array('rows' => $edit,'record'=>$record,'penjualan'=>$penjualan,'reward'=>$reward);
		if (isset($_GET['print'])){
			$this->load->view($this->uri->segment(1).'/mod_reseller/view_reseller_keuangan_print',$data);
		}else{
			$this->template->load(template().'/template',template().'/reseller/mod_reseller/view_reseller_keuangan',$data);
		}
	}

	function withdraw(){
		cek_session_members();
		$data['title'] = "Tarik Dana (Withdraw)";
		$data['record'] = $this->db->query("SELECT a.*, b.keterangan FROM rb_withdraw a LEFT JOIN rb_konsumen_detail b ON a.id_rekening_reseller=b.id_konsumen_detail where a.id_reseller='".reseller($this->session->id_konsumen)."' ORDER BY a.id_withdraw DESC");
		$this->template->load(template().'/template',template().'/reseller/mod_rekening/view_withdraw',$data);
	}

	function tambah_withdraw(){
		cek_session_members();
		if (isset($_POST['submit'])){
			$data = array('id_rekening_reseller'=>cetak($this->input->post('a')),
						  'id_reseller'=>reseller($this->session->id_konsumen),
			              'nominal'=>clean_rupiah(cetak($this->input->post('b'))),
			              'status'=>'Pending',
			              'waktu_withdraw'=>date('Y-m-d H:i:s'));
						$this->model_app->insert('rb_withdraw',$data);
			redirect($this->uri->segment(1).'/withdraw');
		}else{
			$data['title'] = "Buat Permintaan Tarik Dana (Withdraw)";
			$this->template->load(template().'/template',template().'/reseller/mod_rekening/view_withdraw_tambah',$data);
		}
	}

	function upgrade(){
		cek_session_members();
		if (isset($_GET['paket'])){
			$rowp = $this->db->query("SELECT * FROM rb_reseller_paket a JOIN rb_paket b ON a.id_paket=b.id_paket where a.id_reseller='".reseller($this->session->id_konsumen)."'")->row_array();
			if ($rowp['status']=='Y'){
				$akhir  = strtotime($rowp['expire_date']); //Waktu awal
				$awal = time(); // Waktu sekarang atau akhir
				$diff  = $akhir - $awal;
				echo $this->session->set_flashdata('message', "<div class='alert alert-danger'><center>GAGAL Memilih Paket, Saat ini paket anda dalam status sudah aktif sampai ".tgl_indo($rowp['expire_date'])." (".floor($diff / (60 * 60 * 24)) ." hari lagi).</center></div>");	
				redirect($this->uri->segment(1).'/upgrade');
			}else{
				$cekp = $this->db->query("SELECT * FROM rb_reseller_paket where id_reseller='".reseller($this->session->id_konsumen)."' AND status='N'");
				$data = array('id_paket'=>$this->input->get('paket'),
							'id_reseller'=>reseller($this->session->id_konsumen),
							'expire_date'=>date('Y-m-d'),
							'status'=>'N',
							'waktu_paket'=>date('Y-m-d H:i:s'));
				if ($cekp->num_rows()<='0'){
					$this->model_app->insert('rb_reseller_paket',$data);
				}else{
					$where = array('id_reseller' => reseller($this->session->id_konsumen),'status' => 'N');
					$this->model_app->update('rb_reseller_paket', $data, $where);
				}
			}
			redirect($this->uri->segment(1).'/upgrade');
		}else{
			$data['title'] = "Pilih Paket (Star Seller)";
			$data['record'] = $this->db->query("SELECT * FROM rb_paket ORDER BY id_paket");
			$this->template->load(template().'/template',template().'/reseller/mod_reseller/paket',$data);
		}
	}

	function edit_profil_toko(){
		cek_session_members();
		$id = reseller($this->session->id_konsumen);
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_user/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size'] = '5000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('gg');
            $hasil=$this->upload->data();
            if ($hasil['file_name']==''){
		           $data = array('nama_reseller'=>$this->input->post('c'),
							'alamat_lengkap'=>$this->input->post('e'),
							'keterangan'=>$this->input->post('i'),
							'no_telpon'=>$this->input->post('f'),
							'kecamatan_id'=>$this->input->post('kecamatan_id'),
							'kota_id'=>$this->input->post('kota_id'),
							'provinsi_id'=>$this->input->post('provinsi_id'));
		    }else{
				$data = array('nama_reseller'=>$this->input->post('c'),
							'alamat_lengkap'=>$this->input->post('e'),
							'keterangan'=>$this->input->post('i'),
							'no_telpon'=>$this->input->post('f'),
							'foto'=>$hasil['file_name'],
							'kecamatan_id'=>$this->input->post('kecamatan_id'),
							'kota_id'=>$this->input->post('kota_id'),
							'provinsi_id'=>$this->input->post('provinsi_id'));
		    }
			$where = array('id_reseller' => reseller($this->session->id_konsumen));
			$this->model_app->update('rb_reseller', $data, $where);
			redirect($this->uri->segment(1).'/profil_toko');
		}else{
			$title = "Edit Identitas Toko / Reseller";
			$edit = $this->model_app->edit('rb_reseller',array('id_reseller'=>$id))->row_array();
			$data = array('rows' => $edit, 'title'=>$title);
			$this->template->load(template().'/template',template().'/reseller/mod_reseller/view_reseller_edit',$data);
		}
	}

	function buat_toko(){
		cek_session_members();
		$id = $this->session->id_konsumen;
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_user/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size'] = '5000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('gg');
            $hasil=$this->upload->data();
            if ($hasil['file_name']==''){
				   $data = array('id_konsumen'=>$id,
				   			'nama_reseller'=>$this->input->post('c'),
							'alamat_lengkap'=>$this->input->post('e'),
							'keterangan'=>$this->input->post('i'),
							'no_telpon'=>$this->input->post('f'),
							'kecamatan_id'=>$this->input->post('kecamatan_id'),
							'kota_id'=>$this->input->post('kota_id'),
							'provinsi_id'=>$this->input->post('provinsi_id'));
		    }else{
				$data = array('id_konsumen'=>$id,
							'nama_reseller'=>$this->input->post('c'),
							'alamat_lengkap'=>$this->input->post('e'),
							'keterangan'=>$this->input->post('i'),
							'no_telpon'=>$this->input->post('f'),
							'foto'=>$hasil['file_name'],
							'kecamatan_id'=>$this->input->post('kecamatan_id'),
							'kota_id'=>$this->input->post('kota_id'),
							'provinsi_id'=>$this->input->post('provinsi_id'));
		    }
			$this->model_app->insert('rb_reseller',$data);
			redirect($this->uri->segment(1).'/profil_toko');
		}else{
			$title = "Buat Toko / Reseller";
			$data = array('title'=>$title);
			$this->template->load(template().'/template',template().'/reseller/mod_reseller/view_reseller_tambah',$data);
		}
	}

	function profil_toko(){
		cek_session_members();
		$id = reseller($this->session->id_konsumen);
		$title = "Identitas Toko / Reseller";
		$edit = $this->model_app->edit('rb_reseller',array('id_reseller'=>$id))->row_array();
		$data = array('rows' => $edit, 'title'=>$title);
		$this->template->load(template().'/template',template().'/reseller/mod_reseller/view_reseller_detail',$data);
	}
	
	function cronjob(){
	    $cek_paket = $this->db->query("SELECT * FROM rb_reseller_paket where status='Y'");
        foreach ($cek_paket->result_array() as $row){
            $diff  = strtotime($row['expire_date']) - time();
            if (floor($diff / (60 * 60 * 24))<1){
                $this->db->query("UPDATE rb_reseller_paket set status='N' where id_reseller='$row[id_reseller]'");
            }
        }
	}
    function kelola() {
        $data= array();
		$this->template->load(template().'/template',template().'/reseller/mod_reseller/kelola_umkm',$data);
        
    }
}
