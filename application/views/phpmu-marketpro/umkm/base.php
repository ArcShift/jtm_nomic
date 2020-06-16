<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css" integrity="sha256-aa0xaJgmK/X74WM224KMQeNQC2xYKwlAt08oZqjeF0E=" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js" integrity="sha256-R4pqcOYV8lt7snxMQO/HSbVCFRPMdrhAFMH+vr9giYI=" crossorigin="anonymous"></script>
<div class='col-11 notif ml-50 mt-3 mb-20'>
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
    $('th').addClass('font-weight-bold');
    var nav = $('.nav-link.bg-success');
    for (var n of nav) {
        console.log($(n).attr('href').indexOf(window.location.href));
        if (window.location.href.indexOf($(n).attr('href')) >= 0) {
            $(n).addClass('active font-weight-bold');
        }
    }
</script>