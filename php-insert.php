<?php

if(isset($_POST['insert']))
	$hostname = "localhost";
	$username = "root";
	$password = "";
	$databaseName = "bd_aval";

	$d1_1= $_POST['d1_1'];$d1_2= $_POST['d1_2'];$d1_3= $_POST['d1_3'];$d1_4= $_POST['d1_4'];
	$d1_5= $_POST['d1_5'];$d1_6= $_POST['d1_6'];$d1_7= $_POST['d1_7'];$d1_8= $_POST['d1_8'];
	$d1_9= $_POST['d1_9'];$d1_10= $_POST['d1_10'];$d1_11= $_POST['d1_11'];$d1_12= $_POST['d1_12'];
	$d1_13= $_POST['d1_13'];$d1_14= $_POST['d1_14'];$d1_15= $_POST['d1_15'];$d1_16= $_POST['d1_16'];
	$d1_17= $_POST['d1_17'];$d1_18= $_POST['d1_18'];$d1_19= $_POST['d1_19'];$d1_20= $_POST['d1_20'];
	$d1_21= $_POST['d1_21'];$d1_22= $_POST['d1_22'];$d1_23= $_POST['d1_23'];$d1_24= $_POST['d1_24'];
	$d1_25= $_POST['d1_25'];$d1_26= $_POST['d1_26'];$d1_27= $_POST['d1_27'];

	$d2_1= $_POST['d2_1'];$d2_2= $_POST['d2_2'];$d2_3= $_POST['d2_3'];$d2_4= $_POST['d2_4'];
	$d2_5= $_POST['d2_5'];$d2_6= $_POST['d2_6'];$d2_7= $_POST['d2_7'];$d2_8= $_POST['d2_8'];
	$d2_9= $_POST['d2_9'];$d2_10= $_POST['d2_10'];$d2_11= $_POST['d2_11'];$d2_12= $_POST['d2_12'];
	$d2_13= $_POST['d2_13'];$d2_14= $_POST['d2_14'];$d2_15= $_POST['d2_15'];$d2_16= $_POST['d2_16'];
	$d2_17= $_POST['d2_17'];$d2_18= $_POST['d2_18'];$d2_19= $_POST['d2_19'];$d2_20= $_POST['d2_20'];

	$d3_1= $_POST['d3_1'];$d3_2= $_POST['d3_2'];$d3_3= $_POST['d3_3'];$d3_4= $_POST['d3_4'];
	$d3_5= $_POST['d3_5'];$d3_6= $_POST['d3_6'];$d3_7= $_POST['d3_7'];$d3_8= $_POST['d3_8'];
	$d3_9= $_POST['d3_9'];$d3_10= $_POST['d3_10'];$d3_11= $_POST['d3_11'];$d3_12= $_POST['d3_12'];
	$d3_13= $_POST['d3_13'];$d3_14= $_POST['d3_14'];$d3_15= $_POST['d3_15'];$d3_16= $_POST['d3_16'];
	$d3_17= $_POST['d3_17'];$d3_18= $_POST['d3_18'];$d3_19= $_POST['d3_19'];$d3_20= $_POST['d3_20'];
	$d3_21= $_POST['d3_21'];$d3_22= $_POST['d3_22'];

	$descricao = $_POST['descricao']
	$data_criacao = $_POST['data']



	$connect = mysqli_connect($hostname,$username,$password,$databaseName);

	$query = "INSERT INTO `instru_avaliacao`(`descricao`, `data_criacao`) VALUES ('$descricao','$data_criacao')"
	$id_aval = "SELECT `id` FROM `instru_avaliacao` WHERE descricao='$descricao' AND data_criacao='$data_criacao'"
	
	$query1 = "INSERT INTO `dimensao_1`(`id_avaliacao`,`D1.1`, `D1.2`, `D1.3`, `D1.4`, `D1.5`, `D1.6`, `D1.7`, `D1.8`, `D1.9`, `D1.10`, `D1.11`, `D1.12`, `D1.13`, `D1.14`, `D1.15`, `D1.16`, `D1.17`, `D1.18`, `D1.19`, `D1.20`, `D1.21`, `D1.22`, `D1.23`, `D1.24`, `D1.25`, `D1.26`, `D1.27`) VALUES ('$id_aval','$d1_1','$d1_2','$d1_3','$d1_4','$d1_5','$d1_6','$d1_7','$d1_8','$d1_9','$d1_10','$d1_11','$d1_12','$d1_13','$d1_14','$d1_15','$d1_16','$d1_17','$d1_18','$d1_19','$d1_20','$d1_21','$d1_22','$d1_23','$d1_24','$d1_25','$d1_26','$d1_27')"

	$query2 = "INSERT INTO `dimensao_2`(`id_avaliacao`,`D2.1`, `D2.2`, `D2.3`, `D2.4`, `D2.5`, `D2.6`, `D2.7`, `D2.8`, `D2.9`, `D2.10`, `D2.11`, `D2.12`, `D2.13`, `D2.14`, `D2.15`, `D2.16`, `D2.17`, `D2.18`, `D2.19`, `D2.20`) VALUES ('$id_aval','$d2_1','$d2_2','$d2_3','$d2_4','$d2_5','$d2_6','$d2_7','$d2_8','$d2_9','$d2_10','$d2_11','$d2_12','$d2_13','$d2_14','$d2_15','$d2_16','$d2_17','$d2_18','$d2_19','$d2_20')"

	$query3 = "INSERT INTO `dimensao_3`(`id_avaliacao`,`D3.1`, `D3.2`, `D3.3`, `D3.4`, `D3.5`, `D3.6`, `D3.7`, `D3.8`, `D3.9`, `D3.10`, `D3.11`, `D3.12`, `D3.13`, `D3.14`, `D3.15`, `D3.16`, `D3.17`, `D3.18`, `D3.19`, `D3.20`, `D3.21`, `D3.22`) VALUES ('$id_aval','$d3_1','$d3_2','$d3_3','$d3_4','$d3_5','$d3_6','$d3_7','$d3_8','$d3_9','$d3_10','$d3_11','$d3_12','$d3_13','$d3_14','$d3_15','$d3_16','$d3_17','$d3_18','$d3_19','$d3_20','$d3_21','$d3_22')"

	

	$result1 = mysqli_query($connect,$query1);
	$result2 = mysqli_query($connect,$query2);
	$result3 = mysqli_query($connect,$query3);

	if ($result1&&$result2&&$result3) {
		echo "Dados inseridos";
		echo '<meta http-equiv="refresh" content="8;URL=cadastro.html" />';
	}else{	
		echo "Dados não inseridos";
		echo '<meta http-equiv="refresh" content="8;URL=cadastro.html" />';
	}



	mysqli_close($connect);

?>