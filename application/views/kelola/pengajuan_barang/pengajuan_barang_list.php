<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Pengajuan</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/pengajuan_barang/form/base","#modal")','Tambah Pengajuan','btn btn-success');
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
                    <th>Nama Barang</th>
                    <th>Satuan Barang</th>
                    <th>Jumlah Barang</th>
                    <th>Harga Barang</th>
                    <th>Alasan Pengajuan</th>
                    <th>Alamat Pengajuan</th>
                    <th>Tanggal Pengajuan</th>
                    <th>Act</th>
                </thead>
                <tbody>
                <?php 
                $i = 1;
                foreach($pengajuan->result() as $row): ?>
                <tr>
                    <td align="center"><?=$i++?></td>
                    <td align="center"><?=$row->nama_barang ?></td>
                    <td align="center"><?=$row->satuan_barang ?></td>
                    <td align="center"><?=$row->jmlh_barang ?></td>
                    <td align="center"><?=$row->harga_barang ?></td>
                    <td align="center"><?=$row->alasan_pengajuan ?></td>
                    <td align="center"><?=$row->alamat_pengajuan ?></td>
                    <td align="center"><?=standard_date('DATE_RFC822', strtotime($row->tgl_pengajuan))?></td>
                    <td align="center">
                    <?php
                    $sesi = from_session('level');
                    if ($sesi == '1' || $sesi == '2' || $sesi == '4') {
                        echo button('load_silent("kelola/pengajuan_barang/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
                    } else {
                        # code...
                    }
                    ?>
                    <?php echo button('load_silent("kelola/pengajuan_barang/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?>  
                    </a>
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