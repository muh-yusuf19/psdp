<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>
    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">From Update Profil</h3>
                <div class="box-tools pull-right">
                  <?php echo button('load_silent("cms/profile/ubah_password/","#content")','Ubah Password','btn btn-info','data-toggle="tooltip" title="Ubah Password"');?> 
            </div>
          <div class="box-body">
            <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
            
            <div class="form-group">
                <label class="col-sm-2 control-label">Nama</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'id','value'=>$row->id,'id'=>'id','class'=>'form-control','style'=>'display:none'));?>
                
                <?php echo form_input(array('name'=>'nama','id'=>'nama','value'=>$row->nama,'class'=>'form-control'));?>
                <?php echo form_error('nama');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Email</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'email','id'=>'email','value'=>$row->email,'class'=>'form-control'));?>
                <?php echo form_error('email');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Username</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'username','id'=>'username','value'=>$row->username,'class'=>'form-control'));?>
                <?php echo form_error('username');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Jenis Kelamin</label>
                <div class="col-sm-8">
                  <?php echo form_dropdown('jenis_kelamin',$jenis_kelamin,$row->jenis_kelamin,'id="jenis_kelamin" class="form-control select2"');?>
                  <?php echo form_error('jenis_kelamin', '<span class="error-span">', '</span>'); ?>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-sm-2 control-label" for="userfile">Picture</label>
                <div class="col-sm-8">
                <?php echo form_upload(array('name'=>'ufile','id'=>'ufile','class'=>'form-control'));?>
                <!-- <span id='info'></span></label> -->
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">No Hp</label>
                <div class="col-sm-8">
                <?php echo form_input(array('name'=>'no_hp','id'=>'no_hp','value'=>$row->no_hp,'class'=>'form-control'));?>
                <?php echo form_error('no_hp');?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Simpan</label>
                <div class="col-sm-8 tutup">
                <?php
                //echo button('send_form(document.faddmenugrup,"cms/user/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
                ?>
                <input onclick="save()" type="submit" value="Simpan" class="btn btn-success">
                </div>
            </div>
        </form>
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
$(document).ready(function() {
    $("#ufile").fileinput({
    'showUpload'            :true,
      initialPreview: '<img src="<?php echo base_url().$row->gambar; ?>" class="file-preview-image">'
    });
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});

function save()
{
    var path = $("#ufile").val().replace('C:\\fakepath\\', '');
    var ida = $('#id').val();
    if (path == '') {
        $.ajax({
        type: "POST",
        url: "<?= site_url('kelola/kelola_user/show_editForm_user/"+ida+"')?>",
        dataType:'json',
        data: {
            id        : $("#id").val(),
            nama        : $("#nama").val(),
            email       : $("#email").val(),
            username    : $("#username").val(),
            jenis_kelamin    : $("#jenis_kelamin").val(),
            password    : $("#password").val(),
            no_hp       : $("#no_hp").val(),
          
        },
        success   : function(data)
        {
          $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("pak/dashboard/status_pak","#content");
        }
      });

    } else{
        $.ajaxFileUpload
          ({
            url: "<?= site_url('kelola/kelola_user/show_editForm_file_user/"+ida+"')?>",
            secureuri:false,
            fileElementId:'ufile',
            dataType: 'json',
            data: {
                id       : $("#id").val(),
                nama        : $("#nama").val(),
                email       : $("#email").val(),
                username    : $("#username").val(),
                jenis_kelamin    : $("#jenis_kelamin").val(),
                password    : $("#password").val(),
                no_hp       : $("#no_hp").val(),
              },
            success: function (data)
            {
              $.growl.notice({ title: 'Berhasil', message: data['msg'] });
              load_silent("pak/dashboard/status_pak","#content");
            },
            error: function (data, e)
            {
              $("#info").html(e);
            }
          })

    };
  
  return false;
}
</script>