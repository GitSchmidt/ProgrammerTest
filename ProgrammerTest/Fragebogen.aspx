<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fragebogen.aspx.cs" Inherits="ProgrammerTest.Fragebogen" %>


<asp:Content runat="server" ID="Fragebogen" ContentPlaceHolderID="MainContent">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Adminbereich.aspx">Adminbereich</asp:HyperLink>
    </div>
    <div>
        <asp:ListView ID="ListView1"  ItemPlaceholderID="DataSection" runat="server" DataSourceID="EntityDataSource1">
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="DataSection" />
                </div>
                <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                </div>
            </LayoutTemplate>
            <AlternatingItemTemplate>
                <span style="background-color: #FFFFFF;color: #284775;">id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                QuestionTitle:
                <asp:Label ID="QuestionTitleLabel" runat="server" Text='<%# Eval("QuestionTitle") %>' />
                <br />
                QuestionText:
                <asp:Label ID="QuestionTextLabel" runat="server" Text='<%# Eval("QuestionText") %>' />
                <br />
                <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #999999;">id:
                <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                <br />
                QuestionTitle:
                <asp:TextBox ID="QuestionTitleTextBox" runat="server" Text='<%# Bind("QuestionTitle") %>' />
                <br />
                QuestionText:
                <asp:TextBox ID="QuestionTextTextBox" runat="server" Text='<%# Bind("QuestionText") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aktualisieren" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Abbrechen" />
                <br />
                <br />
                </span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>Es wurden keine Daten zurückgegeben.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">id:
                <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                <br />
                QuestionTitle:
                <asp:TextBox ID="QuestionTitleTextBox" runat="server" Text='<%# Bind("QuestionTitle") %>' />
                <br />
                QuestionText:
                <asp:TextBox ID="QuestionTextTextBox" runat="server" Text='<%# Bind("QuestionText") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Einfügen" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Löschen" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #E0FFFF;color: #333333;">id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                QuestionTitle:
                <asp:Label ID="QuestionTitleLabel" runat="server" Text='<%# Eval("QuestionTitle") %>' />
                <br />
                QuestionText:
                <asp:Label ID="QuestionTextLabel" runat="server" Text='<%# Eval("QuestionText") %>' />
                <br />
                <br />

                </span>
            </ItemTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                QuestionTitle:
                <asp:Label ID="QuestionTitleLabel" runat="server" Text='<%# Eval("QuestionTitle") %>' />
                <br />
                QuestionText:
                <asp:Label ID="QuestionTextLabel" runat="server" Text='<%# Eval("QuestionText") %>' />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
            <ItemSeparatorTemplate>
                <div style="height: 0px; border-top: dashed 1px #ff0000"></div>
            </ItemSeparatorTemplate>
        </asp:ListView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=ProgrammingTestEntities2" DefaultContainerName="ProgrammingTestEntities2" EnableFlattening="False" EntitySetName="Question" Select="it.[id], it.[QuestionTitle], it.[QuestionText]" OrderBy="it.[id]"></asp:EntityDataSource>
        <asp:DataPager ID="DataPager1" PagedControlID="ListView1" PageSize="1" runat="server">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" 
                    ShowFirstPageButton="true"  
                    ShowNextPageButton="true" 
                    ShowPreviousPageButton ="true"                    
                    ShowLastPageButton ="true"   />  
                <asp:NumericPagerField />              
            </Fields>
        </asp:DataPager>
    </div>
    </asp:Content>