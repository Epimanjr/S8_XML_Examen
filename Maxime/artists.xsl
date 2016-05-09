<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="utf-8"/>

    <xsl:template match="artists">
        <ul>
            <xsl:for-each select="artist">
                <li>
                    <!-- 3°) Nom du dessinateur -->
                    <a href="#" target="_blank"><xsl:value-of select="name"/>
                        <!-- 4°) Lien vers Wikipedia -->
                        <xsl:attribute name="href">
                            <xsl:value-of select="link"/>
                        </xsl:attribute>
                    </a>
                    <!-- Date de naissance -->
                    <xsl:value-of select="birth-year"/>
                </li>
            </xsl:for-each>
        </ul>
    </xsl:template>

    <xsl:template match="/">
        <html>
            <head>
                <!-- 1°) Titre du document -->
                <title>Dessinateurs de bande dessinée</title>
            </head>
            <body>
                <!-- 2°) Titre de la page -->
                <h1>Dessinateurs de bande dessinée</h1>
                <xsl:apply-templates select=".//artists"/>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>