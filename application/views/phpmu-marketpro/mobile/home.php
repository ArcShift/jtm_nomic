<header class="header header--mobile" data-sticky="true"><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <div class="navigation--mobile">
        <div class="navigation__left">
        <?php 
        $logo = $this->model_utama->view_ordering_limit('logo','id_logo','DESC',0,1);
        foreach ($logo->result_array() as $row) {
            echo "<a class='ps-logo' href='".base_url()."'><img src='".base_url()."asset/logo/$row[gambar]'/></a>";
        }
        ?>
        </div>
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
                    <div class="ps-block__left"><a href='<?php echo base_url(); ?>auth/login'><i class="icon-user"></i></a></div>
                    <div class="ps-block__right"><a href="<?php echo base_url(); ?>auth/login">Login</a><a href="<?php echo base_url(); ?>auth/register">Register</a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="ps-search--mobile">
        <form class="ps-form--search-mobile" action="<?php echo base_url() ?>produk" method="POST">
            <div class="form-group--nest">
                <input class="form-control" name='kata' type="text" placeholder="Aku Mau Belanja...">
                <button type='submit' name='cari'><i class="icon-magnifier"></i></button>
            </div>
        </form>
    </div>
</header>
<div class="ps-panel--sidebar" id="cart-mobile">
    <div class="ps-panel__header">
        <h3>Shopping Cart</h3>
    </div>
    <div class="navigation__content">
        <div class="ps-cart--mobile">
            <div class="ps-cart__content">

                <?php 
                    $no = 1;
                    foreach ($cek_keranjang->result_array() as $row){
                    $sub_total = (($row['harga_jual']-$row['diskon'])*$row['jumlah']);
                    $ex = explode(';', $row['gambar']);
                    if (trim($ex[0])==''){ $foto_produk = 'no-image.png'; }else{ $foto_produk = $ex[0]; }
                        echo "<div class='ps-product--cart-mobile'>
                            <div class='ps-product__thumbnail'><a href='".base_url()."produk/detail/$row[produk_seo]'><img src='".base_url()."asset/foto_produk/$foto_produk' alt='$row[nama_produk]'></a></div>
                            <div class='ps-product__content'><a class='ps-product__remove' href='".base_url()."produk/keranjang_delete/$row[id_penjualan_detail]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><i class='icon-cross'></i></a><a href='".base_url()."produk/detail/$row[produk_seo]'>MVMTH Classical Leather Watch In Black</a>
                            <br><small>$row[jumlah] x ".rupiah($row['harga_jual']-$row['diskon'])."</small>
                            <p><strong>Penjual :</strong> $row[nama_reseller]</p>
                            
                            </div>
                        </div>";
                    }
                ?>
                
            </div>
            <div class="ps-cart__footer">
                <h3>Sub Total:<strong><?php echo "Rp ".rupiah(($total['total']-$total['diskon_total'])+$total['ongkir']); ?></strong></h3>
                <figure><a class="ps-btn" href="<?php echo base_url(); ?>produk/keranjang">Keranjang</a><a class="ps-btn" href="<?php echo base_url(); ?>produk/checkouts">Pembayaran</a></figure>
            </div>
        </div>
    </div>
</div>
<div class="ps-panel--sidebar" id="navigation-mobile">
    <div class="ps-panel__header">
        <h3>Kategori Produk</h3>
    </div>
    <div class="ps-panel__content">
        <ul class="menu--mobile">
            <?php 
                $kategori = $this->model_app->view('rb_kategori_produk');
                foreach ($kategori->result_array() as $rows) {
                    $sub_kategori = $this->db->query("SELECT * FROM rb_kategori_produk_sub where id_kategori_produk='$rows[id_kategori_produk]'");
                    if ($sub_kategori->num_rows()>=1){
                        echo "<li class='current-menu-item menu-item-has-children has-mega-menu'><a href='".base_url()."produk/kategori/$rows[kategori_seo]'>$rows[nama_kategori]</a> <span class='sub-toggle'></span> ";
                    }else{
                        echo "<li class='current-menu-item '><a href='".base_url()."produk/kategori/$rows[kategori_seo]'>$rows[nama_kategori]</a></li>";
                    }

                    if ($sub_kategori->num_rows()>=1){
                        echo "<div class='mega-menu'>
                            <div class='mega-menu__column'>
                                <ul class='menu-custom'>";
                            foreach ($sub_kategori->result_array() as $row) {
                                echo "<li class='current-menu-item '><a href='".base_url()."produk/subkategori/$row[kategori_seo_sub]'>$row[nama_kategori_sub]</a></li>";
                            }
                        echo "</ul></div></div>";
                    }
                    echo "</li>";
                }
            ?>
        </ul>
    </div>
</div>
<div class="navigation--list">
    <div class="navigation__content">
        <a class="navigation__item ps-toggle--sidebar" href="#menu-mobile"><i class="icon-menu"></i><span> Menu</span></a>
        <a class="navigation__item ps-toggle--sidebar" href="#navigation-mobile"><i class="icon-list4"></i><span> Kategori</span></a>
        <a class="navigation__item ps-toggle--sidebar" href="#search-sidebar"><i class="icon-magnifier"></i><span> Cari</span></a>
        <a class="navigation__item ps-toggle--sidebar" href="#cart-mobile"><i class="icon-bag2"></i><span> Keranjang</span></a>
    </div>
</div>
<div class="ps-panel--sidebar" id="search-sidebar">
    <div class="ps-panel__header">
        <form class="ps-form--search-mobile" action="<?php echo base_url() ?>produk" method="POST">
            <div class="form-group--nest">
                <input class="form-control" name='kata' type="text" placeholder="Aku Mau Belanja...">
                <button type='submit' name='cari'><i class="icon-magnifier"></i></button>
            </div>
        </form>
    </div>
    <div class="navigation__content"></div>
</div>
<div class="ps-panel--sidebar" id="menu-mobile">
    <div class="ps-panel__header">
        <h3>Menu</h3>
    </div>
    <div class="ps-panel__content">
    <?php 
        function main_menu1() {
            $ci = & get_instance();
            $query = $ci->db->query("SELECT id_menu, nama_menu, link, id_parent FROM menu where aktif='Ya' AND position='Bottom' order by urutan");
            $menu = array('items' => array(),'parents' => array());
            foreach ($query->result() as $menus) {
                $menu['items'][$menus->id_menu] = $menus;
                $menu['parents'][$menus->id_parent][] = $menus->id_menu;
            }
            if ($menu) {
                $result = build_main_menu1(0, $menu);
                return $result;
            }else{
                return FALSE;
            }
        }

        function build_main_menu1($parent, $menu) {
            $ci = & get_instance();
            $html = "";
            if (isset($menu['parents'][$parent])) {
                if ($parent=='0'){
                    $html .= "<ul class='menu--mobile'>";
                }else{
                    $html .= "<ul class='sub-menu'>";
                }
                foreach ($menu['parents'][$parent] as $itemId) {
                    if (!isset($menu['parents'][$itemId])) {
                        if(preg_match("/^http/", $menu['items'][$itemId]->link)) {
                            $html .= "<li class='current-menu-item'><a target='_BLANK' href='".$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a></li>";
                        }else{
                            $html .= "<li class='current-menu-item'><a href='".base_url().''.$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a></li>";
                        }
                    }
                    if (isset($menu['parents'][$itemId])) {
                        if(preg_match("/^http/", $menu['items'][$itemId]->link)) {
                            $html .= "<li class='menu-item-has-children has-mega-menu'><a target='_BLANK' href='".$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a> <span class='sub-toggle'></span>";
                        }else{
                            $html .= "<li class='menu-item-has-children'><a href='".base_url().''.$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a> <span class='sub-toggle'></span>";
                        }
                        $html .= build_main_menu1($itemId, $menu);
                        $html .= "</li>";
                    }
                }

                if ($parent=='0'){
                    if ($ci->session->level=='konsumen'){ 
                        if (reseller($ci->session->id_konsumen)!=''){
                            $html .= "<li class='menu-item-has-children'><a href='#'> Menu Toko</a> <span class='sub-toggle'></span>
                                    <ul class='sub-menu'>
                                        <li class='current-menu-item'><a href='".base_url()."members/profil_toko'>Pengaturan Toko</a></li>
                                        <li class='current-menu-item'><a href='".base_url()."members/produk'>Daftar Produk</a></li>
                                        <li class='current-menu-item'><a href='".base_url()."members/alamat_cod'>Alamat COD</a></li>
                                        <li class='current-menu-item'><a href='".base_url()."members/pembelian'>Orders Pusat</a></li>
                                        <li class='current-menu-item'><a href='".base_url()."members/penjualan'>Orders Masuk</a></li>
                                        <li class='current-menu-item'><a href='".base_url()."members/withdraw'>Tarik Dana</a></li>
                                        <li class='current-menu-item'><a href='".base_url()."members/upgrade'><i class='fa fa-star text-yellow'></i> <span class='blink_me'>Upgrade Toko</span></a></li>
                                    </ul>
                            </li>";
                        }else{
                            $html .= "<li class='current-menu-item'><a href='".base_url()."members/buat_toko'>Buat Toko</a></li>";
                        }
                    } 

                    if ($ci->session->id_konsumen!=''){
                        $html .= "<li class='current-menu-item'><a href='".base_url()."members/profile'>Akun</a></li>
                                  <li class='current-menu-item'><a href='".base_url()."auth/logout'>Logout</a></li>";
                    }else{
                        $html .= "<li class='current-menu-item'><a href='".base_url()."auth/login'>Login</a></li>";
                    }
                }
                $html .= "</ul>";
            }
            return $html;
        }
        echo main_menu1();
    ?>

    </div>
</div>