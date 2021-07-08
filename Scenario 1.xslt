<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
				xmlns:fs="https://datapipelineassignment.org/XML">
	<xsl:output method="html" encoding="UTF-8"/>
	<!-- Declaring Variable name to simplify code, c_ID correspond to ID of citizen consulted information-->
	<xsl:variable name="citizen" select="//fs:citizens/fs:citizen[@c_ID ='C00001']"/>
	<xsl:template match="/">
		<html>
			<body>
				<h1 style="text-align:center;"> Scenario 1 Datapipeline Assigmment</h1>
				<h3 style="text-align:center;"> Scenario created to give information of a specified citizen, allowing him/her to view all of his/her information storaged. The specified citizen will not be allowed to visualize another information</h3>
				<h4 style="text-align:center;"> Citizen ID represents something like a credential, social security number, etc, that it is a unique indentifier</h4>
				<!-- General information Table-->
				<table border="1">
					<tr>
						<th>Last Name</th>
						<th>Name</th>
						<th>Date of birth</th>
						<th>Weight</th>
						<th>Height</th>
						<th>Address</th>
						<th>ZipCode</th>
						<th>Phone Number</th>
						<th>Nationality</th>
						<th>Email Address</th>
					</tr>
				<h3 style="text-align:left;"> General Information of Citizen </h3>
				<xsl:for-each select="$citizen">
					<div> 
					<tr>
						<td><xsl:value-of select="fs:gen_info/fs:lastname"/></td>
						<td><xsl:value-of select="fs:gen_info/fs:name"/></td>
						<td><xsl:value-of select="fs:gen_info/fs:date_of_birth"/></td>
						<td><xsl:value-of select="fs:gen_info/fs:weight"/></td>
						<td><xsl:value-of select="fs:gen_info/fs:height"/></td>
						<td><xsl:value-of select="fs:gen_info/fs:address"/></td>
						<td><xsl:value-of select="fs:gen_info/fs:zipcode"/></td>
						<td><xsl:value-of select="fs:gen_info/fs:phone_number"/></td>
						<td><xsl:value-of select="fs:gen_info/fs:nationality"/></td>
						<td><xsl:value-of select="fs:gen_info/fs:email_address"/></td>
					</tr> </div> 
				</xsl:for-each>
				</table> <br/>
				<!-- Consultation Information Table-->
					<table border="1">
					<tr>
						<th>Date of Consult</th>
						<th>Doctor Name</th>
						<th>Speciality</th>
						<th>Type of Symptom</th>
						<th>City of Consult</th>
						<th>Country of Consult</th>
					</tr>
						<h3 style="text-align:left;"> Consultation Information of Citizen </h3>
				<xsl:for-each select="$citizen/fs:med_hist/fs:consultation">
					<div> 
					<tr>
						<td><xsl:value-of select="fs:date_cons"/></td>
						<td><xsl:value-of select="fs:doctor"/></td>
						<td><xsl:value-of select="fs:doc_speciality"/></td>
						<td><xsl:value-of select="fs:code_cons"/></td>
						<td><xsl:value-of select="fs:city"/></td>
						<td><xsl:value-of select="fs:country"/></td>
					</tr> </div> 
				</xsl:for-each>
				</table>
				<br/>
				<!-- Hospitalization Information Table-->
					<table border="1">
					<tr>
						<th>Date of Hospitalization</th>
						<th>Hospital Name</th>
						<th>Speciality</th>
						<th>Type of Symptom</th>
						<th>City of Hospital</th>
						<th>Country of Hospital</th>
					</tr>
						<h3 style="text-align:left;"> Hospitalization Information of Citizen </h3>
				<xsl:for-each select="$citizen/fs:med_hist/fs:hospitalization">
					<div> 
					<tr>
						<td><xsl:value-of select="fs:date_hosp"/></td>
						<td><xsl:value-of select="fs:hospital"/></td>
						<td><xsl:value-of select="fs:hosp_speciality"/></td>
						<td><xsl:value-of select="fs:code_hosp"/></td>
						<td><xsl:value-of select="fs:city"/></td>
						<td><xsl:value-of select="fs:country"/></td>
					</tr> </div> 
				</xsl:for-each>
				</table>				<br/>
				<!-- Laboratory Information Table-->
					<table border="1">
					<tr>
						<th>Date of Test</th>
						<th>Test Type</th>
						<th>Test Result</th>
						<th>City of Hospital</th>
						<th>Country of Hospital</th>
					</tr>
						<h3 style="text-align:left;"> Laboratory Information of Citizen </h3>
				<xsl:for-each select="$citizen/fs:med_hist/fs:laboratory">
					<div> 
					<tr>
						<td><xsl:value-of select="fs:date_test"/></td>
						<td><xsl:value-of select="fs:test_type"/></td>
						<td><xsl:value-of select="fs:test_result"/></td>
						<td><xsl:value-of select="fs:city"/></td>
						<td><xsl:value-of select="fs:country"/></td>
					</tr> </div> 
				</xsl:for-each>
				</table>				<br/>
				<!-- Vaccination Information Table-->
								<table border="1">
					<tr>
						<th>Date of Vaccination</th>
						<th>Vaccine Type</th>
						<th>Immunization</th>
						<th>City of Hospital</th>
						<th>Country of Hospital</th>
					</tr>
					<h3 style="text-align:left;"> Vaccination Information of Citizen </h3>
				<xsl:for-each select="$citizen/fs:med_hist/fs:vaccination_stat">
					<div> 
					<tr>
						<td><xsl:value-of select="fs:date_vaccination"/></td>
						<td><xsl:value-of select="fs:vaccine_type"/></td>
						<td><xsl:value-of select="fs:vaccinated"/></td>
						<td><xsl:value-of select="fs:city"/></td>
						<td><xsl:value-of select="fs:country"/></td>
					</tr> </div> 
				</xsl:for-each>
									
				</table>				<br/>
				<!-- Social Relation Information Table-->
				<table border="1">
					<tr>
						<th>Event Date</th>
						<th>Event Type</th>
						<th>Event Name</th>
						<th>Event City</th>
						<th>Event Country</th>
					</tr>
					<h3 style="text-align:left;"> Social Relations Information of Citizen </h3>
				<xsl:for-each select="$citizen/fs:social_hist/fs:event">
					<div> 
					<tr>
						<td><xsl:value-of select="fs:event_date"/></td>
						<td><xsl:value-of select="fs:event_type"/></td>
						<td><xsl:value-of select="fs:event_name"/></td>
						<td><xsl:value-of select="fs:event_city"/></td>
						<td><xsl:value-of select="fs:event_country"/></td>
					</tr> </div> 
				</xsl:for-each>
				</table><br/>
			</body>
		</html>
	</xsl:template>


</xsl:stylesheet>