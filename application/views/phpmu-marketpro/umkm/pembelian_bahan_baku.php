<!--SUMMARY-->
<div class="row m-3">
    <div class="col-sm-12 text-right">
        <span class="badge badge-primary">Bahan: 3</span>
        <span class="badge badge-primary">Jumlah: 9</span>
    </div>
</div>
<!--SEACRHING-->
<form>
    <div class="row m-3">
        <div class="col-sm-3">
            <select class="form-control">
                <option>Semua</option>
                <option>Hari ini</option>
                <option>Minggu ini</option>
                <option>Bulan ini</option>
            </select>
        </div>
        <div class="col-sm-3">
            <input class="form-control" placeholder="Bahan Baku"/>
        </div>
        <div class="col-sm-3">
            <button class="btn btn-primary mt-3 fa fa-search font-weight-bold" title="Cari"> Cari</button>
        </div>
        <div class="col-sm-3">
            <button type="button" class="btn btn-primary btn-add mt-3 fa fa-plus pull-right font-weight-bold" title="Tambah"> Tambah</button>
        </div>
    </div>
</form>
<!--DATA-->
<table class="table">
    <thead>
        <tr>
            <th>Nama</th>
            <th>Jumlah</th>
            <th>Satuan</th>
            <th>Harga</th>
            <th>Total Harga</th>
            <th>Tanggal</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Gula</td>
            <td>2</td>
            <td>kg</td>
            <td>Rp. 15.000</td>
            <td>Rp. 30.000</td>
            <td>04-12-2020</td>
        </tr>
        <tr>
            <td>Susu</td>
            <td>5</td>
            <td>kg</td>
            <td>Rp. 10.000</td>
            <td>Rp. 50.000</td>
            <td>04-12-2020</td>
        </tr>
        <tr>
            <td>Kopi</td>
            <td>2</td>
            <td>kg</td>
            <td>Rp. 9.000</td>
            <td>Rp. 18.000</td>
            <td>04-12-2020</td>
        </tr>
    </tbody>
</table>
<!--MODAL-->
<div class="modal modal-add" tabindex="-1" role="dialog">
    <form>
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Pembelian Bahan Baku</h5>
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
                        <label class="col-sm-3 col-form-label">Jumlah</label>
                        <div class="col-sm-9">
                            <input class="form-control" type="text"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Satuan</label>
                        <div class="col-sm-9">
                            <select class="form-control">
                                <option>Kg</option>
                                <option>Liter</option>
                            </select>
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