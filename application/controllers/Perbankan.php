<?php

class Perbankan extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    function index() {
        redirect('perbankan/profil_bank');
    }

    function profil_bank() {
        $data['page'] = 'profil_bank';
        $this->template->load(template() . '/template', template() . '/perbankan/base', $data);
    }

    function program_pinjaman_modal() {
        $data['page'] = 'program_pinjaman_modal';
        $this->template->load(template() . '/template', template() . '/perbankan/base', $data);
    }

    function daftar_pengajuan_pinjaman() {
        $data['page'] = 'daftar_pengajuan_pinjaman';
        $this->template->load(template() . '/template', template() . '/perbankan/base', $data);
    }

    function statistik_penjualan_umkm() {
        $data['page'] = 'statistik_penjualan_umkm';
        $this->template->load(template() . '/template', template() . '/perbankan/base', $data);
    }

    function statistik_produksi_umkm() {
        $data['page'] = 'statistik_produksi_umkm';
        $this->template->load(template() . '/template', template() . '/perbankan/base', $data);
    }

    function pesan_khusus() {
        $data['page'] = 'pesan_khusus';
        $this->template->load(template() . '/template', template() . '/perbankan/base', $data);
    }

}
