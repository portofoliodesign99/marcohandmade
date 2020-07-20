<?php
class Map extends CI_Controller{

    function __construct(){
        parent::__construct();
        
    }
    public function index(){

        $this->load->library('googlemaps');

        $config=array();
        $config['center']="3.31332, 117.59152";
        $config['zoom']=17;
        $config['map_height']="400px";
        $this->googlemaps->initialize($config);
        $marker=array();

        $marker['position']="3.31332, 117.59152";
        $this->googlemaps->add_marker($marker);
        $data['map']=$this->googlemaps->create_map();
        $this->load->view('pages/lokasi/index',$data);
    }
}