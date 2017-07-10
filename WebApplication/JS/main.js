
function checkForm(form) {
    var Name, ConNum, pos, email, Source;
 
    Name = document.getElementById("name").value;
    ConNum = document.getElementById("cnumber").value;
    address = document.getElementById("address").value;
    email = document.getElementById("email").value;
    source = document.getElementById("Source").value;
    pos = document.getElementById("PositionList").value;
    emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // regex to validate email address
 
    if (email == '') {
        alert("Email Id Is Required");
        return false;
    }
    if (email != '') {
        if (!email.match(emailExp)) {
            alert("Invalid Email Id");
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


