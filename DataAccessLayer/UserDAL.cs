using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppProps;

namespace DataAccessLayer
{
    public class UserDAL
    {
        DbCon db = new DbCon();
        public bool addUser(User U)
        {
            string qry = "INSERT INTO Login (NAME,EMAIL) VALUES ('" + U.Name + "','" + U.Email + "')";
            if(db.UDI(qry))
            {
                return true;
            }
            return false;
        }

        public bool deleteUser(User U)
        {
            string qry = "Delete from Login where ID = '" + U.ID1 + "'";
            return db.UDI(qry);
        }

        public bool updateUser(User U)
        {
            string qry = "Update Login sets Name = '"+U.Name+"' Email = '"+U.Email+"'  where ID = '" + U.ID1 + "'";
            return db.UDI(qry);
        }

        public DataTable searchUser(User U)
        {
            string qry = "Select * From Login where ID = '"+U.ID1+"'";
            return db.Search(qry);
        }

        public DataTable allUser()
        {
            string qry = "Select * From Login";
            return db.Search(qry);
        }
    }
}
