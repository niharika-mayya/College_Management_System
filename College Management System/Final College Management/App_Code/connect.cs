using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for connect
/// </summary>
public class connect
{
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection cnn = new SqlConnection();
	public connect()
	{
        cnn.ConnectionString="Data Source=LAPTOP-23AVF9MJ\\SQLEXPRESS;Initial Catalog=college;Integrated Security=True";
        cnn.Open();
        cmd.Connection=cnn;
	}
}
