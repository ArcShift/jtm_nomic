<header class="header header--mobile header--mobile-product" data-sticky="true"><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <div class="navigation--mobile">
        <div class="navigation__left"><a class="header__back" href="#" onclick="window.history.go(-1); return false;"><i class="icon-chevron-left"></i><strong>Kembali</strong></a></div>
        <div class="navigation__right">
            <div class="header__actions">

                <?php 
                $cek_keranjang = $this->db->query("SELECT a.*, b.*, c.nama_reseller FROM rb_penjualan_temp a JOIN rb_produk b ON a.id_produk=b.id_produk JOIN rb_reseller c ON b.id_reseller=c.id_reseller where a.session='".$this->session->idp."' ORDER BY id_penjualan_detail ASC");
                $total = $this->db->query("SELECT sum((a.harga_jual-a.diskon)*a.jumlah) as total, sum(b.berat*a.jumlah) as total_berat FROM `rb_penjualan_temp` a JOIN rb_produk b ON a.id_produk=b.id_produk where a.session='".$this->session->idp."'")->row_array();
                echo "<div class='ps-cart--mini'><a class='header__extra' href='#'><i class='icon-bag2'></i><span><i>".$cek_keranjang->num_rows()."</i></span></a>
                        <div class='ps-cart__content'>
                            <div class='ps-cart__items'>";
                            $no = 1;
                            foreach ($cek_keranjang->result_array() as $row){
                            $sub_total = (($row['harga_jual']-$row['diskon'])*$row['jumlah']);
                            $ex = explode(';', $row['gambar']);
                            if (trim($ex[0])==''){ $foto_produk = 'no-image.png'; }else{ $foto_produk = $ex[0]; }
                                echo "<div class='ps-product--cart-mobile'>
                                    <div class='ps-product__thumbnail'><a href='".base_url()."produk/detail/$row[produk_seo]'><img src='".base_url()."asset/foto_produk/$foto_produk' alt='$row[nama_produk]'></a></div>
                                    <div class='ps-product__content'><a class='ps-product__remove' href='".base_url()."produk/keranjang_delete/$row[id_penjualan_detail]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><i class='icon-cross'></i></a><a href='".base_url()."produk/detail/$row[produk_seo]'>MVMTH Classical Leather Watch In Black</a>
                                    <small>$row[jumlah] x ".rupiah($row['harga_jual']-$row['diskon'])."</small>
                                    </div>
                                </div>";
                            }
                            echo "</div>
                            <div class='ps-cart__footer'>
                                <h3>Sub Total : <strong>Rp ".rupiah(($total['total']-$total['diskon_total'])+$total['ongkir'])."</strong></h3>
                                <figure><a class='ps-btn' href='".base_url()."produk/keranjang'>Keranjang</a><a class='ps-btn' href='".base_url()."produk/checkouts'>Pembayaran</a></figure>
                            </div>
                        </div>
                    </div>";
                ?>

                <div class="ps-block--user-header">
                    <div class="ps-block__left"><i class="icon-user"></i></div>
                    <div class="ps-block__right"><a href="<?php echo base_url(); ?>auth/login">Login</a><a href="<?php echo base_url(); ?>auth/register">Register</a></div>
                </div>
            </div>
        </div>
    </div>
</header>
<?php 
    echo "<form action='".base_url()."produk/keranjang/$record[id_reseller]/$record[id_produk]' method='POST'>";
?>
    <nav class="navigation--mobile-product">
        <button type='submit' name='keranjang' class="ps-btn ps-btn--black rounded-0">Masuk Keranjang</button>
        <input class="form-control" type="hidden" value='1' name='qty'>
        <button type='submit' name='beli' class="ps-btn btn-block rounded-0">Beli Sekarang</button>
    </nav>
</form>
                        