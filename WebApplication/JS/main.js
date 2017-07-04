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

function StartTest(popUpPage) {
    window.open(popUpPage, 'null', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,fullscreen=yes');
}

//var seconds = readCookie('totalSeconds') || 130;

//function startTimer(duration, display) {
//    var timer = duration, minutes, seconds;
//    setInterval(function () {
//        minutes = parseInt(timer / 60, 10)
//        seconds = parseInt(timer % 60, 10);

//        minutes = minutes < 10 ? "0" + minutes : minutes;
//        seconds = seconds < 10 ? "0" + seconds : seconds;

//        display.textContent = minutes + ":" + seconds;

//        if (--timer < 0) {
//            timer = duration;
//        }
//    }, 1000);
//}

//window.onload = function () {
//    var fiveMinutes = 60 * 60,
//        display = document.querySelector('#time');
//    startTimer(fiveMinutes, display);
//};


//var hoursleft = 0;
var minutesleft = 60;
var secondsleft = 00;
var finishedtext = "Countdown finished!";
var end1;
if (localStorage.getItem("end1")) {
    end1 = new Date(localStorage.getItem("end1"));
} else {
    end1 = new Date();
    end1.setMinutes(end1.getMinutes() + minutesleft);
    end1.setSeconds(end1.getSeconds() + secondsleft);

}
var counter = function () {
    var now = new Date();
    var diff = end1 - now;

    diff = new Date(diff);

    var milliseconds = parseInt((diff % 1000) / 100)
    var sec = parseInt((diff / 1000) % 60)
    var mins = parseInt((diff / (1000 * 60)) % 60)
    //var hours = parseInt((diff/(1000*60*60))%24);

    if (mins < 10) {
        mins = "0" + mins;
    }
    if (sec < 10) {
        sec = "0" + sec;
    }
    if (now >= end1) {
        clearTimeout(interval);
        //localStorage.setItem("end", null);
        localStorage.removeItem("end1");
        localStorage.clear();
        document.getElementById('divCounter').innerHTML = finishedtext;
        if (confirm("TIME UP!"))
            window.location.href = "";
    } else {
        var value = mins + ":" + sec;
        localStorage.setItem("end1", end1);
        document.getElementById('divCounter').innerHTML = value;
    }
}
var interval = setInterval(counter, 1000);