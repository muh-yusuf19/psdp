<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pengajuan_alat extends CI_Controller
{
    public function __construct()
	{
        parent::__construct();
        $this->fungsi->restrict();
        $this->load->model('pengajuan/m_pengajuan_alat');
        $this->load->model('master/m_satuan');
        $this->load->model('master/m_nama_alat');

    }

    public function index()
    {
        // $data['pengajuan_alat'] = $this->m_pengajuan_alat();
        $this->load->view('pengajuan/pengajuan_alat/Pengajuan_alat_list');
    }

    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Pengajuan Alat";
		$subheader = "pengajuan_alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat/show_addForm/","#divsubcontent")');	
		}
		else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

    public function show_addForm()
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_alat',
					'label' => 'nama_alat',
					'rules' => 'required'
                ),
                array(
					'field'	=> 'satuan_alat',
					'label' => 'satuan_alat',
                    'rules' => 'required'
                )
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['nama_alat'] = $this->m_nama_alat->getData();
			$data['satuan'] = $this->m_satuan->getData();
			// $data['status']='';
			$this->load->view('pengajuan/pengajuan_alat/Pengajuan_alat_add',$data);
		}
		else
		{
			$datapost = [
                'id' => '',
                'nama_alat' => $this->input->post('nama_alat'),
                'satuan_alat' => $this->input->post('satuan_alat'),
                'harga_per_alat' => $this->input->post('harga_per_alat'),
                'jumlah' => $this->input->post('jumlah'),
                'tgl_pengajuan' => $this->input->post('tgl_pengajuan'),
                'status' => $this->input->post('status'),
            ];

            $this->db->insert('pengajuan_alat', $datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat","#content")');
			$this->fungsi->message_box("Data Pengajuan Alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Pengajuan Alat dengan data sbb:",true);
		}
    }
}