<?php

class Umkm extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    function index() {
        redirect('umkm/produk');
    }
    function produk() {
        $data['page']= 'produk';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }
    function bahan_baku() {
        $data['page']= 'bahan_baku';
        $this->template->load(template() . '/template', template() . '/umkm/base', $data);
    }

}
