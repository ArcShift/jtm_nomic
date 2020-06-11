<div class="ps-page--single">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>">Home</a></li>
                <li><a href="#">Members</a></li>
                <li><?php echo $title; ?></li>
            </ul>
        </div>
    </div>
</div>
<div class='col-11 notif ml-50 mt-3'>
    <div class="row">
        <div class="col-3">
            <ul class="nav nav-tabs flex-column" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link bg-success" href="<?php echo base_url('umkm/produk') ?>">Produk</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="<?php echo base_url('umkm/bahan_baku') ?>">Bahan Baku Produk</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="<?php echo base_url('umkm/pembelian_bahan_baku') ?>">Pembelian Bahan Baku</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="<?php echo base_url('umkm/stok_bahan_baku') ?>">Stok Bahan Baku</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="<?php echo base_url('umkm/pemakaian_bahan') ?>">Pemakaian Bahan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="<?php echo base_url('umkm/stok_produk') ?>">Stok Produk</a>
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
                    <a class="nav-link bg-success" href="<?php echo base_url('umkm/bursa_pinjaman_modal') ?>">Bursa Pinjaman Modal</a>
                </li>
            </ul>
        </div>
        <div class="tab-content col-9 bg-light">
            <?php $this->load->view('phpmu-marketpro/umkm/'.$page)?>
        </div>
    </div>
</div>
<script>
    var nav = $('.nav-link.bg-success');
    for (var n of nav) {
        console.log($(n).attr('href').indexOf(window.location.href));
        if (window.location.href.indexOf($(n).attr('href')) >= 0) {
            $(n).addClass('active font-weight-bold');
        }
    }
</script>