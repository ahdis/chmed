<?xml version="1.0"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:fhir="http://hl7.org/fhir" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:chmed16af="http://chemed16af.emediplan.ch" 
	xmlns:xhtml="http://www.w3.org/1999/xhtml">
	<xsl:template match="/fhir:Bundle">
		<B 
			xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="chmed16aq.xsd">
			<!-- @v -->
			<xsl:attribute name="v">
				<xsl:value-of select="fhir:meta/fhir:versionId/@value" />
			</xsl:attribute>
			<xsl:attribute name="d">
				<xsl:choose>
					<!-- MP -->
					<xsl:when test="fhir:entry/fhir:resource/fhir:Composition/fhir:type/fhir:coding[fhir:system/@value='http://emediplan.ch/chmed16af/doc']/fhir:code/@value='MP'">MP</xsl:when>
					<!-- RX -->
					<xsl:when test="fhir:entry/fhir:resource/fhir:Composition/fhir:type/fhir:coding[fhir:system/@value='http://emediplan.ch/chmed16af/doc']/fhir:code/@value='RX'">RX</xsl:when>
					<!-- PMC -->
					<xsl:when test="fhir:entry/fhir:resource/fhir:Composition/fhir:type/fhir:coding[fhir:system/@value='http://emediplan.ch/chmed16af/doc']/fhir:code/@value='PMC'">PMC</xsl:when>
				</xsl:choose>
			</xsl:attribute>
			<xsl:apply-templates select="fhir:entry" />
		</B>
	</xsl:template>
	<xsl:template match="fhir:Composition">
		<!-- C -->
		<C>
			<!-- @i -->
			<xsl:attribute name="i">
				<xsl:value-of select="fhir:identifier[fhir:system[@value='http://emediplan.ch/chmed16af/id']]/fhir:value/@value" />
			</xsl:attribute>
			<!-- @d -->
			<xsl:attribute name="d">
				<xsl:value-of select="fhir:date/@value" />
			</xsl:attribute>
			<!-- @at -->
			<xsl:if test="fhir:attester/fhir:time/@value">
				<xsl:attribute name="at">
					<xsl:value-of select="fhir:attester/fhir:time/@value" />
				</xsl:attribute>
			</xsl:if>
			<!-- @ap -->
			<xsl:variable name="referenceAttester">
				<xsl:value-of select="fhir:attester/fhir:party/fhir:reference/@value" />
			</xsl:variable>
			<xsl:if test="$referenceAttester">
				<xsl:variable name="practitionerId" select="substring-after($referenceAttester,'Practitioner/')" />
				<xsl:if test="$practitionerId">
					<xsl:variable name="gln" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Practitioner[fhir:id[@value=$practitionerId]]/fhir:identifier[fhir:system/@value='urn:oid:2.51.1.3']/fhir:value/@value" />
					<xsl:if test="$gln">
						<xsl:attribute name="ap">
							<xsl:value-of select="$gln" />
						</xsl:attribute>
					</xsl:if>
				</xsl:if>
			</xsl:if>
			<!-- @n -->
			<xsl:variable name="note">
				<xsl:value-of select="normalize-space(fhir:section[fhir:code/fhir:coding/fhir:code[@value='48767-8']]/fhir:text/xhtml:div)" />
			</xsl:variable>
			<xsl:if test="$note">
				<xsl:attribute name="n">
					<xsl:value-of select="$note" />
				</xsl:attribute>
			</xsl:if>
			<!-- @r -->
			<xsl:variable name="referenceReceiver">
				<xsl:value-of select="fhir:extension[@url='http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-receiver']/fhir:valueReference/fhir:reference/@value" />
			</xsl:variable>
			<xsl:if test="$referenceReceiver">
				<xsl:variable name="practitionerId" select="substring-after($referenceReceiver,'Practitioner/')" />
				<xsl:if test="$practitionerId">
					<xsl:variable name="gln" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Practitioner[fhir:id[@value=$practitionerId]]/fhir:identifier[fhir:system/@value='urn:oid:2.51.1.3']/fhir:value/@value" />
					<xsl:if test="$gln">
						<xsl:attribute name="r">
							<xsl:value-of select="$gln" />
						</xsl:attribute>
					</xsl:if>
				</xsl:if>
			</xsl:if>
			<!-- A -->
			<A>
				<!-- @i -->
				<xsl:variable name="referenceAuthor">
					<xsl:value-of select="fhir:author/fhir:reference/@value" />
				</xsl:variable>
				<xsl:if test="$referenceAuthor">
					<xsl:variable name="practitionerId" select="substring-after($referenceAuthor,'Practitioner/')" />
					<xsl:if test="$practitionerId">
						<xsl:variable name="gln" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Practitioner[fhir:id[@value=$practitionerId]]/fhir:identifier[fhir:system/@value='urn:oid:2.51.1.3']/fhir:value/@value" />
						<!-- <xsl:choose><xsl:when test="$gln"> -->
						<xsl:if test="$gln">
							<xsl:attribute name="i">
								<xsl:value-of select="$gln" />
							</xsl:attribute>
							<!-- </xsl:when><xsl:otherwise> -->
						</xsl:if>
						<!-- @g -->
						<xsl:variable name="given" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Practitioner[fhir:id[@value=$practitionerId]]/fhir:name/fhir:given/@value" />
						<xsl:if test="$given">
							<xsl:attribute name="g">
								<xsl:value-of select="$given" />
							</xsl:attribute>
						</xsl:if>
						<!-- @f -->
						<xsl:variable name="family" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Practitioner[fhir:id[@value=$practitionerId]]/fhir:name/fhir:family/@value" />
						<xsl:if test="$family">
							<xsl:attribute name="f">
								<xsl:value-of select="$family" />
							</xsl:attribute>
						</xsl:if>
						<!-- </xsl:otherwise></xsl:choose> -->
					</xsl:if>
				</xsl:if>
			</A>
			<!-- P -->
			<P>
				<xsl:variable name="referencePatient">
					<xsl:value-of select="fhir:subject/fhir:reference/@value" />
				</xsl:variable>
				<xsl:if test="$referencePatient">
					<xsl:variable name="patientId" select="substring-after($referencePatient,'Patient/')" />
					<xsl:if test="$patientId">
						<!-- @i -->
						<xsl:variable name="veka" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Patient[fhir:id[@value=$patientId]]/fhir:identifier[fhir:system/@value='urn:oid:2.16.756.5.30.1.123.100.1.1.1']/fhir:value/@value" />
						<xsl:if test="$veka">
							<xsl:attribute name="i">
								<xsl:value-of select="$veka" />
							</xsl:attribute>
						</xsl:if>
						<!-- @g -->
						<xsl:variable name="given" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Patient[fhir:id[@value=$patientId]]/fhir:name/fhir:given/@value" />
						<xsl:if test="$given">
							<xsl:attribute name="g">
								<xsl:value-of select="$given" />
							</xsl:attribute>
						</xsl:if>
						<!-- @f -->
						<xsl:variable name="family" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Patient[fhir:id[@value=$patientId]]/fhir:name/fhir:family/@value" />
						<xsl:if test="$family">
							<xsl:attribute name="f">
								<xsl:value-of select="$family" />
							</xsl:attribute>
						</xsl:if>
						<!-- @t -->
						<xsl:variable name="telecom" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Patient[fhir:id[@value=$patientId]]/fhir:telecom/fhir:value/@value" />
						<xsl:if test="$telecom">
							<xsl:attribute name="t">
								<xsl:value-of select="$telecom" />
							</xsl:attribute>
						</xsl:if>
						<!-- @ag -->
						<xsl:variable name="gender" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Patient[fhir:id[@value=$patientId]]/fhir:gender/@value" />
						<xsl:if test="($gender='male') or ($gender='female')">
							<xsl:attribute name="ag">
								<xsl:if test="$gender='male'">m</xsl:if>
								<xsl:if test="$gender='female'">f</xsl:if>
							</xsl:attribute>
						</xsl:if>
						<!-- @b -->
						<xsl:variable name="birthDate" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Patient[fhir:id[@value=$patientId]]/fhir:birthDate/@value" />
						<xsl:if test="$birthDate">
							<xsl:attribute name="b">
								<xsl:value-of select="$birthDate" />
							</xsl:attribute>
						</xsl:if>
						<!-- @l -->
						<xsl:variable name="addressLine" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Patient[fhir:id[@value=$patientId]]/fhir:address/fhir:line/@value" />
						<xsl:if test="$addressLine">
							<xsl:attribute name="l">
								<xsl:value-of select="$addressLine" />
							</xsl:attribute>
						</xsl:if>
						<!-- @p -->
						<xsl:variable name="addressPostalCode" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Patient[fhir:id[@value=$patientId]]/fhir:address/fhir:postalCode/@value" />
						<xsl:if test="$addressPostalCode">
							<xsl:attribute name="p">
								<xsl:value-of select="$addressPostalCode" />
							</xsl:attribute>
						</xsl:if>
						<!-- @c -->
						<xsl:variable name="addressCity" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Patient[fhir:id[@value=$patientId]]/fhir:address/fhir:city/@value" />
						<xsl:if test="$addressCity">
							<xsl:attribute name="c">
								<xsl:value-of select="$addressCity" />
							</xsl:attribute>
						</xsl:if>
						<!-- @cl -->
						<xsl:variable name="cl" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Patient[fhir:id[@value=$patientId]]/fhir:communication/fhir:language/fhir:coding[fhir:system/@value='urn:ietf:bcp:47']/fhir:code/@value" />
						<xsl:if test="$cl">
							<xsl:attribute name="cl">
								<xsl:value-of select="$cl" />
							</xsl:attribute>
						</xsl:if>
					</xsl:if>
				</xsl:if>
			</P>
		</C>
		<!-- M -->
		<M>
			<xsl:for-each select="fhir:section[fhir:code/fhir:coding/fhir:code/@value='77604-7']/fhir:entry/fhir:reference">
				<xsl:variable name="msId" select="substring-after(@value,'MedicationStatement/')" />
				<xsl:if test="$msId">
					<xsl:variable name="this" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:MedicationStatement[fhir:id[@value=$msId]]" />
					<xsl:if test="$this">
						<!-- MS -->
						<xsl:call-template name='MS'>
							<xsl:with-param name='this' select='$this'/>
						</xsl:call-template>
					</xsl:if>
				</xsl:if>
			</xsl:for-each>
		</M>
		<!-- H -->
		<xsl:if test="fhir:section[fhir:code/fhir:coding/fhir:code/@value='75310-3']">
			<H>
				<xsl:for-each select="fhir:section[fhir:code/fhir:coding/fhir:code/@value='75310-3']/fhir:entry/fhir:reference">
					<xsl:variable name="msObservation" select="substring-after(@value,'Observation/')" />
					<xsl:variable name="msCondition" select="substring-after(@value,'Condition/')" />
					<xsl:if test="$msObservation">
						<xsl:variable name="this" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Observation[fhir:id[@value=$msObservation]]" />
						<xsl:if test="$this">
							<!-- HObservation -->
							<xsl:call-template name='HObservation'>
								<xsl:with-param name='this' select='$this'/>
							</xsl:call-template>
						</xsl:if>
					</xsl:if>
					<xsl:if test="$msCondition">
						<xsl:variable name="this" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Condition[fhir:id[@value=$msCondition]]" />
						<xsl:if test="$this">
							<!-- HCondition -->
							<xsl:call-template name='HCondition'>
								<xsl:with-param name='this' select='$this'/>
							</xsl:call-template>
						</xsl:if>
					</xsl:if>
				</xsl:for-each>
			</H>
		</xsl:if>
		<!-- R -->
		<xsl:if test="fhir:section[fhir:code/fhir:coding/fhir:code/@value='61357-0']">
			<xsl:for-each select="fhir:section[fhir:code/fhir:coding/fhir:code/@value='61357-0']/fhir:entry/fhir:reference">
				<xsl:variable name="qr" select="substring-after(@value,'QuestionnaireResponse/')" />
				<xsl:if test="$qr">
					<xsl:variable name="this" select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:QuestionnaireResponse[fhir:id[@value=$qr]]" />
					<xsl:if test="$this">
						<R>
							<!-- RQuestionnaireResponse -->
							<xsl:call-template name='RQuestionnaireResponse'>
								<xsl:with-param name='this' select='$this'/>
							</xsl:call-template>
						</R>
					</xsl:if>
				</xsl:if>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<!-- MS -->
	<xsl:template name='MS' mode='ms' match='fhir:MedicationStatement'>
		<xsl:param name='this' select='.'/>
		<!-- MS -->
		<MS>
			<!-- @i -->
			<xsl:variable name="i" select="$this/fhir:contained/fhir:Medication/fhir:code/fhir:coding[fhir:system/@value='urn:oid:2.51.1.1']/fhir:code/@value" />
			<xsl:if test="$i">
				<xsl:attribute name="i">
					<xsl:value-of select="$i" />
				</xsl:attribute>
			</xsl:if>
			<!-- @s -->
			<xsl:variable name="refValue" select="$this/fhir:informationSource/fhir:reference/@value" />
			<xsl:variable name="s">
				<xsl:choose>
					<xsl:when test="starts-with($refValue,'Practitioner/')">0</xsl:when>
					<xsl:when test="starts-with($refValue,'Patient/')">1</xsl:when>
				</xsl:choose>
			</xsl:variable>
			<xsl:if test="$s">
				<xsl:attribute name="s">
					<xsl:value-of select="$s" />
				</xsl:attribute>
			</xsl:if>
			<!-- @r -->
			<xsl:variable name="rc" select="$this/fhir:reasonCode/fhir:text/@value" />
			<xsl:if test="$rc">
				<xsl:attribute name="r">
					<xsl:value-of select="$rc" />
				</xsl:attribute>
			</xsl:if>
			<!-- @n -->
			<xsl:variable name="n" select="$this/fhir:note/fhir:text/@value" />
			<xsl:if test="$n">
				<xsl:attribute name="n">
					<xsl:value-of select="$n" />
				</xsl:attribute>
			</xsl:if>
			<!-- D -->
			<xsl:for-each select="$this/fhir:dosage">
				<D>
					<!-- @s -->
					<xsl:variable name="bs" select="fhir:timing/fhir:repeat/fhir:boundsPeriod/fhir:start/@value" />
					<xsl:if test="$bs">
						<xsl:attribute name="s">
							<xsl:value-of select="$bs" />
						</xsl:attribute>
					</xsl:if>
					<!-- @e -->
					<xsl:variable name="e" select="fhir:timing/fhir:repeat/fhir:boundsPeriod/fhir:end/@value" />
					<xsl:if test="$e">
						<xsl:attribute name="e">
							<xsl:value-of select="$e" />
						</xsl:attribute>
					</xsl:if>
					<!-- @p -->
					<!-- FIXME TBD: periodMax /  periodUnit -->
					<xsl:variable name="p" select="fhir:timing/fhir:repeat/fhir:periodMax/@value" />
					<xsl:if test="$p">
						<xsl:attribute name="p">
							<xsl:value-of select="$p" />
						</xsl:attribute>
					</xsl:if>
					<!-- @r -->
					<xsl:variable name="r">
						<xsl:choose>
							<xsl:when test="fhir:asNeededBoolean/@value='true'">1</xsl:when>
							<xsl:when test="fhir:asNeededBoolean/@value='false'">0</xsl:when>
						</xsl:choose>
					</xsl:variable>
					<xsl:if test="$r!=''">
						<xsl:attribute name="r">
							<xsl:value-of select="$r" />
						</xsl:attribute>
					</xsl:if>
					<!-- FIXME, here only simplified version with one dosage -->
					<xsl:variable name="doseQuantity" select="fhir:doseQuantity/fhir:value/@value" />
					<xsl:if test="$doseQuantity">
						<!-- @m -->
						<xsl:variable name="m" select="fhir:timing/fhir:repeat/fhir:when/@value='PCM'" />
						<xsl:if test="$m">
							<xsl:attribute name="m">
								<xsl:value-of select="$doseQuantity" />
							</xsl:attribute>
						</xsl:if>
						<!-- @d -->
						<xsl:variable name="d" select="fhir:timing/fhir:repeat/fhir:when/@value='PCD'" />
						<xsl:if test="$d">
							<xsl:attribute name="d">
								<xsl:value-of select="$doseQuantity" />
							</xsl:attribute>
						</xsl:if>
						<!-- @v -->
						<xsl:variable name="v" select="fhir:timing/fhir:repeat/fhir:when/@value='PCV'" />
						<xsl:if test="$v">
							<xsl:attribute name="v">
								<xsl:value-of select="$doseQuantity" />
							</xsl:attribute>
						</xsl:if>
						<!-- @h -->
						<xsl:variable name="h" select="fhir:timing/fhir:repeat/fhir:when/@value='HS'" />
						<xsl:if test="$h">
							<xsl:attribute name="h">
								<xsl:value-of select="$doseQuantity" />
							</xsl:attribute>
						</xsl:if>
					</xsl:if>
					<!-- @u -->
					<xsl:variable name="doseUnit" select="fhir:doseQuantity/fhir:unit/@value" />
					<xsl:if test="$doseUnit">
						<xsl:attribute name="u">
							<xsl:value-of select="$doseUnit" />
						</xsl:attribute>
					</xsl:if>
					<!-- @o -->
					<xsl:variable name="o" select="fhir:route/fhir:coding[fhir:system/@value='http://chmed16af.emediplan.ch/fhir/CodeSystem/chmed16af-codesystem-cdtyp26']/fhir:code/@value" />
					<xsl:if test="$o">
						<xsl:attribute name="o">
							<xsl:value-of select="$o" />
						</xsl:attribute>
					</xsl:if>
					<!-- @dl -->
					<!-- @dh -->
					<!-- @dm -->
				</D>
			</xsl:for-each>
		</MS>
	</xsl:template>
	<!-- H Observation -->
	<xsl:template name='HObservation' mode='ms' match='fhir:Observation'>
		<xsl:param name='this' select='.'/>
		<!-- @w -->
		<xsl:if test="$this/fhir:code/fhir:coding[fhir:system/@value='http://loinc.org']/fhir:code/@value='29463-7'">
			<xsl:variable name="kg" select="$this/fhir:valueQuantity[fhir:unit/@value='kg']/fhir:value/@value" />
			<xsl:if test="$kg">
				<xsl:attribute name="w">
					<xsl:value-of select="$kg" />
				</xsl:attribute>
			</xsl:if>
		</xsl:if>
		<!-- @h -->
		<xsl:if test="$this/fhir:code/fhir:coding[fhir:system/@value='http://loinc.org']/fhir:code/@value='8302-2'">
			<xsl:variable name="cm" select="$this/fhir:valueQuantity[fhir:unit/@value='cm']/fhir:value/@value" />
			<xsl:if test="$cm">
				<xsl:attribute name="h">
					<xsl:value-of select="$cm" />
				</xsl:attribute>
			</xsl:if>
		</xsl:if>
		<!-- @m -->
		<xsl:if test="$this/fhir:code/fhir:coding[fhir:system/@value='http://snomed.info/sct']/fhir:code/@value='161713000'">
			<xsl:variable name="dt" select="$this/fhir:valueDateTime/@value" />
			<xsl:if test="$dt">
				<xsl:attribute name="m">
					<xsl:value-of select="$dt" />
				</xsl:attribute>
			</xsl:if>
		</xsl:if>
		<!-- @p -->
		<xsl:if test="$this/fhir:code/fhir:coding[fhir:system/@value='http://snomed.info/sct']/fhir:code/@value='395507008'">
			<xsl:variable name="p">
				<xsl:choose>
					<xsl:when test="$this/fhir:valueBoolean/@value">1</xsl:when>
					<xsl:when test="$this/fhir:valueBoolean/@value">0</xsl:when>
				</xsl:choose>
			</xsl:variable>
			<xsl:if test="$p">
				<xsl:attribute name="p">
					<xsl:value-of select="$p" />
				</xsl:attribute>
			</xsl:if>
		</xsl:if>
		<!-- @tw -->
		<!-- @td -->
		<xsl:if test="$this/fhir:code/fhir:coding[fhir:system/@value='http://snomed.info/sct']/fhir:code/@value='445872007'">
			<xsl:variable name="tw" select="$this/fhir:component[fhir:code/fhir:coding[fhir:system/@value='http://loinc.org']/fhir:code/@value='49051-6']/fhir:valueQuantity[fhir:unit/@value='wk']/fhir:value/@value" />
			<xsl:if test="$tw">
				<xsl:attribute name="tw">
					<xsl:value-of select="$tw" />
				</xsl:attribute>
			</xsl:if>
			<xsl:variable name="td" select="$this/fhir:component[fhir:code/fhir:coding[fhir:system/@value='http://loinc.org']/fhir:code/@value='49052-4']/fhir:valueQuantity[fhir:unit/@value='d']/fhir:value/@value" />
			<xsl:if test="$td">
				<xsl:attribute name="td">
					<xsl:value-of select="$td" />
				</xsl:attribute>
			</xsl:if>
		</xsl:if>
	</xsl:template>
	<!-- H Condition -->
	<xsl:template name='HCondition' mode='ms' match='fhir:Condition'>
		<xsl:param name='this' select='.'/>
		<xsl:variable name="risksCategoryCode" select="$this/fhir:category/fhir:coding[fhir:system/@value='http://chmed16af.emediplan.ch/fhir/CodeSystem/chmed16af-codesystem-risks-category']/fhir:code/@value" />
		<xsl:variable name="risksCdsCodes" select="$this/fhir:code/fhir:coding[fhir:system/@value='http://chmed16af.emediplan.ch/fhir/CodeSystem/chmed16af-codesystem-risks-cdscode']/fhir:code/@value" />
		<!-- @r1 -->
		<xsl:if test="$risksCategoryCode=1">
			<xsl:attribute name="r1">
				<xsl:call-template name="join">
					<xsl:with-param name="valueList" select="$risksCdsCodes"/>
					<xsl:with-param name="separator" select="','"/>
				</xsl:call-template>
			</xsl:attribute>
		</xsl:if>
		<!-- @r2 -->
		<xsl:if test="$risksCategoryCode=2">
			<xsl:attribute name="r2">
				<xsl:call-template name="join">
					<xsl:with-param name="valueList" select="$risksCdsCodes"/>
					<xsl:with-param name="separator" select="','"/>
				</xsl:call-template>
			</xsl:attribute>
		</xsl:if>
		<!-- @r3 -->
		<xsl:if test="$risksCategoryCode=3">
			<xsl:attribute name="r3">
				<xsl:call-template name="join">
					<xsl:with-param name="valueList" select="$risksCdsCodes"/>
					<xsl:with-param name="separator" select="','"/>
				</xsl:call-template>
			</xsl:attribute>
		</xsl:if>
		<!-- @r4 -->
		<xsl:if test="$risksCategoryCode=4">
			<xsl:attribute name="r4">
				<xsl:call-template name="join">
					<xsl:with-param name="valueList" select="$risksCdsCodes"/>
					<xsl:with-param name="separator" select="','"/>
				</xsl:call-template>
			</xsl:attribute>
		</xsl:if>
		<!-- @r5 -->
		<xsl:if test="$risksCategoryCode=5">
			<xsl:attribute name="r5">
				<xsl:call-template name="join">
					<xsl:with-param name="valueList" select="$risksCdsCodes"/>
					<xsl:with-param name="separator" select="','"/>
				</xsl:call-template>
			</xsl:attribute>
		</xsl:if>
		<!-- @r6 -->
		<xsl:if test="$risksCategoryCode=6">
			<xsl:attribute name="r6">
				<xsl:call-template name="join">
					<xsl:with-param name="valueList" select="$risksCdsCodes"/>
					<xsl:with-param name="separator" select="','"/>
				</xsl:call-template>
			</xsl:attribute>
		</xsl:if>
	</xsl:template>
	<!-- R QuestionnaireResponse -->
	<xsl:template name='RQuestionnaireResponse' mode='ms' match='fhir:QuestionnaireResponse'>
		<xsl:param name='this' select='.'/>
		<xsl:for-each select="$this/fhir:item">
			<xsl:if test="fhir:linkId/@value">
				<Q>
					<xsl:attribute name="n">
						<xsl:value-of select="fhir:linkId/@value" />
					</xsl:attribute>
					<xsl:variable name="qq" select="concat(fhir:linkId/@value,'.1')" />
					<xsl:variable name="qqa" select="fhir:item[fhir:linkId/@value=$qq]/fhir:answer/fhir:valueBoolean/@value" />
					<xsl:if test="$qqa">
						<xsl:attribute name="q">
							<xsl:choose>
								<xsl:when test="$qqa='true'">1</xsl:when>
								<xsl:when test="$qqa='false'">0</xsl:when>
							</xsl:choose>
						</xsl:attribute>
					</xsl:if>
					<xsl:variable name="qp" select="concat(fhir:linkId/@value,'.2')" />
					<xsl:variable name="qpa" select="fhir:item[fhir:linkId/@value=$qp]/fhir:answer/fhir:valueBoolean/@value" />
					<xsl:if test="$qpa">
						<xsl:attribute name="p">
							<xsl:choose>
								<xsl:when test="$qpa='true'">1</xsl:when>
								<xsl:when test="$qpa='false'">0</xsl:when>
							</xsl:choose>
						</xsl:attribute>
					</xsl:if>
					<xsl:variable name="qr" select="concat(fhir:linkId/@value,'.3')" />
					<xsl:variable name="qra" select="fhir:item[fhir:linkId/@value=$qr]/fhir:answer/fhir:valueString/@value" />
					<xsl:if test="$qra">
						<xsl:attribute name="r">
							<xsl:value-of select="$qra" />
						</xsl:attribute>
					</xsl:if>
				</Q>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<!--join -->
	<xsl:template name="join">
		<xsl:param name="valueList" select="''"/>
		<xsl:param name="separator" select="','"/>
		<xsl:for-each select="$valueList">
			<xsl:choose>
				<xsl:when test="position() = 1">
					<xsl:value-of select="."/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="concat($separator, .) "/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="text()|@*"></xsl:template>
	<xsl:function name="chmed16af:substring-after-last">
		<xsl:param name="input" as="xs:string" />
		<xsl:param name="substr" as="xs:string" />
		<xsl:sequence select="if ($substr)             then               if (contains($input, $substr))               then tokenize($input, $substr)[last( )]                else ''             else $input" />
	</xsl:function>
</xsl:stylesheet>