using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace vt14_1_2_kassakvitto.Model
{
    public class Receipt
    {
        //private double _subtotal;

        public double DiscountRate { get; set; }
        public double MoneyOff { get; set; }
        public double Subtotal { get; set; }
        public double Total { get; set; }

        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;
            
            if (Subtotal < 500)
                DiscountRate = 0;
            else if (Subtotal >= 500 && Subtotal < 1000)
                DiscountRate = 0.05;
            else if (Subtotal >= 1000 && Subtotal < 5000)
                DiscountRate = 0.10;
            else
                DiscountRate = 0.15;

            MoneyOff = Subtotal * DiscountRate;
            Total = Subtotal - MoneyOff;
        }

        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }
    }
}