<?php	
	include_once("conexao.php");
	$html = '<table border=0.5';	
	$html .= '<thead>';
	$html .= '<tr>';
	$html .= '<th>CURSO</th>';
	$html .= '<th>CENTRO</th>';
	$html .= '<th>DIMENSÕES</th>';
	$html .= '</tr>';
	$html .= '</thead>';
	$html .= '<tbody>';

	$result_usuarios = "SELECT * FROM usuarios";
	$resultado_usuarios = mysqli_query($conn, $result_usuarios);
	while ($row_usuarios = mysqli_fetch_assoc($resultado_usuarios)) {
		$html .= '<tr><td>'.$row_usuarios['id'] . "</td>";
		$html .= '<td>'.utf8_encode($row_usuarios['nome']) . "</td>";
		$html .= '<td>'.utf8_encode($row_usuarios['senha']) . "</td>";
		$html .= '<td>'.utf8_encode($row_usuarios['email']) . "</td>";
		$html .= '<td>'.utf8_encode($row_usuarios['situacao']) . "</td></tr>";
	}
	
	$html .= '</tbody>';
	$html .= '</table';
	//referenciar o DomPDF com namespace
	use Dompdf\Dompdf;
	// include autoloader
	require_once("dompdf/autoload.inc.php");
	//Criando a Instancia
	$dompdf = new DOMPDF();
	// Carrega seu HTML
	$dompdf->load_html('
			<h1 style="text-align: center;">Consulta de Relátorio - MEC</h1>
			'. $html .'
		');
	//Renderizar o html
	$dompdf->render();
	//Exibibir a página
	$dompdf->stream(
		"consulta_relatorio_mec.pdf", 
		array(
			"Attachment" => true //Para bloquear o download somente alterar para false
		)
	);
?>
