using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Security.Permissions;
public partial class Ragistration_Form : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void DDLcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        string[] ind = new string[] { "Gujarat", "Maharastra", "Rajsthan" };
        string[] usa = new string[] { "Ny", "Nj" };
        string[] uk = new string[] { "Englend", "London" };

        if (DDLcountry.SelectedValue == "India")
        {
            DDLstate.DataSource = ind;
            DDLstate.DataBind();
        }
        if (DDLcountry.SelectedValue == "USA")
        {
            DDLstate.DataSource = usa;
            DDLstate.DataBind();
        }
        if (DDLcountry.SelectedValue == "UK")
        {
            DDLstate.DataSource = uk;
            DDLstate.DataBind();
        }
       
    }
protected void  BTNins_Click(object sender, EventArgs e)
    {
        string query;
        String link = "";
        String path, filename = "";
        Boolean fileOK = false;

        #region <<Photo  Upload>>
        path = Server.MapPath("~/img/");

        if (FileUpload1.HasFile)
        {
            String fileExtension =
System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
            for (int i = 0; i < allowedExtensions.Length; i++)
            {
                if (fileExtension == allowedExtensions[i])
                {
                    fileOK = true;
                }
            }
            if (fileOK)
            {
                try
                {
                    //filename = System.DateTime.Now.Day.ToString() + System.DateTime.Now.Month.ToString() + System.DateTime.Now.Year.ToString() + System.DateTime.Now.Hour.ToString() + System.DateTime.Now.Minute.ToString() + System.DateTime.Now.Second.ToString() + FileUpload1.FileName;
                    filename = FileUpload1.FileName;
                    FileIOPermission fp = new FileIOPermission(PermissionState.Unrestricted);
                    fp.AddPathList(FileIOPermissionAccess.AllAccess, path + filename);

                    FileUpload1.PostedFile.SaveAs(path + filename);



                    link = "~/img/" + filename;
                    lblerror.Text = "Photo uploaded!";


                }
                catch
                {
                    lblerror.Text = "Photo could not be uploaded.";
                }


            }
            else
            {
                lblerror.Text = "Cannot accept files of this type.";
            }
        }
        else
        {
            lblerror.Text = "No file Selected...";
        }
    string sub="";
    for(int i=0;i<CBLHobb.Items.Count;i++)
    {
        if(CBLHobb.Items[i].Selected)
        {
            sub=sub+CBLHobb.Items[i].Value+ ",";
        }
    }
    sub=sub.TrimEnd(',');
    Label1.Text = sub;
    cmd = new SqlCommand("insert into Table5 values('" + txtfn.Text + "','" + txtln.Text + "','" + RBLg.SelectedValue + "','" + TXTdob.Text + "','" + TXTage.Text + "','" + TXTmno.Text + "','" + TXTAdd.Text + "','" + TXTemail.Text + "','" + TXTpass.Text + "','" +Label1.Text+ "','" + DDLcountry.SelectedValue + "','" + DDLstate.SelectedValue + "','"+link+"')", con);
    cmd.ExecuteNonQuery();
    GridView1.DataBind();
    DropDownList1.DataBind();
    con.Close();
    txtfn.Text = "";
    txtln.Text = "";
    RBLg.ClearSelection();
    TXTdob.Text = "";
    TXTage.Text = "";
    TXTmno.Text = "";
    TXTAdd.Text = "";
    TXTemail.Text = "";
    TXTpass.Text = "";
    TXTconpass.Text = "";
    CBLHobb.ClearSelection();
}
protected void BTNupd_Click(object sender, EventArgs e)
{
    cmd = new SqlCommand("update Table5 set [First Name]='" + txtfn.Text + "',[Last Name]='" + txtln.Text + "',Gender='" + RBLg.SelectedValue + "',[Birth Date]='" + TXTdob.Text + "',Age='" + TXTage.Text + "',[Mobile No]='" + TXTmno.Text + "',Address='" + TXTAdd.Text + "',[E_Mail ID]='" + TXTemail.Text + "',Password='" + TXTpass.Text + "',Hobbies='" +Label1.Text+ "',Country='" + DDLcountry.SelectedValue + "',State='" + DDLstate.SelectedValue + "'where ID='"+DropDownList1.SelectedValue+"'", con);
    cmd.ExecuteNonQuery();
    GridView1.DataBind();
    DropDownList1.DataBind();
    con.Close();
    con.Close();
    txtfn.Text = "";
    txtln.Text = "";
    RBLg.ClearSelection();
    TXTdob.Text = "";
    TXTage.Text = "";
    TXTmno.Text = "";
    TXTAdd.Text = "";
    TXTemail.Text = "";
    TXTpass.Text = "";
    TXTconpass.Text = "";
    CBLHobb.ClearSelection();
}
protected void BTNdele_Click(object sender, EventArgs e)
{
    cmd = new SqlCommand("delete from Table5 where ID='" + DropDownList1.SelectedValue + "'", con);
    cmd.ExecuteNonQuery();
    GridView1.DataBind();
    DropDownList1.DataBind();
    con.Close();
}
}