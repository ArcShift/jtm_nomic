<?php
class Perbankan extends CI_Controller{
    function index() {
        $this->template->load(template().'/template',template().'/perbankan/main',$data);
    }
}