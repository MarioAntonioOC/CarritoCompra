<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Encabezado y enlaces a CSS ... -->
    <title>Editar Producto</title> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>   
</head>
<body>
    
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#"><i>Alexander's Store</i></a>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="./Controlador?accion=home"><i class="fas fa-home"></i> Home<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./Controlador?accion=home"><i class="fas fa-plus-circle"></i> Ofertas del Dia</a>
                    </li>                   
                    <li class="nav-item">
                        <a class="nav-link" href="./Controlador?accion=carrito"><i class="fas fa-cart-plus">(<label style="color: darkorange">${cont}</label>)</i> Carrito</a>
                    </li>                     

                </ul>                                           
                <ul class="navbar-nav btn-group my-2 my-lg-0" role="group">
                    <a style="color: white; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fas fa-user-tie"></i> ${logueo}</a>
                    <div class="dropdown-menu text-center dropdown-menu-right">
                        <a class="dropdown-item" href="#"><img src="../img/user.png" alt="60" height="60"/></a>                        
                        <a class="dropdown-item" href="#">${user}</a>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#myModal">${correo}</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="Controlador?accion=MisCompras">Mis Compras</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="./Controlador?accion=Salir"> <i class="fas fa-arrow-right"> Salir</i></a>                        
                    </div>
                </ul>     
            </div>
        </nav>
    <!-- Barra de navegación ... -->

    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-sm-8">
                <div class="card">
                    <div class="card-header">
                        <h3>Editar Producto</h3>
                    </div>
                    <div class="card-body">
                        <form action="Controlador?accion=ActualizarProducto" method="POST" enctype="multipart/form-data">
                            <input type="hidden" name="idProducto" value="${productoEditar.id}">
                            <div class="form-group">
                                <label>Nombres:</label>
                                <input type="text" name="txtNombre" class="form-control" value="${productoEditar.nombres}">
                            </div>
                            <div class="form-group">
                                <label>Descripcion</label>
                                <textarea name="txtDescripcion" class="form-control">${productoEditar.descripcion}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Precio</label>
                                <input type="text" name="txtPrecio" class="form-control" value="${productoEditar.precio}">
                            </div>
                            <div class="form-group">
                                <label>Stock</label>
                                <input type="text" name="txtStock" class="form-control" value="${productoEditar.stock}">
                            </div>
                            <div class="form-group">
                                <!-- Campo para cargar nueva imagen si se desea -->
                                <label>Imagen:</label>
                                <input type="file" name="txtNuevaImagen">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary" name="accion" value="ActualizarProducto">Actualizar</button>
                            </div>
                            <div class="text-center">
        <a href="javascript:window.history.back();" class="btn btn-secondary">Volver</a>
    </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts y pie de página ... -->
</body>
</html>
