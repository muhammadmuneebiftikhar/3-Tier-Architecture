using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppProps;
using DataAccessLayer;

namespace BLL
{
    public class UserBLL
    {
        UserDAL uDal = new UserDAL();
        public bool addUserBLL(User U)
        {
            return uDal.addUser(U);
        }

        public bool DeleteUserBLL(User U)
        {
            return uDal.deleteUser(U);
        }

        public bool UpdateUserBLL(User U)
        {
            return uDal.updateUser(U);
        }

        public DataTable SearchUserBLL(User U)
        {
            return uDal.searchUser(U);
        }

        public DataTable allUserBLL()
        {
            return uDal.allUser();
        }
    }
}
