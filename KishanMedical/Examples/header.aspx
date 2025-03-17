<%@ Page Language="C#" AutoEventWireup="true" CodeFile="header.aspx.cs" Inherits="Examples_header" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .flip {
  height:50px;
  overflow:hidden;
}

.flip > div > div {
  color:black;
  padding:4px 12px;
  height:35px;
  
  margin-bottom:45px;
  display:inline-block;
}

.flip div:first-child {
  animation: show 3s linear infinite;
}
.flip div:last-child div {
  background-color: #fbb034;
background-image: linear-gradient(315deg, #fbb034 0%, #ffdd00 74%);
}

@keyframes show {
  0% {margin-top:-270px;}
  5% {margin-top:-180px;}
  33% {margin-top:-180px;}
  38% {margin-top:-90px;}
  66% {margin-top:-90px;}
  71% {margin-top:0px;}
  99.99% {margin-top:0px;}
  100% {margin-top:-270px;}
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Kishan Medical Store
     <div class="flip">
    <div><div>Best of Care,Close to Home</div></div>
    </div>
    </div>
    </form>
</body>
</html>
