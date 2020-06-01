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
class Main extends CI_Controller {
	public function index(){
		if (isset($_GET['hapus_cookie'])){
			$cookie = array(
				'name'   => 'notshow',
				'value'  => '',
				'expire' => '0',
				);
			delete_cookie($cookie);
			redirect('main');
		}
		
		$data['title'] = title();
		$data['description'] = description();
		$data['keywords'] = keywords();
		$data['ik1'] = $this->model_app->view_ordering_limit('iklanatas','id_iklanatas','ASC',0,1)->row_array();
		$data['ik2'] = $this->model_app->view_ordering_limit('iklanatas','id_iklanatas','ASC',1,1)->row_array();
		$data['ik3'] = $this->model_app->view_ordering_limit('iklanatas','id_iklanatas','ASC',2,1)->row_array();
		$data['ik4'] = $this->model_app->view_ordering_limit('iklanatas','id_iklanatas','ASC',3,1)->row_array();
		$data['ik5'] = $this->model_app->view_ordering_limit('iklanatas','id_iklanatas','ASC',4,1)->row_array();
		$data['kategori'] = $this->db->query("SELECT * FROM (SELECT a.*,b.produk FROM (SELECT * FROM `rb_kategori_produk`) as a LEFT JOIN
										(SELECT id_kategori_produk, COUNT(*) produk FROM rb_produk GROUP BY id_kategori_produk HAVING COUNT(id_kategori_produk)) as b on a.id_kategori_produk=b.id_kategori_produk ORDER BY RAND()) as c WHERE produk>=6 ORDER BY c.id_kategori_produk DESC LIMIT 5");
		

		$this->template->load(template().'/template',template().'/content',$data);
	}

	
	public function subscribe(){
		if (isset($_POST['submit'])){
			$cek = $this->db->query("SELECT * FROM rb_subscribe where email='".cetak($this->input->post('email'))."'");
			if ($cek->num_rows()<=0){
				$data = array('ip_address'=>$_SERVER['REMOTE_ADDR'],
										'email'=>cetak($this->input->post('email')),
										'waktu_subscribe'=>date('Y-m-d H:i:s'));
				$this->model_app->insert('rb_subscribe',$data);
			}
			if (isset($_POST['notshow'])) {
				$key = date('YmdHis');
				set_cookie('notshow', $key, 3600*24*30); // set expired 30 hari kedepan
			}
			redirect('main');
		}
	}
}
