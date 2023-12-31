<?php                
require 'database_connection.php'; 
$display_query = "select id, name, status, start_date, end_date from project_list";             
$results = mysqli_query($con,$display_query);   
$count = mysqli_num_rows($results);  

if($count>0) 
{
	$data_arr=array();
    $i=1;
	while($data_row = mysqli_fetch_array($results, MYSQLI_ASSOC))
	{	
	$data_arr[$i]['event_id'] = $data_row['id'];
	$data_arr[$i]['title'] = $data_row['name'];
	$data_arr[$i]['start'] = date("Y-m-d", strtotime($data_row['start_date']));
	$data_arr[$i]['end'] = date("Y-m-d", strtotime($data_row['end_date']));

	$color = "";
	$stats = $data_row['status'];
	if($stats == 0){
		$color = "#D3D3D3";
	} elseif($stats == 3){
		$color = "#ffc107";
	} elseif($stats == 5){
		$color = "#28a745";
	}

	$data_arr[$i]['color'] = $color;
	$i++;
	}
	
	$data = array(
                'status' => true,
                'msg' => 'successfully!',
				'data' => $data_arr
            );
}
else
{
	$data = array(
                'status' => false,
                'msg' => 'Error!'				
            );
}
echo json_encode($data);
?>