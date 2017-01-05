using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    public static string connStr =  System.Configuration.ConfigurationManager.ConnectionStrings["PublicConnStr"].ToString();
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   


    protected void SINF_IN_Click(object sender, EventArgs e)
    {
        //DataSet tDs = Login(ACCOUNT_NAME.Text,ACCOUNT_PASSORD.Text);
        //if(tDs.Tables[0].Rows.Count>0)
        //{
            //Response.Redirect("主頁面.aspx") ; }
        
    }
    //public static DataSet Login(string account,string password)
    //{
        //string sqlstr;
        //sqlstr = "  select MemberNum,memberPassword  from MEMBER    ";
        //sqlstr += "   where isdelete=0 and MemberNum=@MemberNum and memberPassword=@memberPassword ";
        //SQLParamList param = new SQLParamList();
        //param.Add("@MemberNum", account);
        //param.Add("@memberPassword", password);

        //DataSet tDS = (DataSet)SQLDataAccess.ExecuteDataSet(connStr, CommandType.Text, sqlstr, param.ToArray());
        //return tDS;
    //}


}