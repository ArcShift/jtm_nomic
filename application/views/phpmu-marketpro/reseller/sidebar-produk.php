<div class="ps-layout__left">
    <aside class="widget widget_shop">
        <h4 class="widget-title">Kategori</h4>
        <ul class="ps-list--categories">
            <?php 
                $kategori = $this->model_app->view('rb_kategori_produk');
                foreach ($kategori->result_array() as $rows) {
                    $sub_kategori = $this->db->query("SELECT * FROM rb_kategori_produk_sub where id_kategori_produk='$rows[id_kategori_produk]'");
                    echo "<li class='current-menu-item menu-item-has-children'><a href='".base_url()."produk/kategori/$rows[kategori_seo]'>$rows[nama_kategori]</a><span class='sub-toggle'><i class='fa fa-angle-down'></i></span>
                    <ul class='sub-menu'>";
                    if ($sub_kategori->num_rows()>=1){
                        foreach ($sub_kategori->result_array() as $row) {
                        echo "<li class='current-menu-item '><a href='".base_url()."produk/subkategori/$row[kategori_seo_sub]'>$row[nama_kategori_sub]</a></li>";
                        }
                    }
                    echo "</ul></li>";
                }
            ?>
        </ul>
    </aside>
    <aside class="widget widget_shop">
        <h4 class="widget-title">Filter Merek</h4>
        <div class="widget__content">
        <ul>
        <?php 
            $tag = $this->model_utama->view_ordering_limit('tagpro','id_tag','RANDOM',0,20);
            foreach ($tag->result_array() as $row) {
                $total = $this->db->query("SELECT * FROM rb_produk where tag LIKE '%$row[tag_seo]%'")->num_rows();
                echo "<li><a style='border-bottom:1px dotted #cecece; display:block' href='".base_url()."tag/produk/$row[tag_seo]'>$row[nama_tag] <span class='pull-right'>($total)</span></a></li>";
            }
        ?>
        </ul>
        </div>

        
        <figure>
            <h4 class="widget-title">Filter Harga</h4>
            <form class="ps-form--widget-search" action="<?php echo base_url(); ?>produk" method="POST">
                <input class="form-control formatNumber" type="text" name='dari' value='<?php echo cetak($this->input->post('dari')); ?>' placeholder="Min..." autocomplete='off'>
                <input class="form-control formatNumber" type="text" name='sampai' value='<?php echo cetak($this->input->post('sampai')); ?>' placeholder="Max..." autocomplete='off'>
                <button type='submit' name='cari' class='ps-btn ps-btn--black ml-3' style='width:100%; position: inherit; margin-top: 25px; color: #fff;'>Tampilkan</button>
            </form>
        </figure>

        
    </aside>
</div>