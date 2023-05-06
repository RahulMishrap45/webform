<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Check.aspx.cs" Inherits="webform.Check" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body>
    <div class="container p-5">
        <div class="row">
            <div class="col-8 offset-2" style="border: 2px solid black;">
                <form id="form1" runat="server" class="form-inline" style="padding: 20px; font-size: 18px; font-weight: bold">
                    <div class="form-group">
                        <span style="width: 200px;">Student Name:</span>
                        <asp:TextBox class="form-control" ID="stuName" runat="server" placeholder="@Rahul"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="form-group" style="text-align: start">
                        <span style="display: block; width: 200px;">Student Designation:</span>
                        <asp:TextBox class="form-control" ID="stuDesignation" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <span style="width: 200px">Student Mobile:</span>
                        <asp:TextBox  class="form-control" ID="stuMobile" runat="server" type="number"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <span style="width: 200px">Student Email:</span>
                        <asp:TextBox  class="form-control" ID="stuEmail" runat="server" type="email"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <span style="width: 200px">Student Address:</span>
                        <asp:TextBox class="form-control" ID="stuAddress" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" class="btn btn-dark" runat="server" type="reset" onclick="Clear" Text="Clear" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" class="btn btn-success" runat="server"  onclick="AddDetails" Text="Add Details" />
                </form>
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="row">
                <h1>#Student Data</h1>
                <table>
                    <tr>
                        <td>Student Name</td>
                        <td>Student Designation</td>
                        <td>Student Mobile</td>
                        <td>Student Email</td>
                        <td>Student Address</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
