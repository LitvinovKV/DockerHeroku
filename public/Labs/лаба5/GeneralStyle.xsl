<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version = "1.0"
	xmlns="http://www.w3.org/2000/svg"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="root"> 
		<html>
		<head>
			<title>Литвинов К.В. S4108</title>
		</head>
		<body>
			<xsl:apply-templates/>
		</body>
		</html>
	</xsl:template>

<!-- 	<xsl:template match="root"> 
		<root> <xsl:apply-templates/> </root>
	</xsl:template> -->

	<xsl:template match="графика">
		<svg>
			<xsl:attribute name="version">
				<xsl:value-of select="@версия"/>
			</xsl:attribute>
			<xsl:attribute name="width"> 
				<xsl:value-of select="@ширина"/>
			</xsl:attribute>
			<xsl:attribute name="height">
				<xsl:value-of select="@высота"/>
			</xsl:attribute>
			<xsl:apply-templates/> 
		</svg>
	</xsl:template>

	<xsl:template match="эллипс">
		<ellipse>
			<xsl:attribute name="id"> 
				<xsl:value-of select="@id"/>
			</xsl:attribute>
			<xsl:attribute name="fill"> 
				<xsl:value-of select="@заливка"/>
			</xsl:attribute>
			<xsl:attribute name="stroke"> 
				<xsl:value-of select="@ободок"/>
			</xsl:attribute>
			<xsl:attribute name="stroke-width"> 
				<xsl:value-of select="@ширина-ободка"/>
			</xsl:attribute>
			<xsl:attribute name="cx"> 
				<xsl:value-of select="@cx"/>
			</xsl:attribute>
			<xsl:attribute name="cy"> 
				<xsl:value-of select="@cy"/>
			</xsl:attribute>
			<xsl:attribute name="rx"> 
				<xsl:value-of select="@rx"/>
			</xsl:attribute>
			<xsl:attribute name="ry"> 
				<xsl:value-of select="@ry"/>
			</xsl:attribute>
			<xsl:value-of select="."/>
		</ellipse>
	</xsl:template>

</xsl:stylesheet>