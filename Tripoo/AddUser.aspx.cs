using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tripoo.DAL;

namespace Tripoo
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null || (Session["IsAdmin"].ToString() != "true"))
            {
                Response.Redirect("~/index.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            string cmd = $"insert into [User] ([Name], [Email], Password, Type) Values ('{txtName.Value}', '{txtEmail.Value}', '{txtPassword.Value}', {DropDownList1.SelectedValue})";
            DAL.ExecuteCommand(cmd);
            DAL.Close();
        }
    }
}