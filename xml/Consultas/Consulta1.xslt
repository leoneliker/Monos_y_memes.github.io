<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--Consulta para ver todos los miembros, ordenados por su edad,y sus adopciones, posibilitando hacer click en los monos y dirigirte a la segunda consulta directamente.-->
<xsl:template match="/">
	<html>
		<head>
			<meta charset="UTF-8"/>
			<link rel="stylesheet" type="text/css" href="estilo.css"/>
		</head>
		<body>
			<h1>Club de socios adoptantes.</h1>
			
			<table>
				<tr>
					<th>Nombre</th>
					<th>Apellidos</th>
					<th>Edad</th>
					<th>Monos adoptados</th>
				</tr>
				<xsl:for-each select="adopciones/adoptante">
				<xsl:sort select="edad" order="ascending"/>
					<tr>
						<td><xsl:value-of select="nombre"/></td>
						<td><xsl:value-of select="apellido1"/><xsl:text> </xsl:text><xsl:value-of select="apellido2"/></td>
						<td><xsl:value-of select="edad"/></td>
						<td>
							<a href="Consulta2.xml" target="iframe">
								<xsl:for-each select="adopcion">
									<xsl:value-of select="."/><br/>
								</xsl:for-each>
							</a>
						</td>
					</tr>
				</xsl:for-each>
			</table>
			
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>