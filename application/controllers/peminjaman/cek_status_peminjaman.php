<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class cek_status_peminjaman extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('peminjaman/m_cek_status_peminjaman');
	}

	public function index()
	{
		$this->fungsi->check_previleges('cek_status_peminjaman');
		$data['cek_status_peminjaman'] = $this->m_cek_status_peminjaman->getData();
		$this->load->view('peminjaman/cek/v_cek_status_peminjaman_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Cek Status Peminjaman";
		$subheader = "Cek Status Peminjaman"; //check kelolanya
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("peminjaman/cek_status_peminjaman/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("peminjaman/cek_status_peminjaman/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('cek_status_peminjaman'); //untuk mengechek batasan akses
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
			$data['edit'] = $this->db->get_where('cek_status_peminjaman',array('id'=>$id));
			$this->load->view('peminjaman/cek/v_cek_status_peminjaman_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_peminjaman','kategori_peminjaman','tanggal_pinjam','tanggal_kembali'));
			$this->m_cek_status_peminjaman
->updateData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/cek_status_peminjaman","#content")');
			$this->fungsi->message_box("Data Cek Status Peminjaman sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola cek_status_peminjaman dengan data sbb:",true);
		}
	}

}
