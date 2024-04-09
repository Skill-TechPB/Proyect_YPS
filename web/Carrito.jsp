<!DOCTYPE html>
<html lang="en" dir="ltr">
<link rel="stylesheet" href="CSS/bootstrap.css">
<link rel="stylesheet" href="csss/estilo.css">
<title>Pagina Principal</title>
</head>
<body>
<header id="header" class="fixed-top">
<nav id="nav">
  <ul>
    <li id="imagen"><img src="img/YPS.jpg"  class="rounded" width="61px" height="61px"></li>
    <li><a href="Princ.jsp"><span class="primero"><i class="icon icon-home3"></i></span>Inicio</a></li>
    <li><a href="Categorias.jsp"><span class="segundo"><i class="icon icon-books"></i></span>Categorias</a>
      <ul>
        <li><a href="PapelyCartulina.jsp">Papel y Cartulina</a></li>
        <li><a href="EscolaresyOficina.jsp">Escolares y de Oficina</a></li>
        <li><a href="ArteyManualidades.jsp">Arte y Manualidades</a></li>
        <li><a href="Regalos.jsp">Regalos</a></li>
      </ul>
    </li>
    <li><a href="Papelerias.jsp"><span class="tercero"><i class="icon icon-office"></i></span>Papelerias</a></li>
    <li><a href="Carrito.jsp"><span class="cuarto"><i class="icon icon-cart"></i></span>Carrito</a></li>
  </ul>
</nav>
</header>
  <body>
    <div class="container-fluid">
      <h3 align="center">Carrito</h3>
      <table class="table" id="arriba">
      <thead class="thead-dark">
        <tr>
          <th scope="col">Producto</th>
          <th scope="col">Color</th>
          <th scope="col">Precio</th>
          <th scope="col">Cantidad</th>
          <th scope="col"> Eliminar producto</th>
        </tr>
      </thead>
      <%
      
      
      %>
      <tbody>
        <tr>
          <td>Crepe</td>
          <td>Rojo</td>
          <td>10</td>
          <td>2</td>
          <td><button type="button" class="btn btn-outline-danger">Eliminar</button></td>
        </tr>
        <tr>
          <td>Lapiz</td>
          <td>Negro</td>
          <td>2</td>
          <td>5</td>
          <td><button type="button" class="btn btn-outline-danger">Eliminar</button></td>
        </tr>
        <tr>
          <td>Boligrafo fino</td>
          <td>Rojo</td>
          <td>15</td>
          <td>3</td>
          <td><button type="button" class="btn btn-outline-danger">Eliminar</button></td>
        </tr>
      </tbody>
    </table>
  </div>
  <div class="container-fluid">
      <h2>Cantidad de productos: 10</h2>
      <h2>Total a pagar: $75</h2>
      <button type="button" class="btn btn-success btn-lg btn-block">Realizar Pedido</button>
  </div>
  <footer id="footer">
            <div id="social" margin-rigth="0%">
        			<h3>Contacto:</h3><h5> yourpapershop@outlook.com</h5>
        			<div id="facebook"></div>
              <div id="twitter"><a href="https://twitter.com/YourPaperShopOF"  target="_blank"><img src="img/twitterlogo.png" height="50 px"></a></div>
              
        		</div>
          </footer>
  </body>
</html>
