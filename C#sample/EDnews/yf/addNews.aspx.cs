﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yf_addNews : System.Web.UI.Page
{
    Users u;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            u=(Users)Session["user"];
        }
        if (!IsPostBack)//防止没有取到下拉菜单值
        {
            ddlLanMu.DataSource = Lanmu.getLanMuList();
            ddlLanMu.DataTextField = "lanMuName";
            ddlLanMu.DataValueField = "lanMuId";
            ddlLanMu.DataBind();
            if (Request.QueryString["id"] != null)
            {
                string id = Request.QueryString["id"].ToString();
                News n = News.getNewsById(id);
                txtTitle.Text = n.title;
                content1.Value = n.contents;
                foreach (ListItem x in ddlLanMu.Items)
                {
                    if (x.Value == n.lanMuId.ToString())
                    {
                        x.Selected = true;
                    }
                }
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        News n = new News();
        n.title = txtTitle.Text;
        n.contents = content1.Value;
        n.addTime = DateTime.Now;
        n.hitCount = 0;
        n.lanMuId =Convert.ToInt32(ddlLanMu.SelectedValue);
        n.uid = u.uid;
        n.img = txtImgUrl.Text;
        if (News.addNews(n)== true )
            Response.Write("<script>alert('发布成功！')</script>");
        else
            Response.Write("<script>alert('发布失败！')</script>");
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage.aspx");
    }
}