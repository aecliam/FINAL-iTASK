<?php

require_once 'db_connect.php';

$id = $_REQUEST['id'];

$qry = "INSERT INTO project_list (id, name, description, status, start_date, end_date, manager_id, user_ids, date_created) SELECT id, name, description, status, start_date, end_date, manager_id, user_ids, date_created FROM project_archive WHERE id='$id';";

if(mysqli_query($conn,$qry)){

    $qry = "DELETE FROM project_archive WHERE id='$id';";
    if(mysqli_query($conn,$qry)){

    echo "<script>window.location.href='.?page=project_archive&success=1';</script>";
    }

    else{
        echo "<script>window.location.href='.?page=project_archive&error=1';</script>"; 
    }

}

else{

    echo "<script>window.location.href='..?page=project_archive&error=1';</script>";
 }
?>