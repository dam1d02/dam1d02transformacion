<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>
          La bolsa el 
          <xsl:value-of select="//Bolsa/@dia"/>
          a las 
          <xsl:value-of select="//Bolsa/@hora"/>
        </title>
        <style>
          .azul {
            color:#002AFF;
          }
        </style>
      </head>
      <body>
        <table border="1">
          <tr>
            <th>Símbolo</th>
            <th>Nombre</th>
            <th>Precio</th>
          </tr>
          <xsl:for-each select="//Empresa">
            <xsl:sort select="Precio" order="descending"/>
            <tr>
              <td>
                <xsl:value-of select="Simbolo"/>
              </td>
              <td>
                <xsl:value-of select="Nombre"/>
                <xsl:if test="@indice='general' ">
                  <xsl:text> (*)</xsl:text>
                </xsl:if>
              </td>
              <xsl:choose>
                <xsl:when test="Precio&gt;75">
                  <td>
                    <span class="azul">
                      <xsl:value-of select="Precio"/>
                    </span>
                  </td>
                </xsl:when>
                <xsl:when test="Precio&lt;25">
                <td>
                  <span style="color:#ff0000;">
                    <xsl:value-of select="Precio"/>
                  </span>
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td>
                    <xsl:value-of select="Precio"/>
                  </td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
        <p>
          <xsl:text>(*) Estas empresas son de índice general</xsl:text>
        </p>
      </body>
    </html>
  </xsl:template>  
</xsl:stylesheet>
