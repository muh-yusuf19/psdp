<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<?php $row = fetch_single_row($edit); ?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Barang</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'nama_barang','class'=>'form-control', 'value'=>$row->nama_barang));?>
            <?php echo form_error('nama_barang');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Satuan Barang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'satuan_barang','class'=>'form-control', 'value'=>$row->satuan_barang));?>
            <?php echo form_error('satuan_barang');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah Barang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jmlh_barang','class'=>'form-control', 'value'=>$row->jmlh_barang));?>
            <?php echo form_error('stock_barang');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Barang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_barang','class'=>'form-control', 'value'=>$row->harga_barang));?>
            <?php echo form_error('harga_barang');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Alasan Pengajuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'alasan_pengajuan','class'=>'form-control', 'type'=>'date', 'value'=>$row->alasan_pengajuan));?>
            <?php echo form_error('tgl_masuk');?>
            <span id="check_data"></span>
            </div>
        </div>
                  
        <div class="form-group">
            <label class="col-sm-4 control-label">Alamat Pegajuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'alamat_pengajuan','class'=>'form-control', 'value'=>$row->alamat_pengajuan));?>
            <?php echo form_error('keterangan');?>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pengajuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_pengajuan','class'=>'form-control', 'value'=>$row->tgl_pengajuan));?>
            <?php echo form_error('keterangan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_alat/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>