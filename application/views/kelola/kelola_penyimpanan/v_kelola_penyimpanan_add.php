<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Tahun Anggaran</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tahun_anggaran','class'=>'form-control'));?>
            <?php echo form_error('Nama_penyimpanan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Total Anggaran</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'total_anggaran','class'=>'form-control'));?>
            <?php echo form_error('status');?>
            <span id="check_data"></span>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_penyimpanan/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>