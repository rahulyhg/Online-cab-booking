<%@ Page Language="C#" MasterPageFile="~/Admin/WelcomeAdmin.master" AutoEventWireup="true"
    CodeFile="ManagerNewCreation.aspx.cs" Inherits="Admin_ManagerNewCreation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" cellpadding="0" cellspacing="5" class="border1" style="position: static"
        width="700">
        <tr>
            <td align="center" class="border" colspan="2">
                <b class="title">Manager Details</b></td>
        </tr>
        <tr>
            <td align="right" width="50%">
                <font color="red">*</font><span><b>ManagerName :</b></span></td>
            <td>
                <asp:TextBox ID="Txt_EmpName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 24px">
                <font color="red">*</font><span><b>Address</b></span>&nbsp; :</td>
            <td style="height: 24px">
                <asp:TextBox ID="Txt_ParmanentAddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <font color="red">*</font><span><b>Qulification</b></span>&nbsp; :</td>
            <td>
                <asp:TextBox ID="Txt_Qulification" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                <font color="red">*</font><span><b>DOB</b></span>:</td>
            <td align="left">
                <input id="Txt_DOB" type="text" readonly="readOnly" runat="server" /><a href="javascript:NewCal('<%=Txt_DOB.ClientID %>','mmddyyyy')"><img
                    alt="Pick a date" border="0" height="16" src="../images/cal.gif" width="16" /></a><br />
                mm/dd/yyyy
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                <font color="red">*</font><span><b>Gender</b></span>&nbsp; :</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
                    Style="position: static" Width="158px">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td align="right">
                <font color="red"><span style="color: #000000">*</span></font><span style="color: #ff0000">
                </span><span><b>Phone NO</b></span>&nbsp; :</td>
            <td>
                <asp:TextBox ID="Txt_PhoneNo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            &nbsp;<td align="right">
                <font color="red">*</font><span><b>Email ID</b></span>&nbsp; :</td>
            <td>
                <asp:TextBox ID="TxtEmailID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <font color="red">*</font><span><b>Designation</b></span>&nbsp; :</td>
            <td>
                <asp:DropDownList ID="Txt_Designation" runat="server">
                    <asp:ListItem>Select..</asp:ListItem>
                    <asp:ListItem>HR-Manager</asp:ListItem>
                    <asp:ListItem>Maintainence-Manager</asp:ListItem>
                    <asp:ListItem>Movement-Manager</asp:ListItem>
                    <asp:ListItem>Finance-Manager</asp:ListItem>
                    <asp:ListItem>Quality-Manager</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right">
                <font color="red">*</font><span><b>Department</b></span>&nbsp; :</td>
            <td>
                <span style="color: #ff0000">
                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" Style="position: static"
                        Width="155px">
                        <asp:ListItem>Select..</asp:ListItem>
                        <asp:ListItem>HR</asp:ListItem>
                        <asp:ListItem>Maintainence</asp:ListItem>
                        <asp:ListItem>Movement</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Quality</asp:ListItem>
                    </asp:DropDownList>
                </span>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                <font color="red">*</font><span><b>DOJ</b></span>&nbsp; :</td>
            <td align="left">
                <input id="Txt_DOJ" type="text" readonly="readOnly" runat="server" /><a href="javascript:NewCal('<%=Txt_DOJ.ClientID %>','mmddyyyy')"><img
                    alt="Pick a date" border="0" height="16" src="../images/cal.gif" width="16" /></a><br />
                <span style="color: #ff0000">&nbsp; mm/dd/yyyy </span>
            </td>
        </tr>
        <tr style="font-weight: bold">
            <td align="right">
                <font color="red"><span style="color: #000000">*</span></font><span><b>Age</b></span><span
                    style="color: #ff0000">&nbsp; :</span></td>
            <td style="color: #ff0000">
                <asp:TextBox ID="Txt_Age" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr style="font-weight: bold">
            <td align="center" colspan="2">
                <asp:Label ID="lblMessage" runat="server" Style="position: static"></asp:Label></td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                &nbsp;<asp:Button ID="Btn_Insert" runat="server" Style="position: static" CssClass="button"
                    OnClientClick="javascript:return check();" OnClick="Btn_Insert_Click" Text="Insert" />&nbsp;
                <asp:Button ID="btnClear" runat="server" Style="position: static" Text="Clear" CssClass="button" OnClick="btnClear_Click" />
                <asp:Button ID="btnBack" runat="server" Style="position: static" Text="Back" CssClass="button" OnClick="btnBack_Click" /></td>
        </tr>
    </table>

    <script language="javascript" type="text/javascript">
function check()
   {
  
           var Txt_EmpName=document.getElementById("<%=Txt_EmpName.ClientID%>").value;
            if(Txt_EmpName=="")
            {
                 alert("EmpName Required");
                 document.getElementById("<%=Txt_EmpName.ClientID%>").focus();
                 return false;
            }
            if(Txt_EmpName!="")
            {
                var name=/^[a-zA-Z _.]+$/;
                if(!Txt_EmpName.match(name))
                {
                        document.getElementById("<%=Txt_EmpName.ClientID%>").focus();
                        alert ("EmpName Should be Character");
                        return false;
                }
            }
          var Txt_ParmanentAddress=document.getElementById("<%=Txt_ParmanentAddress.ClientID%>").value;
            if(Txt_ParmanentAddress=="")
            {
               
                alert('ParmanentAddress  Required');
                document.getElementById("<%=Txt_ParmanentAddress.ClientID%>").focus();
                return false;
            }
            
           var Txt_Qulification=document.getElementById("<%=Txt_Qulification.ClientID%>").value;
            if(Txt_Qulification=="")
            {
                 alert("Qulification Required");
                 document.getElementById("<%=Txt_Qulification.ClientID%>").focus();
                 return false;
            }
            if(Txt_Qulification!="")
            {
                var name=/^[a-zA-Z _.]+$/;
                if(!Txt_Qulification.match(name))
                {
                        document.getElementById("<%=Txt_Qulification.ClientID%>").focus();
                        alert ("Qulification Should be Character");
                        return false;
                }
            }
            
             var Txt_DOB=document.getElementById("<%=Txt_DOB.ClientID%>").value; 
            if(Txt_DOB=="")
            {
                alert("Date of Birth Required");
                document.getElementById("<%=Txt_DOB.ClientID%>").focus();
                return false;
            }
            
           
             var rdo=document.getElementById("<%=RadioButtonList1.ClientID %>");
            var opt=rdo.getElementsByTagName('input');
            if(!opt[0].checked && !opt[1].checked)
            {
               alert("Gender Required");
               return false; 
            }
            
             var Txt_PhoneNo=document.getElementById("<%=Txt_PhoneNo.ClientID%>").value;
          if(Txt_PhoneNo=="")
            {
               
                document.getElementById("<%=Txt_PhoneNo.ClientID%>").focus();
                alert('MobileNo Required');
                return false;
            }
           else if(Txt_PhoneNo!="")
            {
             var Exp=/^[0-9 ()+-]+$/;
              if(!Txt_PhoneNo.match(Exp))
                {
                    alert('MobileNo Digits Only');
                    document.getElementById("<%=Txt_PhoneNo.ClientID%>").focus();
                    return false;
                }
            }
              var TxtEmailID=document.getElementById("<%=TxtEmailID.ClientID%>").value;
            if(TxtEmailID=="")
            {
               
                alert('EmailId Required');
                document.getElementById("<%=TxtEmailID.ClientID%>").focus();
                return false;
            }
            else if(TxtEmailID!="")
            {
                var Exp=/^(\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*)+$/;
                if(!TxtEmailID.match(Exp))
                {
                    alert('Invalid EmailId');
                    document.getElementById("<%=TxtEmailID.ClientID%>").focus();
                    return false;
                }
            }
               var Txt_Designation=document.getElementById("<%=Txt_Designation.ClientID%>").selectedIndex;
            if(Txt_Designation==0)
            {
                 alert("Select Designation");
                 return false;
            }
            
            //DropDownList1
             var DropDownList1=document.getElementById("<%=DropDownList1.ClientID%>").selectedIndex;
            if(DropDownList1==0)
            {
                alert('Department Required');
                return false;
            }
             
             var Txt_DOJ=document.getElementById("<%=Txt_DOJ.ClientID%>").value; 
            if(Txt_DOJ=="")
            {
                alert("DOJ Required");
                document.getElementById("<%=Txt_DOJ.ClientID%>").focus();
                return false;
            }
            //Txt_Status
         
            //Txt_Age
            var Txt_Age=document.getElementById("<%=Txt_Age.ClientID%>").value;
          if(Txt_Age=="")
            {
               
                document.getElementById("<%=Txt_Age.ClientID%>").focus();
                alert('Age Required');
                return false;
            }
           else if(Txt_Age!="")
            {
             var Exp=/^[0-9]+$/;
              if(!Txt_Age.match(Exp))
                {
                    alert('Age Digits Only');
                    document.getElementById("<%=Txt_Age.ClientID%>").focus();
                    return false;
                }
            }
            //
          
          
            
     }       
            
    </script>

</asp:Content>
