<!--SUMMARY-->
<div class="row m-3">
    <div class="col-sm-12 text-right">
        <span class="badge badge-primary">Bahan: 3</span>
        <span class="badge badge-primary">Jumlah: 45</span>
        <span class="badge badge-primary">Harga Stok: Rp. 540.000</span>
    </div>
</div>
<!--SEACRHING-->
<form>
    <div class="row m-3">
        <div class="col-3">
            <select class="form-control">
                <option>-- Periode --</option>
                <option>Hari ini</option>
                <option>Minggu ini</option>
                <option>Bulan ini</option>
            </select>
        </div>
        <div class="col-3 form-group">
            <input class="form-control" placeholder="Bahan Baku" type="text"/>
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
            <th>Nama</th>
            <th>Jumlah</th>
            <th>Satuan</th>
            <th>Harga stok</th>
            <th>Kadaluarsa</th>
            <th>Supplier</th>
            <th>Penyimpanan</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Gula</td>
            <td>20</td>
            <td>kg</td>
            <td>Rp. 300.000</td>
            <td>-</td>
            <td>Toko ABC</td>
            <td>Toko 1</td>
        </tr>
        <tr>
            <td>Susu</td>
            <td>15</td>
            <td>kg</td>
            <td>Rp. 150.000</td>
            <td>04-12-2020</td>
            <td>Warung bu Ningsih</td>
            <td>Toko 2</td>
        </tr>
        <tr>
            <td>Kopi</td>
            <td>10</td>
            <td>kg</td>
            <td>Rp. 90.000</td>
            <td>-</td>
            <td>Indomaret Semampir</td>
            <td>Toko 1</td>
        </tr>
    </tbody>
</table>
<script>
    var ctx = document.getElementById('myChart').getContext('2d');
    var chart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
            datasets: [
                {
                    label: 'Pembelian',
                    backgroundColor: 'rgb(25, 25, 255)',
                    data: [50, 80, 70, 65, 90, 75, 85]
                },
                {
                    label: 'Pemakaian',
                    backgroundColor: 'rgb(25, 255, 25)',
                    data: [40, 50, 45, 60, 75, 55, 45]
                },
                {
                    label: 'Sisa',
                    backgroundColor: 'rgb(255, 25, 25)',
                    data: [10, 30, 25, 5, 15, 20, 35]
                }
            ]
        },
        options: {}
    });
</script>