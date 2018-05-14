using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Image1.ImageUrl = "~/image/月同比订单金额汇总.png";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Process process = new Process();
        //process.StartInfo.UseShellExecute = false;
        process.StartInfo.FileName = "C:/Program Files/Tableau/Tableau 10.5/bin/tableau.exe";
        //process.StartInfo.CreateNoWindow = true;
        process.Start();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Process process = new Process();
        //process.StartInfo.UseShellExecute = false;
        process.StartInfo.FileName = "F:/论文/code/code/mail.py";
        //process.StartInfo.CreateNoWindow = true;
        process.Start();
    }
}