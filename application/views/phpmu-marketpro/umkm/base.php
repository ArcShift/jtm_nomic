<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css" integrity="sha256-aa0xaJgmK/X74WM224KMQeNQC2xYKwlAt08oZqjeF0E=" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js" integrity="sha256-R4pqcOYV8lt7snxMQO/HSbVCFRPMdrhAFMH+vr9giYI=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<style>
    #menuTab ul{
        list-style: none;
        padding-left: 0;
    }
</style>
<div class='col-11 notif ml-50 mt-3 mb-20'>
    <div class="row">
        <div class="col-3">
            <ul class="nav nav-tabs flex-column" id="menuTab">
                <li class="nav-item">
                    <a class="nav-link bg-success" href="<?php echo base_url('umkm/produk') ?>">Produk</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" data-toggle="collapse" href="#collapse1">Manajemen Bahan Baku
                        <span class="pull-right m-1 fa fa-chevron-circle-right"></span>
                    </a>
                    <ul class="collapse" id="collapse1">
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo base_url('umkm/bahan_baku') ?>">Bahan Baku Produk</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo base_url('umkm/pembelian_bahan_baku') ?>">Pembelian Bahan Baku</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo base_url('umkm/stok_bahan_baku') ?>">Stok Bahan Baku</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo base_url('umkm/pemakaian_bahan') ?>">Pemakaian Bahan</a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="<?php echo base_url('umkm/stok_produk') ?>">Manajemen Stok Produk</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="<?php echo base_url('umkm/biaya_operasional') ?>">Biaya Operasional</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="<?php echo base_url('umkm/penjualan') ?>">Penjualan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="<?php echo base_url('umkm/keuangan_sederhana') ?>">Keuangan Sederhana</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" data-toggle="collapse" href="#collapse2">Pinjaman Modal
                        <span class="pull-right m-1 fa fa-chevron-circle-right"></span>
                    </a>
                    <ul class="collapse" id="collapse2">
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo base_url('umkm/bursa_pinjaman_modal') ?>">Bursa Pinjaman Modal</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo base_url('umkm/list_pengajuan_pinjaman') ?>">Daftar Pengajuan Pinjaman</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="tab-content col-9 bg-light">
            <?php $this->load->view('phpmu-marketpro/umkm/' . $page) ?>
        </div>
    </div>
</div>
<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
    $('th').addClass('font-weight-bold');
    var nav1 = $('#menuTab .nav-link');
    $(document).ready(function () {
        for (var n of nav1) {
            if (window.location.href.indexOf($(n).attr('href')) >= 0) {
                $(n).addClass('active font-weight-bold');
                $(n).parents('.collapse').collapse('toggle');
                $(n).parents('.collapse').collapse('toggle');
            }
        }
    });
    $('#collapse1').on('shown.bs.collapse', function () {
        console.log("shown");
    });
    $('.collapse').on('shown.bs.collapse', function () {
        console.log("shown");
    }).on('show.bs.collapse', function () {
        console.log("show");
    });
    $('.btn-add').click(function () {
        $('.modal-add').modal('show');
    });
</script>