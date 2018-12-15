<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="pt">

<%@include file="head.jsp" %>

<body>
	<%@include file="header.jsp" %>
    <div id="calculadora">
        <div class="row">
            <div class="col content">
                <table>
                    <thead>
                        <tr>
                            <td colspan="4"><input id="textview" class="form-control textview" type="number" onkeypress="inputController(event);"
                                    name="textview" placeholder="0"></td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input class="btn btn-warning btn-calc" type="button" value="c" onclick="getBtnValue(event)"></td>
                            <td><input class="btn btn-secondary btn-calc" type="button" value="÷" onclick="getBtnValue(event)"></td>
                            <td><input class="btn btn-secondary btn-calc" type="button" value="x" onclick="getBtnValue(event)"></td>
                            <td><input class="btn btn-secondary btn-calc" type="button" value="-" onclick="getBtnValue(event)"></td>
                        </tr>
                        <tr>
                            <td><input class="btn btn-calc" type="button" value="1" onclick="getBtnValue(event)"></td>
                            <td><input class="btn btn-calc" type="button" value="2" onclick="getBtnValue(event)"></td>
                            <td><input class="btn btn-calc" type="button" value="3" onclick="getBtnValue(event)"></td>
                            <td rowspan="2"><input class="btn btn-secondary btn-calc btn-lateral" type="button" value="+" onclick="getBtnValue(event)"></td>
                        </tr>
                        <tr>
                            <td><input class="btn btn-calc" type="button" value="4" onclick="getBtnValue(event)"></td>
                            <td><input class="btn btn-calc" type="button" value="5" onclick="getBtnValue(event)"></td>
                            <td><input class="btn btn-calc" type="button" value="6" onclick="getBtnValue(event)"></td>
                        </tr>
                        <tr>
                            <td><input class="btn btn-calc" type="button" value="7" onclick="getBtnValue(event)"></td>
                            <td><input class="btn btn-calc" type="button" value="8" onclick="getBtnValue(event)"></td>
                            <td><input class="btn btn-calc" type="button" value="9" onclick="getBtnValue(event)"></td>
                            <td rowspan="2"><input class="btn btn-primary btn-calc btn-lateral" type="button" value="=" onclick="getBtnValue(event)"></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input class="btn btn-calc" style="width: 106px;" type="button" value="0" onclick="getBtnValue(event)"></td>
                            <td><input class="btn btn-calc" type="button" value="." onclick="getBtnValue(event)"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col content">
                <textarea id="textarea" class="form-control" readonly></textarea>
            </div>
        </div>
    </div>s
    
    <!-- Meu script JS-->
    <script src="src/js/scripts.js"></script>
</body>


</html>