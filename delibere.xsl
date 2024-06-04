<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <link rel="stylesheet" type="text/css" href="stile_pag.css" />
                <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
                <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
                <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
                <script src="https://kit.fontawesome.com/631a8dead6.js" crossorigin="anonymous"></script>
            </head>    
            <body>
                <div id="titolo">
                    <h1>Deliberazioni del podestà relative alla Statua di Costanzo Ciano</h1>
                    <a class= "img_raccolta" href="index.html">
                        <img src="presentazione_delibere.JPEG" />
                    </a>
                </div>
                <main>
                    <!--Informazioni sulla raccolta dei volumi contenenti le quattro delibere-->
                    <div class="card_descrizione">
                        <xsl:apply-templates select="//tei:sourceDesc[@xml:id='Raccolta_originale']" />
                    </div> 
                    <!--Navigazione tra le delibere--> 
                    <nav id="info">
                        <h2>Le Delibere</h2>
                        <div class="card">
                            <div class="container">
                                <a href="delibera0.html">
                                    <h3>Delibera 17/10/1939</h3> 
                                    <img src="Miniatura_del0.jpg"/>
                                </a>
                            </div>
                            <div class="container">
                                <a href="delibera1.html">
                                    <h3>Delibera 26/02/1940</h3> 
                                    <img src="Miniatura_del1.jpg"/>
                                </a>
                            </div>
                            
                            <div class="container">
                                <a href="delibera2.html">
                                    <h3>Delibera 20/06/1940</h3> 
                                    <img src="Miniatura_del2.jpg"/>
                                </a>
                            </div>
                            
                            <div class="container">
                                <a href="delibera3.html">
                                    <h3>Delibera 07/12/1940</h3> 
                                    <img src="Miniatura_del3.jpg"/> 
                                </a>
                            </div>
                        </div>
                    </nav>
                </main>
                <!--footer-->
                <footer class="riferimenti">
                    <section>
                        <div>
                            <h2>Credits</h2>
                            <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt" />
                        </div>
                        <div>
                            <h2>Il progetto</h2>
                            <p>
                            Il progetto nasce dal corso magistrale in Informatica Umanistica per l'esame di Storia Pubblica Digitale, dell'università di Pisa.
                            <a href="https://www.unipi.it/"> </a>
                            </p>
                        </div>
                        <div id="logo">
                            <img src="Logo.jpg" />
                        </div>
                    </section> 
                </footer>
                <!-- javaScript -->
                <script src="delciano.js"></script>
            </body>
        </html>
    </xsl:template>

    <!--Descrizione Fonte-->
    <xsl:template match="tei:sourceDesc[@xml:id='Raccolta_originale']">
        <button id="dropbtn1" class="dropbtn"><h2>Descrizione della Fonte</h2></button>
        <div class="lista_desc1">
            <ul class="horizontal_list">
                <li>
                    <h3>Titolo:</h3>
                    <p><xsl:value-of select="tei:msDesc/tei:msIdentifier/tei:idno"/></p>
                </li>
                <li>
                    <h3>Conservazione:</h3>
                    <p><xsl:value-of select="tei:msDesc/tei:msIdentifier/tei:settlement"/>, <xsl:value-of select="tei:msDesc/tei:msIdentifier/tei:repository"/></p>
                </li>
                <li>
                    <h3>Materiale:</h3>
                    <p>Carta</p>
                </li>
            </ul>
            <ul>
                <li>
                    <h3>Condizione:</h3>
                    <p><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition[@xml:id='condiz_raccolta']"/></p>
                </li>
                <li>
                    <h3>Autore</h3>
                    <p><xsl:value-of select="//tei:physDesc/tei:handDesc[@xml:id='firma_docint']"/></p>
                </li>
                <li>
                    <h3>Origine e acquisizione</h3>
                    <p><xsl:value-of select="//tei:history[@xml:id='intero_doc']"/></p>
                </li>
                <li>
                    <h3>Data:</h3>
                    <p>Le delibere sono contenute all'interno di tre volumi risalenti al 1940.</p>
                </li>
            </ul>
        </div>
    </xsl:template>
    
    <!--crediti Footer-->
    <xsl:template match="tei:editionStmt">
        <xsl:for-each select="tei:respStmt"> 
            <p><xsl:value-of select="tei:resp"/></p>
            <ul>
            <xsl:for-each select="tei:name">
                <li><xsl:apply-templates/></li>
            </xsl:for-each> 
            </ul>
        </xsl:for-each> 
    </xsl:template>
</xsl:stylesheet>