<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ragistration Form.aspx.cs" Inherits="Ragistration_Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" href="Styles/StyleSheet.css" type="text/css" />
    <style type="text/css">
        .style2
        {
            text-align: right;
        }
    </style>
  
  
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                    First Name</td>
                <td class="style1">
                    :</td>
                <td class="style12">
                    <asp:TextBox ID="txtfn" runat="server"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Please Enter Your First Name...!!!" ForeColor="Red" 
                        ControlToValidate="txtfn">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Last Name</td>
                <td class="style1">
                    :</td>
                <td class="style12">
                    <asp:TextBox ID="txtln" runat="server"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Please Enter Your Last Name...!!!" ForeColor="Red" 
                        ControlToValidate="txtln">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Gender</td>
                <td class="style1">
                    :</td>
                <td class="style12">
                    <asp:RadioButtonList ID="RBLg" runat="server" RepeatColumns="2">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style13" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Please Select Your Gender...!!!" ForeColor="Red" 
                        ControlToValidate="RBLg">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Date of Birth</td>
                <td class="style1">
                    :</td>
                <td class="style6" style="text-align: left">
                    <asp:TextBox ID="TXTdob" runat="server"></asp:TextBox>
                </td>
                <td class="style14" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Please Enter Your Birth Date...!!!" ForeColor="Red" 
                        ControlToValidate="TXTdob">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Age</td>
                <td class="style1">
                    :</td>
                <td class="style6" style="text-align: left">
                    <asp:TextBox ID="TXTage" runat="server" MaxLength="2"></asp:TextBox>
                </td>
                <td class="style14" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Please Enter Your Age...!!!" ForeColor="Red" 
                        ControlToValidate="TXTage">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ErrorMessage="Please Enter Your Age Between 18 to 28...!!!" 
                        ControlToValidate="TXTage" ForeColor="Red" MaximumValue="28" 
                        MinimumValue="18" Width="300px"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Mobile No</td>
                <td class="style1">
                    :</td>
                <td class="style6" style="text-align: left">
                    <asp:TextBox ID="TXTmno" runat="server"></asp:TextBox>
                </td>
                <td class="style14" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Please Enter Your Mobile No...!!!" ForeColor="Red" 
                        ControlToValidate="TXTmno">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Please Enter Your Mobile No in Valid Format" 
                        ControlToValidate="TXTmno" ForeColor="Red" ValidationExpression="\d{10}" 
                        Width="300px"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Address</td>
                <td class="style1">
                    :</td>
                <td class="style6" style="text-align: left">
                    <asp:TextBox ID="TXTAdd" runat="server" Height="54px" TextMode="MultiLine" 
                        Width="199px"></asp:TextBox>
                </td>
                <td class="style14" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="Please Enter Your Address...!!!" ForeColor="Red" 
                        ControlToValidate="TXTAdd">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    E_Mail ID</td>
                <td class="style1">
                    :</td>
                <td class="style6" style="text-align: left">
                    <asp:TextBox ID="TXTemail" runat="server"></asp:TextBox>
                </td>
                <td class="style14" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="Please Enter Your E_Mail Addresss...!!!" ForeColor="Red" 
                        ControlToValidate="TXTemail">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Please Enter Your E-mail Address in Valid Format...!!!" 
                        ControlToValidate="TXTemail" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        Width="350px"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Password</td>
                <td class="style1">
                    :</td>
                <td class="style6" style="text-align: left">
                    <asp:TextBox ID="TXTpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style14" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Please Enter Your Password...!!!" ForeColor="Red" 
                        ControlToValidate="TXTpass">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Confirm-Password</td>
                <td class="style1">
                    :</td>
                <td class="style6" style="text-align: left">
                    <asp:TextBox ID="TXTconpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style14" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="Please Enter your Confirm Password..." ForeColor="Red" 
                        ControlToValidate="TXTconpass">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Your Password is Not Match...!!!" ControlToCompare="TXTpass" 
                        ControlToValidate="TXTconpass" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Hobbies</td>
                <td class="style1">
                    :</td>
                <td class="style6" style="text-align: left">
                    <asp:CheckBoxList ID="CBLHobb" runat="server" RepeatColumns="1" Width="122px" 
                        Height="49px">
                        <asp:ListItem>Singing</asp:ListItem>
                        <asp:ListItem>Reading</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="style14" style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Country</td>
                <td class="style1">
                    :</td>
                <td class="style6" style="text-align: left">
                    <asp:DropDownList ID="DDLcountry" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DDLcountry_SelectedIndexChanged" >
                        <asp:ListItem>--Select Country--</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style14" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                 ErrorMessage="Please Select Your Country...!!!" ForeColor="Red" 
                        ControlToValidate="DDLcountry" InitialValue="--Select Country--">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    State</td>
                <td class="style1">
                    :</td>
                <td class="style6" style="text-align: left">
                    <asp:DropDownList ID="DDLstate" runat="server">
                        <asp:ListItem>--Select State--</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style14" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ErrorMessage="Please Select Your State...!!!" ForeColor="Red" 
                        ControlToValidate="DDLstate" InitialValue="--Select State--">*</asp:RequiredFieldValidator>
                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Image</td>
                <td class="style1">
                    :</td>
                <td class="style6" style="text-align: left">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="style14" style="text-align: left">
                    <asp:Label ID="lblerror" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="4">
                    Select Name For Update/Delete operation : 
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="First_Name" DataValueField="ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style10" colspan="4" width="80">
                    <asp:Button ID="BTNins" runat="server" Text="Insert" onclick="BTNins_Click" />
                    <asp:Button ID="BTNupd" runat="server" Text="Update" onclick="BTNupd_Click" />
                    <asp:Button ID="BTNdele" runat="server" Text="Delete" CausesValidation="False" 
                        onclick="BTNdele_Click" />
                </td>
            </tr>
            <tr>
                <td class="style10" colspan="4" width="80">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="First Name" HeaderText="First Name" 
                                SortExpression="First Name" />
                            <asp:BoundField DataField="Last Name" HeaderText="Last Name" 
                                SortExpression="Last Name" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                                SortExpression="Gender" />
                            <asp:BoundField DataField="Birth Date" HeaderText="Birth Date" 
                                SortExpression="Birth Date" />
                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                            <asp:BoundField DataField="Mobile No" HeaderText="Mobile No" 
                                SortExpression="Mobile No" />
                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                SortExpression="Address" />
                            <asp:BoundField DataField="E_Mail ID" HeaderText="E_Mail ID" 
                                SortExpression="E_Mail ID" />
                            <asp:BoundField DataField="Password" HeaderText="Password" 
                                SortExpression="Password" />
                            <asp:BoundField DataField="Hobbies" HeaderText="Hobbies" 
                                SortExpression="Hobbies" />
                            <asp:BoundField DataField="Country" HeaderText="Country" 
                                SortExpression="Country" />
                            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
