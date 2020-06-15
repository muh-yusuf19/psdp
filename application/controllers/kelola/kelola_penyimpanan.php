<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_penyimpanan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_penyimpanan');
		$this->load->model('m_status');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_penyimpanan');
		$data['kelola_penyimpanan'] = $this->m_kelola_penyimpanan->getData();
		$this->load->view('kelola/kelola_penyimpanan/v_kelola_penyimpanan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola penyimpanan";
		$subheader = "kelola_penyimpanan"; //check kelolanya
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_penyimpanan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_penyimpanan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kelola_penyimpanan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'tahun_anggaran', //check namanyaa
					'label' => 'tahun_anggaran',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			// $data['status']=$this->m_status->getData();
			$this->load->view('kelola/kelola_penyimpanan/v_kelola_penyimpanan_add');
		}
		else
		{
			$datapost = get_post_data(array('id','tahun_anggaran','total_anggaran')); 
			$this->m_kelola_penyimpanan->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_penyimpanan","#content")');
			$this->fungsi->message_box("Data Kelola Anggaran sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola kelola_penyimpanan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_penyimpanan'); //untuk mengechek batasan akses
		$this->load->library('form_validation');
		$config = array(
				
				array(
					'field'	=> 'tahun_anggaran',
					'label' => 'tahun_anggaran',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_penyimpanan',array('id'=>$id));
			$this->load->view('kelola/kelola_penyimpanan/v_kelola_penyimpanan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','tahun_anggaran','total_anggaran'));
			$this->m_kelola_penyimpanan->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_penyimpanan","#content")');
			$this->fungsi->message_box("Data Kelola Anggaran sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola kelola_penyimpanandengan data sbb:",true);
		}
	}
	public function delete($id) 
	{
		$this->fungsi->check_previleges('kelola_penyimpanan');
		if($id == '' || !is_numeric($id)) die;
		$this->m_kelola_penyimpanan->deleteData($id);
		$this->fungsi->run_js('load_silent("kelola/kelola_penyimpanan","#content")');
		$this->fungsi->message_box("Data kelola penyimpanan berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}
}
