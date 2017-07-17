﻿
function checkForm(form) {
    var Name, ConNum, pos, email, Source;
 
    Name = document.getElementById("name").value;
    ConNum = document.getElementById("cnumber").value;
    address = document.getElementById("address").value;
    email = document.getElementById("email").value;
    source = document.getElementById("Source").value;
    pos = document.getElementById("PositionList").value;
    emailExp = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/; // regex to validate email address
 
    if (email == '') {
        alert("Email Id Is Required");
        return false;
    }
    if (email != '') {
        if (!email.match(emailExp)) {
            alert("Please enter a valid email address");
            console.log("INVALID EMAIL");
            return false;
        }
    }
    if(source === '0') {
        alert("Please select a source.");
        console.log("INVALID SOURCE");
        return false;
    }
    if (pos === '0') {
        alert("Please select a position");
        console.log("INVALID POSITION");
        return false;
    }
    return true;
}
function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}

$(function () {
    $(document).ready(function () {
        $("[id$=bday]").datepicker({
            changeMonth: true,
            changeYear: true,
            minDate: new Date(1950, 0, 1),
            maxDate: new Date(2020, 11, 31),
            defaultDate: new Date(1950, 0, 1),
            yearRange: '1950:2020'
        });
    });
});

function populateSource() {
    var dropdown = document.getElementById("Source");
    //to add source, just insert here
    var sources = ['Mynimo', 'JObstreet', 'Referral', 'Walk-in', 'HOIT Website', 'HOIT Careers FB Page', 'LinkedIn', 'Others']
    var arrayLength = sources.length;
    var data;
    for (var i = 0; i < arrayLength; i++) {
        data = sources[i];
        dropdown.options[dropdown.options.length] = new Option(data, i);
    }
}

function showHidden() {
    var source = document.getElementById("Source");
    var others = document.getElementById("others");
    var selectedSource = source.options[source.selectedIndex].text;

    if (selectedSource === 'Others') {
        document.getElementById("others").style.display = 'block';
    }
    else {
        document.getElementById("others").style.display = 'none';
    }

}
//function StartTest(popUpPage) {
//    document.getElementById("Button1").disabled = true;
//    window.open("Vocabulary.aspx");
//}
//function StartTest1(popUpPage) {
//    document.getElementById("Button2").disabled = true;
//    window.open("Math.aspx");
//} 
//function StartTest2(popUpPage) {
//    document.getElementById("Button3").disabled = true;
//    window.open("Comm.aspx");
//}
//function StartTest3(popUpPage) {
//    document.getElementById("Button4").disabled = true;
//}


