<!--
 - Name        : pots.xsl
 - Author      : Mark Anderton
 - Description : Used to display all pot information in multiple tables.
 -->

<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html> 
<body>
<!-- Farm tables -->
  <h2>Farms</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Farm Name</th>
      <th style="text-align:left">Farm Type</th>
      <th style="text-align:left">Farm Location</th>
    </tr>
    <xsl:for-each select="tracker/farms/farm">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="type"/></td>
	  <td><xsl:value-of select="location"/></td>
    </tr>
    </xsl:for-each>
  </table>
<!-- Store tables -->
  <h2>Stores</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Store Name</th>
      <th style="text-align:left">Store Type</th>
      <th style="text-align:left">Store Location</th>
	  <th style="text-align:left">Batch Number Owned</th>
	  <th style="text-align:left">Batch Quantity Owned</th>
    </tr>
    <xsl:for-each select="tracker/stores/store">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="type"/></td>
	  <td><xsl:value-of select="location"/></td>
      <td>	  
		<xsl:for-each select="lot/number">
		<xsl:value-of select="text()"/>
		<br/>
		</xsl:for-each>
		</td>
	  <td>
	  <xsl:for-each select="lot/quantity">
		<xsl:value-of select="text()"/>
		<br/>
		</xsl:for-each>
	  </td>
    </tr>
    </xsl:for-each>
  </table>
<!-- Importer tables -->
	<h2>Importers</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Importer Name</th>
      <th style="text-align:left">Importer Location</th>
	  <th style="text-align:left">Batch Number Owned</th>
	  <th style="text-align:left">Batch Quantity Owned</th>
    </tr>
    <xsl:for-each select="tracker/importers/importer">
    <tr>
      <td><xsl:value-of select="name"/></td>
	  <td><xsl:value-of select="location"/></td>
      <td>	  
		<xsl:for-each select="lot/number">
		<xsl:value-of select="text()"/>
		<br/>
		</xsl:for-each>
		</td>
	  <td>
	  <xsl:for-each select="lot/quantity">
		<xsl:value-of select="text()"/>
		<br/>
		</xsl:for-each>
	  </td>
    </tr>
    </xsl:for-each>
  </table>
<!-- Packer tables -->
  <h2>Packers</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Packer Name</th>
      <th style="text-align:left">Packer Location</th>
	  <th style="text-align:left">Batch Number Owned</th>
	  <th style="text-align:left">Batch Quantity Owned</th>
	  <th style="text-align:left">Test Result</th>
    </tr>
    <xsl:for-each select="tracker/packers/packer">
    <tr>
      <td><xsl:value-of select="name"/></td>
	  <td><xsl:value-of select="location"/></td>
      <td>	  
		<xsl:for-each select="lot/number">
		<xsl:value-of select="text()"/>
		<br/>
	  </xsl:for-each>		
	  </td>
      <td>	  
		<xsl:for-each select="lot/quantity">
		<xsl:value-of select="text()"/>
		<br/>
</xsl:for-each>
	  </td>
      <td>	  
		<xsl:for-each select="lot/qualityControl">
		<xsl:value-of select="text()"/>
		<br/>
</xsl:for-each>
	  </td>
	      </tr>
</xsl:for-each>
  </table> 
</body>
</html>
</xsl:template>
</xsl:stylesheet>
