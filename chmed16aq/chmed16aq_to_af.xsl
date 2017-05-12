<?xml version="1.0"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:fhir="http://hl7.org/fhir" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:chmed16af="http://chemed16af.emediplan.ch" 
	xmlns:xhtml="http://www.w3.org/1999/xhtml">
	<xsl:template match="/B">
		<xsl:variable name="ms" select="M/MS" />
		<fhir:Bundle>
			<fhir:id value="chmed16af-mp-bundle-s01"/>
			<fhir:meta>
				<fhir:versionId>
					<xsl:attribute name="value">
						<!-- B v -->
						<xsl:value-of select="@v" />
					</xsl:attribute>
				</fhir:versionId>
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
				<fhir:resource>
					<fhir:Composition>
						<fhir:id value="comp1"/>
						<fhir:meta>
							<fhir:profile value="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-mp-composition"/>
						</fhir:meta>
						<!-- C r -->
						<xsl:if test="C/@r">
							<fhir:extension url="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-receiver">
								<fhir:valueReference>
									<fhir:reference value="Practitioner/receiver"/>
								</fhir:valueReference>
							</fhir:extension>
							<fhir:status value="final"/>
						</xsl:if>
						<xsl:if test="@d='MP'">
							<fhir:type>
								<fhir:coding>
									<fhir:system value="http://loinc.org"/>
									<fhir:code value="56445-0"/>
								</fhir:coding>
								<fhir:text value="Medication summary Document"/>
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
						<fhir:title value="MedicationPlan"/>
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
								<fhir:title value="Aktuelle Medikation"/>
								<fhir:code>
									<fhir:coding>
										<fhir:system value="http://loinc.org"/>
										<fhir:code value="77604-7"/>
										<fhir:display value="History of medication use"/>
									</fhir:coding>
								</fhir:code>
								<xsl:for-each select="$ms">
									<fhir:entry>
										<fhir:reference>
											<xsl:attribute name="value">
												<xsl:value-of select="concat('MedicationStatement/',position())" />
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
					</fhir:Composition>
				</fhir:resource>
			</fhir:entry>
			<!-- C P -->
			<xsl:if test="C/P">
				<fhir:entry>
					<fhir:resource>
						<fhir:Patient>
							<fhir:id value="patient"/>
							<fhir:meta>
								<fhir:profile value="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-mp-patient"/>
							</fhir:meta>
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
			<!-- MedicationStatments -->
			<xsl:for-each select="$ms">
				<fhir:entry>
					<fhir:resource>
						<fhir:MedicationStatement>
							<fhir:id>
								<xsl:attribute name="value">
									<xsl:value-of select="concat('MedicationStatement/',position())" />
								</xsl:attribute>
							</fhir:id>
							<fhir:meta>
								<fhir:profile value="http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-mp-medicationstatement"/>
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
							<xsl:if test="D">
								<fhir:dosage>
									<xsl:if test="D/@s or D/@e">
										<fhir:timing>
											<fhir:repeat>
												<fhir:boundsPeriod>
													<xsl:if test="D/@s">
														<fhir:start>
															<xsl:attribute name="value">
																<xsl:value-of select="D/@s" />
															</xsl:attribute>
														</fhir:start>
													</xsl:if>
													<xsl:if test="D/@e">
														<fhir:start>
															<xsl:attribute name="value">
																<xsl:value-of select="D/@e" />
															</xsl:attribute>
														</fhir:start>
													</xsl:if>
												</fhir:boundsPeriod>
												<!-- FIXME: verify and finish -->
												<!-- @p -->
												<xsl:if test="D/@p">
													<fhir:periodMax>
														<xsl:attribute name="value">
															<xsl:value-of select="D/@p" />
														</xsl:attribute>
													</fhir:periodMax>
												</xsl:if>
												<xsl:if test="D/@m">
													<fhir:when value="PCM"/>
												</xsl:if>
												<xsl:if test="D/@d">
													<fhir:when value="PCD"/>
												</xsl:if>
												<xsl:if test="D/@v">
													<fhir:when value="PCV"/>
												</xsl:if>
												<xsl:if test="D/@h">
													<fhir:when value="PCH"/>
												</xsl:if>
												<!-- FIXME doseQuantity-->
												<!-- FIXME dl dh dm -->
											</fhir:repeat>
										</fhir:timing>
									</xsl:if>
									<xsl:if test="D/@r=1">
										<fhir:asNeededBoolean value="true"/>
									</xsl:if>
									<xsl:if test="D/@o">
										<fhir:route>
											<fhir:coding>
												<fhir:system value="http://chmed16af.emediplan.ch/fhir/CodeSystem/chmed16af-codesystem-cdtyp26"/>
												<fhir:code>
													<xsl:attribute name="value">
														<xsl:value-of select="D/@o" />
													</xsl:attribute>
												</fhir:code>
											</fhir:coding>
										</fhir:route>
									</xsl:if>
									<!-- FIXME only simplified quantites, unit not yet done -->
									<xsl:if test="D/@m or D/@d or D/@v or D/@h">
										<fhir:doseQuantity>
											<fhir:value>
												<xsl:attribute name="value">
													<xsl:choose>
														<xsl:when test="D/@m">
															<xsl:value-of select="D/@m" />
														</xsl:when>
														<xsl:when test="D/@d">
															<xsl:value-of select="D/@d" />
														</xsl:when>
														<xsl:when test="D/@v">
															<xsl:value-of select="D/@v" />
														</xsl:when>
														<xsl:when test="D/@h">
															<xsl:value-of select="D/@h" />
														</xsl:when>
													</xsl:choose>
												</xsl:attribute>
											</fhir:value>
											<fhir:unit value="Stk"/>
											<fhir:system value="http://chmed16af.emediplan.ch/fhir/CodeSystem/chmed16af-codesystem-cdtyp9"/>
											<fhir:code value="Stk"/>
										</fhir:doseQuantity>
									</xsl:if>
								</fhir:dosage>
							</xsl:if>
						</fhir:MedicationStatement>
					</fhir:resource>
				</fhir:entry>
			</xsl:for-each>
			<!-- Healthsection entries -->
			<!-- @w -->
			<xsl:if test="H/@w">
				<fhir:entry>
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
					<fhir:resource>
						<xsl:call-template name="HCondition">
							<xsl:with-param name="categoryCode" select="6"/>
							<xsl:with-param name="riskCodes" select="H/@r6"/>
						</xsl:call-template>
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
				<xsl:call-template name="tokenizeRiskCodes">
					<xsl:with-param name="text" select="$riskCodes"/>
				</xsl:call-template>
			</xsl:if>
			<fhir:subject>
				<fhir:reference value="Patient/patient"/>
			</fhir:subject>
		</fhir:Condition>
	</xsl:template>
	<!-- tokenize -->
	<xsl:template name="tokenizeRiskCodes">
		<xsl:param name="text" select="."/>
		<xsl:param name="separator" select="','"/>
		<xsl:choose>
			<xsl:when test="not(contains($text, $separator))">
				<fhir:code>
					<fhir:coding>
						<fhir:system value="http://chmed16af.emediplan.ch/fhir/CodeSystem/chmed16af-codesystem-risks-cdscode"/>
						<fhir:code>
							<xsl:attribute name="value">
								<xsl:value-of select="normalize-space($text)" />
							</xsl:attribute>
						</fhir:code>
					</fhir:coding>
				</fhir:code>
			</xsl:when>
			<xsl:otherwise>
				<item>
					<xsl:value-of select="normalize-space(substring-before($text, $separator))"/>
				</item>
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