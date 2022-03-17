<?php
	/* Database connection settings */
	$host = 'localhost';
	$user = 'root';
	$pass = '';
	$db = 'shopping';
	$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error);

	$data1 = '';
	$data2 = '';
	$y = date('Y');
?>

<!DOCTYPE html>
<html>
	<head>
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>
		<title>SiteVisits</title>


	<body>	 
	
	    <div class="wrapper">
		<div class="container">	
		<?php
			$y = date('Y');
            $grand_total = 0;
			for($m=1; $m<=12; $m++){
				//query to get data from the table
				$sql = "SELECT * from visits WHERE month(date)='$m' and year(date)='$y'";
				$result = mysqli_query($mysqli, $sql);
				$total = 0;
				//loop through the returned data
				while ($row = mysqli_fetch_array($result)) {
					$total += $row['count'];
                }
                $grand_total += $total;
				$data1 = $data1 . '"'. $total.'",';
			}
            $data1 = trim($data1, ",");
		?>
	   
	    </div>
			<p style="color:black;"><?php echo "Total visits : ".$grand_total; ?></p>
		</div>
	</body>
</html>