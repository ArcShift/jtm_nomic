<ul class="ps-section__links">
    <?php 
        $data = array('<i class="icon-user"></i> Biodata Diri','<i class="icon-couch"></i> Sosial Media','<i class="icon-bag-dollar"></i> Rekening Bank','<i class="icon-heart"></i> Wishlist','<i class="icon-bag2"></i> Pembelian');
        $link = array('profile','sosial_media','rekening_bank','wishlist','orders_report');
        for ($i=0; $i < count($data); $i++) { 
        if ($this->uri->segment('2')==$link[$i]){
            echo "<li class='active'><a href='".base_url()."members/".$link[$i]."'>".$data[$i]."</a></li>";
        }else{
            echo "<li><a href='".base_url()."members/".$link[$i]."'>".$data[$i]."</a></li>";
        }
        }
    ?>
</ul>