using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FormsWithSessions
{
    public class DBConnectivity
    {

        private string connectionString;

        public DBConnectivity()
        {
            connectionString = @"Data Source=HP-FOLIO-1040; Initial Catalog=Session_db; Integrated Security=true;";
        }

        private SqlConnection makeConnection()
        {
            SqlConnection conn = new SqlConnection(connectionString);
            return conn;
        }

        public bool insertRecord(SessionsTbl values)
        {
            SqlConnection conn = makeConnection();
            conn.Open();
            string query = "insert into sessions_tbl(name, age, email, password) values('" + values.name + "', '" + values.age + "', '" + values.email + "', '" + values.password + "')";

            SqlCommand cmd = new SqlCommand(query, conn);

            int result = cmd.ExecuteNonQuery();
            conn.Close();

            if (result > 0)
                return true;
            else
                return false;
        }

        public SessionsTbl getOneRecord(string email)
        {
            SqlConnection conn = makeConnection();
            conn.Open();

            string query = "select * from sessions_tbl where email = '" + email + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            
            SqlDataReader reader = cmd.ExecuteReader();

            SessionsTbl valuesFromDb = new SessionsTbl();

            if (reader.Read())
            { 
                valuesFromDb.id = int.Parse(reader["id"].ToString());
                valuesFromDb.name = reader["name"].ToString();
                valuesFromDb.age = int.Parse(reader["age"].ToString());
                valuesFromDb.email = reader["email"].ToString();
                valuesFromDb.password = reader["password"].ToString();
            }

            conn.Close();
            return valuesFromDb;

        }


    }
}