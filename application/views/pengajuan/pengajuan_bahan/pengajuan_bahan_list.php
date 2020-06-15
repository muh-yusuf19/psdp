<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
        <div class="col-lg-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Master Bahan</h3>

                    <div class="box-tools pull-right">
                    <?php
                    $sesi = from_session('level');
                    if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                        echo button('load_silent("master/master_bahan/form/base","#modal")','Add New Nama Bahan','btn btn-success');
                    } else {
                        # code...
                    }
                    ?>
                    </div>
                </div>
                <div class="box-body">
                    <table width="100%" id="tableku" class="table table-striped">
                        <thead>
                            <th>No</th>
                            <th>Kode</th>
                            <th>Jenis Bahan</th>
                            <th>Nama Bahan</th>
                            <th>Tahun</th>
                            <th>Pengarang</th>
                            <th>Act</th>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>