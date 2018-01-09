<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <title></title>
    <link href="styleCalc.css" rel="stylesheet" type="text/css">
    <script>
        $(document).ready(function () { //DOM is ready
            var mainArray = []; //array for operation
            $('.num, .sign').click(function (){
                mainArray.push($(this).attr('name')); //adding variables from clicked button into mainArray
                $('#result').val(mainArray.join('')).attr('name', 'nameResult'); //passing clearedMainArray values into value of id=result and set name of the "=" to "nameResult"
                //mainArray.join('') - making string form array; elements divided by nothing ''

            });
            $('.reset').click(function() {
                $('#result').val(''); mainArray=['']});

        });
    </script>
</head>
<body>
<form id="calculator" method="POST" action="finalCalc">
    <input id="result" type="text" name="" value="${finalRes}" >
    <input id="confirm" type="submit" name="" value="=">
</form>

<br>
<input class="sign" type="button" name=" + " value="+">
<input class="sign" type="button" name=" - " value="-">
<input class="sign" type="button" name=" / " value="/">
<input class="sign" type="button" name=" * " value="*">

<br>
<input class="num" type="button" name="1" value="1">
<input class="num" type="button" name="2" value="2">
<input class="num" type="button" name="3" value="3">

<br>
<input class="num" type="button" name="4" value="4">
<input class="num" type="button" name="5" value="5">
<input class="num" type="button" name="6" value="6">

<br>
<input class="num" type="button" name="7" value="7">
<input class="num" type="button" name="8" value="8">
<input class="num" type="button" name="9" value="9">

<br>
<input class="num" type="button" name="0" value="0">
<input class="reset" type="button" name="reset" value="C">

</body>
</html>