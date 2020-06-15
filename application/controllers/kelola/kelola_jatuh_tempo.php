<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_jatuh_tempo extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_jatuh_tempo');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_jatuh_tempo');
		$data['kelola_jatuh_tempo'] = $this->m_kelola_jatuh_tempo->getData();
		$this->load->view('kelola/kelola_jatuh_tempo/v_kelola_jatuh_tempo_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Jatuh Tempo";
		$subheader = "kelola_jatuh_tempo"; //check kelolanya
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_jatuh_tempo/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_jatuh_tempo/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_jatuh_tempo'); //untuk mengechek batasan akses
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'id_peminjaman',
					'label' => 'id_peminjaman',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_jatuh_tempo',array('id'=>$id));
			$this->load->view('kelola/kelola_jatuh_tempo/v_kelola_jatuh_tempo_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_peminjaman','nama_peminjam','nomor_induk','status_user','kategori_peminjaman','tanggal_kembali','status'));
			$this->m_kelola_jatuh_tempo->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_jatuh_tempo","#content")');
			$this->fungsi->message_box("Data Kelola Jatuh Tempo sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola kelola_jatuh_tempo dengan data sbb:",true);
		}
	}
	public function delete($id) 
	{
		$this->fungsi->check_previleges('kelola_jatuh_tempo');
		if($id == '' || !is_numeric($id)) die;
		$this->m_kelola_jatuh_tempo->deleteData($id);
		$this->fungsi->run_js('load_silent("kelola/kelola_jatuh_tempo","#content")');
		$this->fungsi->message_box("Data jatuh tempo berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}
}
