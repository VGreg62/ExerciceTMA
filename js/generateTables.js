$(document).ready(displayTables());

var tabledata = [
    {id:1, name:"Oli Bob", age:"12", col:"red", dob:""},
    {id:2, name:"Mary May", age:"1", col:"blue", dob:"14/05/1982"},
    {id:3, name:"Christine Lobowski", age:"42", col:"green", dob:"22/05/1982"},
    {id:4, name:"Brendon Philips", age:"125", col:"orange", dob:"01/08/1980"},
    {id:5, name:"Margret Marmajuke", age:"16", col:"yellow", dob:"31/01/1999"},
];

function displayTables(){
    const status = ['Demande', 'En_preparation', 'Fini', 'Historise'];
    for(s of status){
        $('#tables').append(
            '<div class="col-6 borderTable"> <h5>' + s  + '</h5>' +
            '<table id="' + s + '" class="display compact">' + 
             '<thead>' +
                '<tr>' +
                    '<th>Column 1</th>' +
                    '<th>Column 2</th>' +
                '</tr>' +
            '</thead>' +
            '<tbody>' +
                '<tr>' +
                    '<td>Row 1 Data 1</td>' +
                    '<td>Row 1 Data 2</td>' +
                '</tr>' +
                '<tr>' + 
                    '<td>Row 2 Data 1</td>' + 
                    '<td>Row 2 Data 2</td>' + 
                '</tr>' + 
                '<tr>' +
                    '<td>Row 1 Data 1</td>' +
                    '<td>Row 1 Data 2</td>' +
                '</tr>' +
                '<tr>' + 
                    '<td>Row 2 Data 1</td>' + 
                    '<td>Row 2 Data 2</td>' + 
                '</tr>' + 
                '<tr>' +
                    '<td>Row 1 Data 1</td>' +
                    '<td>Row 1 Data 2</td>' +
                '</tr>' +
                '<tr>' + 
                    '<td>Row 2 Data 1</td>' + 
                    '<td>Row 2 Data 2</td>' + 
                '</tr>' + 
                '<tr>' +
                    '<td>Row 1 Data 1</td>' +
                    '<td>Row 1 Data 2</td>' +
                '</tr>' +
                '<tr>' + 
                    '<td>Row 2 Data 1</td>' + 
                    '<td>Row 2 Data 2</td>' + 
                '</tr>' + 
                '<tr>' + 
                '<td>Row 2 Data 1</td>' + 
                '<td>Row 2 Data 2</td>' + 
            '</tr>' + 
            '<tr>' +
                '<td>Row 1 Data 1</td>' +
                '<td>Row 1 Data 2</td>' +
            '</tr>' +
            '<tr>' + 
                '<td>Row 2 Data 1</td>' + 
                '<td>Row 2 Data 2</td>' + 
            '</tr>' + 
            '</tbody>' +
        '</table>' +
        '</div>'); 
        $('#' + s).DataTable();
    }

}
