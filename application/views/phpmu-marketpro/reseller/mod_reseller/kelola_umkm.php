<div class="ps-page--single">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>">Home</a></li>
                <li><a href="#">Members</a></li>
                <li><?php echo $title; ?></li>
            </ul>
        </div>
    </div>
</div>
<div class='col-12 notif ml-50 mt-3'>
    <div class="row">
        <div class="col-3">
            <ul class="nav nav-tabs flex-column" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link bg-success active" data-toggle="tab" href="#tab-bahan-produksi">Bahan Produksi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" data-toggle="tab" href="#tab-manajemen-stok">Manajemen Stok</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" data-toggle="tab" href="#tab-statistik-produksi">Statistik Produksi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" data-toggle="tab" href="#tab-statistik-penjualan">Statistik Penjualan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" data-toggle="tab" href="#tab-keuangan-sederhana">Keuangan Sederhana</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" data-toggle="tab" href="#tab-bursa-pinjaman-modal">Bursa Pinjaman Modal</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bg-success" data-toggle="tab" href="#tab-daftar-pengajuan-pinjaman">Daftar Pengajuan Pinjaman</a>
                </li>
            </ul>
        </div>
        <div class="tab-content col-8 bg-light">
            <div class="tab-pane fade show active" id="tab-bahan-produksi">
                <form>
                    <div class="row">
                        <label class="col-2 col-form-label">Nama Produk</label>
                        <div class="col-10">
                            <select class="form-control">
                                <option>-- pilih produk --</option>
                                <option>Masker Kain</option>
                                <option>Hand Sanitiser</option>
                                <option>Sarung tangan</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <label class="col-2 col-form-label">Bahan Dasar</label>
                        <div class="col-10">
                            <div class="row">
                                <div class="col-3">
                                    <input class="form-control" placeholder="Nama">
                                </div>
                                <div class="col-2">
                                    <input class="form-control" placeholder="Jumlah">
                                </div>
                                <div class="col-2">
                                    <select class="form-control">
                                        <option>satuan</option>
                                        <option>kg</option>
                                        <option>liter</option>
                                    </select>
                                </div>
                                <div class="col-3">
                                    <input class="form-control" placeholder="Harga">
                                </div>
                                <div class="col-2">
                                    <button class="btn btn-lg mt-2 btn-success fa fa-plus" type="button"></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <table class="table mt-3">
                    <thead>
                        <tr>
                            <th>Produk</th>
                            <th>Bahan</th>
                            <th>Jumlah</th>
                            <th>Satuan</th>
                            <th>Harga</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Keset</td>
                            <td>Kain perca</td>
                            <td>0.8</td>
                            <td>kg</td>
                            <td>10.000</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>Benang</td>
                            <td>0.1</td>
                            <td>kg</td>
                            <td>3.000</td>
                        </tr>
                        <tr>
                            <td>Clay Art</td>
                            <td>Tanah liat</td>
                            <td>0.3</td>
                            <td>kg</td>
                            <td>5.000</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>Cat Warna</td>
                            <td>0.3</td>
                            <td>kg</td>
                            <td>5.000</td>
                        </tr>
                        <tr>
                            <td>Hand Sanitizer</td>
                            <td>Alkohol</td>
                            <td>50</td>
                            <td>ml</td>
                            <td>15.000</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>Air</td>
                            <td>400</td>
                            <td>ml</td>
                            <td>1.000</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="tab-pane fade" id="tab-manajemen-stok">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Produk</th>
                            <th>Harga</th>
                            <th>Stok</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Masker Kain</td>
                            <td>3.000</td>
                            <td>10 pcs</td>
                            <td>
                                <button class="btn btn-primary fa fa-edit"></button>
                            </td>
                        </tr>
                        <tr>
                            <td>Hand Sanitizer</td>
                            <td>25.000</td>
                            <td>18 pcs</td>
                            <td>
                                <button class="btn btn-primary fa fa-edit"></button>
                            </td>
                        </tr>
                        <tr>
                            <td>Sarung Tangan</td>
                            <td>7.000</td>
                            <td>25 pcs</td>
                            <td>
                                <button class="btn btn-primary fa fa-edit"></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="tab-pane fade" id="tab-statistik-produksi">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Produk</th>
                            <th>Total Stok</th>
                            <th>Sisa Stok</th>
                            <th>Penambahan stok bulan ini</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Masker Kain</td>
                            <td>382 pcs</td>
                            <td>10 pcs</td>
                            <td>16 pcs</td>
                        </tr>
                        <tr>
                            <td>Hand Sanitizer</td>
                            <td>183 pcs</td>
                            <td>18 pcs</td>
                            <td>73 pcs</td>
                        </tr>
                        <tr>
                            <td>Sarung Tangan</td>
                            <td>251 pcs</td>
                            <td>25 pcs</td>
                            <td>36 pcs</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="tab-pane fade" id="tab-keuangan-sederhana">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Produk</th>
                            <th>Harga</th>
                            <th>Keuntungan</th>
                            <th>Keuntungan bulan ini</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Masker Kain</td>
                            <td>3.000</td>
                            <td>273.000</td>
                            <td>45.000</td>
                        </tr>
                        <tr>
                            <td>Hand Sanitizer</td>
                            <td>25.000</td>
                            <td>575.000</td>
                            <td>50.000</td>
                        </tr>
                        <tr>
                            <td>Sarung Tangan</td>
                            <td>7.000</td>
                            <td>161.000</td>
                            <td>42.000</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="tab-pane fade" id="tab-statistik-penjualan">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Produk</th>
                            <th>total terjual</th>
                            <th>terjual bulan ini</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Masker Kain</td>
                            <td>382 pcs</td>
                            <td>12 pcs</td>
                        </tr>
                        <tr>
                            <td>Hand Sanitizer</td>
                            <td>142 pcs</td>
                            <td>23 pcs</td>
                        </tr>
                        <tr>
                            <td>Sarung Tangan</td>
                            <td>134 pcs</td>
                            <td>31 pcs</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="tab-pane fade" id="tab-bursa-pinjaman-modal">
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 ">
                                <article class="ps-block--store-2">
                                    <div class="ps-block__content bg--cover" data-background="https://localhost/jatimnomic/asset/images/default-store-banner.png" style="background: rgba(0, 0, 0, 0) url(&quot;https://localhost/jatimnomic/asset/images/default-store-banner.png&quot;) repeat scroll 0% 0%;">
                                        <figure>
                                            <h4>Kredit Usaha Mikro (KUM)</h4>
                                            <div>Bank Mandiri</div>
                                            <div>Maks. limit 200jt</div>
                                        </figure>
                                    </div>
                                    <div class="ps-block__author">
                                        <a class="ps-block__user" href="#"><img src="https://pbs.twimg.com/profile_images/829865693185138688/D1y2Ciyn_400x400.jpg" alt=""></a>
                                        <a class="ps-btn"><small>Ajukan Pinjaman</small></a>
                                    </div>
                                </article>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 ">
                                <article class="ps-block--store-2">
                                    <div class="ps-block__content bg--cover" data-background="https://localhost/jatimnomic/asset/images/default-store-banner.png" style="background: rgba(0, 0, 0, 0) url(&quot;https://localhost/jatimnomic/asset/images/default-store-banner.png&quot;) repeat scroll 0% 0%;">
                                        <figure>
                                            <h4>Kredit UMKM</h4>
                                            <div>Bank BTN</div>
                                            <div>Maks. limit 5M</div>
                                        </figure>
                                    </div>
                                    <div class="ps-block__author">
                                        <a class="ps-block__user" href="#"><img src="https://pbs.twimg.com/profile_images/1220656203191078914/UFVRJU5a_400x400.jpg" alt=""></a>
                                        <a class="ps-btn" href="#"><small>Ajukan Pinjaman</small></a>
                                    </div>
                                </article>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 ">
                                <article class="ps-block--store-2">
                                    <div class="ps-block__content bg--cover" data-background="https://localhost/jatimnomic/asset/images/default-store-banner.png" style="background: rgba(0, 0, 0, 0) url(&quot;https://localhost/jatimnomic/asset/images/default-store-banner.png&quot;) repeat scroll 0% 0%;">
                                        <figure>
                                            <h4>Kredit Usaha Rakyat (KUR)</h4>
                                            <div>Bank Mandiri</div>
                                            <div>Maks. limit 500jt</div>
                                        </figure>
                                    </div>
                                    <div class="ps-block__author">
                                        <a class="ps-block__user" href="#"><img src="https://pbs.twimg.com/profile_images/829865693185138688/D1y2Ciyn_400x400.jpg" alt=""></a>
                                        <a class="ps-btn" href="#"><small>Ajukan Pinjaman</small></a>
                                    </div>
                                </article>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 ">
                                <article class="ps-block--store-2">
                                    <div class="ps-block__content bg--cover" data-background="https://localhost/jatimnomic/asset/images/default-store-banner.png" style="background: rgba(0, 0, 0, 0) url(&quot;https://localhost/jatimnomic/asset/images/default-store-banner.png&quot;) repeat scroll 0% 0%;">
                                        <figure>
                                            <h4>Kredit Usaha Rakyat (KUR)</h4>
                                            <div>Bank BNI</div>
                                            <div>Maks. limit 500jt</div>
                                        </figure>
                                    </div>
                                    <div class="ps-block__author">
                                        <a class="ps-block__user" href="#"><img src="https://pbs.twimg.com/profile_images/1219085693747490816/7CsOD8WC_400x400.jpg" alt=""></a>
                                        <a class="ps-btn" href="#"><small>Ajukan Pinjaman</small></a>
                                    </div>
                                </article>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 ">
                                <article class="ps-block--store-2">
                                    <div class="ps-block__content bg--cover" data-background="https://localhost/jatimnomic/asset/images/default-store-banner.png" style="background: rgba(0, 0, 0, 0) url(&quot;https://localhost/jatimnomic/asset/images/default-store-banner.png&quot;) repeat scroll 0% 0%;">
                                        <figure>
                                            <h4>Kredit Mikro</h4>
                                            <div>Bank Jatim</div>
                                            <div>Maks. limit 500jt</div>
                                        </figure>
                                    </div>
                                    <div class="ps-block__author">
                                        <a class="ps-block__user" href="#"><img src="https://pbs.twimg.com/profile_images/1117979681989337088/ozOJ_g7Z_400x400.png" alt=""></a>
                                        <a class="ps-btn" href="#"><small>Ajukan Pinjaman</small></a>
                                    </div>
                                </article>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 ">
                                <article class="ps-block--store-2">
                                    <div class="ps-block__content bg--cover" data-background="https://localhost/jatimnomic/asset/images/default-store-banner.png" style="background: rgba(0, 0, 0, 0) url(&quot;https://localhost/jatimnomic/asset/images/default-store-banner.png&quot;) repeat scroll 0% 0%;">
                                        <figure>
                                            <h4>Kredit SIUM</h4>
                                            <div>Bank Jatim</div>
                                            <div>Maks. limit 500jt</div>
                                        </figure>
                                    </div>
                                    <div class="ps-block__author">
                                        <a class="ps-block__user" href="#"><img src="https://pbs.twimg.com/profile_images/1117979681989337088/ozOJ_g7Z_400x400.png" alt=""></a>
                                        <a class="ps-btn" href="#"><small>Ajukan Pinjaman</small></a>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="tab-daftar-pengajuan-pinjaman">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Bank</th>
                            <th>Jumlah Pinjaman</th>
                            <th>Tanggal Pinjaman</th>
                            <th>Jatuh Tempo</th>
                            <th>Detail</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Bank Mandiri</td>
                            <td>10.000.000</td>
                            <td>14-01-2020</td>
                            <td>14-07-2020</td>
                            <td>
                                <button class="btn btn-primary fa fa-search"></button>
                            </td>
                        </tr>
                        <tr>
                            <td>Bank BCA</td>
                            <td>25.000.000</td>
                            <td>04-03-2020</td>
                            <td>04-03-2022</td>
                            <td>
                                <button class="btn btn-primary fa fa-search"></button>
                            </td>
                        </tr>
                        <tr>
                            <td>Bank Jatim</td>
                            <td>15.000.000</td>
                            <td>06-21-2020</td>
                            <td>02-21-2021</td>
                            <td>
                                <button class="btn btn-primary fa fa-search"></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<br/><br/><br/><br/><br/><br/><br/>