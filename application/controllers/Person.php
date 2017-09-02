<?php
//session_start();
//Primary key has been set to station code
defined('BASEPATH') OR exit('No direct script access allowed');

class Person extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Person_model','person');
	}

	public function index()
	{
		if($this->session->userdata('logged_in')){
		$this->load->helper('url');
		$this->load->view('person_view');
		}
		else{
     //If no session, redirect to login page
     redirect('index.php/login', 'refresh');
      }
	}

	public function ajax_list()
	{
		$list = $this->person->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $person) {
			$no++;
			$row = array();
			$row[] = $person->action;
			$row[] = $person->title;
			$row[] = $person->description;
			$row[] = $person->date;


			//add html for action
			$row[] = '<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="Edit" onclick="edit_person('."'".$person->id."'".')"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
				  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Delete" onclick="delete_person('."'".$person->id."'".')"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
		
			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->person->count_all(),
						"recordsFiltered" => $this->person->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}

	public function ajax_edit($id)
	{
		$data = $this->person->get_by_id($id);

		echo json_encode($data);
	}

	public function ajax_add()
	{
		$this->_validate();
		$data = array(
				'action' => $this->input->post('action'),
				'title' => $this->input->post('title'),
				'description' => $this->input->post('description'),
				'date' => $this->input->post('date')
			);
		$insert = $this->person->save($data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_update()
	{
		$this->_validate();
			$data = array(
				'action' => $this->input->post('action'),
				'title' => $this->input->post('title'),
				'description' => $this->input->post('description'),
				'date' => $this->input->post('date')
			);
		//calls for the update function in model Person_model
		$this->person->update($data['title'], $data);

		echo json_encode(array("status" => TRUE));
	}

	public function ajax_delete($id)
	{
		$this->person->delete_by_id($id);
		echo json_encode(array("status" => TRUE));
	}


	private function _validate()
	{
		$data = array();
		$data['error_string'] = array();
		$data['inputerror'] = array();
		$data['status'] = TRUE;

		if($this->input->post('action') == '')
		{
			$data['inputerror'][] = 'action';
			$data['error_string'][] = 'Station Code is required';
			$data['status'] = FALSE;
		}

		if($this->input->post('title') == '')
		{
			$data['inputerror'][] = 'title';
			$data['error_string'][] = 'Station Name is required';
			$data['status'] = FALSE;
		}

		if($this->input->post('description') == '')
		{
			$data['inputerror'][] = 'description';
			$data['error_string'][] = 'Local Station is required';
			$data['status'] = FALSE;
		}

		if($this->input->post('date') == '')
		{
			$data['inputerror'][] = 'date';
			$data['error_string'][] = 'Please select Station Type';
			$data['status'] = FALSE;
		}

		


		if($data['status'] === FALSE)
		{
			echo json_encode($data);
			exit();
		}
	}
	 function logout()
	 {
   $this->session->unset_userdata('logged_in');
   session_destroy();
   redirect('index.php/person', 'refresh');
 	}

}
