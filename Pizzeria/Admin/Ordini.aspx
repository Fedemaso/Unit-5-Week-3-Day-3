<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ordini.aspx.cs" Inherits="Pizzeria.Admin.Ordini" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
</head>
<body style="background-color: rgb(255, 217, 15) ">
     <form id="form1" runat="server">
        <div class="text-center">
            <h1>Ordina le tue pizze</h1>

            <div class="my-5">
                <div class="d-flex flex-column">
                <img src="https://www.quotemaster.org/images/99/99cffbb9391faeef78631444d298094e.jpg"
                <h2 class="my-3">Scegli la pizza</h2>
               </div>
                <asp:DropDownList ID="PizzaMenu" runat="server" CssClass="my-3">
                    <asp:ListItem Text="Margherita - 8.5 €" Value="Margherita" />
                    <asp:ListItem Text="Napoli - 9 €" Value="Napoli" />
                    <asp:ListItem Text="Bufala - 10 €" Value="Bufala" />
                    <asp:ListItem Text="Marinara - 11.5 €" Value="Marinara" />
                    <asp:ListItem Text="Hawaii - 12 €" Value="Hawaii" />
                </asp:DropDownList>

                <div class="d-flex flex-column align-items-center">
                    <asp:Button CssClass="btn btn-dark my-4" ID="AddPizzaButton" runat="server" Text="Aggiungi Piatto" OnClick="AddPizzaButton_Click" />
                </div>
            </div>

            <div class="my-5 d-flex flex-column">
                <h2 class="my-3">Ingredienti Aggiuntivi:</h2>
                <div class="mx-4">
                    <asp:CheckBox ID="MozzarellaCheckBox" runat="server" Text="Mozzarella (+ €3,00)" />
                </div>
                <div class="mx-4">
                    <asp:CheckBox ID="SalamePiccanteCheckBox" runat="server" Text="Salame piccante (+ €3,00)" />
                </div>
                <div class="mx-4">
                <asp:CheckBox ID="FunghiCheckBox" runat="server" Text="Funghi (+ €2,50)" />
                </div>
                <div class="mx-4">
                <asp:CheckBox ID="PeperoniCheckBox" runat="server" Text="Peperoni (+ €2,00)" />
                </div>
                <div class="mx-4">
                <asp:CheckBox ID="OliveNereCheckBox" runat="server" Text="Olive Nere (+ €1,50)" />
                </div>
                <div class="mx-4">
                <asp:CheckBox ID="ProsciuttoCheckBox" runat="server" Text="Prosciutto (+ €3,00)" />
                </div>
                <div class="mx-4">
                <asp:CheckBox ID="BufalaCheckBox" runat="server" Text="Bufala (+ €2,50)" />
                </div>
                <div class="mx-4">
                <asp:CheckBox ID="CapperiCheckBox" runat="server" Text="Capperi (+ €1,00)" />
                </div>
                <div class="mx-4">
                <asp:CheckBox ID="PeperoncinoCheckBox" runat="server" Text="Peperoncino (+ €0,50)" />
                </div>

                
            </div>

            <div class="my-5">
                <asp:Button CssClass="btn btn-dark my-4" ID="ConcludiOrdineButton" runat="server" Text="Concludi Ordine" OnClick="ConcludiOrdineButton_Click" />

                <div id="risultati" runat="server">
                    <h2 class="my-3">Dettaglio Ordine:</h2>
                    <asp:Literal ID="OrdineDettaglio" runat="server"></asp:Literal>
                    <hr />
                    <p>Totale a pagare: <asp:Label ID="TotaleLabel" runat="server" Text="€0,00" /></p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
