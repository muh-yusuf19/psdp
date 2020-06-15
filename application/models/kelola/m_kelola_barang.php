<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_barang extends CI_Model
{
    public function getData()
    {
        return $this->db->from('kelola_barang')->get();
    }

    public function insertData($data)
    {
        return $this->insert('kelola_barang', $data);
    }

    public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('kelola_barang',$data);
	}

    public function deleteData($data)
    {
        $this->db->where('id', $data);
        $this->db->delete('kelola_barang');
    }
}