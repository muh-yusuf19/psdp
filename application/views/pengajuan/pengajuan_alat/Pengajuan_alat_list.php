<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="col-lg-12">
        <div class="box box-primary">
            <div class="box-header with-border">
            <h3 class="box-title">Pengelolaan Bahan Laboratorium Siladu</h3>

            <div class="box-tools pull-right">
            <?php
                $sesi = from_session('level');
                if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("pengajuan/pengajuan_alat/form/base","#modal")','Tambah Pengajuan Alat','btn btn-success');
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
                    <th>Nama Alat</th>
                    <th>Harga Per Alat</th>
                    <th>Jumlah</th>
                    <th>Tanggal Pengajuan</th>
                    <th>Status</th>
                    <th>Act</th>
                </thead>
                <tbody>
                
                </tbody>
            </table>
            </div>
            </div>
        </div>
    </div>