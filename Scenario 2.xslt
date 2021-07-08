<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:fs="https://datapipelineassignment.org/XML">
	<xsl:output method="html" encoding="UTF-8"/>
	<!-- ######################## Scenario 1 - Citizen's View ########################-->
	<!-- ######################## Scenario 2 - Computing and Measurements with data in stylesheet  ########################-->
	<!-- ######################## Scenario 3 - Global Health Obervatory View ########################-->
	<!-- ######################## Scenario 4 -	Doctor's view ########################-->

	<xsl:template match="fs:BigVir2084_database">
		<html>
			<body>
				<h1 style="text-align:center;"> Scenario 2 Datapipeline Assigmment</h1>
				<h3 style="text-align:center;"> Scenario created to do some computations and exploit the database, using recursive templates! </h3>
				<br/>
				<xsl:apply-templates select="fs:citizens"/>
				
			</body>
		</html>
	</xsl:template>
	<!-- Computations template-->
	<xsl:template match ="fs:citizens">
			<li>
				<strong>
					The average weight of citizens is :
					<xsl:variable name="sumweight" select="sum(fs:citizen/fs:gen_info/fs:weight)" />
					<xsl:variable name="countweight" select="count(fs:citizen/fs:gen_info/fs:weight)" />
					<xsl:value-of select="$sumweight div $countweight"/> kgs
					<br/>
				</strong>
			</li>
			<li>
				<strong>
					The average height of citizens is :
					<xsl:variable name="sumheight" select="sum(fs:citizen/fs:gen_info/fs:height)" />
					<xsl:variable name="countheight" select="count(fs:citizen/fs:gen_info/fs:height)" />
					<xsl:value-of select="$sumheight div $countheight"/> cms
				</strong>
			</li>
			<li>
				<strong>
					The average of citizens with Covid19 vaccine first dose is :
					<xsl:variable name="sumvac" select="count(fs:citizen/fs:med_hist/fs:vaccination_stat[@refvaccineID='VCOV_1.1'])" />
					<xsl:variable name="countvac" select="count(fs:citizen)" />
					<xsl:value-of select="($sumvac div $countvac)*100"/>%
				</strong>
			</li>
			<li>
				<strong>
					The average of citizens with Covid19 vaccine second dose is :
					<xsl:variable name="sumvac" select="count(fs:citizen/fs:med_hist/fs:vaccination_stat[@refvaccineID='VCOV_1.2'])" />
					<xsl:variable name="countvac" select="count(fs:citizen)" />
					<xsl:value-of select="($sumvac div $countvac)*100"/>%
				</strong>
			</li>

	</xsl:template>

	<xsl:template match="fs:doctor">
		
	</xsl:template>
	<xsl:template match="fs:vaccine">

	</xsl:template>

</xsl:stylesheet>