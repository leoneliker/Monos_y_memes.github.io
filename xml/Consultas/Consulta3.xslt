<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--Consulta para saber el nombre del mono, su alimentación y el clima de su procedencia-->
<xsl:template match="/">
	<html>
		<head>
			<meta charset="UTF-8"/>
			<link rel="stylesheet" type="text/css" href="estilo.css"/>
		</head>
		<body>
			<h1>Base de monos</h1>
			
			<table>
				<tr>
					<th>Nombre</th>
					<th>Alimentación</th>
					<th>Clima</th>
				</tr>
				<xsl:for-each select="monos/mono">
				<xsl:sort select="nombre" />
					<tr>
						<td><xsl:value-of select="nombre"/></td>
						<td><xsl:value-of select="alimentacion"/></td>										
						<td><xsl:value-of select="procedencia/clima"/></td>										
					</tr>
				</xsl:for-each>
			</table>
			
			<h2>Para mas información, haz click <a href="htmls/Informacion.html" target="iframe" >aquí</a>.</h2>
			
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>
