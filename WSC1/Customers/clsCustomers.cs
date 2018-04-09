using System;
using System.Collections.Generic;
using System.Configuration; // added for using connection ConfigurationManager strings //
using System.Data.SqlClient; // added for using the SqlConnection class //
using System.Linq;
using System.Web;

namespace WSC1.Customers
{
    public class clsCustomers
    {

        public static string ConnectionString
        {

            get
            {
                return ConfigurationManager.ConnectionStrings["WSC-DB-ConnectionString"].ConnectionString.ToString();
            }

        }

        // check if user/pass is correct
        public int checkEmailAddrs(string email, string pass)
        {
            int checkResult = 0;

            // set sqlobject to use datasource string //
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WSC-DB-ConnectionString"].ConnectionString);

            // open database connection //
            conn.Open();


            // string variable to check for email address instance on post //
            string checkUserLogin = "SELECT COUNT(*) FROM  Users WHERE emailaddress='" + email + "'  ";

            // instantiate new sqlCommand object and pass in connection and query string //
            SqlCommand com = new SqlCommand(checkUserLogin, conn);

            // int variable to store result of checkuser query //
            int varEmail = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (varEmail == 1)
            {
                // sql query to pull password from database //
                string checkPassword = "SELECT memberpass from Users WHERE emailaddress='" + email + "'  ";

                // create object to execute query and connection //
                SqlCommand comPass = new SqlCommand(checkPassword, conn);

                // set comPass result to a string variable //
                string userPassword = comPass.ExecuteScalar().ToString().Replace(" ", "");

                // Returns 1 if password matches //
                if (userPassword == pass)
                {
                    checkResult = 1;
                }
                else
                {
                    checkResult = 0;
                }

                //Response.Write("Email address already exists");
            }


            // close database connection //
            conn.Close();

            // Return value of checkResult //
            return checkResult;

        } /* end checkEmailAddrs */


        public bool checkCCInfoAdded(int sessionID)
        {

            
            // set sqlobject to use datasource string //
            SqlConnection con = new SqlConnection(ConnectionString);

            // string query to check for if credit details are filled in //
            string checkCC = "SELECT ((CASE WHEN cc_type IS NULL or cc_type = '' THEN 1 ELSE 0 END) + (CASE WHEN cc_account_num IS NULL or cc_account_num= '' THEN 1 ELSE 0 END) + (CASE WHEN cc_expire_date IS NULL or cc_expire_date = '' THEN 1 ELSE 0 END)) AS sumofnulls FROM Users Where Id=" + sessionID;

            // create sql command object//
            SqlCommand com = new SqlCommand(checkCC, con);

            // open db connection //
            con.Open();

            //insert integer result into countNulls variable //
            int countNulls = Convert.ToInt32(com.ExecuteScalar().ToString());

            //  //
            if(countNulls < 1)
            {
                return true;
            }
            else
            {
                return false;
            }
            
        } /* end checkCCInfoAdded() */


        public double printServicePrice(int amount, double cost)
        {
            // variable for calculated total //
            double finalTotal;

            // calculate qty * cost (of paper)
            finalTotal = amount * cost;


            // return amount * cost //
            return finalTotal;
            
        }

        public string getDdlProductName(int pid)
        {
            // variable for return value //
            string item = "";
            
            // set sqlobject to use datasource string //
            SqlConnection con = new SqlConnection(ConnectionString);

            // string query to check for if credit details are filled in //
            string getName = "SELECT Name FROM products WHERE ProductID=" + pid;

            // create sql command object//
            SqlCommand com = new SqlCommand(getName, con);

            // open db connection //
            con.Open();

            // get item name value//
            item = com.ExecuteScalar().ToString();

            return item;

        }

        public decimal getDdlProductCost(int pid)
        {

            decimal itemCost;

            // set sqlobject to use datasource string //
            SqlConnection con = new SqlConnection(ConnectionString);

            // string query to check for if credit details are filled in //
            string getName = "SELECT Price FROM products WHERE ProductID=" + pid;

            // create sql command object//
            SqlCommand com = new SqlCommand(getName, con);

            // open db connection //
            con.Open();

            // get item name value//
            
            itemCost = Convert.ToDecimal(com.ExecuteScalar());

            return itemCost;

        }

        public string getImageUrl(int pid)
        {
            string imgUrl= "";

            // set sqlobject to use datasource string //
            SqlConnection con = new SqlConnection(ConnectionString);

            // string query to check for if credit details are filled in //
            string getUrl = "SELECT ImageUrl FROM products WHERE ProductID=" + pid;

            // create sql command object//
            SqlCommand com = new SqlCommand(getUrl, con);

            // open db connection //
            con.Open();

            // set image url to variable //
            imgUrl = com.ExecuteScalar().ToString();

            con.Close();

            return imgUrl;
            
        }

        public void submitOrder(int customerID, string orderStatus)
        {

            // set sqlobject to use datasource string //
            SqlConnection con = new SqlConnection(ConnectionString);

            // string query to insert order to Orders table //
            string getOrderID = "INSERT INTO Orders (customerID, orderStatus) VALUES (@CID, @status)";

            // create sql command object//
            SqlCommand com = new SqlCommand(getOrderID, con);

            // set form data as parameters for insertion query //
            com.Parameters.AddWithValue("@CID", customerID);
            com.Parameters.AddWithValue("@status", orderStatus);
            
            // open db connection 
            con.Open();

            // execute the sql statement //
            com.ExecuteNonQuery();

            // close db connection //
            con.Close();
        }


        public void submitOrderDetails(int orderID, int customerID, int productID, string productType, int productQty, decimal productCost, decimal sumTotal, string description, string fileName)
        {
            // set sqlobject to use datasource string //
            SqlConnection con = new SqlConnection(ConnectionString);

            // string query to build insert query to orderDetails table //
            string submitOrderQuery = "INSERT INTO orderDetails (orderID, customerID, productID, productType, productQty, productCost, sumTotal, customerText, fileUploadName) VALUES(@orderID, @customerID, @productID, @productType, @productQty, @productCost, @sumTotal, @customerText, @fileUploadNm)";

            // create sql command object//
            SqlCommand com = new SqlCommand(submitOrderQuery, con);

            // set form data as parameters for insertion query //
            com.Parameters.AddWithValue("@orderID", orderID);
            com.Parameters.AddWithValue("@customerID", customerID);
            com.Parameters.AddWithValue("@productID", productID);
            com.Parameters.AddWithValue("@productType", productType);
            com.Parameters.AddWithValue("@productQty", productQty);
            com.Parameters.AddWithValue("@productCost", productCost);
            com.Parameters.AddWithValue("@sumTotal", sumTotal);
            com.Parameters.AddWithValue("@customerText", description);
            com.Parameters.AddWithValue("@fileUploadNm", fileName);

            // open db connection 
            con.Open();

            // execute the sql statement //
            com.ExecuteNonQuery();

            // close db connection //
            con.Close();
        }


        public int getOrderedID(int customerID)
        {
            int orderID;

            // set sqlobject to use datasource string //
            SqlConnection con = new SqlConnection(ConnectionString);

            // string query to check for if credit details are filled in //
            string getOrderID = "SELECT orderID FROM Orders WHERE dateOrdered = (SELECT max(dateOrdered) FROM Orders WHERE customerID=" + customerID + ")";

            // create sql command object//
            SqlCommand com = new SqlCommand(getOrderID, con);

            // open db connection 
            con.Open();

            orderID = Convert.ToInt32(com.ExecuteScalar());

            return orderID;
        }


    } /* public class clsCustomers */

}