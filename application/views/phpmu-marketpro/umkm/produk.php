<!--SUMMARY-->
<div class="row m-3">
    <div class="col-sm-12 text-right">
        <span class="badge badge-primary">Produk: 2</span>
        <span class="badge badge-primary">Stok: 27</span>
    </div>
</div>
<!--SEACRHING-->
<form>
    <div class="row m-3">
        
        <div class="col-sm-3">
            <input class="form-control" placeholder="Produk"/>
        </div>
        <div class="col-sm-3">
            <button class="btn btn-primary mt-3 fa fa-search font-weight-bold" title="Cari"> Cari</button>
        </div>
        <div class="col-sm-3"></div>
        <div class="col-sm-3">
            <button class="btn btn-primary mt-3 fa fa-plus pull-right font-weight-bold" title="Tambah"> Tambah</button>
        </div>
    </div>
</form>
<!--DATA-->
<?php
$data = array(
    array('produk' => 'Es Kopi Susu', 'harga' => '3500', 'stok' => '15'),
    array('produk' => 'Es Kepal Milo', 'harga' => '7000', 'stok' => '12'),
);
?>
<table class="table">
    <thead>
        <tr>
            <th>Produk</th>
            <th>Harga</th>
            <th>Stok</th>
            <th>Edit</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($data as $d) { ?>
            <tr>
                <td><?php echo $d['produk'] ?></td>
                <td>Rp. <?php echo number_format($d['harga'], null, null, '.') ?></td>
                <td><?php echo $d['stok'] ?></td>
                <td>
                    <button class="btn btn-primary fa fa-edit" title="Ubah"></button>
                    <button class="btn btn-danger fa fa-ban" title="Disable"></button>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>
