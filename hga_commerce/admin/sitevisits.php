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
		<title>Admin|SiteVisits</title>
		<link rel="shortcut icon" href="assets/images/mobile.ico">
		<style type="text/css">			
			body{
				font-family: Arial;
			    margin: 80px 100px 10px 100px;
			    padding: 0;
			    color: tomato;
			    text-align: center;
			    background: #555652;
			}

			.container {
				color: #E8E9EB;
				background: #222;
				border: #555652 1px solid;
				padding: 10px;
			}
		</style>

	</head>

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
	    <h1>Monthly Site Visits</h1>       
			<canvas id="chart" style="width: 100%; height: 65vh; background: #222222; border: 1px solid #555652; margin-top: 10px;"></canvas>
			<script>
				var ctx = document.getElementById("chart").getContext('2d');
    			var myChart = new Chart(ctx, {
        		type: 'line',
		        data: {
		            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
		            datasets: 
		            [{
		                label: 'Visits',
		                data: [<?php echo $data1; ?>],
		                backgroundColor: 'transparent',
		                borderColor:'rgba(100,255,0)',
		                borderWidth: 3
					}]
		        },
		     
		        options: {
		            scales: {scales:{yAxes: [{beginAtZero: true}], xAxes: [{autoskip: true, maxTicketsLimit: 20000000}]}},
		            tooltips:{mode: 'index'},
		            legend:{display: true, position: 'top', labels: {fontColor: 'rgb(255,255,255)', fontSize: 16}}
		        }
		    });
			</script>
	    </div>
			<p style="color:black;"><?php echo "Total visits : ".$grand_total; ?></p>
		</div>
	</body>
</html>