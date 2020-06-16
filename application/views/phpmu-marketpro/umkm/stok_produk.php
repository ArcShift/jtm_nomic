<!--SUMMARY-->
<div class="row m-3">
    <div class="col-sm-12 text-right">
        <span class="badge badge-primary">Produk: 2</span>
        <span class="badge badge-primary">Total : Rp. 367.500</span>
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
            <th>Produk</th>
            <th>Online</th>
            <th>Offline</th>
            <th>Total</th>
            <th>Total (Rp)</th>
        </tr>
    </thead>
    <tbody class="">
        <tr>
            <td>Es Kopi Susu</td>
            <td>30</td>
            <td>15</td>
            <td>45</td>
            <td>Rp. 157.500</td>
        </tr>
        <tr>
            <td>Es Kepal Milo</td>
            <td>10</td>
            <td>20</td>
            <td>30</td>
            <td>Rp. 210.000</td>
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
                    label: 'Es Kopi Susu',
                    borderColor: 'rgb(25, 25, 255)',
                    backgroundColor: 'rgba(25, 25, 255, 0)',
                    data: [50, 80, 65, 70, 50, 30, 45]
                },
                {
                    label: 'Es Kepal Milo',
                    borderColor: 'rgb(25, 255, 25)',
                    backgroundColor: 'rgba(25, 25, 255, 0)',
                    data: [40, 70, 75, 50, 65, 45, 30]
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