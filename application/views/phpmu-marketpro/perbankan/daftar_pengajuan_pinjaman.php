<!--SUMMARY-->
<div class="row m-3">
    <div class="col-sm-12 text-right">
        <span class="badge badge-primary">UMKM: 3</span>
    </div>
</div>
<!--SEACRHING-->
<div class="row m-3">
    <div class="col-3">
        <input class="form-control" placeholder="Nama UMKM"/>
    </div>
    <div class="col-3">
        <select class="form-control">
            <option>-- status --</option>
            <option>Menunggu</option>
            <option>Diterima</option>
            <option>Ditolak</option>
        </select>
    </div>
    <div class="col-3">
        <input class="form-control" type="date"/>
    </div>
    <div class="col-3">
        <button class="btn btn-primary mt-1 fa fa-search font-weight-bold" title="Cari"> Cari</button>
        <button class="btn btn-primary mt-1 fa fa-plus pull-right font-weight-bold" title="Tambah"> Tambah</button>
    </div>
</div>
<!--DATA-->
<table class="table">
    <thead>
        <tr>
            <th>UMKM</th>
            <th>Program</th>
            <th>Tgl Pengajuan</th>
            <th>jumlah kredit</th>
            <th>Status</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Desa Penjaringan</td>
            <td>KUR Mikro</td>
            <td>09-06-2020</td>
            <td>8.000.000</td>
            <td>
                <span class="badge badge-primary">MENUNGGU</span>
            </td>
            <td>
                <button class="btn btn-primary fa fa-search" title="Detail"></button>
                <button class="btn btn-success fa fa-calendar-check-o" title="Terima"></button>
                <button class="btn btn-danger fa fa-calendar-times-o" title="Tolak"></button>
            </td>
        </tr>
        <tr>
            <td>Suka Maju</td>
            <td>KUR Ritel</td>
            <td>26-05-2020</td>
            <td>3.000.000</td>
            <td>
                <span class="badge badge-success">DITERIMA</span>
            </td>
            <td>
                <button class="btn btn-primary fa fa-search" title="Detail"></button>
            </td>
        </tr>
        <tr>
            <td>Kurnia Sejahtera</td>
            <td>KUR Khusus</td>
            <td>17-12-2019</td>
            <td>10.000.000</td>
            <td>
                <span class="badge badge-danger">DITOLAK</span>
            </td>
            <td>
                <button class="btn btn-primary fa fa-search" title="Detail"></button>
            </td>
        </tr>
    </tbody>
</table>