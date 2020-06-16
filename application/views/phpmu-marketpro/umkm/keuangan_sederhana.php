<!--SUMMARY-->
<div class="row m-3">
    <div class="col-sm-12 text-right">
        <span class="badge badge-primary">Produk: 2</span>
        <span class="badge badge-primary">Penjualan: Rp. 660.000</span>
        <span class="badge badge-primary">Keuntungan: Rp. 486.100‬</span>
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
            <input class="form-control" placeholder="Produk"/>
        </div>
        <div class="col-sm-3">
            <button class="btn btn-primary mt-3 fa fa-search font-weight-bold" title="Cari"> Cari</button>
        </div>
    </div>
</form>
<!--CHART-->
<canvas class="m-3" id="myChart"></canvas>
<!--DATA-->
<table class="table">
    <thead>
        <tr>
            <th rowspan="2">Produk</th>
            <th>Total Produksi</th>
            <th rowspan="2">Total Operasional</th>
            <th>Total Penjualan</th>
            <th>Keuntungan</th>
        </tr>
        <tr>
            <th>(Stok x Harga Produksi)</th>
            <th>(Pendapatan Online + Offline)</th>
            <th>Pendapatan Bersih</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Es Kopi Susu</td>
            <td>Rp. 31.900</td>
            <td>Rp. 20.000</td>
            <td>Rp. 190.000</td>
            <td>Rp. 138.100</td>
        </tr>
        <tr>
            <td>Es Kepal Milo</td>
            <td>Rp. 35.800</td>
            <td>Rp. 20.000</td>
            <td>Rp. 470.000</td>
            <td>Rp. 348.000</td>
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
                    label: 'Total Laba',
                    borderColor: 'rgb(25, 25, 255)',
                    backgroundColor: 'rgba(25, 25, 255, 0)',
                    data: [1020000, 1220000, 1530000, 1280000, 1140000, 1260000, 1390000]
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