<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Ejer_1</title>
      </head>
      <body>
        <table border="1">
          <tr>
            <th>Título</th>
            <th>Artista</th>
            <th>Año</th>
          </tr>
          <xsl:for-each select="//cd">
          <xsl:if test="year&gt;1980">
            <tr>
              <td>
                <xsl:value-of select="title" />
              </td>
              <td>
                <xsl:value-of select="artist" />
              </td>
              <td>
                <xsl:value-of select="year" />
              </td>
            </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>







