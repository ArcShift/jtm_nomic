<!--SUMMARY-->
<div class="row m-3">
    <div class="col-sm-12 text-right">
        <span class="badge badge-primary">UMKM: 3</span>
        <span class="badge badge-primary">Penjualan: Rp. 8.659.000</span>
    </div>
</div>
<!--SEACRHING-->
<div class="row m-3">
    <div class="col-2">
        <input class="form-control" placeholder="Nama UMKM"/>
    </div>
    <div class="col-2">
        <input class="form-control" type="date"/>
    </div>
    <div class="col-8">
        <button class="btn btn-primary mt-3 fa fa-search font-weight-bold" title="Cari"> Cari</button>
    </div>
</div>
<!--CHART-->
<canvas class="m-3" id="myChart"></canvas>
<!--DATA-->
<table class="table">
    <thead>
        <tr>
            <th rowspan="2">UMKM</th>
            <th rowspan="2">Produk</th>
            <th colspan="2">Penjualan</th>
            <th colspan="2">Harga Satuan</th>
            <th colspan="2">Pendapatan</th>
            <th rowspan="2">Total Pendapatan</th>
            <th rowspan="2">Aksi</th>
        </tr>
        <tr>
            <th>Online</th>
            <th>Offline</th>
            <th>Online</th>
            <th>Offline</th>
            <th>Online</th>
            <th>Offline</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Desa Penjaringan</td>
            <td>Masker Kain</td>
            <td>384</td>
            <td>493</td>
            <td>Rp. 4.500</td>
            <td>Rp. 5.000</td>
            <td>Rp. 1.728.000</td>
            <td>Rp. 2.465.000</td>
            <td>Rp. 4.193.000‬</td>
            <td>
                <button class="btn btn-primary fa fa-search" title="Detail"></button>
            </td>
        </tr>
        <tr>
            <td>Suka Maju</td>
            <td>Es Kepal Milo</td>
            <td>158</td>
            <td>89</td>
            <td>Rp. 3.500</td>
            <td>Rp. 7.000</td>
            <td>Rp. 553.000</td>
            <td>Rp. 623.000</td>
            <td>Rp. 1.176.000</td>
            <td>
                <button class="btn btn-primary fa fa-search" title="Detail"></button>
            </td>
        </tr>
        <tr>
            <td>Kurnia Sejahtera</td>
            <td>Sirup Nanas</td>
            <td>56</td>
            <td>63</td>
            <td>Rp. 25.000</td>
            <td>Rp. 30.000</td>
            <td>Rp. 1.400.000</td>
            <td>Rp. 1.890.000</td>
            <td>Rp. 3.290.000</td>
            <td>
                <button class="btn btn-primary fa fa-search" title="Detail"></button>
            </td>
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
                    label: 'Desa Penjaringan',
                    borderColor: 'rgb(25, 25, 255)',
                    backgroundColor: 'rgba(25, 25, 255, 0)',
                    data: [450000, 540000, 690000, 710000, 420000, 570000, 640000]
                },
                {
                    label: 'Suka Maju',
                    borderColor: 'rgb(25, 255, 25)',
                    backgroundColor: 'rgba(25, 25, 255, 0)',
                    data: [570000, 680000, 840000, 570000, 720000, 690000, 750000]
                },
                {
                    label: 'Kurnia Sejahtera',
                    borderColor: 'rgb(255, 25, 25)',
                    backgroundColor: 'rgba(25, 25, 255, 0)',
                    data: [390000, 450000, 520000, 570000, 470000, 620000, 710000]
                },
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