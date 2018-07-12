using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
///sqlhelper 的摘要说明
/// </summary>
public class sqlhelper
{
	public sqlhelper()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    /// <summary>
    /// 函数实现建立数据库连接，并返回该连接
    /// </summary>
    /// <returns>返回建立好的数据库连接</returns>
    public static SqlConnection createCon()
    {
        //获取配置文件中设置好的连接
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myCon"].ConnectionString);
        return con;
    }

    public static void excuteSql(string sqlString)
    {
        SqlConnection con = createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    /// <summary>
    /// 数据检索
    /// </summary>
    /// <param name="sqlString"></param>
    /// <returns></returns>
    public static DataSet excuteDataSet(string sqlString)
    {
        SqlConnection con = createCon();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(sqlString, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        con.Close();
        return ds;
    }

    public static int excuteInt(string sqlString)
    {
        SqlConnection con = createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString,con);
        int count=0;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        return count;
    }

    public static bool excuteBool(string sqlString)
    {
        SqlConnection con = createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        bool result = true;
        try 
        {
            cmd.ExecuteNonQuery();
        }
        catch
        {
            result=false;
        }
        con.Close();
        return result;
    }

    public static SqlDataReader ExcuteSqlDataReader(string sql, SqlParameter[] parms)
    {
        SqlDataReader result = null;
        SqlConnection con = createCon();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            if (parms != null)
                cmd.Parameters.AddRange(parms);
            result = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        }
        catch
        { }
        return result;
    }
}