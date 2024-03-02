<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
      <html>
        <head>

        </head>
          <body>
              <h1>чё-нить такое</h1>
              <table>
                    <tr>
                        <th><xsl:value-of select="hash/array/quan"/></th>
                    </tr>
              </table>
          </body>
      </html>
  </xsl:template>
</xsl:stylesheet>
