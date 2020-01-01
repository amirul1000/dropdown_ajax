<?php
    include("connection.php");
	
  	$cmd = $_REQUEST['cmd'];
	switch($cmd){
		case "load_subcat": 
		    //load all data
			$sql = "SELECT * FROM sub_category WHERE id='".$_REQUEST['category_id']."'";
			$result = $conn->query($sql);
			if ($result->num_rows > 0) {
				// output data of each row
				$arr = array();
				$i = 0;
				while($data = mysqli_fetch_assoc($result)) {
					while(list($key,$value) = each($data))
						$arr[$i][$key] = $value;
					$i++;
				}
			  }
			echo json_encode($arr);
			break;	  		
	}
?>