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
            <button type="button" class="btn btn-primary btn-add mt-3 fa fa-plus pull-right font-weight-bold" title="Tambah"> Tambah</button>
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
<!--MODAL-->
<div class="modal modal-add" tabindex="-1" role="dialog">
    <form>
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Produk</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Nama</label>
                        <div class="col-sm-9">
                            <input class="form-control" type="text" required=""/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Harga</label>
                        <div class="col-sm-9">
                            <input class="form-control" type="text"/>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-success">Simpan</button>
                </div>
            </div>
        </div>
    </form>
</div>