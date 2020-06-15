view list

<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Penggantian</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/kelola_penggantian/form/base","#modal")','Add New Nama Penggantian','btn btn-success');
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
                <th>id_peminjaman</th>
                <th>Nama</th>
                <th>Nomor Induk</th>
                <th>Jenis</th>
                <th>Nama Barang</th>
                <th>Merk Barang</th>
                <th>Seri Barang</th>
                <th>Status Penggantian</th>
                <th>status</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($kelola_penggantian->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id_peminjaman?></td>
            <td align="center"><?=$row->nama?></td>
            <td align="center"><?=$row->nomor_induk?></td>
            <td align="center"><?=$row->jenis?></td>
            <td align="center"><?=$row->nama_barang?></td>
            <td align="center"><?=$row->merk_barang?></td>
            <td align="center"><?=$row->seri_barang?></td>
            <td align="center"><?=$row->status_penggantian?></td>
            <td align="center"><?=$row->status?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4' ) {
                echo button('load_silent("Kelola/kelola_penggantian/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
              <?php echo button('load_silent("kelola/kelola_penggantian/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?>
            </td>
          </tr>

        <?php endforeach;?>
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