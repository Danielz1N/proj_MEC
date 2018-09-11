<?php

if(isset($_POST['insert']))
	$hostname = "localhost";
	$username = "root";
	$password = "";
	$databaseName = "test";

	$d1_1= $_POST['d1_1'];
	$d1_2= $_POST['d1_2'];
	$d1_3= $_POST['d1_3'];
	$d1_4= $_POST['d1_4'];
	$d1_5= $_POST['d1_5'];
	$d1_6= $_POST['d1_6'];
	$d1_7= $_POST['d1_7'];
	$d1_8= $_POST['d1_8'];
	$d1_9= $_POST['d1_9'];
	$d1_10= $_POST['d1_10'];
	$d1_11= $_POST['d1_11'];
	$d1_12= $_POST['d1_12'];
	$d1_13= $_POST['d1_13'];
	$d1_14= $_POST['d1_14'];
	$d1_15= $_POST['d1_15'];
	$d1_16= $_POST['d1_16'];
	$d1_17= $_POST['d1_17'];
	$d1_18= $_POST['d1_18'];
	$d1_19= $_POST['d1_19'];
	$d1_20= $_POST['d1_20'];
	$d1_21= $_POST['d1_21'];
	$d1_22= $_POST['d1_22'];
	$d1_23= $_POST['d1_23'];
	$d1_24= $_POST['d1_24'];
	$d1_25= $_POST['d1_25'];
	$d1_26= $_POST['d1_26'];
	$d1_27= $_POST['d1_27'];




	$connect = mysqli_connect($hostname,$username,$password,$databaseName);
	$query = "INSERT INTO `eoq`(`1`) VALUES ('$d1_1'),('$d1_2'),('$d1_3'),('$d1_4'),('$d1_5'),('$d1_6'),('$d1_7'),('$d1_8'),('$d1_9'),('$d1_10'),('$d1_11'),('$d1_12'),('$d1_13'),('$d1_14'),('$d1_15'),('$d1_16'),('$d1_17'),('$d1_18'),('$d1_19'),('$d1_20'),('$d1_21'),('$d1_22'),('$d1_23'),('$d1_24'),('$d1_25'),('$d1_26'),('$d1_27')";

	$result = mysqli_query($connect,$query);

	if ($result) {
		echo "Dados inseridos";
		echo '<meta http-equiv="refresh" content="8;URL=cadastro.html" />';
	}else{
		echo "Dados não inseridos";
		echo '<meta http-equiv="refresh" content="8;URL=cadastro.html" />';
	}



	mysqli_close($connect);

?>