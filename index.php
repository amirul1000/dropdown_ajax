<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script language="javascript">
   function loadSubCategory(id)
   {
	    objselect = document.getElementById("sub_category");
		objselect.options.length = 0;
		$("#spinner2").html('<img src="indicator.gif" alt="Wait" />');
		$.ajax({  
		  url: 'http://localhost/tutorial/dropdown/subcat.php?cmd=load_subcat&category_id='+id,
		  success: function(data) {
				  var obj = eval(data);    
				  
				  objselect.add(new Option('--select--',''), null);
				  for(var i=0;i<obj.length;i++)
				  {
					 text = obj[i].name ;
					 objselect.add(new Option(text,obj[i].id), null);
				  }
				$("#spinner2").html('');
			  }
			});
   }
   
</script>

<div class="container">
  <div class="row">
    <div class="col-md-12">
       <?php
	     include("connection.php");
		  //load all data
			$sql = "SELECT * FROM category";
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
	   ?>
      <select name="category" id="category" onChange="loadSubCategory(this.value)">
         <option value="">Select</option>
         <?php
		  for($i=0;$i<count($arr);$i++)
		  {
		 ?>
         <option value="<?=$arr[$i]['id']?>"><?=$arr[$i]['name']?></option>
         <?php
		  }
		 ?> 
      </select> 
    </div>
    
    <div class="col-md-12">
       
      <select name="sub_category" id="sub_category">
         <option value="">Select</option>
         
      </select> 
    </div>
  </div>
</div>
<!---Add new-->





