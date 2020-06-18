<!--SUMMARY-->
<div class="row mt-3">
    <div class="col-sm-12 text-right">
        <span class="badge badge-primary">Produk: 2</span>
    </div>
</div>
<!--SEACRHING-->
<form>
    <div class="row mt-3 mb-3">
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
<!--<form>
    <div class="row">
        <label class="col-2 col-form-label">Nama Produk</label>
        <div class="col-10">
            <select class="form-control">
                <option>-- pilih produk --</option>
                <option>Masker Kain</option>
                <option>Hand Sanitiser</option>
                <option>Sarung tangan</option>
            </select>
        </div>
    </div>
    <div class="row">
        <label class="col-2 col-form-label">Bahan Dasar</label>
        <div class="col-10">
            <div class="row">
                <div class="col-3">
                    <input class="form-control" placeholder="Nama">
                </div>
                <div class="col-2">
                    <input class="form-control" placeholder="Jumlah">
                </div>
                <div class="col-2">
                    <select class="form-control">
                        <option>satuan</option>
                        <option>kg</option>
                        <option>liter</option>
                    </select>
                </div>
                <div class="col-3">
                    <input class="form-control" placeholder="Harga">
                </div>
                <div class="col-2">
                    <button class="btn btn-lg mt-2 btn-success fa fa-plus" type="button"></button>
                </div>
            </div>
        </div>
    </div>
</form>-->
<!--DATA-->
<?php
$data = array(
    array('produk' => 'Es Kopi Susu', 'bahan' => 'Gula', 'jumlah' => 7, 'satuan' => 'kg', 'harga' => 15000),
    array('produk' => '', 'bahan' => 'Kopi', 'jumlah' => 10, 'satuan' => 'kg', 'harga' => 9000),
    array('produk' => 'Es Kepal Milo', 'bahan' => 'Gula', 'jumlah' => 8, 'satuan' => 'kg', 'harga' => 15000),
    array('produk' => '', 'bahan' => 'Susu', 'jumlah' => 15, 'satuan' => 'kg', 'harga' => 10000),
);
?>
<table class="table mt-3">
    <thead>
        <tr>
            <th>Produk</th>
            <th>Bahan</th>
            <th>Jumlah</th>
            <th>Satuan</th>
            <th>Harga</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($data as $d) { ?>
            <tr>
                <td><?php echo $d['produk'] ?></td>
                <td><?php echo $d['bahan'] ?></td>
                <td><?php echo $d['jumlah'] ?></td>
                <td><?php echo $d['satuan'] ?></td>
                <td>Rp. <?php echo number_format($d['harga'], null, null, '.') ?></td>
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
                    <h5 class="modal-title">Tambah Bahan Baku Produk</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <select class="form-control" required="">
                            <option>-- pilih produk --</option>
                            <option>Susu Coklat Hangat</option>
                            <option>Wedang Ronde</option>
                            <option>Wedang Uwuh</option>
                        </select>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <select class="form-control">
                                    <option>-- bahan baku --</option>
                                    <option>Susu</option>
                                    <option>Gula</option>
                                    <option>Kopi</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <input class="form-control" placeholder="jumlah"/>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <button class="btn btn-primary m-2 fa fa-plus" type="button" title="tambah"></button>
                        </div>
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Bahan</th>
                                <th>Jumlah</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Gula</td>
                                <td>4 kg</td>
                            </tr>
                            <tr>
                                <td>Susu</td>
                                <td>15 liter</td>
                            </tr>
                            <tr>
                                <td>Kopi</td>
                                <td>6 kg</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-success">Simpan</button>
                </div>
            </div>
        </div>
    </form>
</div>
