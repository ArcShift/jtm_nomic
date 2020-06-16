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
            <button class="btn btn-primary mt-3 fa fa-plus pull-right font-weight-bold" title="Tambah"> Tambah</button>
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