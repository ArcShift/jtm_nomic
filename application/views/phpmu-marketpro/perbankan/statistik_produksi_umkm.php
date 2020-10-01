<!--SUMMARY-->
<div class="row m-3">
    <div class="col-sm-12 text-right">
        <span class="badge badge-primary">UMKM: 3</span>
        <span class="badge badge-primary">Produk: 15</span>
        <span class="badge badge-primary">Stok: 3228</span>
    </div>
</div>
<!--SEACRHING-->
<div class="row m-3">
    <div class="col-3">
        <input class="form-control" placeholder="Nama UMKM"/>
    </div>
    <div class="col-3">
        <input class="form-control" type="date"/>
    </div>
    <div class="col-3">
        <button class="btn btn-primary mt-1 fa fa-search font-weight-bold" title="Cari"> Cari</button>
    </div>
</div>
<!--CHART-->
<canvas class="m-3" id="myChart"></canvas>
<!--DATA-->
<table class="table">
    <thead>
        <tr>
            <th>UMKM</th>
            <th>Produk</th>
            <th>Stok</th>
            <th>Stok Berkurang</th>
            <th>Penambahan Stok</th>
            <th>Total Stok</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Desa Penjaringan</td>
            <td>Masker Kain</td>
            <td>837</td>
            <td>92</td>
            <td>29</td>
            <td>928</td>
            <td>
                <button class="btn btn-primary fa fa-search" title="Detail"></button>
            </td>
        </tr>
        <tr>
            <td>Suka Maju</td>
            <td>Es Kepal Milo</td>
            <td>358</td>
            <td>32</td>
            <td>54</td>
            <td>483</td>
            <td>
                <button class="btn btn-primary fa fa-search" title="Detail"></button>
            </td>
        </tr>
        <tr>
            <td>Kurnia Sejahtera</td>
            <td>Sirup Nanas</td>
            <td>156</td>
            <td>62</td>
            <td>38</td>
            <td>351</td>
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
                    data: [670000, 580000, 940000, 470000, 820000, 590000, 850000]
                },
                {
                    label: 'Kurnia Sejahtera',
                    borderColor: 'rgb(255, 25, 25)',
                    backgroundColor: 'rgba(25, 25, 255, 0)',
                    data: [490000, 350000, 620000, 470000, 570000, 520000, 810000]
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