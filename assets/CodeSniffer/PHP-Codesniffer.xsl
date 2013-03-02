<?xml version="1.0" encoding="UTF-8"?>
 
<!--
    Document   : PHP-Codesniffer.xsl
    Author     : schkovich + style amended by Wycks
    Description: Transformation PHP_CodeSniffer xml report into human readable HTML format.

    Instructions: Include a link to this .xsl file in your XML report like so: 
    <?xml-stylesheet type="text/xsl" href="http://example.com/PHP-Codesniffer.xsl"?>

    Note: Will not work on localhost due to security in Chrome, etc, must be served from actual URL


-->
 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"  encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>phpcs.xsl</title>
                <link href="PHP-Codesniffer.css" rel="stylesheet" type="text/css" />
            </head>
            <body>
                <table>
                    <thead>
                        <tr>
                            <th class="file">Name</th>
                            <th class="notes">Errors</th>
                            <th class="notes">Warnings</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="phpcs/file">
                            <tr>
                                <td id="name">
                                    <xsl:value-of select="@name" />
                                </td>
                                <td id="errors">
                                    <xsl:value-of select="@errors" />
                                </td>
                                <td id="warnings">
                                    <xsl:value-of select="@warnings" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <xsl:for-each select="error">
                                        <div class="error-wrap">
                                            <div class="error">Error: </div> 
                                            <xsl:value-of select="self::node()"/>
                                             
                                            <br />
                                            <b>Line: </b>
                                            <xsl:value-of select="@line" />
                                             
                                            <div class="details"> 
                                            <br />
                                            Column:
                                            <xsl:value-of select="@column" />
                                                  
                                             Source:
                                            <xsl:value-of select="@source" />
                                            </div>
                                        </div>
                                   </xsl:for-each>
                                     
                                    <xsl:for-each select="warning">
                                        <div class="error-wrap">
                                            <span class="warning">Warning: </span>
                                            <xsl:value-of select="self::node()"/>
                                             
                                            <br />
                                            <b>Line:</b>
                                            <xsl:value-of select="@line" />
                                             
                                            <div class="details">  
                                            <br />
                                            Column:
                                            <xsl:value-of select="@column" />    
                                            
                                            Source:
                                            <xsl:value-of select="@source" />
                                            </div>
                                        </div>
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
 
</xsl:stylesheet>