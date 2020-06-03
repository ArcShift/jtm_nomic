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
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link bg-success active" data-toggle="tab" href="#tab-e-commerce">E-Commerce</a>
        </li>
        <li class="nav-item">
            <a class="nav-link bg-success" data-toggle="tab" href="#tab-produksi">Produksi</a>
        </li>
        <li class="nav-item">
            <a class="nav-link bg-success" data-toggle="tab" href="#tab-perbankan">Perbankan</a>
        </li>
    </ul>
    <div class="tab-content"><br>
        <div class="tab-pane fade show active" id="tab-e-commerce">
            <div class="row">
                <div class="col-3 notif">
                    <a class="nav-link btn mb-1 btn-secondary active">Pengaturan</a>
                    <a class="nav-link btn mb-1 btn-light">Daftar Produk</a>
                    <a class="nav-link btn mb-1 btn-light">Alamat COD</a>
                    <a class="nav-link btn mb-1 btn-light">Order Masuk</a>
                    <a class="nav-link btn mb-1 btn-light">Tarik Dana</a>
                </div>
                <div class="col-9">
                    <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12 ">
                        <figure class="ps-block--vendor-status biodata">
                            <div class="form-group row" style="margin-bottom:5px">
                                <label class="col-sm-3 col-form-label" style="margin-bottom:1px">Nama UMKM</label>
                                <div class="col-sm-9">
                                    SukaMaju
                                </div>
                            </div>
                            <div class="form-group row" style="margin-bottom:5px">
                                <label class="col-sm-3 col-form-label" style="margin-bottom:1px">Nama Daerah</label>
                                <div class="col-sm-9">
                                    Surabaya
                                </div>
                            </div>
                            <div class="form-group row" style="margin-bottom:5px">
                                <label class="col-sm-3 col-form-label" style="margin-bottom:1px">Alamat Lengkap</label>
                                <div class="col-sm-9">
                                    Jl. Mawar No. 51
                                </div>
                            </div>
                            <div class="form-group row" style="margin-bottom:5px">
                                <label class="col-sm-3 col-form-label" style="margin-bottom:1px">Kontak UMKM</label>
                                <div class="col-sm-9">
                                    089606696766
                                </div>
                            </div>
                            <div class="form-group row" style="margin-bottom:5px">
                                <label class="col-sm-3 col-form-label" style="margin-bottom:1px">Keterangan</label>
                                <div class="col-sm-9">
                                    UMKM Warga desa SukaMaju
                                </div>
                            </div>
                            <div class="row" style="margin-bottom:5px">
                                <div class="col-sm-3" style="margin-bottom:1px"></div>
                                <div class="col-sm-9">
                                    <a class="btn btn-success">Edit</a>
                                </div>
                            </div>
                        </figure>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="tab-produksi">
            <div class="row">
                <div class="col-3">
                    <a class="nav-link btn mb-1 btn-secondary active">Bahan Produksi</a>
                    <a class="nav-link btn mb-1 btn-light">Manajemen Stok</a>
                    <a class="nav-link btn mb-1 btn-light">Statistik Produksi</a>
                    <a class="nav-link btn mb-1 btn-light">Statistik Penjualan</a>
                    <a class="nav-link btn mb-1 btn-light">Keuangan Sederhana</a>
                </div>
                <div class="col-9">
                    <form>
                        <div class="row">
                            <label class="col-3 col-form-label">Nama Produk</label>
                            <div class="col-9">
                                <select class="form-control">
                                    <option>-- pilih produk --</option>
                                    <option>Masker Kain</option>
                                    <option></option>
                                    <option></option>
                                    <option></option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-3 col-form-label">Bahan Dasar</label>
                            <div class="col-9">
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
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="tab-perbankan">
            <div class="row">
                <div class="col-3">
                    <a class="nav-link btn mb-1 btn-secondary active">Bursa Pinjaman Modal</a>
                    <a class="nav-link btn mb-1 btn-light">Daftar Pengajuan Pinjaman</a>
                </div>
                <div class="col-9">
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
            </div>
        </div>
    </div>
</div>
<br/><br/><br/><br/><br/><br/><br/>