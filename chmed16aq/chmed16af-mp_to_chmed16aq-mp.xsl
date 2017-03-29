<?xml version="1.0"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fhir="http://hl7.org/fhir"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:chmed16af="http://chemed16af.emediplan.ch"
	xmlns:xhtml="http://www.w3.org/1999/xhtml">
	<xsl:template match="/fhir:Bundle">
		<MP xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
			xsi:noNamespaceSchemaLocation="chmed16aq-mp.xsd">
			<xsl:attribute name="v">
				<xsl:value-of select="fhir:meta/fhir:versionId/@value" />
			</xsl:attribute>
			<xsl:apply-templates select="fhir:entry" />
		</MP>
	</xsl:template>
	<xsl:template match="fhir:Composition">
		<C>
			<!-- @i -->
			<xsl:attribute name="i">
				<xsl:value-of
				select="fhir:identifier[fhir:system[@value='http://emediplan.ch/chmed16af/id']]/fhir:value/@value" />
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
				<xsl:variable name="practitionerId"
					select="substring-after($referenceAttester,'Practitioner/')" />
				<xsl:if test="$practitionerId">
					<xsl:variable name="gln"
						select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Practitioner[fhir:id[@value=$practitionerId]]/fhir:identifier[fhir:system/@value='urn:oid:2.51.1.3']/fhir:value/@value" />
					<xsl:if test="$gln">
						<xsl:attribute name="ap">
						<xsl:value-of select="$gln" />
					</xsl:attribute>
					</xsl:if>
				</xsl:if>
			</xsl:if>
			<!-- @n -->
			<xsl:variable name="note">
				<xsl:value-of
					select="normalize-space(fhir:section[fhir:code/fhir:coding/fhir:code[@value='48767-8']]/fhir:text/xhtml:div)" />
			</xsl:variable>
			<xsl:if test="$note">
				<xsl:attribute name="n">
						<xsl:value-of select="$note" />
					</xsl:attribute>
			</xsl:if>
			<!-- @r -->
			<xsl:variable name="referenceReceiver">
				<xsl:value-of
					select="fhir:extension[@url='http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-receiver']/fhir:valueReference/fhir:reference/@value" />
			</xsl:variable>
			<xsl:if test="$referenceReceiver">
				<xsl:variable name="practitionerId"
					select="substring-after($referenceReceiver,'Practitioner/')" />
				<xsl:if test="$practitionerId">
					<xsl:variable name="gln"
						select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Practitioner[fhir:id[@value=$practitionerId]]/fhir:identifier[fhir:system/@value='urn:oid:2.51.1.3']/fhir:value/@value" />
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
					<xsl:variable name="practitionerId"
						select="substring-after($referenceAuthor,'Practitioner/')" />
					<xsl:if test="$practitionerId">
						<xsl:variable name="gln"
							select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Practitioner[fhir:id[@value=$practitionerId]]/fhir:identifier[fhir:system/@value='urn:oid:2.51.1.3']/fhir:value/@value" />
						<!-- <xsl:choose> <xsl:when test="$gln"> -->
						<xsl:if test="$gln">
							<xsl:attribute name="i">
							<xsl:value-of select="$gln" />
						</xsl:attribute>
							<!-- </xsl:when> <xsl:otherwise> -->
						</xsl:if>
						<!-- @g -->
						<xsl:variable name="given"
							select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Practitioner[fhir:id[@value=$practitionerId]]/fhir:name/fhir:given/@value" />
						<xsl:if test="$given">
							<xsl:attribute name="g">
									<xsl:value-of select="$given" />
								</xsl:attribute>
						</xsl:if>

						<!-- @f -->
						<xsl:variable name="family"
							select="/fhir:Bundle/fhir:entry/fhir:resource/fhir:Practitioner[fhir:id[@value=$practitionerId]]/fhir:name/fhir:family/@value" />
						<xsl:if test="$family">
							<xsl:attribute name="f">
										<xsl:value-of select="$family" />
									</xsl:attribute>
						</xsl:if>

						<!-- </xsl:otherwise> </xsl:choose> -->
					</xsl:if>
				</xsl:if>


			</A>
		</C>

	</xsl:template>
	<xsl:template match="text()|@*">
	</xsl:template>


	<xsl:function name="chmed16af:substring-after-last">
		<xsl:param name="input" as="xs:string" />
		<xsl:param name="substr" as="xs:string" />
		<xsl:sequence
			select="if ($substr) 
            then
               if (contains($input, $substr))
               then tokenize($input, $substr)[last( )] 
               else '' 
            else $input" />
	</xsl:function>

</xsl:stylesheet>
