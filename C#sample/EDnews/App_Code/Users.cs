using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
///User 的摘要说明
/// </summary>
public class Users
{
	public Users()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public int uid;
    public string userName;
    public string passWord;
    public int manageLanmuid;

    public static Users getUserById(string id)
    {
        Users users = new Users();
        string sqlString = "select * from t_user where uid=" + id;
        SqlConnection con = sqlhelper.createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);

        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            users.uid = Convert.ToInt32(sdr[0]);
            users.userName = Convert.ToString(sdr[1]);
            users.passWord = Convert.ToString(sdr[2]);
        }
        con.Close();
        return users;
    }


    public static int getuidByName(string userName)
    {
        string sqlString = "select uid from t_user where userName='" + userName + "'";
        SqlConnection con = sqlhelper.createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        int uid = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        return uid;
    }

    public static DataSet getUserList()//获取用户列表
    {
        string sqlString = "select * from t_user";
        return sqlhelper.excuteDataSet(sqlString);
    }

    public static bool delUser(string id)
    {
        string sqlString = "delete from t_user where uid=" + id;
        return sqlhelper.excuteBool(sqlString);
    }

    public static bool addUser(Users n)
    {
        string sqlString = "insert into t_user (userName,passWord) values('" + n.userName + "','" + n.passWord + "' )";
        return sqlhelper.excuteBool(sqlString);
    }

    public static bool editUser(Users n)
    {
        string sqlString = "update t_user set userName ='" + n.userName + "', passWord='" + n.passWord + "'  where uid=" + n.uid;
        return sqlhelper.excuteBool(sqlString);
    }


    public static bool giveUseraddlanmu(Users n)
    {
        string sqlString = "update t_user set userName ='" + n.userName + "', passWord='" + n.passWord + "', manageLanmuid='" + n.manageLanmuid + "'  where uid=" + n.uid;
        return sqlhelper.excuteBool(sqlString);
    }
}