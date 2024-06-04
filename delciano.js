/*funzione Javascript che permette di scorrere la galleria delle immagini*/
document.addEventListener("DOMContentLoaded", () => {
    let foto = document.querySelectorAll(".foto");
    let pagina = document.querySelectorAll(".pagina");
    let sub = document.querySelectorAll(".sub");
    let i = 0;

    //Questa funzione scala le immagini in base alla loro dimensione, regolando le aree della map delle delibere
    function updateCoords() {
        const img = foto[i]; 
        const originalWidth = parseInt(img.getAttribute('data-original-width'), 10);
        const originalHeight = parseInt(img.getAttribute('data-original-height'), 10);
        
        const currentWidth = img.clientWidth;
        const currentHeight = img.clientHeight;
        const ratioWidth = currentWidth / originalWidth;
        const ratioHeight = currentHeight / originalHeight;

        const areas = document.querySelectorAll('area');
        areas.forEach(area => {
            const ulx = parseInt(area.getAttribute('data-ulx'), 10);
            const uly = parseInt(area.getAttribute('data-uly'), 10);
            const lrx = parseInt(area.getAttribute('data-lrx'), 10);
            const lry = parseInt(area.getAttribute('data-lry'), 10);

            const newCoords = [
                Math.round(ulx * ratioWidth),
                Math.round(uly * ratioHeight),
                Math.round(lrx * ratioWidth),
                Math.round(lry * ratioHeight)
            ];
            area.setAttribute('coords', newCoords.join(','));
        });
    }

    //Aggiorna l'altezza del div pagina in modo tale che sia uguale alla dimensione delle foto
    function updateSizes() {
        pagina[i].style.height = foto[i].offsetHeight + 'px';
        sub[i].style.height = foto[i].offsetHeight + 'px';
        updateCoords();
    }

    // Nasconde tutte le immagini tranne la prima
    foto.forEach((img, index) => {
        img.style.display = index === 0 ? "block" : "none";
       
        
    });

    //Nasconde tutti i div pagina tranne il primo e imposta la sua altezza pari all'altezza della prima foto
    pagina.forEach((div, index) => {
        div.style.display = index === 0 ? "block" : "none";
        if (index === 0) {
            div.style.height = foto[index].offsetHeight + 'px';
        }
    });

    //funzione per scorrere indietro nella galleria
    window.indietro = function() {
        foto[i].style.display = "none"; // Nascondi l'immagine corrente
        pagina[i].style.display = "none";
        sub[i].style.display = "none"; // Nasconde il sub corrente se visibile
       
        if (foto.length === 2) {
            i = (i - 1 + 2) % 2;
        }
        else if (foto.length === 3) {
            i = (i - 1 + foto.length) % foto.length; // Decrementa l'indice, ciclicamente
        }
        else {
            i = (i + 3) % 4;
        }
         
        foto[i].style.display = "block"; // Mostra la nuova immagine corrente
        pagina[i].style.display = "block";
        updateSizes(); 
    };

    //funzione per scorrere avanti nella galleria
    window.avanti = function() {
        foto[i].style.display = "none"; // Nascondi l'immagine corrente
        pagina[i].style.display = "none";
        sub[i].style.display = "none"; // Nasconde il sub corrente se visibile
        
        if (foto.length === 2) {
            i = (i + 1) % 2;
        }
        else if (foto.length === 3) {
            i = (i + 1) % foto.length; // Incrementa l'indice, ciclicamente
        }
        else {
            i = (i + 1) % 4;
        }
        
        foto[i].style.display = "block"; // Mostra la nuova immagine corrente
        pagina[i].style.display = "block";
        updateSizes(); 
    };

    //Sostituisce il testo del div pagina con quello completo del div sub
    window.replaceDiv = function() {
        // Nasconde il div .pagina e mostra il div .sub corrispondente all'indice i
        if (sub[i].style.display==="block"){
            sub[i].style.display ="none";
            pagina[i].style.display = "block"; 
        }
        else{
            pagina[i].style.display = "none";
            sub[i].style.display = "block";
        }
        updateSizes();     
    };
    window.addEventListener('resize', updateCoords);
    updateCoords(); 
});

//Menu a tendina delle informazioni sui volumi e delibere
document.addEventListener('DOMContentLoaded', function() {
    var dropdownButton = document.getElementById('dropbtn');
    dropdownButton.addEventListener('click', function() {
        var lista_desc = this.nextElementSibling;
        if (lista_desc.style.display === 'block') {
            lista_desc.style.display = 'none';
        } else {
            lista_desc.style.display = 'block';
        }
    });
});

//Tre funzioni per la Lista delle Persone. Una per il div a tendina, una per collegare tutte le entità persone del testo agli elementi della lista e una per aprire la lista
document.addEventListener('DOMContentLoaded', function() {
    var dropdownButton1 = document.getElementById('dropbtn1');
    dropdownButton1.addEventListener('click', function() {
        var lista_desc1 = this.nextElementSibling;
        if (lista_desc1.style.display === 'block') {
            lista_desc1.style.display = 'none';
        } else {
            lista_desc1.style.display = 'block';
        }
    });
})

document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll("a.Persone").forEach(function(link) {
        link.addEventListener('click', function() {
            openListaDesc1(); // Chiama la funzione per aprire il div lista_desc1
        });
    });
});

function openListaDesc1() {
    var listaDesc1 = document.querySelector('.lista_desc1');
    
    // Verifica lo stile di visualizzazione e mostra il div se nascosto
    if (getComputedStyle(listaDesc1).display === 'none') {
        listaDesc1.style.display = 'block'; // Mostra il div
    }
}

//Tre funzioni per la Lista dei Luoghi. Una per il div a tendina, una per collegare tuttie le entità Luoghi del testo agli elementi della lista e una per aprire la lista
document.addEventListener('DOMContentLoaded', function() {
    var dropdownButton2 = document.getElementById('dropbtn2');
    dropdownButton2.addEventListener('click', function() {
        var lista_desc2 = this.nextElementSibling;
        if (lista_desc2.style.display === 'block') {
            lista_desc2.style.display = 'none';
        } else {
            lista_desc2.style.display = 'block';
        }
    });
})

document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll("a.Luoghi").forEach(function(link) {
        link.addEventListener('click', function() {
            openListaDesc2(); // Chiama la funzione per aprire il div lista_desc2
        });
    });
});

function openListaDesc2() {
    var listaDesc2 = document.querySelector('.lista_desc2');
    
    // Verifica lo stile di visualizzazione e mostra il div se nascosto
    if (getComputedStyle(listaDesc2).display === 'none') {
        listaDesc2.style.display = 'block'; // Mostra il div
    }
}

//Tre funzioni per la Lista delle Organizzazioni. Una per il div a tendina, una per collegare tutti le entità Organizzazioni del testo agli elementi della lista e una per aprire la lista
document.addEventListener('DOMContentLoaded', function() {
    var dropdownButton3 = document.getElementById('dropbtn3');
    dropdownButton3.addEventListener('click', function() {
        var lista_desc3 = this.nextElementSibling;
        if (lista_desc3.style.display === 'block') {
            lista_desc3.style.display = 'none';
        } else {
            lista_desc3.style.display = 'block';
        }
    });
})

document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll("a.Organizzazioni").forEach(function(link) {
        link.addEventListener('click', function() {
            openListaDesc3(); // Chiama la funzione per aprire il div lista_desc3
        });
    });
});

function openListaDesc3() {
    var listaDesc3 = document.querySelector('.lista_desc3');
    
    // Verifica lo stile di visualizzazione e mostra il div se nascosto
    if (getComputedStyle(listaDesc3).display === 'none') {
        listaDesc3.style.display = 'block'; // Mostra il div
    }
}


//mostra abbr e expan

function toggleVisibility(target) {
    const abbrElements = document.querySelectorAll('b.abbr');
    const expanElements = document.querySelectorAll('span.expan');

    if (target === 'b.abbr') {
        expanElements.forEach(elem => elem.style.display = 'none');
        abbrElements.forEach(elem => elem.style.display = 'inline');
    } else if (target === 'span.expan') {
        abbrElements.forEach(elem => elem.style.display = 'none');
        expanElements.forEach(elem => elem.style.display = 'inline');
    }
}

//Evidenzia persone nel testo
function PersonVisibility(target) {
    const personeElements = document.querySelectorAll('a.Persone');
   
    personeElements.forEach(elem => {
        if (elem.style.backgroundColor === 'rgb(255, 121, 165)') {
            // Se è evidenziato (giallo), rimuovi l'evidenziazione
            elem.style.backgroundColor = '';
        } else {
            // Altrimenti, applica l'evidenziazione
            elem.style.backgroundColor = 'rgb(255, 121, 165)';
        }
    });
}

//Evidenzia Luoghi nel testo
function PlaceVisibility(target) {
    const placeElements = document.querySelectorAll('a.Luoghi');
   
    placeElements.forEach(elem => {
        if (elem.style.backgroundColor === 'rgb(87, 171, 255)') {
            // Se è evidenziato (giallo), rimuovi l'evidenziazione
            elem.style.backgroundColor = '';
        } else {
            // Altrimenti, applica l'evidenziazione
            elem.style.backgroundColor = 'rgb(87, 171, 255)';
        }
    });
}

//Evidenzia Organizzazioni nel testo
function OrgVisibility(target) {
    const orgElements = document.querySelectorAll('a.Organizzazioni');
   
    orgElements.forEach(elem => {
        if (elem.style.backgroundColor === 'rgb(255, 200, 37)') {
            // Se è evidenziato (giallo), rimuovi l'evidenziazione
            elem.style.backgroundColor = '';
        } else {
            // Altrimenti, applica l'evidenziazione
            elem.style.backgroundColor = 'rgb(255, 200, 37)';
        }
    });
}


// Ottieni tutte le mappe presenti nel documento
const maps = document.querySelectorAll('map');

// Itera su ogni mappa
maps.forEach(map => {
    // Ottieni tutte le aree della mappa corrente
    const mapAreas = map.querySelectorAll('area');
    
    // Itera su ogni area della mappa corrente
    mapAreas.forEach(area => {
        // Aggiungi un gestore di eventi per il click
        area.addEventListener('click', function(event) {
            // Evita il comportamento predefinito dell'area (reindirizzamento)
            event.preventDefault();
            
            // Ottieni l'ID dello span corrispondente all'href dell'area
            const spanId = this.getAttribute('href').substring(1);
            
            // Ottieni lo span corrispondente
            const span = document.getElementById(spanId);
            
            // Se lo span esiste
            if (span) {
                // Rimuovi eventuali evidenziazioni precedenti
                const highlightedSpans = document.querySelectorAll('.linee');
                highlightedSpans.forEach(span => span.removeAttribute('style'));
                
                // Evidenzia lo span
                span.style.backgroundColor = 'rgba(158, 214, 102, 1)';
                span.style.border = '0.1em solid rgba(255, 255, 255, 0.5)'; // Bordo bianco semitrasparente
                span.style.borderRadius = '0.1em'; // Bordo arrotondato
            }
        });
    });
});
