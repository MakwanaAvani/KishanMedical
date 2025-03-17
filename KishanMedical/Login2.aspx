<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
   
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<hr>
<style>
.container {
  position: relative;
  text-align: center;
  color: black;
}
.centered {
  position: absolute;
  top: 13%;
  left: 60%;
  transform: translate(-50%, -50%);
}
.shadow4{ 
   color: #0000A0; 
   font: bold 52px Helvetica, Arial, Sans-Serif;
   text-shadow: 1px 1px #B7CEEC, 
                2px 2px #B7CEEC, 
                3px 3px #B7CEEC;
   -webkit-transition: all 0.12s ease-out;
   -moz-transition:    all 0.12s ease-out;
   -ms-transition:     all 0.12s ease-out;
   -o-transition:      all 0.12s ease-out;
}
.shadow4:hover {
   position: relative; 
   top: -3px; 
   left: -3px; 
   text-shadow: 1px 1px #B7CEEC, 
                2px 2px #B7CEEC, 
                3px 3px #B7CEEC, 
                4px 4px #B7CEEC, 
                5px 5px #B7CEEC, 
                6px 6px #B7CEEC;
}
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #0000A0;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 350px;
  right: 400px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position:absolute;
  bottom: 4px;
  right: 380px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-top:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>
<script>
    function openForm() {
        document.getElementById("myForm").style.display = "block";
    }

    function closeForm() {
        document.getElementById("myForm").style.display = "none";
    }
</script>


    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
         <img src="Image/login%20back.jpg" height="590px" width="100%" />

         <div class="centered"><%-- <img src="Image/logo2.png"  height="70px" width="70px"/>--%><h1 class="shadow4">
            𝓚𝓲𝓼𝓱𝓪𝓷 𝓜𝓮𝓭𝓲𝓬𝓪𝓵 𝓢𝓽𝓸𝓻𝓮</h1><a href="modal_login2.aspx"></a></div>
        
    </div>

    </form>
    <button class="open-button" onclick="openForm()">Login</button>

<div class="form-popup" id="myForm">
  <form action="" class="form-container">
  
    <label for="email"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="unm" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit" class="btn">Login</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
  </div>
</body>
<hr>
</html>
