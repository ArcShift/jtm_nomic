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
            <button class="btn btn-primary mt-1 fa fa-search font-weight-bold" title="Cari"> Cari</button>
        </div>
        <div class="col-sm-3"></div>
        <div class="col-sm-3">
            <button type="button" class="btn btn-primary btn-add mt-1 fa fa-plus pull-right font-weight-bold" title="Tambah"> Tambah</button>
        </div>
    </div>
</form>
<!--DATA-->
<?php
$data = array(
    array('produk' => 'Es Kopi Susu','hhp'=>2500, 'bahan' => 'Gula', 'jumlah' => 7, 'satuan' => 'gram', 'harga' => 1500),
    array('produk' => '','hhp'=>null, 'bahan' => 'Kopi', 'jumlah' => 10, 'satuan' => 'gram', 'harga' => 1000),
    array('produk' => 'Es Kepal Milo','hhp'=>5000, 'bahan' => 'Gula', 'jumlah' => 8, 'satuan' => 'gram', 'harga' => 2000),
    array('produk' => '','hhp'=>null, 'bahan' => 'Susu', 'jumlah' => 15, 'satuan' => 'gram', 'harga' => 3000),
);
?>
<table class="table mt-3">
    <thead>
        <tr>
            <th>Produk</th>
            <th>
                Harga Produksi
            </th>
            <th>Bahan</th>
            <th>
                Jumlah Bahan
                <sup>
                    <span class="badge small badge-pill badge-dark fa fa-info" data-toggle="tooltip" data-placement="top" title="Jumlah bahan yang diperlukan untuk membuat satu produk"> </span>
                </sup>
            </th>
            <th>Satuan Bahan</th>
            <th>
                Harga
                <sup>
                    <span class="badge small badge-pill badge-dark fa fa-info" data-toggle="tooltip" data-placement="top" title="Harga dari jumlah bahan yang digunakan untuk membuat satu produk"> </span>
                </sup>
            </th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($data as $d) { ?>
            <tr>
                <td><?php echo $d['produk'] ?></td>
                <td>
                    <?php if (!empty($d['hhp'])){?>
                    Rp. <?php echo number_format($d['hhp'], null, null, '.') ?>
                    <?php } ?>
                </td>
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
