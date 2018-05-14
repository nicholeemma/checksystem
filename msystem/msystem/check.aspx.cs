using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Text;
using System.ComponentModel;

/// <summary>
/// MySQLConn 的摘要说明
/// </summary>
namespace mysystem

{
    
}
public partial class Default2 : System.Web.UI.Page
{
   /* public class MySQLConn
    {
        private string MySqlCon = "Server=localhost; Database=data; Uid=root; Pwd=yjy1996426; pooling=false; CharSet=utf8; allow zero datetime=true";
        public DataTable ExecuteQuery(string sqlStr)
      
        {
            MySqlCommand cmd;
            MySqlConnection con;
            MySqlDataAdapter msda;
            con = new MySqlConnection(MySqlCon);
            con.Open();
            cmd = new MySqlCommand(sqlStr, con);
            cmd.CommandType = CommandType.Text;
            DataTable dt = new DataTable();
            msda = new MySqlDataAdapter(cmd);
            msda.Fill(dt);
            con.Close();
            return dt;
        }
        public int ExecuteUpdate(string sqlStr)
        {
            MySqlCommand cmd;
            MySqlConnection con;
            con = new MySqlConnection(MySqlCon);
            con.Open();
            cmd = new MySqlCommand(sqlStr, con);
            cmd.CommandType = CommandType.Text;
            int iud = 0;
            iud = cmd.ExecuteNonQuery();
            con.Close();
            return iud;
        }
    }*/
    protected void Page_Load(object sender, EventArgs e)
    {
        //InitializeComponent();
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {/*
MySQLConn con = new MySQLConn();
       string sql = "select * from m_user";
       Object name = con.ExecuteQuery(sql);
        GridView1.DataSource = con.ExecuteQuery(sql);
        */
        GridView1.Visible = true;
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {/*
        MySQLConn con = new MySQLConn();
        string sql = "select * from m_user";

        GridView1.DataSource = con.ExecuteQuery(sql);*/
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        GridView1.Visible = false;
    }

     protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
     { string mystr = null, mysqlname;
         int lkbt = GridView2.SelectedIndex;  //设置一个int类型的变量来存储被选中记录的索引
         string tt = GridView2.Rows[lkbt].Cells[1].Text;   //通过索引找相对应的记录，再从这条记录中取相对应列的值
        // Label1.Text = tt;
         SqlConnection myconn = new SqlConnection();
         SqlCommand mycmd = new SqlCommand();
         mystr = System.Configuration.ConfigurationManager.ConnectionStrings["myconnstring"].ToString();
         myconn.ConnectionString = mystr;
         myconn.Open();
         mycmd.Connection = myconn;
        
        SqlDataAdapter ada = new SqlDataAdapter("insert into [comrecord] select 流水号, 起点, 终点 from [nocompliant] where 流水号 = " + tt, myconn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
       //  GridView3.DataSource = ds;
       // GridView3.DataBind();
         myconn.Close();
       // SqlDataSource4.InsertCommand = "insert into [comrecord] select 流水号, 起点, 终点 from [nocompliant] where 流水号 = " + tt;
     }
 
}