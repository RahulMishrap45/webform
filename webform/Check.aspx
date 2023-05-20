<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Check.aspx.cs" Inherits="webform.Check" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

     <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
</head>
<body>
    <form id="form2" runat="server" class="form-inline" style="padding: 20px; font-size: 18px; font-weight: bold">
        <div class="container p-5">
            <div class="row">
                <div class="col-8 offset-2" style="border: 2px solid black;">
                    <div class="form-group mt-3 justify-content-center">
                        <span style="width: 200px;">Student Name:</span>
                        <asp:TextBox class="form-control" ID="stuName" runat="server" placeholder="@Rahul"></asp:TextBox>
                        <%-- Validation on input field --%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="required field" Style="color: red; margin-left: 30px" ControlToValidate="stuName">
                        </asp:RequiredFieldValidator>
                    </div>
                    <br />

                    <div class="form-group justify-content-center" style="text-align: start">
                        <span style="display: block; width: 200px;">Student Designation:</span>
                        <asp:TextBox class="form-control" ID="stuDesignation" runat="server"></asp:TextBox>
                        <%-- Validation on input field --%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ErrorMessage="required field" Style="color: red; margin-left: 30px" ControlToValidate="stuDesignation">
                        </asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <div class="form-group justify-content-center">
                        <span style="width: 200px">Student Mobile:</span>
                        <asp:TextBox class="form-control" ID="stuMobile" runat="server" type="number"></asp:TextBox>
                        <%-- Validation on input field --%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="required field" Style="color: red; margin-left: 30px" ControlToValidate="stuMobile">
                        </asp:RequiredFieldValidator>
                    </div>
                    <br />

                    <div class="form-group justify-content-center">
                        <span style="width: 200px">Student Email:</span>
                        <asp:TextBox class="form-control" ID="stuEmail" runat="server" type="email"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ErrorMessage="required field" Style="color: red; margin-left: 30px" ControlToValidate="stuEmail">
                        </asp:RequiredFieldValidator>
                    </div>
                    <br />

                    <div class="form-group justify-content-center">
                        <span style="width: 200px">Student Address:</span>
                        <asp:TextBox class="form-control" ID="stuAddress" runat="server"></asp:TextBox>
                        <%-- Validation on input field --%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ErrorMessage="required field" Style="color: red; margin-left: 30px" ControlToValidate="stuAddress">
                        </asp:RequiredFieldValidator>
                    </div>
                    <br />

                    <div class="justify-content-center mb-3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" class="btn btn-dark" runat="server" type="reset" OnClick="Clear" Text="Clear" CausesValidation="false"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" class="btn btn-success" runat="server" OnClick="AddDetails" Text="Add Details" CausesValidation="true" />
                    </div>

                </div>
            </div>
        </div>
        <div class="container p-5">
            <div class="row">
               <div class="col form-inline my-2 my-lg-0 justify-content-center">
                    <input id="serchbox" class="form-control mr-sm-2" type="search" runat="server" placeholder="Search">
                   <asp:Button class="btn btn-outline-success my-2 my-sm-0" Text="submit" runat="server" OnClick="Serch_Click" CausesValidation="false"/>
                </div>
            </div>
        </div>
        <div class="container p-5">
            <div class="row">
                <div class="col">
                    <div class="form-group justify-content-center">
                              <asp:GridView ID="GridControl" runat="server" AutoGenerateColumns="false"
                        CssClass="table table-responsive table-hover" Width="100%" AllowPaging="true"
                                    AllowSorting="True">
                                  <AlternatingRowStyle BackColor="White"/>
                                  <HeaderStyle BackColor="#6B696B" Font-Bold="true" Font-size="Larger" ForeColor="White" />
                                  <RowStyle BackColor="#f5f5f5" />
                                  <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                <ItemTemplate>
                                    <asp:Label ID="stuname" runat="server" Text='<%#Eval("StuName")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:Label ID="stuname" runat="server" Text='<%#Eval("StuEmail")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile No.">
                                <ItemTemplate>
                                    <asp:Label ID="stuname" runat="server" Text='<%#Eval("StuMobile")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address">
                                <ItemTemplate>
                                    <asp:Label ID="stuname" runat="server" Text='<%#Eval("StuAddress")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Designation">
                                <ItemTemplate>
                                    <asp:Label ID="stuname" runat="server" Text='<%#Eval("StuDesignation")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                        </div>
                    <%-- List of data using GridView--%>
                </div>
            </div>
        </div>
    </form>

    <!-- Script Code here for checking the field-->
    <%--<script>
        document.getElementById("Button2").onclick = function () {
            if () {
                alert('Error please fill all fields!');
            }
        };
    </script>--%>
</body>
</html>
