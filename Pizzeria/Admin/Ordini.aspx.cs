using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizzeria.Admin
{
    public partial class Ordini : System.Web.UI.Page
    {
        
        decimal[] prezziPizze = { 8.50M, 9.00M, 10.00M, 11.50M, 12.00M };


       
        List<string> ordine = new List<string>();


        
        decimal totaleOrdine = 0.00M;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                PizzaMenu.SelectedIndex = 0;
            }
        }

        protected void AddPizzaButton_Click(object sender, EventArgs e)
        {
            
            int indicePizza = PizzaMenu.SelectedIndex;
            decimal prezzoPizza = prezziPizze[indicePizza];

            
            decimal prezzoTotalePizza = prezzoPizza;

            List<string> ingredientiSelezionati = new List<string>();

            if (MozzarellaCheckBox.Checked)
            {
                prezzoTotalePizza += 3.00M;
                ingredientiSelezionati.Add("Mozzarella");
            }
            if (SalamePiccanteCheckBox.Checked)
            {
                prezzoTotalePizza += 3.00M;
                ingredientiSelezionati.Add("Salame Piccante");
            }
            if (FunghiCheckBox.Checked)
            {
                prezzoTotalePizza += 2.50M;
                ingredientiSelezionati.Add("Funghi");
            }
            if (PeperoniCheckBox.Checked)
            {
                prezzoTotalePizza += 2.00M;
                ingredientiSelezionati.Add("Peperoni");
            }
            if (OliveNereCheckBox.Checked)
            {
                prezzoTotalePizza += 1.50M;
                ingredientiSelezionati.Add("Olive Nere");
            }
            if (ProsciuttoCheckBox.Checked)
            {
                prezzoTotalePizza += 3.00M;
                ingredientiSelezionati.Add("Prosciutto");
            }
            if (BufalaCheckBox.Checked)
            {
                prezzoTotalePizza += 2.50M;
                ingredientiSelezionati.Add("Bufala");
            }
            if (CapperiCheckBox.Checked)
            {
                prezzoTotalePizza += 1.00M;
                ingredientiSelezionati.Add("Capperi");
            }
            if (PeperoncinoCheckBox.Checked)
            {
                prezzoTotalePizza += 0.50M;
                ingredientiSelezionati.Add("Peperoncino");
            }

            
            string ingredientiPizza = string.Join(", + ", ingredientiSelezionati);
            string pizzaOrdinata = $"{PizzaMenu.SelectedValue}, + {ingredientiPizza}: {prezzoTotalePizza:C}";
            
            ordine.Add(pizzaOrdinata);


            totaleOrdine += prezzoTotalePizza;

                       
           
            OrdineDettaglio.Text += pizzaOrdinata + "<br />";

            
            TotaleLabel.Text = $"€{totaleOrdine:F2}";

            
            MozzarellaCheckBox.Checked = false;
            SalamePiccanteCheckBox.Checked = false;
            FunghiCheckBox.Checked = false;
            PeperoniCheckBox.Checked = false;
            OliveNereCheckBox.Checked = false;
            ProsciuttoCheckBox.Checked = false;
            BufalaCheckBox.Checked = false;
            CapperiCheckBox.Checked = false;
            PeperoncinoCheckBox.Checked = false;
        }

        protected void ConcludiOrdineButton_Click(object sender, EventArgs e)
        {
            
            string dettaglioOrdine = "Dettaglio Ordine:<br />";

            
            foreach (string pizza in ordine)
            {
                dettaglioOrdine += pizza + "<br />";
            }

            
            dettaglioOrdine += $"Totale a pagare: €{totaleOrdine:F2}";

           
            OrdineDettaglio.Text = dettaglioOrdine;
        }
    }
}