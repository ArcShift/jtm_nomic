<!--SUMMARY-->
<div class="row m-3">
    <div class="col-sm-12 text-right">
        <span class="badge badge-primary">Produk: 2</span>
        <span class="badge badge-primary">Penjualan: 42</span>
        <span class="badge badge-primary">Pendapatan: Rp. 208,000</span>
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
            <input class="form-control" placeholder="Produk"/>
        </div>
        <div class="col-sm-3">
            <button class="btn btn-primary mt-1 fa fa-search font-weight-bold" title="Cari"> Cari</button>
        </div>
        <div class="col-sm-3">
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
            <th colspan="2">Penjualan</th>
            <th colspan="2">Harga Satuan</th>
            <th colspan="2">Pendapatan</th>
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
            <td>Es Kopi Susu</td>
            <td>7</td>
            <td>15</td>
            <td>Rp. 3.500</td>
            <td>Rp. 3.300</td>
            <td>Rp. 24.500</td>
            <td>Rp. 49.500</td>
        </tr>
        <tr>
            <td>Es Kepal Milo</td>
            <td>8</td>
            <td>12</td>
            <td>Rp. 7.000</td>
            <td>Rp. 6.500</td>
            <td>Rp. 56.000</td>
            <td>Rp. 78.000</td>
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
                    label: 'Offline',
                    borderColor: 'rgb(25, 25, 255)',
                    backgroundColor: 'rgba(25, 25, 255, 0)',
                    data: [450000, 540000, 690000, 710000, 420000, 570000, 640000]
                },
                {
                    label: 'Online',
                    borderColor: 'rgb(25, 255, 25)',
                    backgroundColor: 'rgba(25, 25, 255, 0)',
                    data: [570000, 680000, 840000, 570000, 720000, 690000, 750000]
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