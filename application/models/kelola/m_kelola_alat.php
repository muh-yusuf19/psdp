<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_alat extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('kelola_alat ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('kelola_alat',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('kelola_alat',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_alat');
	}

	public function join()
	{
        $this->db->select('kelola_alat.*, master_nama_alat.nama_alat, master_satuan.nama_satuan, kategori.kategori_alat_bahan, master_sumber_pendanaan.sumber_pendanaan, kelola_penyimpanan.Nama_penyimpanan');
		$this->db->from('kelola_alat');
		$this->db->join('master_nama_alat', 'master_nama_alat.id = kelola_alat.nama_alat');
		$this->db->join('master_satuan', 'master_satuan.id = kelola_alat.satuan_alat');
		$this->db->join('kategori', 'kategori.id = kelola_alat.kategori');
		$this->db->join('master_sumber_pendanaan', 'master_sumber_pendanaan.id = kelola_alat.pendanaan');
		$this->db->join('kelola_penyimpanan', 'kelola_penyimpanan.id = kelola_alat.lokasi');
		return $this->db->get();
	}

    public function getList()
    {
        $this->db->from('cms_user')->get();
    }

}

/* End of file m_nama_alat.php */
/* Location: ./application/models/master/m_nama_alat.php */