<%-- 
    Document   : index
    Created on : Oct 2, 2015, 8:27:54 PM
    Author     : Melwyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Demo Ajax</title>
        <script type="text/javascript" src="JS/jquery-1.11.3.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $('#name').blur( function() {//$('#bthello').click(function() {
                    var name = $('#name').val();
                    $.ajax({
                        type: 'POST',
                        data: {name: name},
                        url: 'AjaxController',
                        success: function(result) {
                            var s = result;
                            if(s.length)
                                console.log(result.length);
                            $('#result').html(result);
                        }
                    });
                });
            }); 
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form>
            Name : <input type="text" name="name" id="name"/><br/>
            <input type="button" value="Hello" id="bthello"/>
            <span id="result"></span>
        </form>
    </body>
</html>
