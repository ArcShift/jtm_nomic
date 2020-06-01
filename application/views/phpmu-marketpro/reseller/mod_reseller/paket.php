<?php 
//    print_r($this->session);
?>
<div class="row">
    <div class="col-sm-2"></div>
    <div class="col-sm-8">
        <h2>Pendaftaran UMKM</h2>
    </div>
</div>
<div class="row">
    <div class="col-sm-2"></div>
    <div class="col-sm-8">
        <form action="post">
            <div class="row">
                <label class="col-sm-3 col-form-label">Nama UMKM</label>
                <div class="col-sm-9">
                    <input class="form-control">
                </div>
            </div>
            <div class="row">
                <label class="col-sm-3 col-form-label">Alamat</label>
                <div class="col-sm-9">
                    <input class="form-control">
                </div>
            </div>
            <div class="row">
                <label class="col-sm-3 col-form-label">No Telp</label>
                <div class="col-sm-9">
                    <input class="form-control">
                </div>
            </div>
            <div class="row">
                <label class="col-sm-3 col-form-label">Legalitas</label>
                <div class="col-sm-9">:</div>
            </div>
            <div class="row">
                <label class="col-sm-1 col-form-label"></label>
                <label class="col-sm-2 col-form-label">Siup</label>
                <div class="col-sm-9">
                    <input class="form-control" type="file">
                </div>
            </div>
            <div class="row">
                <label class="col-sm-1 col-form-label"></label>
                <label class="col-sm-2 col-form-label">Akte</label>
                <div class="col-sm-9">
                    <input class="form-control" type="file">
                </div>
            </div>
            <div class="row">
                <label class="col-sm-1 col-form-label"></label>
                <label class="col-sm-2 col-form-label">TDP</label>
                <div class="col-sm-9">
                    <input class="form-control" type="file">
                </div>
            </div>
            <div class="row">
                <label class="col-sm-1 col-form-label"></label>
                <label class="col-sm-2 col-form-label">Domisili</label>
                <div class="col-sm-9">
                    <input class="form-control" type="file">
                </div>
            </div>
            <div class="row">
                <label class="col-sm-1 col-form-label"></label>
                <label class="col-sm-2 col-form-label">Lainnya</label>
                <div class="col-sm-9">
                    <input class="form-control" type="file">
                </div>
            </div>
            <div class="row">
                <label class="col-sm-3 col-form-label">Bidang</label>
                <div class="col-sm-9">
                    <input class="form-control">
                </div>
            </div>
            <div class="row">
                <label class="col-sm-3 col-form-label">Produk yg dihasilkan</label>
                <div class="col-sm-9">
                    <input class="form-control select-two">
                </div>
            </div>
            <div class="row">
                <label class="col-sm-3 col-form-label">Bahan baku yang dibutuhkan</label>
                <div class="col-sm-9">
                    <input class="form-control select-two">
                </div>
            </div>
            <br/>
            <div class="row">
                <label class="col-sm-9 col-form-label"></label>
                <div class="col-sm-3">
                    <button class='ps-btn btn-block'>Simpan</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
//    $(".select-two").select2({
//        tags: true,
//        tokenSeparators: [',', ' ']
//    });
</script>