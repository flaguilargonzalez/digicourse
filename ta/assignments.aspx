﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="assignments.aspx.cs" Inherits="professor_assignments" MasterPageFile="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>DigiCourse | Assignments</title>
    <link rel="stylesheet" href="../stylesheets/dashboard.css" type="text/css" />
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div class="main-dashboard">
        <div class="left">
            <h4>Student Assignments</h4>
            <a href="studentAssignments.aspx" class="more-link" style="font-size:16px;">Give Grades</a>
            <h4>Upload New Assignments</h4>
            Assignment Title:<br />
            <asp:TextBox ID="fileName" runat="server" CssClass="uploadButton" ToolTip="Title" EnableTheming="True"></asp:TextBox><br /><br />
            Due Date:
            <asp:Calendar ID="due_date" runat="server"></asp:Calendar>
            <asp:FileUpload ID="file" CssClass="uploadButton" runat="server" /><br /><br />
            <asp:Button ID="upload" runat="server" Text="Upload" CssClass="uploadButton" OnClick="upload_Click" />
            <asp:Label ID="upload_status" runat="server" Text=""></asp:Label><br /><br />
        </div>
        
        <div class="right">
            <h4>Assignments</h4><br />
            <asp:Panel ID="links" runat="server"></asp:Panel>
        </div>       
    </div>
</asp:Content>

