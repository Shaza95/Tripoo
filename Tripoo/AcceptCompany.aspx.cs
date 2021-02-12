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
    public partial class AcceptCompany : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataAccessLayer DAL = new DataAccessLayer();
            //string cmd = "select Regesters.CompanyName CName, [User].Name MName from [User] join Regesters on [User].Id  = Regesters.ManagerId ";
            //SqlDataSource1.SelectCommand = cmd;
            //if (!IsPostBack)
            //{
            //    DAL.Open();
            //    DataTable companies = DAL.SelectData(cmd);
            //    DAL.Close();
            //    List<string> toBeapproved = new List<string>();
            //    for (int i = 0; i < companies.Rows.Count; i++)
            //        CheckBoxList1.Items.Add(companies.Rows[i][0].ToString());
            //}
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            string cmd = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    cmd = $"insert into Company1 values ('{CheckBoxList1.Items[i].Text}', '{CheckBoxList1.Items[i].Value}')";
                    DAL.ExecuteCommand(cmd);
                    cmd = $"delete from Regesters where CompanyName = '{CheckBoxList1.Items[i].Text}' and ManagerId = '{CheckBoxList1.Items[i].Value}'";
                    DAL.ExecuteCommand(cmd);
                }
            }
            DAL.Close();
            
            Response.Redirect(Request.RawUrl);
        }
        protected void btnReject_Click(object sender, EventArgs e)
        {
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            string cmd = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    cmd = $"delete from Regesters where CompanyName = '{CheckBoxList1.Items[i].Text}' and ManagerId = '{CheckBoxList1.Items[i].Value}'";
                    DAL.ExecuteCommand(cmd);
                }
            }
            DAL.Close();

            Response.Redirect(Request.RawUrl);
        }
    }
}