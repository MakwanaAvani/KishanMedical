<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .shadow {
   text-shadow: 2px 2px 4px #000;
}
.shadow2 {
   text-shadow: 1px 1px 0 black, 
                2px 2px 0 black;
}
.shadow3 { 
   color: white; 
   font: bold 52px Helvetica, Arial, Sans-Serif;
   text-shadow: 1px 1px #fe4902, 
                2px 2px #fe4902, 
                3px 3px #fe4902;
}
.shadow3:hover {
   position: relative; 
   top: -3px; 
   left: -3px; 
   text-shadow: 1px 1px #fe4902, 
                2px 2px #fe4902, 
                3px 3px #fe4902, 
                4px 4px #fe4902, 
                5px 5px #fe4902, 
                6px 6px #fe4902;
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

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 class="shadow">Demo</h1>
    <h1 class="shadow2">Demo</h1>
    <h1 class="shadow3">Demo</h1>
    <h1 class="shadow4">𝓚𝓲𝓼𝓱𝓪𝓷 𝓜𝓮𝓭𝓲𝓬𝓪𝓵 𝓢𝓽𝓸𝓻𝓮</h1>
    </div>
    </form>
</body>
</html>
