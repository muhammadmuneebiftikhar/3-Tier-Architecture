using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public  class DbCon
    {
        private SqlConnection sqlCon;

        public DbCon ()
        {
            sqlCon = new SqlConnection("Data Source=MUNEEB;Initial Catalog=Vp_Lab;Integrated Security=True");
        }

        public bool UDI(string qry)
        {
            sqlCon.Open();
            SqlCommand cmd = new SqlCommand(qry, sqlCon);
            int res = cmd.ExecuteNonQuery();
            sqlCon.Close();
            if(res > 0)
            {
                return true;
            }
            return false;
        }

        public DataTable Search(string qry)
        {
            sqlCon.Open();
            SqlDataAdapter sda = new SqlDataAdapter(qry, sqlCon);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            sqlCon.Close();
            if(dt.Rows.Count > 0)
            {
                return dt;
            }
            return null;
        }
    }
}
