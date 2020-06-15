<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengajuan_barang extends CI_Controller
{
    public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_pengajuan_barang');
	}


    public function index()
    {
        $data['pengajuan'] = $this->m_pengajuan_barang->getData();
        $this->load->view('kelola/pengajuan_barang/pengajuan_barang_list', $data);
    }

    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Pengajuan Barang";
		$subheader = "pengajuan_barang"; //check kelolanya
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/pengajuan_barang/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/pengajuan_barang/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		// $this->fungsi->check_previleges('kelola_penyimpanan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_barang', //check namanyaa
					'label' => 'nama_barang',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			// $data['status']=$this->m_status->getData();
			$this->load->view('kelola/pengajuan_barang/pengajuan_barang_add');
		}
		else
		{
			$datapost = get_post_data(array('id','nama_barang','satuan_barang', 'jmlh_barang', 'harga_barang', 'alasan_pengajuan', 'alamat_pengajuan', 'tgl_pengajuan')); 
			$this->m_pengajuan_barang->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/pengajuan_barang","#content")');
			$this->fungsi->message_box("Data Kelola Anggaran sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola kelola_penyimpanan dengan data sbb:",true);
		}
	}

    public function show_editForm($id='')
	{
		// $this->fungsi->check_previleges('kelola_bahan');
		$this->load->library('form_validation');
		$config = array(
			array(
				'field'	=> 'nama_barang',
				'label' => 'nama_barang',
				'rules' => 'required'
            ),
            array(
				'field'	=> 'satuan_barang',
				'label' => 'satuan_barang',
				'rules' => 'required'
			)
		);

	    $this->form_validation->set_rules($config);
	    $this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('pengajuan_barang',array('id'=>$id));
			
			$this->load->view('kelola/pengajuan_barang/pengajuan_barang_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_barang','satuan_barang', 'jmlh_barang', 'harga_barang', 'alasan_pengajuan', 'alamat_pengajuan', 'tgl_pengajuan'));
			$this->m_pengajuan_barang->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/pengajuan_barang","#content")');
			$this->fungsi->message_box("Data Kelola Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola kelola_alat dengan data sbb:",true);
		}
	}

    public function delete($id)
    {
        // $this->fungsi->check_previleges('kelola_bahan');
		if($id == '' || !is_numeric($id)) die;
		$this->m_pengajuan_barang->deleteData($id);
		$this->fungsi->run_js('load_silent("kelola/pengajuan_barang","#content")');
		$this->fungsi->message_box("Data Kelola Pengajuan Barang Berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
    }
}