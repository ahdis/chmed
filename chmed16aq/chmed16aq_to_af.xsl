<?xml version="1.0"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:fhir="http://hl7.org/fhir" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:chmed16af="http://chemed16af.emediplan.ch" 
	xmlns:xhtml="http://www.w3.org/1999/xhtml">
	<xsl:template match="/B">
		<xsl:variable name="ms" select="M/MS" />
		<xsl:variable name="doc" select="@d" />
		<fhir:Bundle>
			<fhir:id>
				<xsl:attribute name="value">
					<xsl:value-of select="C/@i" />
				</xsl:attribute>
			</fhir:id>
			<fhir:meta>
				<fhir:versionId>
					<xsl:attribute name="value">
						<xsl:choose>
							<!-- B v -->
							<xsl:when test="@v and @v!=''">
								<xsl:value-of select="@v" />
							</xsl:when>
							<xsl:otherwise>1.0</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute>
				</fhir:versionId>
				<fhir:profile>
					<xsl:attribute name="value">
						<xsl:choose>
							<xsl:when test="$doc='RX'">http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-rx-bundle</xsl:when>
							<xsl:when test="$doc='MP'">http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-mp-bundle</xsl:when>
							<xsl:when test="$doc='PMC'">http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-pmc-bundle</xsl:when>
						</xsl:choose>
					</xsl:attribute>
				</fhir:profile>
			</fhir:meta>
			<fhir:identifier>
				<!-- C i -->
				<fhir:system value="urn:ietf:rfc:3986"/>
				<fhir:value>
					<xsl:attribute name="value">
						<xsl:value-of select="concat('urn:uuid:',C/@i)" />
					</xsl:attribute>
				</fhir:value>
			</fhir:identifier>
			<fhir:type value="document"/>
			<fhir:entry>
				<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Composition/comp1" />
				<fhir:resource>
					<fhir:Composition>
						<fhir:id value="comp1"/>
						<fhir:meta>
							<fhir:profile>
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="$doc='RX'">http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-rx-composition</xsl:when>
										<xsl:when test="$doc='MP'">http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-mp-composition</xsl:when>
										<xsl:when test="$doc='PMC'">http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-pmc-composition</xsl:when>
									</xsl:choose>
								</xsl:attribute>
							</fhir:profile>
						</fhir:meta>
						<!-- C r -->
						<xsl:if test="C/@r">
							<fhir:extension url="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-receiver">
								<fhir:valueReference>
									<fhir:reference value="Practitioner/receiver"/>
								</fhir:valueReference>
							</fhir:extension>
						</xsl:if>
						<!-- C E -->
						<xsl:for-each select="C/E">
							<fhir:extension>
								<xsl:attribute name="url">
									<xsl:value-of select="concat('http://chmed16af.emediplan.ch/fhir/StructureDefinition/',@n)" />
								</xsl:attribute>
								<fhir:valueString>
									<xsl:attribute name="value">
										<xsl:value-of select="@v" />
									</xsl:attribute>
								</fhir:valueString>
							</fhir:extension>
						</xsl:for-each>
						<fhir:status value="final"/>
						<!-- @d -->
						<xsl:if test="@d">
							<fhir:type>
								<fhir:coding>
									<fhir:system value="http://emediplan.ch/chmed16af/doc"/>
									<fhir:code>
										<xsl:attribute name="value">
											<xsl:value-of select="@d" />
										</xsl:attribute>
									</fhir:code>
								</fhir:coding>
							</fhir:type>
						</xsl:if>
						<fhir:subject>
							<fhir:reference value="Patient/patient"/>
						</fhir:subject>
						<fhir:date>
							<xsl:attribute name="value">
								<!-- C v -->
								<xsl:value-of select="C/@d" />
							</xsl:attribute>
						</fhir:date>
						<fhir:author>
							<!-- C A i -->
							<fhir:reference value="Practitioner/author" />
						</fhir:author>
						<xsl:if test="$doc='PMC'">
							<fhir:title value="Poly Medication Check"/>
						</xsl:if>
						<xsl:if test="$doc='MP'">
							<fhir:title value="MedicationPlan"/>
						</xsl:if>
						<xsl:if test="$doc='RX'">
							<fhir:title value="Prescription"/>
						</xsl:if>
						<!-- C at C ap  -->
						<xsl:if test="C/@at or C/@ap">
							<fhir:attester>
								<fhir:mode value="professional"/>
								<xsl:if test="C/@at">
									<fhir:time>
										<xsl:attribute name="value">
											<!-- at -->
											<xsl:value-of select="C/@at" />
										</xsl:attribute>
									</fhir:time>
								</xsl:if>
								<xsl:if test="C/@ap">
									<fhir:party>
										<!-- ap -->
										<fhir:reference value="Practitioner/attester"/>
									</fhir:party>
								</xsl:if>
							</fhir:attester>
						</xsl:if>
						<xsl:if test="$ms">
							<fhir:section>
								<xsl:if test="$doc='PMC' or $doc='MP'">
									<fhir:title value="Aktuelle Medikation"/>
									<fhir:code>
										<fhir:coding>
											<fhir:system value="http://loinc.org"/>
											<fhir:code value="77604-7"/>
											<fhir:display value="History of medication use"/>
										</fhir:coding>
									</fhir:code>
								</xsl:if>
								<xsl:if test="$doc='RX'">
									<fhir:title value="Rezept"/>
									<fhir:code>
										<fhir:coding>
											<fhir:system value="http://loinc.org"/>
											<fhir:code value="57828-6"/>
											<fhir:display value="PRESCRIPTIONS"/>
										</fhir:coding>
									</fhir:code>
								</xsl:if>
								<xsl:for-each select="$ms">
									<fhir:entry>
										<fhir:reference>
											<xsl:attribute name="value">
												<xsl:if test="$doc='PMC' or $doc='MP'">
													<xsl:value-of select="concat('MedicationStatement/MS',position())" />
												</xsl:if>
												<xsl:if test="$doc='RX'">
													<xsl:value-of select="concat('MedicationRequest/MR',position())" />
												</xsl:if>
											</xsl:attribute>
										</fhir:reference>
									</fhir:entry>
								</xsl:for-each>
							</fhir:section>
						</xsl:if>
						<xsl:if test="H">
							<fhir:section>
								<fhir:title value="Gesundheitsbelange"/>
								<fhir:code>
									<fhir:coding>
										<fhir:system value="http://loinc.org"/>
										<fhir:code value="75310-3"/>
										<fhir:display value="Health Concerns"/>
									</fhir:coding>
								</fhir:code>
								<!-- @w -->
								<xsl:if test="H/@w">
									<fhir:entry>
										<fhir:reference value="Observation/w"/>
									</fhir:entry>
								</xsl:if>
								<!-- @h -->
								<xsl:if test="H/@h">
									<fhir:entry>
										<fhir:reference value="Observation/h"/>
									</fhir:entry>
								</xsl:if>
								<!-- @m -->
								<xsl:if test="H/@m">
									<fhir:entry>
										<fhir:reference value="Observation/m"/>
									</fhir:entry>
								</xsl:if>
								<!-- @p -->
								<xsl:if test="H/@p">
									<fhir:entry>
										<fhir:reference value="Observation/p"/>
									</fhir:entry>
								</xsl:if>
								<!-- @tw or @td-->
								<xsl:if test="H/@tw or H/@td">
									<fhir:entry>
										<fhir:reference value="Observation/tg"/>
									</fhir:entry>
								</xsl:if>
								<!-- @r1 -->
								<xsl:if test="H/@r1">
									<fhir:entry>
										<fhir:reference value="Condition/r1"/>
									</fhir:entry>
								</xsl:if>
								<!-- @r2 -->
								<xsl:if test="H/@r2">
									<fhir:entry>
										<fhir:reference value="Condition/r2"/>
									</fhir:entry>
								</xsl:if>
								<!-- @r3 -->
								<xsl:if test="H/@r3">
									<fhir:entry>
										<fhir:reference value="Condition/r3"/>
									</fhir:entry>
								</xsl:if>
								<!-- @r4 -->
								<xsl:if test="H/@r4">
									<fhir:entry>
										<fhir:reference value="Condition/r4"/>
									</fhir:entry>
								</xsl:if>
								<!-- @r5 -->
								<xsl:if test="H/@r5">
									<fhir:entry>
										<fhir:reference value="Condition/r5"/>
									</fhir:entry>
								</xsl:if>
								<!-- @r6 -->
								<xsl:if test="H/@r6">
									<fhir:entry>
										<fhir:reference value="Condition/r6"/>
									</fhir:entry>
								</xsl:if>
							</fhir:section>
						</xsl:if>
						<xsl:if test="C/@n">
							<fhir:section>
								<fhir:title value="Bemerkungen"/>
								<fhir:code>
									<fhir:coding>
										<fhir:system value="http://loinc.org"/>
										<fhir:code value="48767-8"/>
										<fhir:display value="ANNOTATION COMMENT"/>
									</fhir:coding>
								</fhir:code>
								<fhir:text>
									<fhir:status value="additional"/>
									<div 
										xmlns="http://www.w3.org/1999/xhtml">
										<xsl:value-of select="C/@n" />
									</div>
								</fhir:text>
							</fhir:section>
						</xsl:if>
						<xsl:if test="R">
							<fhir:section>
								<fhir:title value="Gesundheitsbelange"/>
								<fhir:code>
									<fhir:coding>
										<fhir:system value="http://loinc.org"/>
										<fhir:code value="61357-0"/>
										<fhir:display value="MEDICATION PHARMACEUTICAL ADVICE.BRIEF"/>
									</fhir:coding>
								</fhir:code>
								<fhir:entry>
									<fhir:reference value="QuestionnaireResponse/a"/>
								</fhir:entry>
							</fhir:section>
						</xsl:if>
					</fhir:Composition>
				</fhir:resource>
			</fhir:entry>
			<!-- C P -->
			<xsl:if test="C/P">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Patient/patient" />
					<fhir:resource>
						<fhir:Patient>
							<fhir:id value="patient"/>
							<fhir:meta>
								<fhir:profile>
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="$doc='RX'">http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-pmcrx-patient</xsl:when>
											<xsl:when test="$doc='MP'">http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-mp-patient</xsl:when>
											<xsl:when test="$doc='PMC'">http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-pmcrx-patient</xsl:when>
										</xsl:choose>
									</xsl:attribute>
								</fhir:profile>
							</fhir:meta>
							<!-- C/P/E -->
							<xsl:for-each select="C/P/E">
								<fhir:extension>
									<xsl:attribute name="url">
										<xsl:value-of select="concat('http://chmed16af.emediplan.ch/fhir/StructureDefinition/',@n)" />
									</xsl:attribute>
									<fhir:valueString>
										<xsl:attribute name="value">
											<xsl:value-of select="@v" />
										</xsl:attribute>
									</fhir:valueString>
								</fhir:extension>
							</xsl:for-each>
							<xsl:if test="C/P/@i">
								<fhir:identifier>
									<fhir:system value="urn:oid:2.16.756.5.30.1.123.100.1.1.1"/>
									<fhir:value>
										<xsl:attribute name="value">
											<xsl:value-of select="C/P/@i" />
										</xsl:attribute>
									</fhir:value>
								</fhir:identifier>
							</xsl:if>
							<xsl:if test="C/P/@f or C/P/@g">
								<fhir:name>
									<xsl:if test="C/P/@f">
										<fhir:family>
											<xsl:attribute name="value">
												<xsl:value-of select="C/P/@f" />
											</xsl:attribute>
										</fhir:family>
									</xsl:if>
									<xsl:if test="C/P/@g">
										<fhir:given>
											<xsl:attribute name="value">
												<xsl:value-of select="C/P/@g" />
											</xsl:attribute>
										</fhir:given>
									</xsl:if>
								</fhir:name>
							</xsl:if>
							<xsl:if test="C/P/@t">
								<fhir:telecom>
									<fhir:system value="phone"/>
									<fhir:value>
										<xsl:attribute name="value">
											<xsl:value-of select="C/P/@t" />
										</xsl:attribute>
									</fhir:value>
								</fhir:telecom>
							</xsl:if>
							<xsl:if test="C/P/@ag">
								<xsl:variable name="gender">
									<xsl:choose>
										<xsl:when test="C/P/@ag='m'">male</xsl:when>
										<xsl:when test="C/P/@ag='f'">female</xsl:when>
									</xsl:choose>
								</xsl:variable>
								<fhir:gender>
									<xsl:attribute name="value">
										<xsl:value-of select="$gender" />
									</xsl:attribute>
								</fhir:gender>
							</xsl:if>
							<xsl:if test="C/P/@b">
								<fhir:birthDate>
									<xsl:attribute name="value">
										<xsl:value-of select="C/P/@b" />
									</xsl:attribute>
								</fhir:birthDate>
							</xsl:if>
							<xsl:if test="C/P/@l or C/P/@p or C/P/@c">
								<fhir:address>
									<xsl:if test="C/P/@l">
										<fhir:line>
											<xsl:attribute name="value">
												<xsl:value-of select="C/P/@l" />
											</xsl:attribute>
										</fhir:line>
									</xsl:if>
									<xsl:if test="C/P/@c">
										<fhir:city>
											<xsl:attribute name="value">
												<xsl:value-of select="C/P/@c" />
											</xsl:attribute>
										</fhir:city>
									</xsl:if>
									<xsl:if test="C/P/@p">
										<fhir:postalCode>
											<xsl:attribute name="value">
												<xsl:value-of select="C/P/@p" />
											</xsl:attribute>
										</fhir:postalCode>
									</xsl:if>
								</fhir:address>
							</xsl:if>
							<xsl:if test="C/P/@cl">
								<fhir:communication>
									<fhir:language>
										<fhir:coding>
											<fhir:system value="urn:ietf:bcp:47"/>
											<fhir:code>
												<xsl:attribute name="value">
													<xsl:value-of select="C/P/@cl" />
												</xsl:attribute>
											</fhir:code>
										</fhir:coding>
									</fhir:language>
									<fhir:preferred value="true"/>
								</fhir:communication>
							</xsl:if>
						</fhir:Patient>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- C A -->
			<xsl:if test="C/A">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Practitioner/author" />
					<fhir:resource>
						<fhir:Practitioner>
							<fhir:id value="author"/>
							<fhir:meta>
								<fhir:profile value="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-practitioner"/>
							</fhir:meta>
							<xsl:if test="C/A/@i">
								<fhir:identifier>
									<fhir:use value="official"/>
									<fhir:system value="urn:oid:2.51.1.3"/>
									<fhir:value>
										<xsl:attribute name="value">
											<xsl:value-of select="C/A/@i" />
										</xsl:attribute>
									</fhir:value>
								</fhir:identifier>
							</xsl:if>
							<xsl:if test="C/A/@z">
								<fhir:identifier>
									<fhir:use value="official"/>
									<fhir:system value="urn:oid:2.16.756.5.30.1.123.100.2.1.1"/>
									<fhir:value>
										<xsl:attribute name="value">
											<xsl:value-of select="C/A/@z" />
										</xsl:attribute>
									</fhir:value>
								</fhir:identifier>
							</xsl:if>
							<xsl:if test="C/A/@f or C/A/@g">
								<fhir:name>
									<xsl:if test="C/A/@f">
										<fhir:family>
											<xsl:attribute name="value">
												<xsl:value-of select="C/A/@f" />
											</xsl:attribute>
										</fhir:family>
									</xsl:if>
									<xsl:if test="C/A/@g">
										<fhir:given>
											<xsl:attribute name="value">
												<xsl:value-of select="C/A/@g" />
											</xsl:attribute>
										</fhir:given>
									</xsl:if>
								</fhir:name>
							</xsl:if>
						</fhir:Practitioner>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- add receiver entry-->
			<xsl:if test="C/@r">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Practitioner/receiver" />
					<fhir:resource>
						<fhir:Practitioner>
							<fhir:id value="receiver"/>
							<fhir:meta>
								<fhir:profile value="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-practitioner"/>
							</fhir:meta>
							<xsl:if test="C/@r">
								<fhir:identifier>
									<fhir:use value="official"/>
									<fhir:system value="urn:oid:2.51.1.3"/>
									<fhir:value>
										<xsl:attribute name="value">
											<xsl:value-of select="C/@r" />
										</xsl:attribute>
									</fhir:value>
								</fhir:identifier>
							</xsl:if>
						</fhir:Practitioner>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- add attester entry -->
			<xsl:if test="C/@ap">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Practitioner/attester" />
					<fhir:resource>
						<fhir:Practitioner>
							<fhir:id value="attester"/>
							<fhir:meta>
								<fhir:profile value="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-practitioner"/>
							</fhir:meta>
							<xsl:if test="C/@ap">
								<fhir:identifier>
									<fhir:use value="official"/>
									<fhir:system value="urn:oid:2.51.1.3"/>
									<fhir:value>
										<xsl:attribute name="value">
											<xsl:value-of select="C/@ap" />
										</xsl:attribute>
									</fhir:value>
								</fhir:identifier>
							</xsl:if>
						</fhir:Practitioner>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- MedicationStatments or MedicationRequests-->
			<xsl:for-each select="$ms">
				<fhir:entry>
					<fhir:fullUrl>
						<xsl:attribute name="value">
							<xsl:if test="$doc='PMC' or $doc='MP'">
								<xsl:value-of select="concat('http://chmed16af.emediplan.ch/bundle/fhir/MedicationStatement/MS',position())" />
							</xsl:if>
							<xsl:if test="$doc='RX'">
								<xsl:value-of select="concat('http://chmed16af.emediplan.ch/bundle/fhir/MedicationRequest/MR',position())" />
							</xsl:if>
						</xsl:attribute>
					</fhir:fullUrl>
					<fhir:resource>
						<xsl:variable name="resource">
							<xsl:choose>
								<xsl:when test="$doc='RX'">fhir:MedicationRequest</xsl:when>
								<xsl:when test="$doc='MP'">fhir:MedicationStatement</xsl:when>
								<xsl:when test="$doc='PMC'">fhir:MedicationStatement</xsl:when>
							</xsl:choose>
						</xsl:variable>
						<xsl:element name="{$resource}">
							<fhir:id>
								<xsl:attribute name="value">
									<xsl:if test="$doc='PMC' or $doc='MP'">
										<xsl:value-of select="concat('MedicationStatement/MS',position())" />
									</xsl:if>
									<xsl:if test="$doc='RX'">
										<xsl:value-of select="concat('MedicationRequest/MR',position())" />
									</xsl:if>
								</xsl:attribute>
							</fhir:id>
							<fhir:meta>
								<fhir:profile>
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="$doc='RX'">http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-rx-medicationrequest</xsl:when>
											<xsl:when test="$doc='MP'">http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-mp-medicationstatement</xsl:when>
											<xsl:when test="$doc='PMC'">http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-mp-medicationstatement</xsl:when>
										</xsl:choose>
									</xsl:attribute>
								</fhir:profile>
							</fhir:meta>
							<fhir:contained>
								<fhir:Medication>
									<fhir:id>
										<xsl:attribute name="value">
											<xsl:value-of select="concat('cont',position())" />
										</xsl:attribute>
									</fhir:id>
									<fhir:meta>
										<fhir:profile value="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-medication"/>
									</fhir:meta>
									<!-- MS	i -->
									<xsl:if test="@i">
										<fhir:code>
											<fhir:coding>
												<fhir:system value="urn:oid:2.51.1.1"/>
												<fhir:code>
													<xsl:attribute name="value">
														<xsl:value-of select="@i" />
													</xsl:attribute>
												</fhir:code>
											</fhir:coding>
										</fhir:code>
									</xsl:if>
								</fhir:Medication>
							</fhir:contained>
							<!-- E -->
							<xsl:for-each select="E">
								<fhir:extension>
									<xsl:attribute name="url">
										<xsl:value-of select="concat('http://chmed16af.emediplan.ch/fhir/StructureDefinition/',@n)" />
									</xsl:attribute>
									<fhir:valueString>
										<xsl:attribute name="value">
											<xsl:value-of select="@v" />
										</xsl:attribute>
									</fhir:valueString>
								</fhir:extension>
							</xsl:for-each>
							<fhir:status value="active"/>
							<fhir:medicationReference>
								<fhir:reference>
									<xsl:attribute name="value">
										<xsl:value-of select="concat('#cont',position())" />
									</xsl:attribute>
								</fhir:reference>
							</fhir:medicationReference>
							<xsl:if test="@s">
								<fhir:informationSource>
									<xsl:if test="@s=1">
										<fhir:reference value="Patient/patient"/>
									</xsl:if>
									<xsl:if test="@s=0">
										<fhir:reference value="Practitioner/author"/>
									</xsl:if>
								</fhir:informationSource>
							</xsl:if>
							<fhir:subject>
								<fhir:reference value="Patient/patient"/>
							</fhir:subject>
							<fhir:taken value="unk"/>
							<!-- @r -->
							<xsl:if test="@r">
								<fhir:reasonCode>
									<fhir:text>
										<xsl:attribute name="value">
											<xsl:value-of select="@r" />
										</xsl:attribute>
									</fhir:text>
								</fhir:reasonCode>
							</xsl:if>
							<!-- @n -->
							<xsl:if test="@n">
								<fhir:note>
									<fhir:text>
										<xsl:attribute name="value">
											<xsl:value-of select="@n" />
										</xsl:attribute>
									</fhir:text>
								</fhir:note>
							</xsl:if>
							<!-- D -->
							<xsl:for-each select="D">
								<xsl:variable name="dosage">
									<xsl:choose>
										<xsl:when test="$doc='RX'">fhir:dosageInstruction</xsl:when>
										<xsl:when test="$doc='MP'">fhir:dosage</xsl:when>
										<xsl:when test="$doc='PMC'">fhir:dosage</xsl:when>
									</xsl:choose>
								</xsl:variable>
								<xsl:element name="{$dosage}">
									<!-- @n -->
									<xsl:if test="@n">
										<fhir:sequence>
											<xsl:attribute name="value">
												<xsl:value-of select="@n" />
											</xsl:attribute>
										</fhir:sequence>
									</xsl:if>
									<xsl:if test="@s or @e or @c or @dv or @du or @f or @p or @pu or @dw or @td or @w">
										<fhir:timing>
											<fhir:repeat>
												<xsl:if test="@s or @e">
													<fhir:boundsPeriod>
														<xsl:if test="@s">
															<fhir:start>
																<xsl:attribute name="value">
																	<xsl:value-of select="@s" />
																</xsl:attribute>
															</fhir:start>
														</xsl:if>
														<xsl:if test="@e">
															<fhir:end>
																<xsl:attribute name="value">
																	<xsl:value-of select="@e" />
																</xsl:attribute>
															</fhir:end>
														</xsl:if>
													</fhir:boundsPeriod>
												</xsl:if>
												<!-- @c -->
												<xsl:if test="@c">
													<fhir:count>
														<xsl:attribute name="value">
															<xsl:value-of select="@c" />
														</xsl:attribute>
													</fhir:count>
												</xsl:if>
												<!-- @dv -->
												<xsl:if test="@dv">
													<fhir:duration>
														<xsl:attribute name="value">
															<xsl:value-of select="@dv" />
														</xsl:attribute>
													</fhir:duration>
												</xsl:if>
												<!-- @du -->
												<xsl:if test="@du">
													<fhir:durationUnit>
														<xsl:attribute name="value">
															<xsl:value-of select="@du" />
														</xsl:attribute>
													</fhir:durationUnit>
												</xsl:if>
												<!-- @f -->
												<xsl:if test="@f">
													<fhir:frequency>
														<xsl:attribute name="value">
															<xsl:value-of select="@f" />
														</xsl:attribute>
													</fhir:frequency>
												</xsl:if>
												<!-- @p -->
												<xsl:if test="@p">
													<fhir:period>
														<xsl:attribute name="value">
															<xsl:value-of select="@p" />
														</xsl:attribute>
													</fhir:period>
												</xsl:if>
												<!-- @pu -->
												<xsl:if test="@pu">
													<fhir:periodUnit>
														<xsl:attribute name="value">
															<xsl:value-of select="@pu" />
														</xsl:attribute>
													</fhir:periodUnit>
												</xsl:if>
												<!-- @dw -->
												<xsl:if test="@dw">
													<xsl:call-template name="tokenizeElement">
														<xsl:with-param name="text" select="@dw"/>
														<xsl:with-param name="element" select="'fhir:dayOfWeek'"/>
													</xsl:call-template>
												</xsl:if>
												<!-- @td -->
												<xsl:if test="@td">
													<xsl:call-template name="tokenizeElement">
														<xsl:with-param name="text" select="@td"/>
														<xsl:with-param name="element" select="'fhir:timeOfDay'"/>
													</xsl:call-template>
												</xsl:if>
												<!-- @w -->
												<xsl:if test="@w">
													<xsl:call-template name="tokenizeElement">
														<xsl:with-param name="text" select="@w"/>
														<xsl:with-param name="element" select="'fhir:when'"/>
													</xsl:call-template>
												</xsl:if>
											</fhir:repeat>
										</fhir:timing>
									</xsl:if>
									<xsl:if test="@r=1">
										<fhir:asNeededBoolean value="true"/>
									</xsl:if>
									<xsl:if test="@o">
										<fhir:route>
											<fhir:coding>
												<fhir:system value="http://chmed16af.emediplan.ch/fhir/CodeSystem/chmed16af-codesystem-cdtyp26"/>
												<fhir:code>
													<xsl:attribute name="value">
														<xsl:value-of select="@o" />
													</xsl:attribute>
												</fhir:code>
											</fhir:coding>
										</fhir:route>
									</xsl:if>
									<xsl:if test="@q or @u">
										<fhir:doseQuantity>
											<xsl:if test="@q">
												<fhir:value>
													<xsl:attribute name="value">
														<xsl:value-of select="@q" />
													</xsl:attribute>
												</fhir:value>
											</xsl:if>
											<xsl:if test="@u">
												<fhir:unit>
													<xsl:attribute name="value">
														<xsl:value-of select="@u" />
													</xsl:attribute>
												</fhir:unit>
												<fhir:system value="http://chmed16af.emediplan.ch/fhir/CodeSystem/chmed16af-codesystem-cdtyp9"/>
												<fhir:code>
													<xsl:attribute name="value">
														<xsl:value-of select="@u" />
													</xsl:attribute>
												</fhir:code>
											</xsl:if>
										</fhir:doseQuantity>
									</xsl:if>
								</xsl:element>
							</xsl:for-each>
							<!-- @dn, @dq  -->
							<xsl:if test="@dn or @dq">
								<fhir:dispenseRequest>
									<xsl:if test="@dn">
										<fhir:numberOfRepeatsAllowed>
											<xsl:value-of select="@dn" />
										</fhir:numberOfRepeatsAllowed>
									</xsl:if>
									<xsl:if test="@dq">
										<fhir:quantity>
											<fhir:value>
												<xsl:value-of select="@dq" />
											</fhir:value>
										</fhir:quantity>
									</xsl:if>
								</fhir:dispenseRequest>
							</xsl:if>
							<!-- sa -->
							<xsl:if test="@sa">
								<fhir:substitution>
									<fhir:allowed>
										<xsl:attribute name="value">
											<xsl:choose>
												<xsl:when test="@sa=1">true</xsl:when>
												<xsl:when test="@sa=0">false</xsl:when>
											</xsl:choose>
										</xsl:attribute>
									</fhir:allowed>
								</fhir:substitution>
							</xsl:if>
						</xsl:element>
					</fhir:resource>
				</fhir:entry>
			</xsl:for-each>
			<!-- Healthsection entries -->
			<!-- @w -->
			<xsl:if test="H/@w">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Observation/w" />
					<fhir:resource>
						<fhir:Observation>
							<fhir:id value="Observation/w"/>
							<fhir:meta>
								<fhir:profile value="http://hl7.org/fhir/StructureDefinition/bodyweight" />
							</fhir:meta>
							<fhir:status value="final"/>
							<fhir:category>
								<fhir:coding>
									<fhir:system value="http://hl7.org/fhir/observation-category"/>
									<fhir:code value="vital-signs"/>
									<fhir:display value="Vital Signs"/>
								</fhir:coding>
							</fhir:category>
							<fhir:code>
								<fhir:coding>
									<fhir:system value="http://loinc.org"/>
									<fhir:code value="29463-7"/>
									<fhir:display value="Body Weight"/>
								</fhir:coding>
								<fhir:coding>
									<fhir:system value="http://loinc.org"/>
									<fhir:code value="3141-9"/>
									<fhir:display value="Body weight Measured"/>
								</fhir:coding>
								<fhir:coding>
									<fhir:system value="http://snomed.info/sct"/>
									<fhir:code value="27113001"/>
									<fhir:display value="Body weight"/>
								</fhir:coding>
							</fhir:code>
							<fhir:subject>
								<fhir:reference value="Patient/patient"/>
							</fhir:subject>
							<fhir:valueQuantity>
								<fhir:value>
									<xsl:attribute name="value">
										<xsl:value-of select="H/@w" />
									</xsl:attribute>
								</fhir:value>
								<fhir:unit value="kg"/>
								<fhir:system value="http://unitsofmeasure.org"/>
								<fhir:code value="kg"/>
							</fhir:valueQuantity>
						</fhir:Observation>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- @h -->
			<xsl:if test="H/@h">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Observation/h" />
					<fhir:resource>
						<fhir:Observation>
							<fhir:id value="Observation/h"/>
							<fhir:meta>
								<fhir:profile value="http://hl7.org/fhir/StructureDefinition/bodyheight" />
							</fhir:meta>
							<fhir:status value="final" />
							<fhir:category>
								<fhir:coding>
									<fhir:system value="http://hl7.org/fhir/observation-category"/>
									<fhir:code value="vital-signs"/>
									<fhir:display value="Vital Signs"/>
								</fhir:coding>
							</fhir:category>
							<fhir:code>
								<fhir:coding>
									<fhir:system value="http://loinc.org"/>
									<fhir:code value="8302-2"/>
									<fhir:display value="Body height"/>
								</fhir:coding>
								<fhir:coding>
									<fhir:system value="http://snomed.info/sct"/>
									<fhir:code value="50373000"/>
									<fhir:display value="Body height measure"/>
								</fhir:coding>
							</fhir:code>
							<fhir:subject>
								<fhir:reference value="Patient/patient"/>
							</fhir:subject>
							<fhir:valueQuantity>
								<fhir:value>
									<xsl:attribute name="value">
										<xsl:value-of select="H/@h" />
									</xsl:attribute>
								</fhir:value>
								<fhir:unit value="cm"/>
								<fhir:system value="http://unitsofmeasure.org"/>
								<fhir:code value="cm"/>
							</fhir:valueQuantity>
						</fhir:Observation>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- @m -->
			<xsl:if test="H/@m">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Observation/m" />
					<fhir:resource>
						<fhir:Observation>
							<fhir:id value="Observation/m"/>
							<fhir:meta>
								<fhir:profile value="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-obs-dateoflastmenstruation" />
							</fhir:meta>
							<fhir:status value="final" />
							<fhir:code>
								<fhir:coding>
									<fhir:system value="http://snomed.info/sct"/>
									<fhir:code value="161713000"/>
									<fhir:display value="Last menstrual period - First day"/>
								</fhir:coding>
							</fhir:code>
							<fhir:subject>
								<fhir:reference value="Patient/patient"/>
							</fhir:subject>
							<fhir:valueDateTime>
								<xsl:attribute name="value">
									<xsl:value-of select="H/@m" />
								</xsl:attribute>
							</fhir:valueDateTime>
						</fhir:Observation>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- @p -->
			<xsl:if test="H/@p">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Observation/p" />
					<fhir:resource>
						<fhir:Observation>
							<fhir:id value="Observation/p"/>
							<fhir:meta>
								<fhir:profile value="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-obs-prematurebaby" />
							</fhir:meta>
							<fhir:status value="final" />
							<fhir:code>
								<fhir:coding>
									<fhir:system value="http://snomed.info/sct"/>
									<fhir:code value="395507008"/>
									<fhir:display value="Premature infant"/>
								</fhir:coding>
							</fhir:code>
							<fhir:subject>
								<fhir:reference value="Patient/patient"/>
							</fhir:subject>
							<fhir:valueBoolean>
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="H/@p=1">true</xsl:when>
										<xsl:when test="H/@p=0">false</xsl:when>
									</xsl:choose>
								</xsl:attribute>
							</fhir:valueBoolean>
						</fhir:Observation>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- @tg -->
			<xsl:if test="H/@tw or H/@td">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Observation/g" />
					<fhir:resource>
						<fhir:Observation>
							<fhir:id value="Observation/tg"/>
							<fhir:meta>
								<fhir:profile value="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-obs-timeofgestation" />
							</fhir:meta>
							<fhir:status value="final" />
							<fhir:code>
								<fhir:coding>
									<fhir:system value="http://snomed.info/sct"/>
									<fhir:code value="445872007"/>
									<fhir:display value="Fetal gestational age"/>
								</fhir:coding>
							</fhir:code>
							<fhir:subject>
								<fhir:reference value="Patient/patient"/>
							</fhir:subject>
							<xsl:if test="H/@tw">
								<fhir:component>
									<fhir:code>
										<fhir:coding>
											<fhir:system value="http://loinc.org"/>
											<fhir:code value="49051-6"/>
											<fhir:display value="Gestational age in W"/>
										</fhir:coding>
									</fhir:code>
									<fhir:valueQuantity>
										<fhir:value>
											<xsl:attribute name="value">
												<xsl:value-of select="H/@tw" />
											</xsl:attribute>
										</fhir:value>
										<fhir:unit value="wk"/>
										<fhir:system value="http://unitsofmeasure.org"/>
										<fhir:code value="wk"/>
									</fhir:valueQuantity>
								</fhir:component>
							</xsl:if>
							<xsl:if test="H/@td">
								<fhir:component>
									<fhir:code>
										<fhir:coding>
											<fhir:system value="http://loinc.org"/>
											<fhir:code value="49052-4"/>
											<fhir:display value="Gestational age in D"/>
										</fhir:coding>
									</fhir:code>
									<fhir:valueQuantity>
										<fhir:value>
											<xsl:attribute name="value">
												<xsl:value-of select="H/@td" />
											</xsl:attribute>
										</fhir:value>
										<fhir:unit value="d"/>
										<fhir:system value="http://unitsofmeasure.org"/>
										<fhir:code value="d"/>
									</fhir:valueQuantity>
								</fhir:component>
							</xsl:if>
						</fhir:Observation>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- @r1 -->
			<xsl:if test="H/@r1">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Condition/r1" />
					<fhir:resource>
						<xsl:call-template name="HCondition">
							<xsl:with-param name="categoryCode" select="1"/>
							<xsl:with-param name="riskCodes" select="H/@r1"/>
						</xsl:call-template>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- @r2 -->
			<xsl:if test="H/@r2">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Condition/r2" />
					<fhir:resource>
						<xsl:call-template name="HCondition">
							<xsl:with-param name="categoryCode" select="2"/>
							<xsl:with-param name="riskCodes" select="H/@r2"/>
						</xsl:call-template>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- @r3 -->
			<xsl:if test="H/@r3">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Condition/r3" />
					<fhir:resource>
						<xsl:call-template name="HCondition">
							<xsl:with-param name="categoryCode" select="3"/>
							<xsl:with-param name="riskCodes" select="H/@r3"/>
						</xsl:call-template>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- @r4 -->
			<xsl:if test="H/@r4">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Condition/r4" />
					<fhir:resource>
						<xsl:call-template name="HCondition">
							<xsl:with-param name="categoryCode" select="4"/>
							<xsl:with-param name="riskCodes" select="H/@r4"/>
						</xsl:call-template>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- @r5 -->
			<xsl:if test="H/@r5">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Condition/r5" />
					<fhir:resource>
						<xsl:call-template name="HCondition">
							<xsl:with-param name="categoryCode" select="5"/>
							<xsl:with-param name="riskCodes" select="H/@r5"/>
						</xsl:call-template>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<!-- @r6 -->
			<xsl:if test="H/@r6">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/Condition/r6" />
					<fhir:resource>
						<xsl:call-template name="HCondition">
							<xsl:with-param name="categoryCode" select="6"/>
							<xsl:with-param name="riskCodes" select="H/@r6"/>
						</xsl:call-template>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
			<xsl:if test="R">
				<fhir:entry>
					<fhir:fullUrl value="http://chmed16af.emediplan.ch/bundle/fhir/QuestionnaireResponse/a" />
					<fhir:resource>
						<fhir:QuestionnaireResponse>
							<fhir:id value="a"/>
							<fhir:meta>
								<fhir:profile value="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-pmc-questionnaireresponse" />
							</fhir:meta>
							<fhir:questionnaire>
								<fhir:reference value="http://chmed16af.emediplan.ch/fhir/Questionnaire/chmed16af-pmc-questionnaire"/>
							</fhir:questionnaire>
							<fhir:status value="completed"/>
							<xsl:for-each select="R/Q">
								<xsl:if test="@n">
									<fhir:item>
										<fhir:linkId>
											<xsl:attribute name="value">
												<xsl:value-of select="@n" />
											</xsl:attribute>
										</fhir:linkId>
										<xsl:if test="@q">
											<fhir:item>
												<fhir:linkId>
													<xsl:attribute name="value">
														<xsl:value-of select="concat(@n,'.1')" />
													</xsl:attribute>
												</fhir:linkId>
												<fhir:answer>
													<fhir:valueBoolean>
														<xsl:attribute name="value">
															<xsl:choose>
																<xsl:when test="@q=1">true</xsl:when>
																<xsl:when test="@q=0">false</xsl:when>
															</xsl:choose>
														</xsl:attribute>
													</fhir:valueBoolean>
												</fhir:answer>
											</fhir:item>
										</xsl:if>
										<xsl:if test="@p">
											<fhir:item>
												<fhir:linkId>
													<xsl:attribute name="value">
														<xsl:value-of select="concat(@n,'.2')" />
													</xsl:attribute>
												</fhir:linkId>
												<fhir:answer>
													<fhir:valueBoolean>
														<xsl:attribute name="value">
															<xsl:choose>
																<xsl:when test="@p=1">true</xsl:when>
																<xsl:when test="@p=0">false</xsl:when>
															</xsl:choose>
														</xsl:attribute>
													</fhir:valueBoolean>
												</fhir:answer>
											</fhir:item>
										</xsl:if>
										<xsl:if test="@r">
											<fhir:item>
												<fhir:linkId>
													<xsl:attribute name="value">
														<xsl:value-of select="concat(@n,'.3')" />
													</xsl:attribute>
												</fhir:linkId>
												<fhir:answer>
													<fhir:valueString>
														<xsl:attribute name="value">
															<xsl:value-of select="@r" />
														</xsl:attribute>
													</fhir:valueString>
												</fhir:answer>
											</fhir:item>
										</xsl:if>
									</fhir:item>
								</xsl:if>
							</xsl:for-each>
						</fhir:QuestionnaireResponse>
					</fhir:resource>
				</fhir:entry>
			</xsl:if>
		</fhir:Bundle>
	</xsl:template>
	<!-- rx -->
	<xsl:template name='HCondition' mode='ms' match='C'>
		<xsl:param name='this' select='.'/>
		<xsl:param name='categoryCode' select='1'/>
		<xsl:param name='riskCodes' />
		<fhir:Condition>
			<fhir:id>
				<xsl:attribute name="value">
					<xsl:value-of select="concat('r',$categoryCode)" />
				</xsl:attribute>
			</fhir:id>
			<fhir:meta>
				<fhir:profile value="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-condition-risks" />
			</fhir:meta>
			<fhir:clinicalStatus value="active"/>
			<fhir:category>
				<fhir:coding>
					<fhir:system value="http://chmed16af.emediplan.ch/fhir/CodeSystem/chmed16af-codesystem-risks-category"/>
					<fhir:code>
						<xsl:attribute name="value">
							<xsl:value-of select="$categoryCode" />
						</xsl:attribute>
					</fhir:code>
				</fhir:coding>
			</fhir:category>
			<xsl:if test="$riskCodes">
				<fhir:code>
					<xsl:call-template name="tokenizeRiskCodes">
						<xsl:with-param name="text" select="$riskCodes"/>
					</xsl:call-template>
				</fhir:code>
			</xsl:if>
			<fhir:subject>
				<fhir:reference value="Patient/patient"/>
			</fhir:subject>
		</fhir:Condition>
	</xsl:template>
	<!-- tokenize -->
	<xsl:template name="tokenizeElement">
		<xsl:param name="text" select="."/>
		<xsl:param name="separator" select="','"/>
		<xsl:param name="element" select="."/>
		<xsl:choose>
			<xsl:when test="not(contains($text, $separator))">
				<xsl:element name="{$element}">
					<xsl:attribute name="value">
						<xsl:value-of select="normalize-space($text)" />
					</xsl:attribute>
				</xsl:element>
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="tokenizeElement">
					<xsl:with-param name="text" select="substring-before($text, $separator)"/>
					<xsl:with-param name="element" select="$element"/>
				</xsl:call-template>
				<xsl:call-template name="tokenizeElement">
					<xsl:with-param name="text" select="substring-after($text, $separator)"/>
					<xsl:with-param name="element" select="$element"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!-- tokenize -->
	<xsl:template name="tokenizeRiskCodes">
		<xsl:param name="text" select="."/>
		<xsl:param name="separator" select="','"/>
		<xsl:choose>
			<xsl:when test="not(contains($text, $separator))">
				<fhir:coding>
					<fhir:system value="http://chmed16af.emediplan.ch/fhir/CodeSystem/chmed16af-codesystem-risks-cdscode"/>
					<fhir:code>
						<xsl:attribute name="value">
							<xsl:value-of select="normalize-space($text)" />
						</xsl:attribute>
					</fhir:code>
				</fhir:coding>
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="tokenizeRiskCodes">
					<xsl:with-param name="text" select="substring-before($text, $separator)"/>
				</xsl:call-template>
				<xsl:call-template name="tokenizeRiskCodes">
					<xsl:with-param name="text" select="substring-after($text, $separator)"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="text()|@*"></xsl:template>
	<xsl:function name="chmed16af:substring-after-last">
		<xsl:param name="input" as="xs:string" />
		<xsl:param name="substr" as="xs:string" />
		<xsl:sequence select="if ($substr)             then               if (contains($input, $substr))               then tokenize($input, $substr)[last( )]                else ''             else $input" />
	</xsl:function>
</xsl:stylesheet>