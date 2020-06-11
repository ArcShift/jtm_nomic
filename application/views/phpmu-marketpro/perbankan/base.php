<?php
$menu = array(
    array('url' => 'profil_bank', 'title' => 'Profil Bank'),
    array('url' => 'program_pinjaman_modal', 'title' => 'Program Pinjaman Modal'),
    array('url' => 'daftar_pengajuan_pinjaman', 'title' => 'Daftar Pengajuan Pinjaman'),
    array('url' => 'statistik_penjualan_umkm', 'title' => 'Statistik Penjualan UMKM'),
    array('url' => 'statistik_produksi_umkm', 'title' => 'Statistik Produksi UMKM'),
    array('url' => 'pesan_khusus', 'title' => 'Pesan Khusus'),
);
?>
<div class='col-12 notif ml-50 mt-3'>
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <?php foreach ($menu as $m) { ?>
            <li class="nav-item">
                <a class="nav-link bg-success" href="<?php echo base_url('perbankan/' . $m['url']) ?>"><?php echo $m['title'] ?></a>
            </li>
        <?php } ?>
    </ul>
    <div class="tab-content col-11 bg-light">
        <?php $this->load->view('phpmu-marketpro/perbankan/' . $page) ?>
    </div>
</div>
<script>
    var nav = $('.nav-link.bg-success');
    $('th').addClass('font-weight-bold');
    for (var n of nav) {
        console.log($(n).attr('href').indexOf(window.location.href));
        if (window.location.href.indexOf($(n).attr('href')) >= 0) {
            $(n).addClass('active font-weight-bold');
        }
    }
</script>