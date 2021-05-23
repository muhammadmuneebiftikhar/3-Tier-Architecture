using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using AppProps;
using System.Data;

namespace _3trie_Architecture
{
    public partial class UserForm : System.Web.UI.Page
    {
        UserBLL uBLL = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGridView();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            User U = new User();
            U.Name = txtName.Text;
            U.Email = txtEmail.Text;
            if (uBLL.addUserBLL(U))
            {
                Response.Write("<script>alert('User Added.')</script>");
                LoadGridView();
            }
            else
            {
                Response.Write("<script>alert('User Not Added.')</script>");
            }
        }

        private void LoadGridView()
        {
            GridView1.DataSource = uBLL.allUserBLL();
            GridView1.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            User U = new User();
            U.ID1 =Convert.ToInt32(TxtID.Text);
            if (uBLL.DeleteUserBLL(U))
            {
                Response.Write("<script>alert('User Deleted.')</script>");
                LoadGridView();
            }
            else
            {
                Response.Write("<script>alert('User Not Deleted.')</script>");
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            User U = new User();
            U.ID1 = Convert.ToInt32(TxtID.Text);
            DataTable dt = uBLL.SearchUserBLL(U);
            if (dt != null)
            {
                txtName.Text = dt.Rows[0]["NAME"].ToString();
                txtEmail.Text = dt.Rows[0]["EMAIL"].ToString();
            }
            else
            {
                Response.Write("<script>alert('User Not Found.')</script>");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            User U = new User();
            U.ID1 = Convert.ToInt32(TxtID.Text);
            U.Name = txtName.Text;
            U.Email = txtEmail.Text;
            if (uBLL.UpdateUserBLL(U))
            {
                Response.Write("<script>alert('User Updated');</script>");
                LoadGridView();
            }
            else
            {
                Response.Write("<script>alert('User not Updated');</script>");
            }
        }
    }
}