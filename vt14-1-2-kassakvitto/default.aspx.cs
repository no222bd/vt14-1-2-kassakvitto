using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vt14_1_2_kassakvitto.Model;

namespace vt14_1_2_kassakvitto
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Receipt MyReceipt = new Receipt(Double.Parse(AmountTextBox.Text));
                
                SubtotalLiteral.Text = String.Format("{0:c}", MyReceipt.Subtotal);
                DiscountRateLiteral.Text = String.Format("{0:p0}", MyReceipt.DiscountRate);
                MoneyOffLiteral.Text = String.Format("{0:c}", MyReceipt.MoneyOff);
                TotalLiteral.Text = String.Format("{0:c}", MyReceipt.Total);
                
                ReceiptPanel.Visible = true;
            }
        }
    }
}