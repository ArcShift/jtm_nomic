<?php 
foreach($produk->data as $item){
    if ($item->pembelianoperator_id==$operator_id){
        if ($item->status=='0'){ $status = 'disabled'; }else{ $status = ''; }
        echo "<option value='".$item->code."|".$item->price."' $status>".$item->product_name." (Rp ".rupiah($item->price).")</option>";
    }
}