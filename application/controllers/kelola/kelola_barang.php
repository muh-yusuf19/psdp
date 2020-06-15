<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_barang extends CI_Controller
{
    public function __construct()
	{
        parent::__construct();
        $this->fungsi->restrict();
        $this->load->model('kelola/m_kelola_barang');
    }


    public function index()
    {
        $this->fungsi->check_previleges('kelola_barang');
        $data = [
            'kelola' => $this->m_kelola_barang->getData(),
        ];
        $this->load->view('kelola/kelola_barang/kelola_barang_list', $data);
    }

    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Barang";
		$subheader = "kelola_barang";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_barang/addForm/","#divsubcontent")');
		}
		else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_barang/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

    public function addForm()
	{
		// $this->fungsi->check_previleges('kelola_barang');
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
			// $data['status']='';
			$this->load->view('kelola/kelola_barang/kelola_barang_add');
		}
		else
		{
			$datapost = get_post_data(array('id','nama_barang','satuan_barang','stock_barang', 'harga_barang', 'tgl_masuk', 'keterangan'));
			$this->fungsi->run_js('load_silent("kelola/kelola_barang","#content")');
			$this->fungsi->message_box("Data Kelola Nama Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola kelola_bahan dengan data sbb:",true);
		}
    }

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('nama_bahan'); //untuk mengechek batasan akses
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'kode',
					'label' => 'kode',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/master_bahan/v_master_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','jenis_bahan','nama_bahan','tahun'));
			$this->m_master_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/master_bahan","#content")');
			$this->fungsi->message_box("Data Master Nama Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master master_bahan dengan data sbb:",true);
		}
	}
	public function delete($id)
	{
		$this->fungsi->check_previleges('nama_bahan');
		if($id == '' || !is_numeric($id)) die;
		$this->m_master_bahan->deleteData($id);
		$this->fungsi->run_js('load_silent("master/master_bahan","#content")');
		$this->fungsi->message_box("Data Nama Bahan berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}
}