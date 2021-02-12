using System;
using Tripoo.DAL;

namespace Tripoo
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            DataAccessLayer dataAccessLayer = new DataAccessLayer();
            dataAccessLayer.Open();
            var types = dataAccessLayer.SelectData("SELECT * FROM Types");
            if (types.Rows.Count == 0)
            {
                dataAccessLayer.ExecuteCommand("INSERT INTO Types VALUES('Admin')");
                dataAccessLayer.ExecuteCommand("INSERT INTO Types VALUES('Manager')");
                dataAccessLayer.ExecuteCommand("INSERT INTO Types VALUES('Customer')");
                dataAccessLayer.ExecuteCommand("INSERT INTO Types VALUES('Visitor')");
            }
            var Admin = dataAccessLayer.SelectData("SELECT * FROM [User]");
            if (Admin.Rows.Count == 0)
            {
                var Type = dataAccessLayer.SelectData("SELECT Id FROM Types WHERE Name = 'Admin'");
                var dptRows = Type.Rows[0][0];
                var AdminTypeId = Convert.ToInt32(dptRows);
                dataAccessLayer.ExecuteCommand("INSERT INTO [User] (Name, Email, Password, Type) VALUES('System admin' , 'admin@tcc.com' , 'admin' , " + AdminTypeId + ")");
            }
            var transTypes = dataAccessLayer.SelectData("SELECT * FROM TransportType");
            if (transTypes.Rows.Count == 0)
            {
                dataAccessLayer.ExecuteCommand("INSERT INTO TransportType VALUES('Car')");
                dataAccessLayer.ExecuteCommand("INSERT INTO TransportType VALUES('Bus')");
                dataAccessLayer.ExecuteCommand("INSERT INTO TransportType VALUES('Van')");
                dataAccessLayer.ExecuteCommand("INSERT INTO TransportType VALUES('Minibus')");
            }
            dataAccessLayer.Close();
        }
    }
}