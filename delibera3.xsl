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
                    <div class="card_descrizione">
                        <xsl:apply-templates select="//tei:sourceDesc[@xml:id='Raccolta_originale']/tei:msDesc/tei:msPart[@xml:id='volume3']" />
                    </div>
                    <div class="titolodel">
                        <xsl:apply-templates select="//tei:text[@xml:id='testodel3']/tei:front/tei:head"/>    
                    </div>
                    <section class="documenti">
                        <!-- Immagini delibera 3-->
                        <div class="slide">
                            <xsl:apply-templates select="//tei:facsimile[@xml:id='img_delibere']/tei:surfaceGrp[@xml:id='del_3']"/>
                            <!--Botton per galleria delle immagini-->
                            <div id="bottonimg">
                                <button id="btnindietro" onclick="indietro()"><i class="fa-solid fa-angle-left fa-6x"></i></button>
                                <button id="btnavanti" onclick="avanti()"><i class="fa-solid fa-angle-right fa-6x"></i></button>
                            </div>
                        </div>
                        <!--Sezione per il testo della delibera 3-->
                        <div class="testi">
                            <xsl:apply-templates select="//tei:text[@xml:id='testodel3']/tei:body"/>
                            <!--Testo delibera 3 ordinato per la lettura-->
                            <div id="sub_1" class="sub" style="display:none;"> 1073.<br/>
                                                                    <strong>LIQUIDAZIONE DEI LAVORI DI FONDAZIONE E COLLOCAMENTO A POSTO DEL MONUMENTO A C. CIANO.</strong> <br/><br/>
                                                                    Premesso che per la esecuzione dei lavori di fondazione e collocamento a posto del monumentino a C. CIANO in questa Città, è stata<br/></div>
                            <div id="sub_2" class="sub" style="display:none;">1074<br/><br/>
                                                                    <strong>LIQUIDAZIONE DEI LAVORI DI FONDAZIONE E COLLOCAMENTO A POSTO DEL MONUMENTO A C. CIANO.</strong> <br/><br/>
                                                                    PUBBLICATA<br/>
                                                                    il 13/12/1940 N.1550<br/>
                                                                    Approvata dalla G. P. A.<br/>
                                                                    il 31/01/1940 N.20474/78 <br/><br/>
                                                                    approvata la complessiva spesa di L.37.500, ripartita come appresso, giusta le relative deliberazioni 26 febbraio 1940 - XVIII° n.185 e 18 giugno 1940 XVIII° n.525, approvate come dai rispettivi visti prefettizi nn.3330 e 10521 del 27 febbraio e 27 giugno 1940-XVIII Div.IV: <br/>
                                                                    a) opere in appalto L. (17.855 + 14.500 comprese L.1295,20 per eventuali imprevisti) = .................................L.32.355,-<br/>
                                                                    b) somma a disposizione: <br/>
                                                                    1) per i lavori in economia.............L.2.575,-<br/>
                                                                    2) " per altri imprevisti ................."2570,- 5.145,-<br/>
                                                                    Totale......L.37.500,-<br/>
                                                                    Attesoché i lavori in appalto vennero affidati alla Soc.An.Ing. Nino Ferrari nei modi ed ai prezzi indicati negli appositi atti tecnici, come da atti di sottomissione 4 aprile e 8 agosto 1940-XVIII° nn. 16676 e 16820, debitamente registrati;<br/>
                                                                    Visto che l'importo di essi ascende a L.32.830, giusta il relativo conto finale accettato dall'impresa e l'apposito certificato di regolare esecuzione dei lavori stessi predisposti dalla Direzione dei lavori, a' sensi e per gli effetti del combinato disposto degli art. 3 del R.D.L 28.8.1924, n.1396 e I lett. b) della legge 27 maggio 1926 - n.1013;<br/>
                                                                    Visto che la spesa occorsa extra appalto ammonta, secondo la proposta di liquidazione della prefata Direzione, a complessive Lire 15.300 ripartite come al dispositivo della presente deliberazione, oltre L.2040 già pagate alla Ditta Carlo Comana di Bergamo per la fornitura delle basi in travertino per le antenne;<br/>
                                                                    Riscontrati conformi alle ordinazioni i lavori e le forniture extra appalto, lavori e forniture adeguati alle effettive necessità manifestatesi in corso d'opera;<br/>
                                                                    Dato atto che la Soc.An.Ing. Nino Ferrari ha già percepito acconti per L.29.500; <br/>
                                                                    Visto che l'imposta dei contributi già versati o da versarsi da questo Comune e da quello della Provincia, nonché dagli altri enti a titolo di concorso nella spesa per l'erezione del monumento è sta<br/></div>
                            <div id="sub_3" class="sub" style="display:none;">1075<br/>
                                                                    Visto per bollo N._____<br/>
                                                                    esatte lire__________<br/>
                                                                    IL PROCURATORE<br/>
                                                                    -7 DIC. 1940<br/><br/>
                                                                    assorbito da pagamenti ed impegni già effettuati od assunti, per cui, in considerazione che l'opera apporta notevole contributo alla sistemazione estetica di un'importante zona cittadina, si reputa opportuno porre a carico del bilancio di questo Comune le spese indicate; <br/>
                                                                    DELIBERA<br/>
                                                                    a) di prendere atto e di approvare la complessiva spesa di L.48.130 così ripartita: <br/>
                                                                    1) per la esecuzione dei lavori appaltati alla Soc.An.Ing. Nino Ferrari in ordine alla messa in opera del Monumento a Costanzo Ciano...............................L.32.830,-<br/>
                                                                    2) per i lavori accessori e le provviste eseguite extra appalto in ordine all'oggetto, oltre le L.2.040 già pagate alla ditta Ditta Carlo Comana di Bergamo per la fornitura delle basi in travertino per le antenne, complessive..............."L.15.300,- TOTALE.....L.48.130,-<br/>
                                                                    b) di prendere atto e di approvare gli atti tecnico-contabili all'uopo predisposti dalla Direzione dei Lavori: <br/>
                                                                    c) di approvare conseguentemente, il pagamento: <br/>
                                                                    1) della somma di L.(32.830 meno gli acconti già corrisposti in L.29.500) - .............................."L.3.330,- a favore della Soc.An.Ing. Nino Ferrari a saldo ed a tacitazione di ogni sua spettanza e pretesa in merito ai lavori indicati sotto il n.1 della precedente lett. a); <br/>
                                                                    2) della somma di..................."L.15.300,- compresa l'imposta sull'entrata - a favore delle Ditte sottoindicate per i lavori accessori e le forniture eseguite fuori appalto.TOTALE.......L.18.630,-<br/>
                                                                    -Ditta Pellosini Ermando, per la fornitura di4bandiere complete (due nazionali e due della città) fatt. 9.6.1940-XVII°,n.15L.4.000,- <br/>
                                                                    -Soc.An.Rossi Tranquillo, per la fornitura di n.4 pali greggi piallati, per le antenne, fatt. 9.8.40n.584....."2.120,- <br/>
                                                                    -Impresa Trasporti Natale Toracca fu Stefano, per il trasporto dei pali, fatt. 20.8.1940n.625................"80,- <br/></div>
                            <div id="sub_4" class="sub" style="display:none;">1076<br/><br/>
                                                                    -Soc.A.Ing. Nino Ferrari, per il collocamento in opera delle antenne, fatt. 3.9.1940n.410.................L.1.200,- <br/>
                                                                    -Cantieri Cozzani, per la mano d'opera ed il materiale occorso per la sistemazione ad antenne dei pali forniti dalla Ditta Rossi-fatt. 10.9.1940.................L.5.600,- <br/>
                                                                    -Ditta Pellosini Ermando, per la fornitura di 2 bandiere; una della Provincia ed una del P.N.F fatt. 14.9.1940n.51-2.300,- <br/>
                                                                    TOTALE.........L.15.300,- <br/>
                                                                    Alla spesa complessiva di L.18.630 sarà fatto fronte con i fondi disponibili in L.65.455 all'art.56-Imp.45 del Bil.45 tit.1 Cap.IV - Cat.II^"Fondo per cerimonie, ricevimenti, manifestazioni patriottiche e culturali ed altre spese casuali".<br/></div>                                                                
                            <!--Buttons che permettono l'interazione con gli elementi del testo-->
                            <div id="bottontext">
                                <button id="buttonreplace" onclick="replaceDiv('.sub')">Testo Completo</button>
                                <button id="buttonabbr" onclick="toggleVisibility('b.abbr')">Mostra Abbr</button>
                                <button id="buttonexpan" onclick="toggleVisibility('span.expan')">Mostra Expan</button>
                                <button id="buttonperson" onclick="PersonVisibility('span.persone')" color="yellow">Persone</button>
                                <button id="buttonplace" onclick="PlaceVisibility('span.luoghi')" color="orange">Luoghi</button>
                                <button id="buttonorg" onclick="OrgVisibility('span.expan')" color="lightblue">Organizzazioni</button>
                            </div>
                        </div>
                    </section>
                    <!--Navigazione tra le delibere-->
                    <nav id="info0">
                        <h2>Le Delibere</h2>
                        <div class="card">
                            <div class="container1">
                                <a href="delibera0.html">
                                    <h3>Delibera 17/10/1939</h3> 
                                    <img src="Miniatura_del0.jpg"/>
                                </a>
                            </div>
                            <div class="container1">
                                <a href="delibera1.html">
                                    <h3>Delibera 26/02/1940</h3> 
                                    <img src="Miniatura_del1.jpg"/>
                                </a>
                            </div>
                            
                            <div class="container1">
                                <a href="delibera2.html">
                                    <h3>Delibera 20/06/1940</h3> 
                                    <img src="Miniatura_del2.jpg"/> 
                                </a>
                            </div>
                        </div>
                    </nav>
                    <!--Liste collegate alle entità nel testo dei documenti-->
                    <h2>Informazioni sui documenti</h2>
                    <div class="card_descrizione">
                        <xsl:apply-templates select="//tei:sourceDesc[@xml:id='Raccolta_originale']/tei:listPerson" />
                    </div>
                    <div class="card_descrizione">
                        <xsl:apply-templates select="//tei:sourceDesc[@xml:id='Raccolta_originale']/tei:listPlace" />
                    </div>
                    <div class="card_descrizione">
                        <xsl:apply-templates select="//tei:sourceDesc[@xml:id='Raccolta_originale']/tei:listOrg" />
                    </div>
                </main>
                <!-- footer -->
                <footer class="riferimenti">
                    <section>
                        <div>
                            <h2>Credits</h2>
                            <p><xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt"/></p>
                        </div>
                        <div>
                            <h2>Il progetto</h2>
                            <p>
                            Il progetto nasce dal corso magistrale in Informatica Umanistica per l'esame di Storia Pubblica Digitale, dell'Università di Pisa.
                            <a href="https://www.unipi.it/"> </a>
                            </p>
                        </div>
                        <div id="logo">
                            <img src="Logo.jpg" />
                        </div>
                    </section> 
                </footer>
                <!-- javaScript-->
                <script src="delciano.js"></script>
            </body>
        </html>
    </xsl:template>

    <!--Match per le informazioni del volume-->
    <xsl:template match="tei:sourceDesc[@xml:id='Raccolta_originale']/tei:msDesc/tei:msPart[@xml:id='volume3']">
        <button id="dropbtn" class="dropbtn"><h2>Caratteristiche Delibera del 07/12/1940</h2></button>
        <div class="lista_desc">
            <ul class="horizontal_list1">
                <li>
                    <h3>Titolo</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera3']/tei:msDesc[@xml:id='Descr_del3']/tei:msIdentifier/tei:idno"/></p>
                </li>
                <li>
                    <h3>Volume:</h3>
                    <p><xsl:value-of select="tei:msIdentifier/tei:idno"/></p>
                </li>
            </ul>
            <ul>
                <li>
                    <h3>Storia:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera3']/tei:msDesc[@xml:id='Descr_del3']/tei:history"/></p>
                </li>
                <li>
                    <h3>Contenuto:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera3']/tei:msDesc[@xml:id='Descr_del3']/tei:msContents/tei:p"/></p>
                </li>
            </ul>
            <ul>
                <li>
                    <h3>Descrizione del Supporto:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera3']/tei:msDesc[@xml:id='Descr_del3']/tei:physDesc[@xml:id='delibera0712']/tei:objectDesc/tei:supportDesc/tei:support"/></p>
                </li>
                <li>
                    <h3>Stato:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera3']/tei:msDesc[@xml:id='Descr_del3']/tei:physDesc[@xml:id='delibera0712']/tei:objectDesc/tei:supportDesc/tei:condition"/></p>
                </li>
            </ul>
            <ul>
                <li>
                    <h3>Informazioni aggiuntive:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera3']/tei:msDesc[@xml:id='Descr_del3']/tei:physDesc[@xml:id='delibera0712']/tei:objectDesc/tei:layoutDesc/tei:layout"/></p>
                </li>
            </ul>
        </div>
    </xsl:template>

     <!-- Template immagini e mappatura--> 
    <xsl:template match="tei:facsimile[@xml:id='img_delibere']/tei:surfaceGrp[@xml:id='del_3']">
    <xsl:for-each select="tei:surface">
        <xsl:element name="map">
            <xsl:attribute name="id"><xsl:value-of select="@xml:id" /></xsl:attribute>
            <xsl:for-each select="tei:zone">
                <xsl:element name="area">
                    <xsl:attribute name="shape">rect</xsl:attribute>
                    <xsl:attribute name="coords"></xsl:attribute>
                    <xsl:attribute name="data-ulx"><xsl:value-of select="@ulx"/></xsl:attribute>
                    <xsl:attribute name="data-uly"><xsl:value-of select="@uly"/></xsl:attribute>
                    <xsl:attribute name="data-lrx"><xsl:value-of select="@lrx"/></xsl:attribute>
                    <xsl:attribute name="data-lry"><xsl:value-of select="@lry"/></xsl:attribute>
                    <xsl:attribute name="href">#<xsl:value-of select="@xml:id"/></xsl:attribute>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
        <xsl:element name="img">
            <xsl:attribute name="class">foto</xsl:attribute>
            <xsl:attribute name="src"><xsl:value-of select="tei:graphic/@url"/></xsl:attribute>
            <xsl:attribute name="usemap">#<xsl:value-of select="@xml:id"/></xsl:attribute>
            <xsl:attribute name="alt">slide-foto</xsl:attribute>
            <xsl:attribute name="data-original-width"><xsl:value-of select="substring-before(tei:graphic/@width, 'px')"/></xsl:attribute>
            <xsl:attribute name="data-original-height"><xsl:value-of select="substring-before(tei:graphic/@height, 'px')"/></xsl:attribute>
        </xsl:element>
    </xsl:for-each>
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
    
    <!--Match sulle pagine-->
    <xsl:template match="tei:text[@xml:id='testodel3']/tei:body">
        <xsl:apply-templates select="tei:ab"/>
    </xsl:template>

    <!--Match che costruisce le righe del testo per il collegamento testo-immagine-->
    <xsl:template match="tei:ab">
        <xsl:element name="div">
            <xsl:attribute name="class">pagina</xsl:attribute>
            <xsl:variable name="pgid" select="concat('pg', position())"/>
            <xsl:attribute name="id">
                <xsl:value-of select="$pgid"/>
            </xsl:attribute>
            <xsl:for-each select="tei:lb">       
                <xsl:element name="span">
                    <xsl:attribute name="class">linee</xsl:attribute>
                    <xsl:attribute name="id">
                        <xsl:value-of select="concat('linea_del3_', $pgid, '_', position())"/>
                    </xsl:attribute>
                    <xsl:apply-templates select="following-sibling::node()[not(self::tei:lb) and generate-id(preceding-sibling::tei:lb[1]) = generate-id(current())]"/>
                </xsl:element>
                <br/>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <!--Match per le liste-->
    <xsl:template match="tei:sourceDesc[@xml:id='Raccolta_originale']/tei:listPerson">
    <button id="dropbtn1" class="dropbtn1"><h2>Lista delle Persone</h2></button>
        <div class="lista_desc1">
            <ul class="horizontal_list2">
                <h3>Persone:</h3>
                <xsl:for-each select="tei:person">
                    <xsl:element name="span">
                        <xsl:attribute name="id">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <li><strong><xsl:value-of select="tei:persName/tei:forename"/><space/><xsl:value-of select="tei:persName/tei:surname"/></strong>: <p><xsl:value-of select="tei:persName/tei:roleName"/></p></li>
                    </xsl:element>
                </xsl:for-each> 
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="tei:sourceDesc[@xml:id='Raccolta_originale']/tei:listPlace">
        <button id="dropbtn2" class="dropbtn2"><h2>Lista dei Luoghi</h2></button>
        <div class="lista_desc2">
            <ul class="horizontal_list2">
                <h3>Luoghi:</h3>
                <xsl:for-each select="tei:place">
                    <xsl:element name="span">
                        <xsl:attribute name="id">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <li><strong><xsl:apply-templates select="tei:settlement"/></strong>: <xsl:value-of select="tei:desc"/></li>
                    </xsl:element>
                </xsl:for-each> 
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="tei:sourceDesc[@xml:id='Raccolta_originale']/tei:listOrg">
        <button id="dropbtn3" class="dropbtn3"><h2>Lista delle Organizzazioni</h2></button>
        <div class="lista_desc3">
            <ul class="horizontal_list2">
                <h3>Organizzazioni e Ditte:</h3>
                <xsl:for-each select="tei:org">
                    <xsl:element name="span">
                        <xsl:attribute name="id">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <li><strong><xsl:value-of select="tei:orgName"/></strong>: <xsl:apply-templates select="tei:desc"/></li>
                    </xsl:element>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>

    <!--Match per la visualizzazione delle entità testuali-->
    <xsl:template match="tei:persName">
        <xsl:element name="a">
            <xsl:attribute name="href" >
                <xsl:value-of select="@ref"/>
            </xsl:attribute>
            <xsl:attribute name="class">Persone</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>    
    </xsl:template>

    <xsl:template match="tei:orgName">
        <xsl:element name="a">
            <xsl:attribute name="href" >
                <xsl:value-of select="@ref"/>
            </xsl:attribute>
            <xsl:attribute name="class">Organizzazioni</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>    
    </xsl:template>

    <xsl:template match="tei:placeName">
        <xsl:element name="a">
            <xsl:attribute name="href" >
                <xsl:value-of select="@ref"/>
            </xsl:attribute>
            <xsl:attribute name="class">Luoghi</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element> 
    </xsl:template>
    
    <!-- Abbreviazioni-->
    <xsl:template match="//tei:abbr">
        <xsl:element name="b">
            <xsl:attribute name="class">abbr</xsl:attribute>
            <xsl:value-of select="current()" />
        </xsl:element>
    </xsl:template>
    
    <!--Espansioni-->
    <xsl:template match="//tei:expan">
        <xsl:element name="span">
            <xsl:attribute name="class">expan</xsl:attribute>
            -<i><xsl:value-of select="current()" /></i>-
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>