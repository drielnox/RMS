﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register_Courses.aspx.cs" Inherits="RMS.Register_Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">



        .style147
        {
            width: 66%;
            height: 315px;
        }
        .style149
        {
            width: 100px;
        }
        .style151
        {
            width: 177px;
        }
        .style156
        {
            text-align: left;
        }
        .style159
        {
            width: 100px;
            text-align: left;
        height: 20px;
    }
        .style160
        {
            width: 17px;
            text-align: left;
        height: 20px;
    }
        .style163
        {
            width: 230px;
        }
        .style166
        {
            width: 232px;
        }
        .style167
        {
            width: 233px;
        }
        .style168
        {
            width: 237px;
        }
        .style169
        {
            text-align: left;
            color: #FFFFFF;
            font-size: medium;
        height: 19px;
    }
        .style170
        {
            color: #000000;
        }
        .style171
        {
            text-align: left;
            color: #000000;
        height: 30px;
        width: 159px;
    }
    .style176
    {
        width: 17px;
        text-align: left;
        height: 30px;
    }
    .style178
    {
        width: 100px;
        text-align: left;
        height: 30px;
    }
    .style179
    {
        text-align: left;
        height: 20px;
    }
    .style181
    {
        text-align: left;
        height: 20px;
        width: 159px;
    }
    .style183
    {
        text-align: left;
        height: 30px;
    }
    .style187
    {
        width: 100px;
        text-align: left;
        height: 30px;
        color: #000000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p align="center">
    <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" 
        Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
    &nbsp;</p>
<br />
<table class="style147">
    <tr>
        <td>
            <asp:Panel ID="Panel3" runat="server" Height="722px" style="margin-left: 0px" 
                Width="1173px">
                <table class="style147" align="center">
                    <tr>
                        <td class="style169" bgcolor="#006600" colspan="5" style="text-align: center">
                            <strong>Student Record</strong></td>
                    </tr>
                    <tr>
                        <td class="style171" bgcolor="#E4E4E4">
                            Student ID:</td>
                        <td class="style176" bgcolor="#E4E4E4">
                            <asp:TextBox ID="txtStudID" runat="server" Width="190px"></asp:TextBox>
                        </td>
                        <td class="style183" bgcolor="#E4E4E4">
                            <span class="style170"></span></td>
                        <td class="style187" bgcolor="#E4E4E4">
                            Student Name:</span></td>
                        <td class="style183" bgcolor="#E4E4E4">
                            <asp:TextBox ID="txtStudentName" runat="server" Width="190px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style171" bgcolor="#E4E4E4">
                            Program:</td>
                        <td class="style176" bgcolor="#E4E4E4">
                            <asp:TextBox ID="txtStudentProgram" runat="server" Width="190px"></asp:TextBox>
                        </td>
                        <td class="style183" bgcolor="#E4E4E4">
                            <span class="style170"></span></td>
                        <td class="style187" bgcolor="#E4E4E4">
                            Level:</span></td>
                        <td class="style183" bgcolor="#E4E4E4">
                            <asp:TextBox ID="txtStudentLevel" runat="server" Width="190px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style171" bgcolor="#E4E4E4">
                            Session:</td>
                        <td class="style176" bgcolor="#E4E4E4">
                            <asp:TextBox ID="txtSession" runat="server" Width="190px"></asp:TextBox>
                        </td>
                        <td class="style183" bgcolor="#E4E4E4">
                            <span class="style170"></span></td>
                        <td class="style178" bgcolor="#E4E4E4">
                            </td>
                        <td class="style183" bgcolor="#E4E4E4">
                            </span></td>
                    </tr>
                    <tr>
                        <td class="style181" bgcolor="#E4E4E4">
                            <asp:Button ID="btnSearchStud" runat="server" onclick="btnSearchStud_Click" 
                                Text="Search Student" />
                        </td>
                        <td class="style160" bgcolor="#E4E4E4">
                            <span class="style170"></span></td>
                        <td class="style179" bgcolor="#E4E4E4">
                            </td>
                        <td class="style159" bgcolor="#E4E4E4">
                            </td>
                        <td class="style179" bgcolor="#E4E4E4">
                            </span></td>
                    </tr>
                    <tr>
                        <td class="style156" colspan="5">
                            <asp:Panel ID="PanelStudGrid" runat="server" Height="174px" Visible="False" 
                                Width="561px" ScrollBars="Vertical">
                                <table class="style14">
                                    <tr>
                                        <td align="left" class="style57">
                                            <asp:LinkButton ID="lnkCancel" runat="server" Font-Underline="True" 
                                                ForeColor="Black" onclick="lnkCancel_Click">Cancel</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="grdStudent" runat="server" AutoGenerateColumns="False" 
                                                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                                                CellPadding="4" EnableSortingAndPagingCallbacks="True" GridLines="Horizontal" 
                                                HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" Height="16px" 
                                                 PageSize="5" 
                                                style="text-align: justify" Width="345px" 
                                                onselectedindexchanged="grdStudent_SelectedIndexChanged">
                                                <Columns>
                                                    <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" 
                                                        ItemStyle-Width="150">
                                                    <ItemStyle Width="50px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Lastname" HeaderText="Lastname" />
                                                    <asp:BoundField DataField="Firstname" HeaderText="Firstname" />
                                                    <asp:BoundField DataField="Program" HeaderText="Program" />
                                                    <asp:BoundField DataField="Level" HeaderText="Level" />
                                                    <asp:BoundField DataField="Session" HeaderText="Session" />
                                                    <asp:ButtonField CommandName="Select" ItemStyle-Width="150" Text="Select">
                                                    <ItemStyle Width="50px" />
                                                    </asp:ButtonField>
                                                </Columns>
                                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                                <PagerStyle BackColor="#006600" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="White" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#006600" Font-Bold="True" />
                                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                                <SortedDescendingHeaderStyle BackColor="#275353" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Panel ID="Panel4" runat="server" Visible="False">
                    <table align="center" bgcolor="#E4E4E4" class="style2" 
                        style="width: 745px; height: 291px; color: #000000;">
                        <tr>
                            <td align="center" bgcolor="#006600" class="style3" colspan="6">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                    ForeColor="White" style="font-size: large" Text="Add Course"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style166" style="font-size: small; ">
                                Course ID 1:</td>
                            <td align="left" class="style149" style="font-size: small; ">
                                <asp:DropDownList ID="drpCourse1" runat="server" Width="191px" Height="16px" 
                                    style="margin-right: 6px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" style="font-size: small; " class="style163">
                                <asp:TextBox ID="txtbox1" runat="server" Height="18px" Visible="False" 
                                    Width="50px"></asp:TextBox>
                            </td>
                            <td align="left" class="style167" style="font-size: small; ">
                                Course ID 2:</td>
                            <td align="left" class="style168" style="font-size: small; font-weight: bold;">
                                <asp:DropDownList ID="drpCourse2" runat="server" Width="190px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" class="style133" style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtbox2" runat="server" Height="18px" Visible="False" 
                                    Width="50px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style166" style="font-size: small; ">
                                Course ID 3:</td>
                            <td align="left" class="style149" style="font-size: small; ">
                                <asp:DropDownList ID="drpCourse3" runat="server" Width="190px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" style="font-size: small; " class="style163">
                                <asp:TextBox ID="txtbox3" runat="server" Height="18px" Visible="False" 
                                    Width="50px"></asp:TextBox>
                            </td>
                            <td align="left" class="style167" style="font-size: small; ">
                                Course ID 4:</td>
                            </span></span>
                            <td align="left" class="style168" style="font-size: small; font-weight: bold;">
                                <asp:DropDownList ID="drpCourse4" runat="server" Width="190px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" class="style133" style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtbox4" runat="server" Height="18px" Visible="False" 
                                    Width="50px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style166" style="font-size: small; ">
                                Course ID 5:</td>
                            <td align="left" class="style149" style="font-size: small; ">
                                <asp:DropDownList ID="drpCourse5" runat="server" Width="190px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" style="font-size: small; " class="style163">
                                <asp:TextBox ID="txtbox5" runat="server" Height="18px" Visible="False" 
                                    Width="50px"></asp:TextBox>
                            </td>
                            <td align="left" class="style167" style="font-size: small; ">
                                Course ID 6:</td>
                            <td align="left" class="style168" style="font-size: small; font-weight: bold;">
                                <asp:DropDownList ID="drpCourse6" runat="server" Width="190px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtbox6" runat="server" Height="18px" Visible="False" 
                                    Width="50px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style166" style="font-size: small; ">
                                Course ID 7:</td>
                            <td align="left" class="style149" style="font-size: small; ">
                                <asp:DropDownList ID="drpCourse7" runat="server" Width="190px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" style="font-size: small; " class="style163">
                                <asp:TextBox ID="txtbox7" runat="server" Height="18px" Visible="False" 
                                    Width="50px"></asp:TextBox>
                            </td>
                            <td align="left" class="style167" style="font-size: small; ">
                                Course ID 8:</td>
                            </span>
                            <td align="left" class="style168" style="font-size: small; font-weight: bold;">
                                <asp:DropDownList ID="drpCourse8" runat="server" Width="190px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtbox8" runat="server" Height="18px" Visible="False" 
                                    Width="50px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style166" style="font-size: small; ">
                                Course ID 9:</td>
                            <td align="left" class="style149" style="font-size: small; ">
                                <asp:DropDownList ID="drpCourse9" runat="server" Width="190px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" style="font-size: small; " class="style163">
                                <asp:TextBox ID="txtbox9" runat="server" Height="18px" Visible="False" 
                                    Width="50px"></asp:TextBox>
                            </td>
                            <td align="left" class="style167" style="font-size: small; ">
                                Course ID 10:</td>
                            <td align="left" class="style168" style="font-size: small; font-weight: bold;">
                                <asp:DropDownList ID="drpCourse10" runat="server" Width="190px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtbox10" runat="server" Height="18px" Visible="False" 
                                    Width="50px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="style151">
                            <td class="style22" colspan="5">
                                &nbsp;</td>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style22" colspan="5">
                                <asp:Button ID="btnSave" runat="server"  Text="Save" 
                                    Width="78px" onclick="btnSave_Click" />
                                <span class="style151">&nbsp; </span>
                                <asp:Button ID="btnCanc" runat="server" Text="Reset" 
                                    Width="76px" onclick="btnCanc_Click" />
                            </td>
                            <td align="center" class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style151" colspan="5">
                                <asp:TextBox ID="txtDateCreated" runat="server" Visible="False" Width="64px"></asp:TextBox>
                                &nbsp;
                                </td>
                            <td class="style151">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </asp:Panel>
                <br />
                    <br />
                    <br />
                    <br />
                </asp:Panel>
            <br />
        </td>
    </tr>
    </table>
    <br />
    <br />
</asp:Content>
