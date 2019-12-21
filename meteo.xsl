<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method = "html" encoding="UTF-8" indent="yes"/>
    <xsl:template match = "/">
        <html>
            <head>
                <title>Meteo</title>
            </head>
            <body>
                <xsl:for-each select="/meteo/mesure">
                <h1><xsl:value-of select="./@date"/></h1>
                <table>
                    <tr>
                        <th>Ville</th>
                        <th>Température</th>
                    </tr>
                    <xsl:for-each select="./ville">
                        <tr>
                            <td><xsl:value-of select="./@nom"/></td>
                            <td><xsl:value-of select="./@temperature"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>