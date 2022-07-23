<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:output method="xml"  omit-xml-declaration="no" encoding="UTF-8" indent="yes" />
 <xsl:strip-space elements="*"/>
  <xsl:template match="/">
    <transactions>
      <xsl:apply-templates select="transactions/transaction[account_type='CHECKING']"/>
          </transactions>
  </xsl:template>
  <xsl:template match="@*|node()">
    <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:transform>