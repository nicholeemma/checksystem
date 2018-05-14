using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;
using System.Windows.Forms;
using System.ComponentModel;

/// <summary>
/// MySQLConn 的摘要说明
/// </summary>
namespace mysystem

{
    public class MySQLConn
    {
        private string MySqlCon = "Server=127.0.0.1; Database=data; Uid=root; Pwd=password; pooling=false; CharSet=utf8";
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
    }
}