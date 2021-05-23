using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppProps
{
    public class User
    {
        private int ID;
        private string name;
        private string email;

        public int ID1 { get => ID; set => ID = value; }
        public string Name { get => name; set => name = value; }
        public string Email { get => email; set => email = value; }
    }
}
