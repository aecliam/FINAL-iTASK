<?php include 'db_connect.php' ?>
<?php

if(isset($_GET['id'])){
	$type_arr = array('',"Admin","Project Manager","Employee");
	$qry = $conn->query("SELECT * (p.name as pname,p.start_date,p.status as pstatus, p.end_date,p.id) as name FROM task_list where id = ".$_GET['id'])->fetch_array();
	
foreach($qry as $k => $v){
	$$k = $v;
}
}
?>
<div class="container-fluid">

</div>
<div class="modal-footer display p-0 m-0">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
</div>
<style>
	#uni_modal .modal-footer{
		display: none
	}
	#uni_modal .modal-footer.display{
		display: flex
	}
</style>