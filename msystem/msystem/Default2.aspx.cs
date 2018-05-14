using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnlogin(object sender, EventArgs e)
    {
        warn.Visible = true;
        string mystr, mysqlname, pass, type;
        if (TextBox1.Text == " ")
        {
            warn.Text = "请输入用户名";
            return;

        }
        else if (TextBox2.Text == " ")
        {
            warn.Text = "请输入密码";
            return;

        }
      
        
        SqlConnection myconn = new SqlConnection();
        SqlCommand mycmd = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["myconnstring"].ToString();
        myconn.ConnectionString = mystr;
        myconn.Open();
        mycmd.Connection = myconn;
       
       
        mysqlname = "SELECT * FROM [user] where username = @name";
        mycmd.Parameters.Add(new SqlParameter("@name", TextBox1.Text.Trim()));
     
        mycmd.CommandText = mysqlname;
        mycmd.Connection = myconn;
        SqlDataAdapter ds = new SqlDataAdapter(mycmd);
        DataSet da = new DataSet();

        ds.Fill(da, "userinfo");
        pass = da.Tables["userinfo"].Rows[0]["password"].ToString();
        type = da.Tables["userinfo"].Rows[0]["type"].ToString();

        myconn.Close();
        if (TextBox2.Text.Trim() != pass)
        {
            warn.Text = "密码错误，登陆失败";
            
        }
        if (TextBox2.Text.Trim() == pass)
        {
            
            if (type.Trim() == "ba")
            {
               // warn.Text = "ba";
                Response.Redirect("analysis.aspx");
            }
                 else if (type.Trim() == "fa")
            {
                //warn.Text = "fa";
              Response.Redirect("check.aspx");
            }

        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
