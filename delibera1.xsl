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
                        <xsl:apply-templates select="//tei:sourceDesc[@xml:id='Raccolta_originale']/tei:msDesc/tei:msPart[@xml:id='volume1']" />
                    </div>
                    <div class="titolodel">
                        <xsl:apply-templates select="//tei:text[@xml:id='testodel1']/tei:front/tei:head"/>    
                    </div>
                    <section class="documenti">
                        <!-- Immagini delibera 1-->
                        <div class="slide">
                            <xsl:apply-templates select="//tei:facsimile[@xml:id='img_delibere']/tei:surfaceGrp[@xml:id='del_1']"/>
                            <!--Botton per galleria delle immagini-->
                            <div id="bottonimg">
                                <button id="btnindietro" onclick="indietro()"><i class="fa-solid fa-angle-left fa-6x"></i></button>
                                <button id="btnavanti" onclick="avanti()"><i class="fa-solid fa-angle-right fa-6x"></i></button>
                            </div>
                        </div>
                        <!--Sezione per il testo della delibera 1-->
                        <div class="testi">
                            <xsl:apply-templates select="//tei:text[@xml:id='testodel1']/tei:body"/>
                            <!--Testo delibera 1 ordinato per la lettura-->
                            <div id="sub_1" class="sub" style="display:none;"> <strong>LAVORI DI FONDAZIONE E COLLOCAMENTO A POSTO DEL MONUMENTO A Costanzo Ciano</strong><br/><br/>
                                                                    PUBBLICATA il 27/02/1940 N.255<br/>
                                                                    Vista dal Prefetto il 27/02/1940 N.3330<br/><br/>
                                                                    Richiamata la propria deliberazione n. del 17 ottobre 1939/XVII, superiormente approvata, con la quale adottava provvedimenti in ordine al monumento a Costanzo Ciano da erigersi in questo Comune Capoluogo nell'ubicazione prescelta al centro dell'aiuola fronteggiante la facciata a mare del Palazzo del Governo;<br/>
                                                                    Considerata l'urgenza di provvedere ai lavori di fondazione ed accessori per il collocamento a posto dell’opera tosto che questa sarà stata consegnata dallo scultore Prof. Francesco Messina, giusta il disposto, lett. c) della citata deliberazione;<br/>
                                                                    Vista la relazione tecnica ed il computo metrico-estimativo allestiti dal dipendente ufficio municipale dei LL.PP. circa la natura, i quantitativi e le modalità costruttive dei lavori di che trattasi;<br/>
                                                                    Visto che la spesa all’uopo occorrente ascende a complessive Lire 23.000 (ventitremila) così ripartita:<br/><br/>
                                                                    opere da appaltarsi ...............................L.17.855,-<br/>
                                                                    a disposizione per la esecuzione in economia:<br/></div>
                            <div id="sub_2" class="sub" style="display:none;">190<br/>
                                                                    a) della posa in opera del rivestimento del basamento con le lastre e blocchi di travertino che saranno provvisti dallo scultore, L.lire1.575,-<br/>
                                                                    b) del collocamento della statua ...................“ 1.000,-<br/>
                                                                    c) per eventuali imprevisti ........................“ 2.570,-<br/>
                                                                    Totale.........L.lire23.000,-<br/>
                                                                    Ritenute giustificate e convenienti le motivate proposte del prefato ufficio;<br/>
                                                                    Considerato che la Soc.An. Ing.Nino Ferrari, che offre le necessarie garanzie di idoneità, interpellate in merito, si è dichiarata disposta ad assumere la esecuzione dei lavori a base dell’appalto nei modi e termini ed ai prezzi unitari indicati negli atti tecnici anzidetti;<br/>
                                                                    Ritenuta vantaggiosa l’offerta così pervenuta;<br/>
                                                                    Visto l’art.87 della vigente legge comunale e provinciale;<br/>
                                                                    DELIBERA<br/>
                                                                    a) di approvare gli atti tecnici (relazione e computo metrico-estimativo) in data 15.2.1940/XVII°, predisposti dall’Ufficio municipale dei LL.PP. in ordine alla esecuzione dei lavori di fondazione ed al collocamento a posto del monumento a Costanzo Ciano, nel centro dell’aiuola fronteggiante la facciata a mare del Palazzo del Governo;<br/>
                                                                    b) di approvare la conseguente spesa di L.23.000 ripartita come segue:<br/>
                                                                    1°) Opere da appaltarsi ...........................L.17.855,-<br/>
                                                                    2°) somma a disposizione per la esecuzione in economia di cui alle premesse ................................L.2.575,-<br/>
                                                                    3°) per eventuali imprevisti......................“ 2.570,-<br/>
                                                                    Totale L.lire23.000,-<br/>
                                                                    c) di affidare la esecuzione dei lavori oggetto del N.l della precedente lettera b), a trattativa privata, alla Soc.An. Ing.Nino Ferrari, nei modi ed ai prezzi indicati nella relazione e computo estimativo anzidetti ed alle seguenti altre particolari con-</div>
                            <div id="sub_3" class="sub" style="display:none;">26 FEB 1940 XVII<br/>
                                                                    dizioni dalla medesima impresa accettate;<br/>

                                                                    pagamento in due rate: la prima, eguale alla metà della somma di deliberamento, a completa ultimazione dei lavori; la seconda, a saldo, previo rilascio del certificato di regolare esecuzione (da compilarsi tre mesi dopo il collocamento della statua), a’ sensi e per gli effetti degli art.3) del R.D.L. 28 Agosto 1924, n.1396 e l lett. b) della legge 27 Maggio 1926, n.1013;<br/>
                                                                    Obbligo dell’impresa di assicurare gli operai contro gli infortuni sul lavoro, la disoccupazione involontaria, l’invalidità e vecchiaia, la tubercolosi etc., a termine delle vigenti leggi e regolamenti e di adempiere ad ogni altro suo obbligo in materia di rapporti di lavoro;<br/>
                                                                    esonero dal versamento del deposito cauzionale;<br/>
                                                                    osservanza, per quanto potesse occorrere, delle norme di carattere generale contenute nel vigente capitolato d’appalto a stampa per gli appalti delle opere da eseguirsi per conto del Comune e successive disposizioni di legge con attinenza alla materia;<br/>
                                                                    d) di provvedere in economia al rivestimento del basamento ed al collocamento a posto dell’opera.<br/>
                                                                    Alla presunta spesa di L.23.000,- sarà fatto fronte con anticipazione sull’art.147 - imp.23 (contab. speciali Bil. per l’esercizio in corso (Tit.III° - Cat.I) da reintegrarsi coi contributi dei vari Enti sottoscrittori.</div>
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
                                <a href="delibera0.html">
                                    <h3>Delibera 17/10/1939</h3> 
                                    <img src="Miniatura_del0.jpg"/>
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
    <xsl:template match="tei:sourceDesc[@xml:id='Raccolta_originale']/tei:msDesc/tei:msPart[@xml:id='volume1']">
        <button id="dropbtn" class="dropbtn"><h2>Caratteristiche Delibera del 26/02/1940</h2></button>
        <div class="lista_desc">
            <ul class="horizontal_list1">
                <li>
                    <h3>Titolo</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera1']/tei:msDesc[@xml:id='Descr_del1']/tei:msIdentifier/tei:idno"/></p>
                </li>
                <li>
                    <h3>Volume:</h3>
                    <p><xsl:value-of select="tei:msIdentifier/tei:idno"/></p>
                </li>
            </ul>
            <ul>
                <li>
                    <h3>Storia:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera1']/tei:msDesc[@xml:id='Descr_del1']/tei:history"/></p>
                </li>
                <li>
                    <h3>Contenuto:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera1']/tei:msDesc[@xml:id='Descr_del1']/tei:msContents/tei:p"/></p>
                </li>
            </ul>
            <ul>
                <li>
                    <h3>Descrizione del Supporto:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera1']/tei:msDesc[@xml:id='Descr_del1']/tei:physDesc[@xml:id='delibera2602']/tei:objectDesc/tei:supportDesc/tei:support"/></p>
                </li>
                <li>
                    <h3>Stato:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera1']/tei:msDesc[@xml:id='Descr_del1']/tei:physDesc[@xml:id='delibera2602']/tei:objectDesc/tei:supportDesc/tei:condition"/></p>
                </li>
            </ul>
            <ul>
                <li>
                    <h3>Informazioni aggiuntive:</h3>
                    <p><xsl:value-of select="tei:msContents/tei:msItem[@xml:id='delibera1']/tei:msDesc[@xml:id='Descr_del1']/tei:physDesc[@xml:id='delibera2602']/tei:objectDesc/tei:layoutDesc/tei:layout"/></p>
                </li>
            </ul>
        </div>
    </xsl:template>

     <!-- Template immagini e mappatura--> 
    <xsl:template match="tei:facsimile[@xml:id='img_delibere']/tei:surfaceGrp[@xml:id='del_1']">
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
    <xsl:template match="tei:text[@xml:id='testodel1']/tei:body">
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
                        <xsl:value-of select="concat('linea_del1_', $pgid, '_', position())"/>
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