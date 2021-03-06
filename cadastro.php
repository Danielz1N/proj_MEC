<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="SHIELD - Free Bootstrap 3 Theme">
    <meta name="author" content="Carlos Alvarez - Alvarez.is - blacktie.co">
    <link rel="shortcut icon" href="assets/ico/favicon.png">

    <title> Teste Projeto </title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <style>
    }
    .container {
      width: 2000px;
    }    
    </style>
    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/icomoon.css">
    <link href="assets/css/animate-custom.css" rel="stylesheet">

    
    
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>
    
    <script src="assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/modernizr.custom.js"></script>
    
  </head>

  <body data-spy="scroll" data-offset="0" data-target="#navbar-main">
  
  
  	<div id="navbar-main">
      <!-- Fixed navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon icon-shield" style="font-size:30px; color:#3498db;"></span>
          </button>
          <a class="navbar-brand hidden-xs hidden-sm" href="#home"><span class="icon icon-file" style="font-size:18px; color:#3498db;"></span></a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
              <li><a href="index.html" class="smoothScroll">Início</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Serviços<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="cadastro.php">Cadastro de Avaliação</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="consulta.html">Consulta de Avaliação</a></li>
                </ul>
              </li>
        
              
              
              
        </div><!--/.nav-collapse -->
      </div>
    </div>
    </div>
      <br>
      <br>

        

		<div class="container" id="contact" name="contact">
			<div class="row" style="height: 600px;">
			 
				<div class="col-lg-4">
					
          <br>
          <?php include_once("conexao.php"); ?>
					<form style="padding-top: 130px" class="form-horizontal" role="form">
            <h3>Informações Básicas</h3>
            <div class="form-group">
              <div class="col-lg-10">
                <input type="text" class="form-control" name = "descricao" id="descricao" placeholder="Descrição">
              </div>
            </div>
            <div class="form-group">
              <div class="col-lg-10">
                <select type="text" name= "campus" class="form-control" id="campus" placeholder="Campus">
                  <option value="" disabled selected hidden>Campus</option>
                  <?php
                    $result_cat_post = "SELECT * FROM campus GROUP BY LTRIM(nome)";
                    $resultado_cat_post = mysqli_query($conn, $result_cat_post);
                    while($row_cat_post = mysqli_fetch_assoc($resultado_cat_post) ) {
                      echo '<option value="'.$row_cat_post['id'].'">'.utf8_encode($row_cat_post['nome']).'</option>';
                    }
                  ?>
                </select>
              </div>
            </div>

            <div class="form-group">
              <div class="col-lg-10">
                <select type="text" class="form-control" name ="unid_academica" id="unid_academica" p laceholder="Unidade Acadêmica">
                  <option value="" disabled selected hidden>Unidade Acadêmica</option>
                  <?php
                    $result_cat_post = "SELECT * FROM unid_acad GROUP BY LTRIM(nome)";
                    $resultado_cat_post = mysqli_query($conn, $result_cat_post);
                    while($row_cat_post = mysqli_fetch_assoc($resultado_cat_post) ) {
                      echo '<option value="'.$row_cat_post['id'].'">'.utf8_encode($row_cat_post['nome']).'</option>';
                    }
                  ?>
                </select>
              </div>
            </div>

            <div class="form-group">
              <div class="col-lg-10">
                <select type="text" class="form-control" id="curso" placeholder="Curso">
                  <option value="" disabled selected hidden>Curso</option>
                  <?php
                    $result_cat_post = "SELECT * FROM curso GROUP BY LTRIM(nome)";
                    $resultado_cat_post = mysqli_query($conn, $result_cat_post);
                    while($row_cat_post = mysqli_fetch_assoc($resultado_cat_post) ) {
                      echo '<option value="'.$row_cat_post['id'].'">'.utf8_encode($row_cat_post['nome']).'</option>';
                    }
                  ?>
                </select>
              </div>
            </div>

            <div class="form-group">
              <div class="col-lg-10">
                <input type="date" class="form-control" id="data" placeholder="Data">
              </div>
            </div>
          </form>

				</div><!-- col -->
				<br>
        <style type="text/css">
          th{
            text-align: center;
          }
          tr {
            text-align: center;
          }
          td {
            border: 1px solid rgb(204, 204, 204);
            width: 55px;
            max-width: 55px;
            overflow: auto;
          }
          #input_form{
            width: 54px;
            max-width: 54px; 
          }
        </style>
    <form action="php-insert.php" method="POST">
			  <div style="position: relative;float: left">
            <h4>Dimensão 1</h4>
            <table  class="col-lg-20">
                 <thead>
                    <tr>
                       <th>1.1</th>
                       <th>1.2</th>
                       <th>1.3</th>
                       <th>1.4</th>
                       <th>1.5</th>
                       <th>1.6</th>
                       <th>1.7</th>
                       <th>1.8</th>
                       <th>1.9</th>
                    </tr>
                 </thead>
                 <tbody>
                    <tr data-row-id="1">
                       <td><input type="text" id="input_form" name="d1_1"></td>
                       <td><input type="text" id="input_form" name="d1_2"></td>
                       <td><input type="text" id="input_form" name="d1_3"></td>
                       <td><input type="text" id="input_form" name="d1_4"></td>
                       <td><input type="text" id="input_form" name="d1_5"></td>
                       <td><input type="text" id="input_form" name="d1_6"></td>
                       <td><input type="text" id="input_form" name="d1_7"></td>
                       <td><input type="text" id="input_form" name="d1_8"></td>
                       <td><input type="text" id="input_form" name="d1_9"></td>
                    </tr>
                 </tbody>
                 <thead>
                    <tr>
                       <th>1.10</th>
                       <th>1.11</th>
                       <th>1.12</th>
                       <th>1.13</th>
                       <th>1.14</th>
                       <th>1.15</th>
                       <th>1.16</th>
                       <th>1.17</th>
                       <th>1.18</th>
                    </tr>
                 </thead>
                 <tbody>
                    <tr data-row-id="2">
                       <td><input type="text" id="input_form" name="d1_10"></td>
                       <td><input type="text" id="input_form" name="d1_11"></td>
                       <td><input type="text" id="input_form" name="d1_12"></td>
                       <td><input type="text" id="input_form" name="d1_13"></td>
                       <td><input type="text" id="input_form" name="d1_14"></td>
                       <td><input type="text" id="input_form" name="d1_15"></td>
                       <td><input type="text" id="input_form" name="d1_16"></td>
                       <td><input type="text" id="input_form" name="d1_17"></td>
                       <td><input type="text" id="input_form" name="d1_18"></td>
                    </tr>
                 </tbody>
                 <thead>
                    <tr>
                       <th>1.19</th>
                       <th>1.20</th>
                       <th>1.21</th>
                       <th>1.22</th>
                       <th>1.23</th>
                       <th>1.24</th>
                       <th>1.25</th>
                       <th>1.26</th>
                       <th>1.27</th>
                    </tr>
                 </thead>
                 <tbody>
                    <tr data-row-id="3">
                       <td><input type="text" id="input_form" name="d1_19"></td>
                       <td><input type="text" id="input_form" name="d1_20"></td>
                       <td><input type="text" id="input_form" name="d1_21"></td>
                       <td><input type="text" id="input_form" name="d1_22"></td>
                       <td><input type="text" id="input_form" name="d1_23"></td>
                       <td><input type="text" id="input_form" name="d1_24"></td>
                       <td><input type="text" id="input_form" name="d1_25"></td>
                       <td><input type="text" id="input_form" name="d1_26"></td>
                       <td><input type="text" id="input_form" name="d1_27"></td>
                    </tr>
                 </tbody>
            </table>
            <h4>Dimensão 2</h4>
            <table class="col-lg-20">
                 <thead>
                    <tr>
                       <th>2.1</th>
                       <th>2.2</th>
                       <th>2.3</th>
                       <th>2.4</th>
                       <th>2.5</th>
                       <th>2.6</th>
                       <th>2.7</th>
                       <th>2.8</th>
                       <th>2.9</th>
                    </tr>
                 </thead>
                 <tbody>
                    <tr data-row-id="4">
                       <td><input type="text" id="input_form" name="d2_1"></td>
                       <td><input type="text" id="input_form" name="d2_2"></td>
                       <td><input type="text" id="input_form" name="d2_3"></td>
                       <td><input type="text" id="input_form" name="d2_4"></td>
                       <td><input type="text" id="input_form" name="d2_5"></td>
                       <td><input type="text" id="input_form" name="d2_6"></td>
                       <td><input type="text" id="input_form" name="d2_7"></td>
                       <td><input type="text" id="input_form" name="d2_8"></td>
                       <td><input type="text" id="input_form" name="d2_9"></td>
                    </tr>
                 </tbody>
                 <thead>
                    <tr>
                       <th>2.10</th>
                       <th>2.11</th>
                       <th>2.12</th>
                       <th>2.13</th>
                       <th>2.14</th>
                       <th>2.15</th>
                       <th>2.16</th>
                       <th>2.17</th>
                       <th>2.18</th>
                    </tr>
                 </thead>
                 <tbody>
                    <tr data-row-id="5">
                       <td><input type="text" id="input_form" name="d2_10"></td>
                       <td><input type="text" id="input_form" name="d2_11"></td>
                       <td><input type="text" id="input_form" name="d2_12"></td>
                       <td><input type="text" id="input_form" name="d2_13"></td>
                       <td><input type="text" id="input_form" name="d2_14"></td>
                       <td><input type="text" id="input_form" name="d2_15"></td>
                       <td><input type="text" id="input_form" name="d2_16"></td>
                       <td><input type="text" id="input_form" name="d2_17"></td>
                       <td><input type="text" id="input_form" name="d2_18"></td>
                    </tr>
                 </tbody>
                 <thead>
                    <tr>
                       <th>2.19</th>
                       <th>2.20</th>
                    </tr>
                 </thead>
                 <tbody>
                    <tr data-row-id="6">
                       <td><input type="text" id="input_form" name="d2_19"></td>
                       <td><input type="text" id="input_form" name="d2_20"></td>
                    </tr>
                 </tbody>
            </table>
            <h4>Dimensão 3</h4>
            <table class="col-lg-20">
                 <thead>
                    <tr>
                       <th>3.1</th>
                       <th>3.2</th>
                       <th>3.3</th>
                       <th>3.4</th>
                       <th>3.5</th>
                       <th>3.6</th>
                       <th>3.7</th>
                       <th>3.8</th>
                       <th>3.9</th>
                    </tr>
                 </thead>
                 <tbody>
                    <tr data-row-id="7">
                       <td><input type="text" id="input_form" name="d3_1"></td>
                       <td><input type="text" id="input_form" name="d3_2"></td>
                       <td><input type="text" id="input_form" name="d3_3"></td>
                       <td><input type="text" id="input_form" name="d3_4"></td>
                       <td><input type="text" id="input_form" name="d3_5"></td>
                       <td><input type="text" id="input_form" name="d3_6"></td>
                       <td><input type="text" id="input_form" name="d3_7"></td>
                       <td><input type="text" id="input_form" name="d3_8"></td>
                       <td><input type="text" id="input_form" name="d3_9"></td>
                    </tr>
                 </tbody>
                 <thead>
                    <tr>
                       <th>3.10</th>
                       <th>3.11</th>
                       <th>3.12</th>
                       <th>3.13</th>
                       <th>3.14</th>
                       <th>3.15</th>
                       <th>3.16</th>
                       <th>3.17</th>
                       <th>3.18</th>
                    </tr>
                 </thead>
                 <tbody>
                    <tr data-row-id="8">
                       <td><input type="text" id="input_form" name="d3_10"></td>
                       <td><input type="text" id="input_form" name="d3_11"></td>
                       <td><input type="text" id="input_form" name="d3_12"></td>
                       <td><input type="text" id="input_form" name="d3_13"></td>
                       <td><input type="text" id="input_form" name="d3_14"></td>
                       <td><input type="text" id="input_form" name="d3_15"></td>
                       <td><input type="text" id="input_form" name="d3_16"></td>
                       <td><input type="text" id="input_form" name="d3_17"></td>
                       <td><input type="text" id="input_form" name="d3_18"></td>
                    </tr>
                 </tbody>
                 <thead>
                    <tr>
                       <th>3.19</th>
                       <th>3.20</th>
                       <th>3.21</th>
                       <th>3.22</th>
                    </tr>
                 </thead>
                 <tbody>
                    <tr data-row-id="9">
                       <td><input type="text" id="input_form" name="d3_19"></td>
                       <td><input type="text" id="input_form" name="d3_20"></td>
                       <td><input type="text" id="input_form" name="d3_21"></td>
                       <td><input type="text" id="input_form" name="d3_22"></td>
                    </tr>
                 </tbody>
            </table>
        </div>
        <style type="text/css">
          #center-button-submit{
              position:absolute; 
              top:75%;
              left:90%;
              transform: translate(-50%, -50%);
          }
          #center-button-clear{
              position:absolute; 
              top:75%;
              left:83%;
              transform: translate(-50%, -50%);
          }
          .g-recaptcha{
              position:absolute; 
              top:53%;
              left:75%;
          }
        </style>
        <div>
          <div class="g-recaptcha" data-sitekey="6LfP32sUAAAAAKbg8Jl_I5hupsQRN4dsPKgLcZqW"></div>
          <button id= center-button-clear type="reset" class="btn btn-reset">Limpar</button>
          <button name="insert" id= center-button-submit type="submit" class="btn btn-success">Enviar</button>
        </div>
      </form>
		   </div>
		</div><!-- container -->
    


    <br>
		<div id="footerwrap">
			<div class="container">
				<h4>Criado por Daniel Amaral</a> - Copyright 2018</h4>
			</div>
		</div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
		
  <script src='https://www.google.com/recaptcha/api.js?hl=pt-BR'></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="assets/js/smoothscroll.js"></script>
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>
  </body>
</html>
