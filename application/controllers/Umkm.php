<?php

class Umkm extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    function index() {
        redirect('umkm/produk');
    }

    function produk() {
        $data['page'] = 'produk';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }

    function bahan_baku() {
        $data['page'] = 'bahan_baku';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }

    function pembelian_bahan_baku() {
        $data['page'] = 'pembelian_bahan_baku';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }

    function stok_bahan_baku() {
        $data['page'] = 'stok_bahan_baku';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }

    function pemakaian_bahan() {
        $data['page'] = 'pemakaian_bahan';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }
    
    function stok_produk() {
        $data['page'] = 'stok_produk';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }
    
    function biaya_operasional() {
        $data['page'] = 'biaya_operasional';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }
    
    function penjualan() {
        $data['page'] = 'penjualan';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }
    
    function keuangan_sederhana() {
        $data['page'] = 'keuangan_sederhana';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }
    
    function bursa_pinjaman_modal() {
        $data['page'] = 'bursa_pinjaman_modal';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }
    function list_pengajuan_pinjaman() {
        $data['page'] = 'list_pengajuan_pinjaman';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }
}
