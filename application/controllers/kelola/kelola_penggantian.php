<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_penggantian extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_penggantian');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_penggantian');
		$data['kelola_penggantian'] = $this->m_kelola_penggantian->getData();
		$this->load->view('kelola/kelola_penggantian/v_kelola_penggantian_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Penggantian";
		$subheader = "kelola_penggantian"; //check kelolanya
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_penggantian/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_penggantian/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kelola_penggantian');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id_peminjaman', //check namanyaa
					'label' => 'id_peminjaman',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('kelola/kelola_penggantian/v_kelola_penggantian_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_peminjaman','nama','nomor_induk','jenis','nama_barang','merk_barang','seri_barang','status_penggantian','status' )); 
			$this->m_kelola_penggantian->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_penggantian","#content")');
			$this->fungsi->message_box("Data Kelola Penggantian sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola kelola_penggantian dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_penggantian'); //untuk mengechek batasan akses
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_penggantian',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/kelola_penggantian/v_kelola_penggantian_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_peeminjaman','nama','nomor_induk','jenis','nama_barang','merk_barang','seri_barang','status_penggantian','status'));
			$this->m_kelola_penggantian->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_penggantian","#content")');
			$this->fungsi->message_box("Data Kelola Penggantian sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola kelola_penggantian dengan data sbb:",true);
		}
	}
	public function delete($id) 
	{
		$this->fungsi->check_previleges('kelola_penggantian');
		if($id == '' || !is_numeric($id)) die;
		$this->m_kelola_penggantian->deleteData($id);
		$this->fungsi->run_js('load_silent("kelola/kelola_penggantian","#content")');
		$this->fungsi->message_box("Data kelola penggantian berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
}
}