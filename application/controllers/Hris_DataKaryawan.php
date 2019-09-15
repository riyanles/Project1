<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hris_DataKaryawan extends MY_Controller
{	

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->userdata('nik')) header("location: ".base_url('login'));
		
	}

	function index(){

		/*		
    	$data['menu'] = $this->Main_model->GetMenu()->result();    
    	$data['menulaporan'] = $this->Main_model->GetMenuLaporan()->result();   	
    	$data['saldobank'] = $this->Main_model->GetSaldoBank();
    	$data['saldoCOH'] = $this->Main_model->GetSaldoCOH();
		//$this->load->view('_partial/menu',$data);
		$data['menu'] = $this->Main_model->GetMenu();   
		*/		 
		
		$this->load->view('Hris_DataKaryawan_view');
	}


	
}