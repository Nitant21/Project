using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.Text != "Choose Area")
        {
            if (DropDownList2.Text != "Choose Category")
            {
                GetRecord(DropDownList1.Text, DropDownList2.Text);
            }
            else
            {
                Response.Write("Please choose Category");
            }
        }
        else
        {
            Response.Write("Please choose Area");
        }
    }
    public void GetRecord(string Area, string Category)
    {
        
        string connection = @"Data Source=(LocalDb)\MSSqlLocalDb;Initial Catalog=amit;Integrated Security=True;Pooling=False";
        //string cmdText = "select * from UserInfo where Area=" + ctiy + "and" + "Brand=" + brand;
        string cmdText = "select * from UserInfo where Area=" + Area + ";select * from Books where Category="+ Category;
        SqlConnection cn1 = new SqlConnection(connection);
        cn1.Open();
        SqlCommand cmd = new SqlCommand(cmdText, cn1);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        cn1.Close();
    }
}