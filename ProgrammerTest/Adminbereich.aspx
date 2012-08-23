<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Adminbereich.aspx.cs" Inherits="ProgrammerTest.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    Kunden<br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Kunden" DataTextField="CustomerName" DataValueField="CustomerName">
    </asp:DropDownList>
    <asp:EntityDataSource ID="Kunden" runat="server" ConnectionString="name=ProgrammingTestEntities2" DefaultContainerName="ProgrammingTestEntities2" EnableFlattening="False" EntitySetName="Customer" Select="it.[CustomerName]">
    </asp:EntityDataSource>
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="TestsVonKunde">
        <Columns>
            <asp:BoundField DataField="TestName" HeaderText="TestName" ReadOnly="True" SortExpression="TestName" />
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="TestsVonKunde" runat="server" 
        ConnectionString="name=ProgrammingTestEntities2" 
        DefaultContainerName="ProgrammingTestEntities2" 
        EnableFlattening="False" 
        EntitySetName="Test" 
        EntityTypeFilter="Test" 
        Select="it.[TestName]"
        Where="DropDownList1.value"
        >
    </asp:EntityDataSource>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
    <asp:Label ID="lblQuestionTitle" runat="server" Text="Question Title"></asp:Label>
<asp:TextBox ID="txtQuestionTitle" runat="server" Height="16px" Width="294px"></asp:TextBox>
<br />
<asp:Label ID="lblQuestionText" runat="server" Text="Question Text"></asp:Label>
<asp:TextBox ID="txtQuestionText" runat="server" Height="168px" Width="681px"></asp:TextBox>
<br />
<asp:Label ID="lblTopicList" runat="server" Text="Zuordnung zu Test:"></asp:Label>
    <asp:DropDownList ID="dropTopicList" runat="server" DataSourceID="Tests" DataTextField="TestName" DataValueField="TestName">
    </asp:DropDownList>
    <asp:EntityDataSource ID="Tests" runat="server" ConnectionString="name=ProgrammingTestEntities2" DefaultContainerName="ProgrammingTestEntities2" EnableFlattening="False" EntitySetName="Test" Select="it.[TestName]">
    </asp:EntityDataSource>
    <br />
    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Button" />
    </asp:Content>
