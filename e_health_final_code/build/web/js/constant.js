/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function () {
    $('.ui.dropdown').dropdown();
});
$(function () {
    $('.ui.radio.checkbox').checkbox();
});
function validate()
{
    var fname = document.forms["myForm"]["fname"].value;
    var lname = document.getElementsByName("lname")[0].value;
    var uid = document.getElementsByName("uid")[0].value;
    var pass = document.getElementsByName("pass")[0].value;
    var ftype = document.getElementsByName("ftype")[0].value;
    var dep = document.getElementsByName("dep")[0].value;
    var mnum = document.getElementsByName("mnum")[0].value;
    var cpass = document.getElementsByName("cpass")[0].value;
    var email = document.getElementsByName("email")[0].value;

    if (fname == "")
    {
        alert("Enter Your first name ");
        return false;
    }
    if (lname == "")
    {
        alert("Enter Your last name ");
        return false;
    }
    if (uid == "")
    {
        alert("Enter your user ID");
        return false;
    }
    if (pass == "" && cpass == "")
    {
        alert("Enter password");
        return false;
    }
    if (pass != cpass)
    {
        alert("Password doesnt match");
        return false;
    }
    if (ftype == "")
    {
        alert("Select faculty type");
        return false;

    }
    if (dep == "")
    {
        alert("select department ");
        return false;

    }
    if (mnum == "" || mnum.length < 10)
    {
        alert("Enter your Mobile number");
        return false;
    }

    if (email == "")
    {
        alert("Enter your email number");
        return false;
    }
    return true;
}
function validateLogin() {
    var email = document.forms["login"]["userName"].value;
    var passWord = document.forms["login"]["passWord"].value;
    var mailCheck = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    if (!email)
    {
        alert("Please Fill Out The Username Field");
        return false;
    }
    if (!passWord)
    {
        alert("Please Fill Out The Password ");
        return false
    }
    else
        return true;
}

function scorePassword(pass) {
    var score = 0;
    if (!pass)
        return score;

    // award every unique letter until 5 repetitions
    var letters = new Object();
    for (var i = 0; i < pass.length; i++) {
        letters[pass[i]] = (letters[pass[i]] || 0) + 1;
        score += 5.0 / letters[pass[i]];
    }

    // bonus points for mixing it up
    var variations = {
        digits: /\d/.test(pass),
        lower: /[a-z]/.test(pass),
        upper: /[A-Z]/.test(pass),
        nonWords: /\W/.test(pass),
    }

    variationCount = 0;
    for (var check in variations) {
        variationCount += (variations[check] == true) ? 1 : 0;
    }
    score += (variationCount - 1) * 10;

    return parseInt(score);
}
function checkPassStrength(pass) {
    var score = scorePassword(pass);
    if (score > 80)
        return "strong";
    if (score > 60)
        return "good";
    if (score >= 30)
        return "weak";

    return "";
}
