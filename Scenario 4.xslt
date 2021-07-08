<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:fs="https://datapipelineassignment.org/XML">
	<xsl:output method="xml" encoding="UTF-8"/>
	<!-- ######################## Scenario 1 - Citizen's View ########################-->
	<!-- ######################## Scenario 2 - Computing and Measurements with data in stylesheet  ########################-->
	<!-- ######################## Scenario 3 - Global Health Obervatory View ########################-->
	<!-- ######################## Scenario 4 -	Doctor's view ########################-->
	<xsl:template match="fs:BigVir2084_database">
		<html>
			<body>
				<h1 style="text-align:center;"> Scenario 4 Datapipeline Assigmment</h1>
				<h3 style="text-align:center;"> Scenario created proportionate a Data Base to Doctors like few general information of citizen, their patients and medical history of their patients </h3>
				<xsl:apply-templates select="fs:doctor/fs:doctor[@d_ID='DTR_1']"/>
				<br/>
				Welcome to the Doctor's DATA base, you have a Data of <xsl:value-of select="count(//fs:citizen/fs:med_hist/fs:consultation[@refdoctorID='DTR_1'])" /> patients
				<br/>
				<br/>
				<xsl:apply-templates select="fs:citizens/fs:citizen/fs:med_hist/fs:consultation[@refdoctorID='DTR_1']"/>
				<br/>
			</body>
		</html>
	</xsl:template>
	<!-- Template to display Doctor info-->

	<xsl:template match ="fs:doctor/fs:doctor[@d_ID='DTR_1']">
		<strong>
			Welcome Dr. <xsl:value-of select="fs:doctor_last_name"/>, <xsl:value-of select="fs:doctor_first_name"/> Specialty: <xsl:value-of select="fs:doctor_speciality"/>
		</strong>
	</xsl:template>
	<!-- Template to display Doctor patient's general info-->
	<xsl:template match="fs:citizens/fs:citizen/fs:med_hist/fs:consultation[@refdoctorID='DTR_1']">
		<table border="1">
			<tr>
				<th>Consultation's Date</th>
				<td><xsl:value-of select="fs:date_cons"/></td>
				<th>Severity Code</th>
				<td> <xsl:value-of select="fs:code_cons"/> </td>
				<th>Patient's ID</th>
				<td><xsl:value-of select="../../@c_ID"/></td>
				<th>Last name</th>
				<td><xsl:value-of select="../../fs:gen_info/fs:lastname"/></td>
				<th>First name</th>
				<td><xsl:value-of select="../../fs:gen_info/fs:name"/></td>
				<th>Email</th>
				<td><xsl:value-of select="../../fs:gen_info/fs:email_address"/></td>
				<th>Phone number</th>
				<td><xsl:value-of select="../../fs:gen_info/fs:phone_number"/></td>
			</tr>
		</table>
		
	</xsl:template>
	<xsl:template match="fs:citizens">

	</xsl:template>
	<xsl:template match="fs:doctor">
	
	</xsl:template>
	<xsl:template match="fs:vaccine">

	</xsl:template>

</xsl:stylesheet>