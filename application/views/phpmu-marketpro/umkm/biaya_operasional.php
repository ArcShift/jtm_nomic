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
                <option>Semua</option>
                <option>Hari ini</option>
                <option>Minggu ini</option>
                <option>Bulan ini</option>
            </select>
        </div>
        <div class="col-sm-3">
            <input class="form-control" placeholder="Nama Biaya"/>
        </div>
        <div class="col-sm-3">
            <button class="btn btn-primary mt-3 fa fa-search font-weight-bold" title="Cari"> Cari</button>
        </div>
        <div class="col-sm-3">
            <button class="btn btn-primary mt-3 fa fa-plus pull-right font-weight-bold" title="Tambah"> Tambah</button> 
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