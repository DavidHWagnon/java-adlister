<%@ page import="java.util.Enumeration" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <title>Pizza</title></head>
<body class="container-fluid">
<jsp:include page="partials/navbar.jsp" />
    <h1>Pizza Order Page</h1>
    <form class="form-group" action="pizza-order" method="post">
        <div class="form-group">
            <label for="size-type">Select a Pizza Size</label>
            <select class="form-control" id="size-type" name="size">
                <option value="small">Small</option>
                <option value="medium">Medium</option>
                <option value="small">Large</option>
            </select>
        </div>
        <div class="form-group">
            <label for="crust-type">Select a Pizza Crust</label>
            <select class="form-control" id="crust-type" name="crust">
                <option>Regular</option>
                <option>Stuffed</option>
                <option>Thin</option>
            </select>
        </div>
        <div class="form-group">
            <label for="sauce-type">Select a Pizza Sauce</label>
            <select class="form-control" id="sauce-type" name="sauce">
                <option>Red Sauce</option>
                <option>White Sauce</option>
                <option>No Sauce</option>
            </select>
        </div>
        <div class="form-group">
            <label for="toppings">Toppings:</label>
            <ul class="list-group list-group-flush" id="toppings">
                <li class="list-group-item">
                    <input id="beef-meat" name="topping-selection" type="checkbox" value="Beef">
                    <label for="beef-meat">Beef</label>
                </li>
                <li class="list-group-item">
                    <input id="ham-meat" name="topping-selection" type="checkbox" value="Ham">
                    <label for="ham-meat">Ham</label>
                </li>
                <li class="list-group-item">
                    <input id="philly-meat" name="topping-selection" type="checkbox" value="Philly">
                    <label for="philly-meat">Philly Steak</label>
                </li>
                <li class="list-group-item">
                    <input id="bacon-meat" name="topping-selection" type="checkbox" value="Steak">
                    <label for="bacon-meat">Bacon</label>
                </li>
            </ul>
        </div>
        <div class="form-group">
            <label for="address">Enter delivery address:</label>
            <br>
            <input id="address" name="address" type="text" placeholder="999 DriveWoood Drive">
        </div>
        <button type="submit" value="submit">Submit</button>
    </form>
</body>
</html>