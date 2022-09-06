<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicial.aspx.cs" Inherits="AspNetAspxCRUD.Inicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div style="max-width: 330px; padding: 15px; margin: 0 auto; font-family:sans-serif">

    
   
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <asp:Label runat="server" Text="Alumno:" BackColor="White" ForeColor="Black" Height="30px"></asp:Label>
                <br />
                <asp:Label runat="server" Text="Rebeles Nava Jesús Adrián" BackColor="#CC0000" ForeColor="White"></asp:Label>
            </fieldset>
            <fieldset>
                <legend>Registrar:</legend>

                <asp:TextBox ID="txbNome" placeholder="Nombre" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txbNome" ErrorMessage="Sólo letras permitidas" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]{2,254}" Font-Size="8pt"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtApellido" placeholder="Apellido" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtApellido" ErrorMessage="Sólo letras permitidas" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]{2,254}" Font-Size="8pt"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txbIdade" placeholder="Edad" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txbIdade" ErrorMessage="Edad no valida" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="^[1-9][0-9]?$|^100$" Font-Size="8pt"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txbAltura" placeholder="Altura" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txbAltura" ErrorMessage="Altura no valida" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="^[0-9]+$" Font-Size="8pt"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Button ID="btnGravar" runat="server" Text="Guardar" OnClick="btnGravar_Click" />
                <br />
                <asp:Label ID="lblGravou" runat="server" BackColor="#CC0000" Font-Bold="True" ForeColor="White"></asp:Label>
            </fieldset>
        </div>


        <div>
            <fieldset>
                <legend>Consultar:</legend>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                <asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
                <asp:Label ID="lblDataReader" runat="server" BackColor="#CC0000" ForeColor="White"></asp:Label>
            </fieldset>
        </div>

        <div>
            <fieldset>
                <legend>Delete:</legend>
                <asp:TextBox placeholder="ID" ID="txbIdExcluir" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txbIdExcluir" ErrorMessage="ID no valido" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="^[0-9]+$" Font-Size="8pt"></asp:RegularExpressionValidator>
                <br />
                <asp:Button ID="btnExcluir" runat="server" Text="Delete" OnClick="btnExcluir_Click" />
                <asp:Label ID="lblExcluiu" runat="server" BackColor="#CC0000" ForeColor="White"></asp:Label>
                <br />
            </fieldset>
        </div>

        <div>
            <fieldset>
                <legend>Update:</legend>

                <asp:TextBox ID="txbIdAlt" placeholder="ID" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txbIdAlt" ErrorMessage="ID no valido" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="^[0-9]+$" Font-Size="8pt"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txbNomeAlt" placeholder="Nombre" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txbNomeAlt" ErrorMessage="Sólo letras permitidas" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]{2,254}" Font-Size="8pt"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtApellidoE" placeholder="Apellido" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtApellidoE" ErrorMessage="Sólo letras permitidas" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]{2,254}" Font-Size="8pt"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txbIdadeAlt" placeholder="Edad" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txbIdadeAlt" ErrorMessage="Edad no valida" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="^[1-9][0-9]?$|^100$" Font-Size="8pt"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txbAlturaAlt" placeholder="Altura" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txbAltura" ErrorMessage="Altura no valida" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="^[0-9]+$" Font-Size="8pt"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Button ID="btnAlterar" runat="server" Text="Update" OnClick="btnAlterar_Click" />
                <br />
                <asp:Label ID="lblAlterou" runat="server" BackColor="#CC0000" ForeColor="White"></asp:Label>
            </fieldset>
        </div>

    </form>
        </div>
</body>
</html>
