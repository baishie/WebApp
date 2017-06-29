function userValid() {
    var Name, ConNum, pos, email, Source;
 
    Name = document.getElementById("name").value;
    ConNum = document.getElementById("cnumber").value;
    address = document.getElementById("address").value;
    email = document.getElementById("email").value;
    source = document.getElementById("source").value;
    pos = document.getElementById("PositionList").value;
    emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // regex to validate email id
 
    if (Name == '' && ConNum == '' && email == '' && source =='' && pos == '' && address == '') {
        alert("Enter All Fields");
        return false;
    }
    if (Name == '') {
        alert("Please Enter Name");
        return false;
    }
    if (address == '') {
        alert("Please Enter Address");
        return false;
    }
    if (ConNum == '') {
        alert("Please Enter Contact Number");
        return false;
    }
    if (email == '') {
        alert("Email Id Is Required");
        return false;
    }
    if(source === 0) {
        alert("Please select position");
        return false;
    }
    if (email != '') {
        if (!email.match(emailExp)) {
            alert("Invalid Email Id");
            return false;
        }
    }
    return true;
}
function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}
function validate_animation(elem, is_valid) {
    if (is_valid != "blank") {
        var elem_class = elem.attr("class").split("-");
        elem.attr("class", elem_class[0] + "-to-" + is_valid);
    }
    else {
        elem.attr("class", "default");
    }
}
//error messages
function error_message(elem, is_valid) {
    if (is_valid == "error") {
        var msg = elem.attr("msg");
        elem.next().text(msg).show();
    }
    else {
        elem.next().hide();
    }
}
