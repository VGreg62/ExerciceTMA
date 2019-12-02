$(document).ready(generateTables());

function generateTables(){
    const status = ['Demandé', 'En préparation', 'Fini', 'Historisé'];
    for(s of status){
        $('#tables').innerHTML += '<h1>' + s + '<h1>';
    }
}
