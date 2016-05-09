<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="utf-8"/>

    <!-- Question 3 (template pour la liste à puces) -->
    <xsl:template match="comics">
        <ul>
            <xsl:for-each select="comic"> 
                <li>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="./child::link"/>
                        </xsl:attribute>
                        <xsl:value-of select="title"/>
                    </a>
                    <ul>
                        <li><xsl:value-of select="year"/></li>
                    </ul>
                </li>
            </xsl:for-each>
        </ul>
    </xsl:template>

    <xsl:template match="/">
        <html>
            <head>
                <!-- Question 1 (titre du document) -->
                <title>Bandes dessinées à avoir lues</title>
            </head>
            <body>
                <!-- Question 2 (titre de la page) -->
                <h1>Bandes dessinées à avoir lues</h1>
                <!-- Question 3 (liste à puces) -->
                <xsl:apply-templates select=".//comics"/>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>