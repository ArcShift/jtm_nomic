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
                    <a class="nav-link bg-success" href="#tab-statistik-produksi">Statistik Produksi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="#tab-statistik-penjualan">Statistik Penjualan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="#tab-keuangan-sederhana">Keuangan Sederhana</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="#tab-bursa-pinjaman-modal">Bursa Pinjaman Modal</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" href="#tab-daftar-pengajuan-pinjaman">Daftar Pengajuan Pinjaman</a>
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