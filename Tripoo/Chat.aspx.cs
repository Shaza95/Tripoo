using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Tripoo.DAL;

namespace Tripoo
{
    public partial class Chat : System.Web.UI.Page
    {
        DataAccessLayer DAL = new DataAccessLayer();
        int userId = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            DAL.Open();
            string cmd = $"select Message, [Name], [From] from Chat join [User] on [From] = Id";
            DataTable dt = DAL.SelectData(cmd);
            foreach (DataRow message in dt.Rows)
            {
                Label lbl = new Label();
                if (Convert.ToInt32(message["From"]) != userId)
                {
                    lbl.CssClass = "otherMessage";
                    lbl.Text = message["Name"].ToString() + ":  " + message["Message"].ToString() + "<br>";
                }
                else
                {
                    lbl.CssClass = "myMessage";
                    lbl.Text = message["Message"].ToString() + "<br>";
                }
                old.Controls.Add(lbl);
                old.Controls.Add(new LiteralControl("<br><br>"));

            }
            DAL.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DAL.Open();
            string cmd = $"insert into Chat (Message, [From], [To], Date) values ('{TextBox1.Text}', {userId}, {userId}, '{DateTime.Now}')";
            DAL.ExecuteCommand(cmd);
            DAL.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void old_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this.Page, typeof(Panel), "old", ";scroll();", true);
        }
    }
}