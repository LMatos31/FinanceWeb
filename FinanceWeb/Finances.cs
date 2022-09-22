using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinanceWeb
{
    public class Finances
    {
        private int income;
        private string make;
        public Finances(int inc, string mk)
        {
            income = inc;
            make = mk;
        }
        public int Income
        {
            get
            {
                return income;
            }
        }

        public string Make
        {
            get
            {
                return make;
            }
        }
    }
    // this class will get and set all the expenses entered by the user
    abstract class Expenses
    {
        private double rent;
        private double price;
        private double deposit;
        private double interest;
        private int months;
        private double groc;
        private double tax;
        private double wl;
        private double travel;
        private double cell;
        private double other;
        private double vPrice;
        private double vDeposit;
        private double vInterest;
        private double insurance;

        public Expenses(double rn, double prc, double dp, double i, int mth, double gr, double tx, double wtr,
            double tvl, double cl, double otr, double vp, double vdp, double vIn, double ins)
        {
            rent = rn;
            price = prc;
            deposit = dp;
            interest = i;
            months = mth;
            groc = gr;
            tax = tx;
            wl = wtr;
            travel = tvl;
            cell = cl;
            other = otr;
            vPrice = vp;
            vDeposit = vdp;
            vInterest = vIn;
            insurance = ins;
        }

        public double Rent
        {
            get
            {
                return rent;
            }
        }

        public double Price
        {
            get
            {
                return price;
            }
        }
        public double Deposit
        {
            get
            {
                return deposit;
            }
        }

        public double Interest
        {
            get
            {
                return interest;
            }
        }
        public int Months
        {
            get
            {
                return months;
            }
        }
        public double Groc
        {
            get
            {
                return groc;
            }
        }

        public double Tax
        {
            get
            {
                return tax;
            }
        }
        public double WL
        {
            get
            {
                return wl;
            }
        }

        public double Travel
        {
            get
            {
                return travel;
            }
        }
        public double Cell
        {
            get
            {
                return cell;
            }
        }

        public double Other
        {
            get
            {
                return other;
            }
        }
        public double VPrice
        {
            get
            {
                return deposit;
            }
        }

        public double VDeposit
        {
            get
            {
                return vDeposit;
            }
        }
        public double VInterest
        {
            get
            {
                return vInterest;
            }
        }

        public double Insurance
        {
            get
            {
                return insurance;
            }
        }
    }
    abstract class Login
    {
        private string username;
        private string password;
        public Login(string user, string pass)
        {
            username = user;
            password = pass;
        }
        public string Username
        {
            get
            {
                return username;
            }
        }
        public string Password
        {
            get
            {
                return password;
            }
        }
    }
}