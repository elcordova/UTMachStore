<%@ Page Title="" Language="C#" MasterPageFile="~/interfaces/Principal.Master" AutoEventWireup="true" CodeBehind="CondicionesDeUso.aspx.cs" Inherits="Proyecto.interfaces.CondicionesDeUso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content15" ContentPlaceHolderID="contenido_principal" runat="server">
    <link href="../Content/bootstrap/bootstrap.css" rel="stylesheet" />
    <div class="container"style="padding:20px 90px 20px 90px">
    <div class=" panel panel-primary" >
    <div class="panel-heading" style="padding:20px 150px 20px 150px">
    <h1 class="panel-title"><strong>Terminos y condiciones de uso</strong></h1>
    </div>
        <div class="panel-body">
           
        <ul><li>
      	UTMachStore permitirá la privacidad de información del usuario, excepto cuando este realice una negociación con otro, en dicho caso, ambos podrán intercambiar información.</li>
        <li> El usuario no logueado tendrá acceso a la presentación de la página de inicio e información de la misma.</li>
        <li>	Únicamente el usuario registrado contará con permisos para realizar comentarios, publicaciones, negociaciones o recibir notificaciones.</li>
        <li>	Se permitirá al usuario interactuar como vendedor o comprador al mismo tiempo.</li>
        <li>	Se controlará el stock de los productos publicados disminuyendo automáticamente por cada venta. En caso de no existir aparecerá con la cantidad en cero.</li>
        <li>	Sólo el usuario dueño de la publicación podrá eliminarla lógicamente.</li>
        <li>	Los comentarios y notificaciones por publicación sólo podrán guardarse más no ser editados o eliminados.</li>
        <li>	El usuario que realice la venta, deberá establecer un listado de las posibles formas de pago y de envío de los productos publicados. En tanto que los usuarios de compra para los productos deseados podrán escoger una de las formas establecidas.</li>
        <li>   	Al realizar una operación de compra-venta se enviará un mensaje de notificación (correo electrónico), con la información de ambas partes necesaria para la transacción.</li>
        <li>	La información que se envía a los usuarios cuando se realiza una compra deberá ser la siguiente: nombre, dirección, teléfono, correo y datos de la publicación (nombre del producto, cantidad, precio y forma de pago).</li>
        <li>	La página web permitirá al usuario manejar una lista de deseos, en la que se podrá añadir o quitar productos.</li>
            </ul>
    </div>
        </div>
        </div>
</asp:Content>
