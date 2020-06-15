<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pengajuan_barang extends CI_Model
{
    public function getData()
    {
        $this->db->from('pengajuan_barang');
        return $this->db->get();
    }

    public function insertData($data)
    {
        $this->db->insert('pengajuan_barang', $data);
    }

    public function updateData($data)
    {
        $this->db->where('id',$data['id']);
        $this->db->update('pengajuan_barang',$data);
    }

    public function deleteData($id)
	{
		$this->db->where('id', $id);
        $this->db->delete('pengajuan_barang');
	}
}