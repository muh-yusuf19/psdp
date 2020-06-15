<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pengajuan_bahan extends CI_Controller {


	public function __construct()
	{
		parent::__construct();

		$this->load->helper('asset');
		$this->load->model('pengajuan/m_pengajuan_bahan');
	}
	public function index()
	{
		$this->load->view('pengajuan/pengajuan_bahan/pengajuan_bahan_list');
    }

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */