<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<head>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
		  rel="stylesheet">
</head>
	<style>
		@import url('https://fonts.googleapis.com/css?family=Montserrat|Open+Sans|Roboto');

		b {
			font-size: 20px
		}
		table {
			/*background-color: white;*/
			border-radius: 4px;
		}

		*{
			margin:0;
			padding: 0;
			outline: 0;
		}

		table{
			position: relative;
			z-index: 2;
			left: -15%;
			top: 15%;
			/*transform: translate(-50%,-50%);*/
			width: 105.8%;
			border-collapse: collapse;
			border-spacing: 0;
			box-shadow: 0 2px 15px rgba(64,64,64,.7);
			border-radius: 12px 12px 0 0;
			overflow: hidden;

		}
		td , th{
			padding: 15px 20px;
			text-align: center;


		}
		td{
			white-space:nowrap;
			overflow:hidden;
			text-overflow:ellipsis;
		}
		th{
			background-color: rgba(115, 6, 157, 0.79);
			color: #fafafa;
			font-family: 'Open Sans',Sans-serif;
			font-weight: 200;
			text-transform: uppercase;

		}
		tr{
			width: 100%;
			background-color: #fafafa;
			font-family: 'Montserrat', sans-serif;
		}
		tr:nth-child(even){
			background-color: #eeeeee;
		}


		.searchBox {
			position: relative;
			top: 5%;
			left: 50%;
			transform:  translate(-50%,50%);
			background: rgba(115, 6, 157, 0.73);
			height: 60px;
			border-radius: 40px;
			padding: 10px;

		}

		.searchBox:hover > .searchInput {
			width: 240px;
			padding: 0 6px;
		}

		.searchBox:hover > .searchButton {
			background: white;
			color : rgba(115, 6, 157, 0.73);
		}

		.searchButton {
			color: white;
			float: right;
			width: 40px;
			height: 40px;
			border-radius: 50%;
			background: rgba(115, 6, 157, 0.79);
			display: flex;
			justify-content: center;
			align-items: center;
			transition: 0.4s;
		}

		.searchBox:hover > .searchButton2 {
			background: rgba(115, 6, 157, 0.79);
			color : white;
		}

		.searchButton2 {
			color: rgba(115, 6, 157, 0.79);
			float: right;
			width: 40px;
			height: 40px;
			border-radius: 50%;
			background: white;
			display: flex;
			justify-content: center;
			align-items: center;
			transition: 0.4s;
		}

		.searchInput {
			border:none;
			background: none;
			outline:none;
			float:left;
			padding: 0;
			color: white;
			font-size: 16px;
			transition: 0.4s;
			line-height: 40px;
			width: 0px;

		}

		@media screen and (max-width: 2000px) {
			.searchBox:hover > .searchInput {
				width: 995px;
				padding: 0 6px;
			}
		}

		.glow-on-hover {
			width: 110px;
			height: 30px;
			border: none;
			outline: none;
			color: #fff;
			background: #961eda;
			cursor: pointer;
			position: relative;
			z-index: 0;
			border-radius: 10px;
		}

		.glow-on-hover:before {
			content: '';
			background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5, #002bff, #7a00ff, #ff00c8, #ff0000);
			position: absolute;
			top: -2px;
			left:-2px;
			background-size: 400%;
			z-index: -1;
			filter: blur(5px);
			width: calc(100% + 4px);
			height: calc(100% + 4px);
			animation: glowing 20s linear infinite;
			opacity: 0;
			transition: opacity .3s ease-in-out;
			border-radius: 10px;
		}

		.glow-on-hover:active {
			color: #961eda
		}

		.glow-on-hover:active:after {
			background: transparent;
		}

		.glow-on-hover:hover:before {
			opacity: 1;
		}

		.glow-on-hover:after {
			z-index: -1;
			content: '';
			position: absolute;
			width: 100%;
			height: 100%;
			background: #961eda;
			left: 0;
			top: 0;
			border-radius: 10px;
		}

		@keyframes glowing {
			0% { background-position: 0 0; }
			50% { background-position: 400% 0; }
			100% { background-position: 0 0; }
		}



	</style>



	<div id="main" class="container">


		<br>
		<br>
		<br>




		<form:form action="/search-todo" method="post" modelAttribute="todo">

			<div class="searchBox">
				<form:input class="searchInput" type="text" path="fullName" placeholder="Search"/>
				<button class="searchButton" type="submit">
					<i class="material-icons">
						search
					</i>
				</button>

<%--				<form:form action="/sort-todo" method="post" modelAttribute="todo">--%>
<%--					<label>--%>
<%--						<form:select path="prop" class="form-control form-control-sm">--%>
<%--							<form:option  value="fullName">ФИО</form:option>--%>
<%--							<form:option  value="iin">ИИН</form:option>--%>
<%--							<form:option  value="passport">Пасспорт</form:option>--%>
<%--							<form:option  value="cr_date">Дата</form:option>--%>
<%--							<form:option  value="disc">Скидка</form:option>--%>
<%--							<form:option  value="address">Адрес</form:option>--%>
<%--							<form:option  value="phoneNumber">Номер</form:option>--%>
<%--							<form:option  value="prop">Реквизиты</form:option>--%>
<%--						</form:select>--%>
<%--					</label>--%>
<%--&lt;%&ndash;					<button class="btn btn"&ndash;%&gt;--%>
<%--&lt;%&ndash;							type="submit">Отсортировать</button>&ndash;%&gt;--%>
<%--				</form:form>--%>

				<button class="searchButton2" type="button" onclick="function myFunction() {
					location.replace('/list-todos');
				}
				myFunction()">
					<i  class="material-icons">
						restore
					</i>
				</button>

				<button class="searchButton" type="button" onclick="function secondFunction() {
					location.replace('/add-todo');
				}
				secondFunction()"><i  class="material-icons">
					add
				</i></button>

			</div>


<%--			<a type="button" class="btn btn-default" href="/list-todos">Очистить</a>--%>
		</form:form>

		<br>





		<br>

		<table id="myTable" style="width:130%; table-layout: fixed;">
			<thead>
				<tr>
					<th onclick="sortTable(0)"><spring:message code="lang.fio" text="" /></th>
					<th onclick="sortNunberTable(1)"><spring:message code="lang.iin" text="" /></th>
					<th onclick="sortNunberTable(2)"><spring:message code="lang.passport" text="" /></th>
					<th onclick="sortTable(3)"><spring:message code="lang.date" text="" /></th>
					<th onclick="sortTable(4)"><spring:message code="lang.discount" text="" /></th>
					<th onclick="sortTable(5)"><spring:message code="lang.address" text="" /></th>
					<th onclick="sortNunberTable(6)"><spring:message code="lang.phone" text="" /></th>
					<th onclick="sortTable(7)"><spring:message code="lang.req" text="" /></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody class="radius" >
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.fullName}</td>
						<td>${todo.iin}</td>
						<td>${todo.passport}</td>
						<td>${todo.date}</td>
						<td>${todo.disc}</td>
						<td>${todo.address}</td>
						<td>${todo.phoneNumber}</td>
						<td>${todo.prop}</td>
						<td style="color:white"><a type="button" class="btn btn-info glow-on-hover"
							href="/update-todo?id=${todo.id}"><spring:message code="lang.change" text="" /></a></td>
						<td style="color:white"><a type="button" class="btn btn-success glow-on-hover"
							   href="/show-todo?id=${todo.id}"><spring:message code="lang.details" text="" /></a></td>
						<td style="color:white"><a type="button" class="btn btn-danger glow-on-hover"
							href="/delete-todo?id=${todo.id}"><spring:message code="lang.delete" text="" /></a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>
	<script>
		function sortTable(n) {
		var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
		table = document.getElementById("myTable");
		switching = true;
		//Set the sorting direction to ascending:
		dir = "asc";
		/*Make a loop that will continue until
        no switching has been done:*/
		while (switching) {
		//start by saying: no switching is done:
		switching = false;
		rows = table.rows;
		/*Loop through all table rows (except the
        first, which contains table headers):*/
		for (i = 1; i < (rows.length - 1); i++) {
		//start by saying there should be no switching:
		shouldSwitch = false;
		/*Get the two elements you want to compare,
        one from current row and one from the next:*/
		x = rows[i].getElementsByTagName("TD")[n];
		y = rows[i + 1].getElementsByTagName("TD")[n];
		/*check if the two rows should switch place,
        based on the direction, asc or desc:*/
		if (dir == "asc") {
		if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
		//if so, mark as a switch and break the loop:
		shouldSwitch= true;
		break;
	}
	} else if (dir == "desc") {
		if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
		//if so, mark as a switch and break the loop:
		shouldSwitch = true;
		break;
	}
	}
	}
		if (shouldSwitch) {
		/*If a switch has been marked, make the switch
        and mark that a switch has been done:*/
		rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
		switching = true;
		//Each time a switch is done, increase this count by 1:
		switchcount ++;
	} else {
		/*If no switching has been done AND the direction is "asc",
        set the direction to "desc" and run the while loop again.*/
		if (switchcount == 0 && dir == "asc") {
		dir = "desc";
		switching = true;
	}
	}
	}
	}


		function sortNunberTable(n) {
			var table, rows, switching, i, x, y, shouldSwitch;
			table = document.getElementById("myTable");
			switching = true;
			/*Make a loop that will continue until
            no switching has been done:*/
			while (switching) {
				//start by saying: no switching is done:
				switching = false;
				rows = table.rows;
				/*Loop through all table rows (except the
                first, which contains table headers):*/
				for (i = 1; i < (rows.length - 1); i++) {
					//start by saying there should be no switching:
					shouldSwitch = false;
					/*Get the two elements you want to compare,
                    one from current row and one from the next:*/
					x = rows[i].getElementsByTagName("TD")[n];
					y = rows[i + 1].getElementsByTagName("TD")[n];
					//check if the two rows should switch place:
					if (Number(x.innerHTML) > Number(y.innerHTML)) {
						//if so, mark as a switch and break the loop:
						shouldSwitch = true;
						break;
					}
				}
				if (shouldSwitch) {
					/*If a switch has been marked, make the switch
                    and mark that a switch has been done:*/
					rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
					switching = true;
				}
			}
		}
</script>
<div style="height: 50px">
	<%@ include file="common/footer.jspf" %>
</div>

