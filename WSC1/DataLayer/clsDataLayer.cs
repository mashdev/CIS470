using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace WSC1
{
    public class clsDataLayer
    {
        public static string ConnectionString
        {
            
            get
            {
                return ConfigurationManager.ConnectionStrings["WSC-DB-ConnectionString"].ConnectionString.ToString();
            }
            
        }
        

        public int checkCustomerExists(string email)
        {
            int checkResult = 0;

            // set sqlobject to use datasource string //
            SqlConnection con = new SqlConnection(ConnectionString);

            // create sql command object//
            SqlCommand cmd = new SqlCommand();

            // open database connection //
            con.Open();

            // string variable to check for email address instance on post //
            string checkUser = "SELECT COUNT(*) FROM  Users WHERE emailaddress ='" + email + "'  ";

            // instantiate new sqlCommand object and pass in connection and query string //
            SqlCommand com = new SqlCommand(checkUser, con);

            // int variable to store result of checkuser query //
            int varUserName = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (varUserName == 1)
            {
                checkResult = 1;
            }
            else
            {
                // assign result value of 0 //
                checkResult = 0;
            }

                return checkResult;

        }

        public void createCustomer(string firstNm, string lastNm, string email, string streetaddress, string city, string state, string zipcode, string password )
        {
            // set sqlobject to use datasource string //
            SqlConnection conn = new SqlConnection(ConnectionString);

            // open database connection //
            conn.Open();

            // static string to set all form registers as a customer //
            string defaultRole = "Customer";

            // query string to insert form data to database //
            string insertUser = "INSERT INTO Users (firstname, lastname, emailaddress, streetaddress, city, state, zip, memberpass, assignedgroup) VALUES (@fname, @lname, @email, @address, @city, @state, @zip, @pass, @group)";

            // instantiate new sqlCommand object and pass in connection and query string //
            SqlCommand com = new SqlCommand(insertUser, conn);

            // set form data as parameters for insertion query //
            //com.Parameters.AddWithValue("@id", newGUID.ToString());
            com.Parameters.AddWithValue("@fname", firstNm);
            com.Parameters.AddWithValue("@lname", lastNm);
            com.Parameters.AddWithValue("@email", email);
            com.Parameters.AddWithValue("@address", streetaddress);
            com.Parameters.AddWithValue("@city", city);
            com.Parameters.AddWithValue("@state", state);
            com.Parameters.AddWithValue("@zip", zipcode);
            com.Parameters.AddWithValue("@pass", password);
            com.Parameters.AddWithValue("@group", defaultRole);

            // execute the sql statement //
            com.ExecuteNonQuery();

            // close database connection //
            conn.Close();
        }

        public bool customerLogin(string email, string pass)
        {
            // true/false place holder //
            bool customer;

            // place holder variable for sql count(*) result //
            int isValidCustomer;

            // set sqlobject to use datasource string //
            SqlConnection conn = new SqlConnection(ConnectionString);

            // sql query get email and password for customer //
            string query = "SELECT COUNT(*) FROM  Users WHERE emailaddress = @email AND memberpass = @pass";

            // instantiate new sqlCommand object and pass in connection and query string //
            SqlCommand com = new SqlCommand(query, conn);

            // set email and password text as parameters //
            com.Parameters.AddWithValue("@email", email);
            com.Parameters.AddWithValue("@pass", pass);

            // open database connection //
            conn.Open();

            // execute sql and set the sessionID variable to customerID //
            isValidCustomer = (int)com.ExecuteScalar();

            // if isValidCustomer is one then email/pass combo matches //
            if (isValidCustomer == 1)
            {
                customer = true;
            }
            else
            {
                customer = false;
            }

            // return true/false //
            return customer;


        } /* end customerLogin() */

        public bool adminLogin(string email, string pass)
        {
            // true/false place holder //
            bool customer;

            // place holder variable for sql count(*) result //
            int isValidCustomer;

            // set sqlobject to use datasource string //
            SqlConnection conn = new SqlConnection(ConnectionString);

            // sql query get email and password for customer //
            string query = "SELECT COUNT(*) FROM  Admins WHERE userName = @email AND password = @pass";

            // instantiate new sqlCommand object and pass in connection and query string //
            SqlCommand com = new SqlCommand(query, conn);

            // set email and password text as parameters //
            com.Parameters.AddWithValue("@email", email);
            com.Parameters.AddWithValue("@pass", pass);

            // open database connection //
            conn.Open();

            // execute sql and set the sessionID variable to customerID //
            isValidCustomer = (int)com.ExecuteScalar();

            // if isValidCustomer is one then email/pass combo matches //
            if (isValidCustomer == 1)
            {
                customer = true;
            }
            else
            {
                customer = false;
            }

            // return true/false //
            return customer;


        } /* end adminLogin() */


        public int getSessionID(string email)
        {
            // variable for session ID//
            int sessionID = 0;

            // set sqlobject to use datasource string //
            SqlConnection conn = new SqlConnection(ConnectionString);

            // sql query to get customer ID //
            string query = "SELECT Id FROM  Users WHERE emailaddress = @email ";

            // instantiate new sqlCommand object and pass in connection and query string //
            SqlCommand com = new SqlCommand(query, conn);

            // set email address as parameter //
            com.Parameters.AddWithValue("@email", email);

            // open database connection //
            conn.Open();

            // execute sql and set the sessionID variable to customerID //
            sessionID = (int)com.ExecuteScalar();

            // close database connection //
            conn.Close();

            // return the customerID in the sessionID variable
            return sessionID;

        } /* end getSessionID() */

        public string getAdminSessionID(string email)
        {
            // variable for session ID//
            string sessionID;

            // set sqlobject to use datasource string //
            SqlConnection conn = new SqlConnection(ConnectionString);

            // sql query to get customer ID //
            string query = "SELECT roleID FROM Admins WHERE userName = @email ";

            // instantiate new sqlCommand object and pass in connection and query string //
            SqlCommand com = new SqlCommand(query, conn);

            // set email address as parameter //
            com.Parameters.AddWithValue("@email", email);

            // open database connection //
            conn.Open();

            // execute sql and set the sessionID variable to customerID //
            sessionID = com.ExecuteScalar().ToString();

            // close database connection //
            conn.Close();

            // return the customerID in the sessionID variable
            return sessionID;

        } /* end getSessionID() */


        public void signOut()
        {

            HttpContext.Current.Session.Clear();
            HttpContext.Current.Session.Abandon();
            
        }
        

    } /* end public class clsDataLayer{} */

} /* end namespace WSC1 */