<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Contact Form
    </h2>
    <%= Html.ValidationSummary() %>
    <% using (Html.BeginForm()) { %>
        <div>
            <fieldset>
                <legend>Contact Information</legend>
                <p>
                    <label for="FirstName">
                        First Name
                    </label>
                    <%= Html.TextBox("FirstName") %>
                    <%= Html.ValidationMessage("FirstName", "*")%>
                </p>
                <p>
                    <label for="LastName">
                        Last Name
                    </label>
                    <%= Html.TextBox("LastName")%>
                    <%= Html.ValidationMessage("LastName", "*")%>
                </p>
                <p>
                    <label for="Phone">
                        Phone
                    </label>
                    <%= Html.TextBox("Phone")%>
                    <%= Html.ValidationMessage("Phone", "*")%>
                </p>
                <p>
                    <label for="Email">
                        Email
                    </label>
                    <%= Html.TextBox("Email") %>
                    <%= Html.ValidationMessage("Email", "*")%>
                </p>
                <p>
                    <input type="submit" value="Submit" />
                </p>
            </fieldset>
        </div>
    <% } %>
</asp:Content>
