<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pengajuan_alat extends CI_Model
{
    public function join()
	{
        $this->db->select('pengajuan_alat.*, master_nama_alat.nama_alat, master_satuan.nama_satuan,');
        $this->db->from('pengajuan_alat');
        $this->db->join('master_nama_alat', 'master_nama_alat.id = pengajuan_alat.nama_alat');
        $this->db->join('master_satuan', 'master_satuan.id = pengajuan_alat.satuan_alat');
        return $this->db->get();
	}

    public function insertData($data)
	{
		
        $this->db->insert('pengajuan_alat',$data);
       
	}
}