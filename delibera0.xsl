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
                        <xsl:apply-templates select="//tei:sourceDesc[@xml:id='Raccolta_originale']/tei:msDesc/tei:msPart[@xml:id='volume0']" />
                    </div>
                    <div class="titolodel">
                        <xsl:apply-templates select="//tei:text[@xml:id='testodel0']/tei:front/tei:head"/>    
                    </div>
                    <section class="documenti">
                        <!-- Immagine delibera 0-->
                        <div class="slide">
                            <xsl:apply-templates select="//tei:facsimile[@xml:id='img_delibere']/tei:surfaceGrp[@xml:id='del_0']"/>
                        <!--Botton per galleria delle immagini-->
                            <div id="bottonimg">
                                <button id="btnindietro" onclick="indietro()"><i class="fa-solid fa-angle-left fa-6x"></i></button>
                                <button id="btnavanti" onclick="avanti()"><i class="fa-solid fa-angle-right fa-6x"></i></button>
                            </div>
                        </div>
                        <!--Sezione per il testo della delibera 0-->
                        <div class="testi">
                            <xsl:apply-templates select="//tei:text[@xml:id='testodel0']/tei:body"/>
                            <!--Testo delibera 0 ordinato per la lettura-->
                            <div id="sub_1" class="sub" style="display:none;"> 892<br/>
                                                                    <strong>1/816 Iniziativa per erigere a La Spezia un monumento a Costanzo Ciano.</strong><br/><br/>
                                                                    Pubblicata il 17-10-1939 N.1405.<br/>
                                                                    Approvata dalla G.P.A. il 27/10/1939 N.16858.<br/><br/>
                                                                    N. 50 d'ORDINE                                         17 Ottobre 1939 - XVII°<br/>
                                                                    L'anno millenovecentotrentanove (XVII° ) ed alli diciassette del mese di ottobre a La Spezia in una sala del Civico Palazzo;<br/>
                                                                    IL PODESTA'<br/>
                                                                    Cav. Uff. Avv. Tullio DALL'ARA<br/>
                                                                    con l'assistenza del Segretario Generale del Comune Comm. Dott. Francesco AGNESE:<br/><br/>
                                                                    <hr/>
                                                                    Interprete della volontà della cittadinanza tutta di questo Capoluogo, di veder consacrato a Costanzo Ciano un degno monumento che (indelebile segno d'onore, di amore e di gratitudine per quanto Egli operò a favore dell'Italia e de la Spezia) alle generazioni future per ospite, nell'ardente giovinezza guerriera.<br/>
                                                                    Considerato che l'iniziativa dovrebbe assurgere ad una solenne affermazioni di fede di tuttla la Provincia nei valori eterni dell'ardimento e della gloria;<br/>
                                                                    Considerato che per il carattere storico dell'Uomo che si vuole così onorare e che particolarmente unisce in sè quanto di più alte fu nell'Italia dell'anteguerra e della guerra, e quanto più di piò generoso ed eroico fu nell'Italia della Rivoluzione Fascista e dell'impero, il monumento dovrà essere adeguato alla memoria di Lui, e dovrà così - per esprimere in modo accessibile al popolo ciò che Egli fu e ciò che Egli fece - sorgere a dominio di tratto largo di mare, qual'è il nostro Golfo;<br/>
                                                                    Ritenuto che la spesa occorrente risulta di L.150.000,- per l'esecuzione del basamento e della figura artistica, il tutto consegnate a piè d'opera, oltre l'importo dei lavori di fondazione, e il collocamento a posto del monumento;<br/>
                                                                    Considerata l'opportunità di fare eseguire il lavoro allo scultore Prof. Francesco Messina;<br/>
                                                                    DELIBERA</div>
                            <div id="sub_2" class="sub" style="display:none;">893<br/>
                                                                    a) di assumere l'iniziativa perché a La Spezia si innalzi un monumento a Costanzo Ciano, Eroe di Cortellazzo e di Buccari, indomito alfiere della Rivoluzione Fascista;<br/>
                                                                    b) che il proposito si realizzi con il contributo di questo Comune Capoluogo e con i contributi di tutti i Comuni della Provincia, e con quelli dei maggiori Enti pubblici di essa, che ne saranno richiesti;<br/>
                                                                    c) di conferire l'incarico dell'esecuzione dell'opera artistica allo scultore Prof. Francesco Messina dell'Accademia di Brera di Milano, che accetta mediante pagamento dell'onorario complessivo di L.150.000 per la figura artistica in bronzo e il basamento, il tutto da consegnarsi a pié d'opera, rimanendo a carico del committente la spesa di fondazione e del collocamento a posto del monumento;<br/>
                                                                    d) di finanziare il contributo che spetterà al Comune de La Spezia con apposito stanziamento da inscriversi nel Bilancio del prossimo esercizio.<br/>
                                                                    <hr/>
                                                                    Letto, confermato e sottoscritto<br/>
                                                                    IL PODESTA'<br/>
                                                                    (Avv. Tullio Dall'ARA)<br/>
                                                                    IL SEGRETARIO GENERALE<br/>
                                                                    (Dott. Francesco AGNESE)<br/></div>
                            <!--Buttons che permettono l'interazione con gli elementi del testo-->
                            <div id="bottontext">
                                <button id="buttonreplace" onclick="replaceDiv('.sub')">Testo Completo</button>
                                <button id="buttonabbr" onclick="toggleVisibility('b.abbr')">Mostra Abbr</button>
                                <button id="buttonexpan" onclick="toggleVisibility('span.expan')">Mostra Expan</button>
                                <button id="buttonperson" onclick="PersonVisibility('a.persone')" color="yellow">Persone</button>
                                <button id="buttonplace" onclick="PlaceVisibility('a.luoghi')" color="orange">Luoghi</button>
                                <button id="buttonorg" onclick="OrgVisibility('a.Organizzazioni')" color="lightblue">Organizzazioni</button>
                            </div>
                        </div>
                    </section>
                    <!--Navigazione tra le delibere-->
                    <nav id="info0">
                        <h2>Le Delibere</h2>
                        <div class="card">
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
                            
                            <div class="container1">
                                <a href="delibera3.html">
                                    <h3>Delibera 07/12/1940</h3> 
                                    <img src="Miniatura_del3.jpg"/> 
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
                            Il progetto nasce dal corso magistrale in Informatica Umanistica per l'esame di Storia Pubblica Digitale, dell'università di Pisa.
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
    <xsl:template match="tei:sourceDesc[@xml:id='Raccolta_originale']/tei:msDesc/tei:msPart[@xml:id='volume0']">
        <button id="dropbtn" class="dropbtn"><h2>Caratteristiche Delibera del 17/10/1939</h2></button>
        <div class="lista_desc">
            <ul class="horizontal_list1">
                <li>
                    <h3>Titolo</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera0']/tei:msDesc[@xml:id='Descr_del0']/tei:msIdentifier/tei:idno"/></p>
                </li>
                <li>
                    <h3>Volume:</h3>
                    <p><xsl:value-of select="tei:msIdentifier/tei:idno"/></p>
                </li>
            </ul>
            <ul>
                <li>
                    <h3>Storia:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera0']/tei:msDesc[@xml:id='Descr_del0']/tei:history"/></p>
                </li>
                <li>
                    <h3>Contenuto:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera0']/tei:msDesc[@xml:id='Descr_del0']/tei:msContents/tei:p"/></p>
                </li>
            </ul>
            <ul>
                <li>
                    <h3>Descrizione del Supporto:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera0']/tei:msDesc[@xml:id='Descr_del0']/tei:physDesc[@xml:id='delibera1710']/tei:objectDesc/tei:supportDesc/tei:support"/></p>
                </li>
                <li>
                    <h3>Stato:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera0']/tei:msDesc[@xml:id='Descr_del0']/tei:physDesc[@xml:id='delibera1710']/tei:objectDesc/tei:supportDesc/tei:condition"/></p>
                </li>
            </ul>
            <ul>
                <li>
                    <h3>Informazioni aggiuntive:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera0']/tei:msDesc[@xml:id='Descr_del0']/tei:physDesc[@xml:id='delibera1710']/tei:objectDesc/tei:layoutDesc/tei:layout"/></p>
                </li>
            </ul>
        </div>
    </xsl:template>

     <!-- Template immagini e mappatura--> 
    <xsl:template match="tei:facsimile[@xml:id='img_delibere']/tei:surfaceGrp[@xml:id='del_0']">
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
    <xsl:template match="tei:text[@xml:id='testodel0']/tei:body">
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
                        <xsl:value-of select="concat('linea_del0_', $pgid, '_', position())"/>
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
                        <li><strong><xsl:value-of select="tei:persName/tei:forename"/><space/><xsl:value-of select="tei:persName/tei:surname"/></strong>: <xsl:value-of select="tei:persName/tei:roleName"/></li>
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