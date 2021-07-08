<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:fs="https://datapipelineassignment.org/XML">
	<xsl:output method="html" encoding="UTF-8"/>
	<!-- ######################## Scenario 1 - Citizen's View ########################-->
	<!-- ######################## Scenario 2 - Doctor's View ########################-->
	<!-- ######################## Scenario 3 - Global Health Obervatory View ########################-->
	<!-- ######################## Scenario 4 - Computing and Measurements with data in stylesheet ########################-->

	<xsl:template match="/">
		<html>
			<body>
				<h1 style="text-align:center;"> Scenario 3 Datapipeline Assigmment</h1>
				<h3 style="text-align:center;"> Scenario created for Global Health Observatory, this organization can evaluate all data to do analysis and prevent, predict or identify a massive health problem</h3>
				<br/>
				<!-- Consultation Information of All citizens Table-->
				<table border="1">
					<tr>
						<th>Date of Consult</th>
						<th>Doctor Name</th>
						<th>Speciality</th>
						<th>Type of Symptom</th>
						<th>City of Consult</th>
						<th>Country of Consult</th>
						<th>Citizen ID</th>
						<th>Doctor ID</th>
					</tr>
					<h3 style="text-align:left;"> Consultation Information of Citizen </h3>
					<xsl:for-each select="//fs:citizens/fs:citizen/fs:med_hist/fs:consultation">
						<div>
							<tr>
								<td>
									<xsl:value-of select="fs:date_cons"/>
								</td>
								<td>
									<xsl:value-of select="fs:doctor"/>
								</td>
								<td>
									<xsl:value-of select="fs:doc_speciality"/>
								</td>
								<td>
									<xsl:value-of select="fs:code_cons"/>
								</td>
								<td>
									<xsl:value-of select="fs:city"/>
								</td>
								<td>
									<xsl:value-of select="fs:country"/>
								</td>
								<td>
									<xsl:value-of select="../../@c_ID"/>
								</td>
								<td>
									<xsl:value-of select="@refdoctorID"/>
								</td>
							</tr>
						</div>
					</xsl:for-each>
				</table>
				<br/>
				<!-- Hospitalization Information of All citizens Table-->
				<table border="1">
					<tr>
						<th>Date of Hospitalization</th>
						<th>Hospital Name</th>
						<th>Speciality</th>
						<th>Type of Symptom</th>
						<th>City of Hospital</th>
						<th>Country of Hospital</th>
						<th>Citizen ID</th>
					</tr>
					<h3 style="text-align:left;"> Hospitalization Information of Citizen </h3>
					<xsl:for-each select="//fs:citizens/fs:citizen/fs:med_hist/fs:hospitalization">
						<div>
							<tr>
								<td>
									<xsl:value-of select="fs:date_hosp"/>
								</td>
								<td>
									<xsl:value-of select="fs:hospital"/>
								</td>
								<td>
									<xsl:value-of select="fs:hosp_speciality"/>
								</td>
								<td>
									<xsl:value-of select="fs:code_hosp"/>
								</td>
								<td>
									<xsl:value-of select="fs:city"/>
								</td>
								<td>
									<xsl:value-of select="fs:country"/>
								</td>
								<td>
									<xsl:value-of select="../../@c_ID"/>
								</td>
							</tr>
						</div>
					</xsl:for-each>
				</table>
				<br/>
				<!-- Laboratory Information of All citizens Table-->
				<table border="1">
					<tr>
						<th>Date of Test</th>
						<th>Test Type</th>
						<th>Test Result</th>
						<th>City of Hospital</th>
						<th>Country of Hospital</th>
						<th>Citizen ID</th>
					</tr>
					<h3 style="text-align:left;"> Laboratory Information of Citizen </h3>
					<xsl:for-each select="//fs:citizens/fs:citizen/fs:med_hist/fs:laboratory">
						<div>
							<tr>
								<td>
									<xsl:value-of select="fs:date_test"/>
								</td>
								<td>
									<xsl:value-of select="fs:test_type"/>
								</td>
								<td>
									<xsl:value-of select="fs:test_result"/>
								</td>
								<td>
									<xsl:value-of select="fs:city"/>
								</td>
								<td>
									<xsl:value-of select="fs:country"/>
								</td>
								<td>
									<xsl:value-of select="../../@c_ID"/>
								</td>
							</tr>
						</div>
					</xsl:for-each>
				</table>
				<br/>
				<!-- Vaccination Information of All citizens Table-->
				<table border="1">
					<tr>
						<th>Date of Vaccination</th>
						<th>Vaccine Type</th>
						<th>Immunization</th>
						<th>City of Hospital</th>
						<th>Country of Hospital</th>
						<th>Citizen ID</th>
					</tr>
					<h3 style="text-align:left;"> Vaccination Information of Citizen </h3>
					<xsl:for-each select="//fs:citizens/fs:citizen/fs:med_hist/fs:vaccination_stat">
						<div>
							<tr>
								<td>
									<xsl:value-of select="fs:date_vaccination"/>
								</td>
								<td>
									<xsl:value-of select="fs:vaccine_type"/>
								</td>
								<td>
									<xsl:value-of select="fs:vaccinated"/>
								</td>
								<td>
									<xsl:value-of select="fs:city"/>
								</td>
								<td>
									<xsl:value-of select="fs:country"/>
								</td>
								<td>
									<xsl:value-of select="../../@c_ID"/>
								</td>
							</tr>
						</div>
					</xsl:for-each>
				</table>
				<br/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>