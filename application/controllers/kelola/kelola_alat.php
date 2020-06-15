<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_alat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_barang');
	}

	public function index()
	{
		// $this->fungsi->check_previleges('kelola_alat');
		$data['barang'] = $this->m_kelola_barang->getData();
		$this->load->view('kelola/kelola_alat/v_kelola_alat_list1',$data);
	}
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Barang";
		$subheader = "kelola_barang";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_alat/show_addForm/","#divsubcontent")');	
		}
		else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kelola_alat');
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
			// $data['nama_alat'] = $this->m_nama_alat->getData();
			// $data['satuan'] = $this->m_satuan->getData();
			// $data['kategori'] = $this->m_kategori_alat_dan_bahan->getData();
			// $data['dana'] = $this->m_sumber_pendanaan->getData();
			// $data['lokasi'] = $this->m_kelola_penyimpanan->getData();
			// $data['status']='';
			$this->load->view('kelola/kelola_alat/v_kelola_alat_add1');
		}
		else
		{
			$datapost = [
                'id' => '',
                'nama_barang' => $this->input->post('nama_barang'),
                'satuan_barang' => $this->input->post('satuan_barang'),
                'stock_barang' => $this->input->post('stock_barang'),
                'harga_barang' => $this->input->post('harga_barang'),
                'tgl_masuk' => $this->input->post('tgl_masuk'),
                'keterangan' => $this->input->post('keterangan')

            ];
			$this->db->insert('kelola_barang',$datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_alat","#content")');
			$this->fungsi->message_box("Data Kelola Barang sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola kelola_alat dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		// $this->fungsi->check_previleges('kelola_alat');
		$this->load->library('form_validation');
		$config = array(
			array(
				'field'	=> 'nama_barang',
				'label' => 'nama_barang',
				'rules' => 'required'
			),
		);
	$this->form_validation->set_rules($config);
	$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_barang',array('id'=>$id));
			
			$this->load->view('kelola/kelola_alat/v_kelola_alat_edit1',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_barang','satuan_barang','stock_barang', 'harga_barang', 'tgl_masuk', 'keterangan'));
			$this->m_kelola_barang->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_alat","#content")');
			$this->fungsi->message_box("Data Kelola Nama Alata sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola kelola_alat dengan data sbb:",true);
		}
	}
	public function delete($id)
	{
		$this->fungsi->check_previleges('kelola_alat');
		if($id == '' || !is_numeric($id)) die;
		$this->m_kelola_barang->deleteData($id);
		$this->fungsi->run_js('load_silent("kelola/kelola_alat","#content")');
		$this->fungsi->message_box("Data Kelola Barang berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}
	public function show_view()
	{
		$this->fungsi->check_previleges('kelola_alat');
		$data['kelola_alat'] = $this->m_kelola_alat->getData();
		$this->load->view('kelola/kelola_alat/v_kelola_alat_seri_list',$data);
	}
}