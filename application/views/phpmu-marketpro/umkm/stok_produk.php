<div class="row mb-3">
    <div class="col-2">
        <label class="form-label mt-3">
            Filter
        </label>
    </div>
    <div class="col-6">
        <select class="form-control">
            <option>Semua</option>
            <option>Hari ini</option>
            <option>Minggu ini</option>
            <option>Bulan ini</option>
        </select>
    </div>
    <div class="col-2">
        <button class="btn btn-primary fa fa-plus m-3" title="Tambah"></button>
    </div>
</div>
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
<canvas id="myChart"></canvas>
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