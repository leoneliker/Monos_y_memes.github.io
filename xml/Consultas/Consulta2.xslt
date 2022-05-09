<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--Consulta para saber los monos según su identificación, saber si están o no adoptados y su edad.-->
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
					<th>Identificación</th>
					<th>¿Está adoptado?</th>
					<th>Edad</th>
				</tr>
				<xsl:for-each select="monos/mono">
					<tr>
						<td><xsl:value-of select="especie"/><xsl:value-of select="id"/></td>
						
							<xsl:if test="adoptado='Si'"><td style="background-color:#FF0000">Lo está :D</td></xsl:if>
							<xsl:if test="adoptado='No'"><td style="background-color:#00EF00">No lo está D:</td></xsl:if>
										
						<xsl:choose>
							<xsl:when test="edad &gt; 35">
								<td style="background-color:#765F00">Esta viejito :c</td>
							</xsl:when>
							<xsl:when test="edad &gt; 15">
								<td style="background-color:#A48400">Recien comienza a vivir solo</td>
							</xsl:when>
							<xsl:when test="edad &gt; 4">
								<td style="background-color:#D7AD00">Chango adolescente, un capo</td>
							</xsl:when>
							<xsl:when test="edad &gt; 1">
								<td style="background-color:#FFCD00">Bien chiquito</td>
							</xsl:when>
							<xsl:otherwise>
								<td style="background-color:#FFE57D">Es un monito bebe :D</td>
							</xsl:otherwise>
						</xsl:choose>
					</tr>
				</xsl:for-each>
			</table>
			
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>
