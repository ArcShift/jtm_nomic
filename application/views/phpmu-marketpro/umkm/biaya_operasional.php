<!--SUMMARY-->
<div class="row m-3">
    <div class="col-sm-12  text-right">
        <span class="badge badge-primary">Biaya: Rp. 1.100.000</span>
    </div>
</div>
<!--SEACRHING-->
<form>
    <div class="row m-3">
        <div class="col-sm-3">
            <select class="form-control">
                <option>-- Periode --</option>
                <option>Hari ini</option>
                <option>Minggu ini</option>
                <option>Bulan ini</option>
            </select>
        </div>
        <div class="col-sm-3">
            <input class="form-control" placeholder="Nama Biaya"/>
        </div>
        <div class="col-sm-3">
            <button class="btn btn-primary mt-1 fa fa-search font-weight-bold" title="Cari"> Cari</button>
        </div>
        <div class="col-sm-3">
            <button type="button" class="btn btn-primary btn-add mt-1 fa fa-plus pull-right font-weight-bold" title="Tambah"> Tambah</button>
        </div>
    </div>
</form>
<!--CHART-->
<canvas class="m-3" id="myChart"></canvas>
<!--DATA-->
<table class="table">
    <thead>
        <tr>
            <th>Tanggal</th>
            <th>Nama</th>
            <th>Jenis</th>
            <th>Biaya</th>
            <th>Periode</th>
            <th class="col-2">Keterangan</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>04-12-2020</td>
            <td>Pulsa Kantor</td>
            <td>Bulanan</td>
            <td>Rp. 500.000</td>
            <td>1 Mei - 1 Juni 2020</td>
            <td></td>
        </tr>
        <tr>
            <td>04-12-2020</td>
            <td>Listrik</td>
            <td>Bulanan</td>
            <td>Rp. 500.000</td>
            <td>1 Mei - 1 Juni 2020</td>
            <td></td>
        </tr>
        <tr>
            <td>04-12-2020</td>
            <td>Solar Jenset</td>
            <td>Harian</td>
            <td>Rp. 100.000</td>
            <td>2 Juni - 3 Juni 2020</td>
            <td>Listrik Kantor Mati</td>
        </tr>
    </tbody>
</table>
<!--MODAL-->
<div class="modal modal-add" tabindex="-1" role="dialog">
    <form>
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Stok Produk</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Nama</label>
                        <div class="col-sm-9">
                            <input class="form-control" type="text"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Jenis</label>
                        <div class="col-sm-9">
                            <input class="form-control" type="text"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Biaya</label>
                        <div class="col-sm-9">
                            <input class="form-control" type="text"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Periode</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="date"/>
                        </div>
                        <div class="col-sm-4">
                            <input class="form-control" type="date"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Keterangan</label>
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
<script>
    var ctx = document.getElementById('myChart').getContext('2d');
    var chart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
            datasets: [
                {
                    label: 'Biaya Operasional',
                    borderColor: 'rgb(25, 25, 255)',
                    backgroundColor: 'rgba(25, 25, 255, 0)',
                    data: [100000, 200000, 300000, 150000, 250000, 350000, 200000]
                }
            ]
        },
        options: {
            scales: {
            yAxes: [{
                ticks: {
                    suggestedMin: 0,
                }
            }]
        }
        }
    });
</script>