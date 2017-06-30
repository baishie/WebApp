
function StartTest(popUpPage) {
    window.open(popUpPage, 'null', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,fullscreen=yes');
}


var x = 3600;
var y = document.getElementById("timer");

// Display count down for 60 seconds
setInterval(function () {
    if (x <= 61 && x >= 1) {
        x--;
        y.innerHTML = '' + x + '';
        if (x == 1) {
            x = 61;
        }
    }
}, 1000);

// Form Submitting after 60 seconds.
var auto_refresh = setInterval(function () { submitform(); }, 20000);
// Form submit function.
function submitform() {
    if (validate()) // Calling validate function.
    {
        alert('Answer is being submitted.....');
        document.getElementById("form").submit();
    }
}

window.onload = function () {
    // Onload event of Javascript
    // Initializing timer variable
    var x = 61;
    var y = document.getElementById("timer");
    // Display count down for 20s
    setInterval(function () {
        if (x <= 61 && x >= 1) {
            x--;
            y.innerHTML = '' + x + '';
            if (x == 1) {
                x = 61;
            }
        }
    }, 1000);
    // Form Submitting after 20s
    var auto_refresh = setInterval(function () {
        submitform();
    }, 60000);
    // Form submit function
    function submitform() {
        if (validate()) // Calling validate function
        {
            alert('Form is submitting.....');
            document.getElementById("form").submit();
        }
    }
    // To validate form fields before submission
    function validate() {
        // Storing Field Values in variables
        var name = document.getElementById("name").value;
        var email = document.getElementById("email").value;
        var contact = document.getElementById("contact").value;
        // Regular Expression For Email
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        // Conditions
        if (name != '' && email != '' && contact != '') {
            if (email.match(emailReg)) {
                if (document.getElementById("male").checked || document.getElementById("female").checked) {
                    if (contact.length == 10) {
                        return true;
                    } else {
                        alert("The Contact No. must be at least 10 digit long!");
                        return false;
                    }
                } else {
                    alert("You must select gender.....!");
                    return false;
                }
            } else {
                alert("Invalid Email Address...!!!");
                return false;
            }
        } else {
            alert("All fields are required.....!");
            return false;
        }
    }
};