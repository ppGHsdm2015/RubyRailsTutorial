// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .


$(function () {
  $('[data-toggle="tooltip"]').tooltip();
});

$(function () {
  $('[data-toggle="tooltip"]').tooltip();
});


function checkFullname(val) {
    if (val == null || val == "") {
        alert("Please fill in your full name.");
        document.getElementById("txtname").focus();
       return false;
    }
    //alert("The input value has changed. The new value is: ");
}

function checkEmail(val){
    var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    if (re.test(val)){
        return true;
    }
    else{
        alert("Please enter a valid email address.");
        document.getElementById("txtemail").focus();
        return false;
    }
    
}

 function checkPassword(val)
  {
    // at least one number, one lowercase and one uppercase letter
    // at least six characters
    var re = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,15}/;
    if (re.test(val)){
        return true;
    }
    else{ 
        alert("Please enter a valid password with at least one number, one lowercase, one uppercase letter and between 6-15 characters");
        document.getElementById("txtpwd").focus();
        return false;
    }
  }
  
  function checkConPwd(val){
      var pwd = document.getElementById("txtpwd").value;
      alert(pwd);
      if (pwd == val){
          return true;
      }
      else{
         alert("Password Confirmation does not match.");   
          document.getElementById("txtemail").focus();
      }
  }

