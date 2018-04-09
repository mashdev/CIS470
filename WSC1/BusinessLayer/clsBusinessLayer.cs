using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WSC1.BusinessLayer
{
    public class clsBusinessLayer
    {


        public int checkAdmin(string login, string password)
        {

            int checkResult = 0;

            // set sqlobject to use datasource string //
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WSC-DB-ConnectionString"].ConnectionString);

            // open database connection //
            conn.Open();


            // string variable to check for email address instance on post //
            string checkAdmin = "SELECT COUNT(*) FROM  Admins WHERE userName ='" + login + "'  ";

            // instantiate new sqlCommand object and pass in connection and query string //
            SqlCommand com = new SqlCommand(checkAdmin, conn);

            // int variable to store result of checkuser query //
            int varUserName = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (varUserName == 1)
            {
                // open database connection //
                //     conn.Open();

                // string variable to check for username instance on post //
                string checkPassword = "SELECT password from Admins WHERE userName='" + login + "'  ";

                // instantiate new sqlCommand object and pass in connection and query string //
                SqlCommand comPass = new SqlCommand(checkPassword, conn);

                // int variable to store result of checkPassword query //
                string userPassword = comPass.ExecuteScalar().ToString().Replace(" ", "");

                if (userPassword == password)
                {
                    // assign result a value of 1 //
                    checkResult = 1;
                }
                else
                {
                    // assign result value of 0 //
                    checkResult = 0;
                }



                //Response.Write("Email address already exists");
            }


            // close database connection //
            conn.Close();


            return checkResult;

        } /****** end checkAdmin ******/


        /* Start Parameters*/

        public string CategoryName;
        public int CategoryID;
        public string ProductName;
        public string ProductImage;
        public string ProductPrice;
        public string ProductDescription;

        /* End Parameters*/




        public void addCategory()
        {
            /*SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = clsDataLayer.AddParameter("@CategoryName", CategoryName, System.Data.SqlDbType.VarChar, 150);
            DataTable dt = clsDataLayer.ExecuteStoreProc("SP_AddNewCategory", parameters);*/

            // create database connection //
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WSC-DB-ConnectionString"].ConnectionString);

            // open database connection //
            conn.Open();

            // query string to insert form data to database //
            string newCategory = "INSERT INTO Category (categoryName) VALUES (@category)";

            // instantiate new sqlCommand object and pass in connection and query string //
            SqlCommand com = new SqlCommand(newCategory, conn);

            // set form data as parameters for insertion query //
            com.Parameters.AddWithValue("@category", CategoryName);

            // execute the sql statement //
            com.ExecuteNonQuery();

            conn.Close();
        }

        public void addProduct()
        {

        }

       







    } /* end public class clsBusinessLayer */


    } /* end namespace WSC1.BusinessLayer */