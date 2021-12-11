<%@ Page Title="" Language="C#" MasterPageFile="~/ATMSMaster.Master" AutoEventWireup="true" CodeBehind="GetVMS.aspx.cs" Inherits="ATMS.GetVMS" CodeFile="GetVMS.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script>
    $(document).ready(function(){
	    $('.launch-modal').click(function(){
		    $('#myModal1').modal({
			    backdrop: 'static'
		    });
	    }); 
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager" runat="server" />

   <div style="width:1098px; margin:auto; height:400px; border:1px solid #09408b">
    <div id="VMSHeading">
        <div style="width:800px; float:left;" ><p>Device-CCTV-Device Management (path)</p>  </div>
        <div style="width:284px; margin-left:806px; margin-top:-12px; padding-left:213px;"><input type="button" class="btn btn-primary launch-modal" value="Create"/></div>
        
    </div>
    <div id="Search">
        <div class="form-inline">
            <div class="form-group has-success has-feedback">
                <label for="inputSuccess">ID</label>
                <input type="text" class="form-control" id="txtSearchID">
                <span class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>
             <div class="form-group" style="padding-left:35px;">
            </div>
            
            <div class="form-group has-success has-feedback">
                <label for="inputSuccess">Or Name</label>
                <input type="text" class="form-control" id="txtSearchName">
                <span class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>
            <div class="form-group" style="padding-left:35px;">
            </div>
            <div class="form-group">
                <label for="inputSuccess">   Active</label>
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked style="height:15px; width:15px;">
            </div>
            <div class="form-group" style="padding-left:60px;">
            </div>
            <div class="form-group">
                 <button type="button" class="btn btn-info"> <span class="glyphicon glyphicon-search"></span>Search</button>
            </div>
        </div>
     </div>
    
    <%--create Device Popup--%>
    <div id="myModal1" class="modal fade">
        <div class="modal-dialog" style="width:1000px;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><b>Create CCTV Device:-</b></h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body" >
                    <div class="form-inline">
                        <div class="form-group">
                            <label for="inputdefault">Device Name:</label>
                            <asp:TextBox ID="txtDeviceName" runat="server" class="form-control" placeholder="Enter Device Name"  style="margin-left:70px;"  ></asp:TextBox>
                            <%--<input type="text" class="form-control" id="txtDeviceName" placeholder="Enter Device Name" name="DeviceName" style="margin-left:70px;"/>--%>
                        </div>
                        <div class="form-group" style="padding-left:35px;"></div>
                        <div class="form-group">
                            <label for="inputdefault">Location:</label>
                            <asp:TextBox ID="txtLocation" runat="server" class="form-control" placeholder="Enter Location Name"  style="margin-left:50px;"  ></asp:TextBox>
                            <%--<input type="password" class="form-control" id="txtLocation" placeholder="Enter Location" name="Location" style="margin-left:50px;"/>--%>
                        </div>
                    </div>
                    <div class="lineheight"></div>
                    <div class="form-inline">
                        <div class="form-group">
                            <label for="inputdefault">Latitude:</label>
                            <asp:TextBox ID="txtLatitude" runat="server" class="form-control" placeholder="Enter Latitude Name"   style="margin-left:102px;"  ></asp:TextBox>
                            <%--<input type="password" class="form-control" id="txtLatitude" placeholder="Enter Latitude" name="Latitude" style="margin-left:102px;"/>--%>
                        </div>
                        <div class="form-group" style="padding-left:35px;"></div>
                        <div class="form-group">
                            <label for="inputdefault">longitude:</label>
                            <asp:TextBox ID="txtlongitude" runat="server" class="form-control" placeholder="Enter Device Name"  style="margin-left:47px;"  ></asp:TextBox>
                            <%--<input type="text" class="form-control" id="txtlongitude" placeholder="Enter longitude" name="longitude" style="margin-left:47px;"/>--%>
                        </div>
                      </div>
                      <div class="lineheight"></div>
                      <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Direction:</label>
                                <asp:TextBox ID="txtDirection" runat="server" class="form-control" placeholder="Enter Direction Name"   style="margin-left:96px;"  ></asp:TextBox>
                              <%--<input type="text" class="form-control" id="txtDirection" placeholder="Enter Direction" name="Direction" style="margin-left:96px;"/>--%>
                            </div>
                          <div class="form-group" style="padding-left:35px;"></div>
                            <div class="form-group">
                              <label for="inputdefault">Active:</label>
                                 <asp:DropDownList ID="ddlActive" runat="server" CssClass="form-control" style="margin-left:67px;" >
                                   <asp:ListItem>--Select--</asp:ListItem>
                                     <asp:ListItem>Yes</asp:ListItem>
                                   <asp:ListItem>No</asp:ListItem>
                               </asp:DropDownList>
                              <%--<input type="text" class="form-control" id="ddlActive" placeholder="Enter Mobile No" name="mobileNo" style="margin-left:67px;"/>--%>
                            </div>
                        </div>
                        <div class="lineheight"></div>
                          <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Communication Type :</label>
                                <asp:TextBox ID="txtCommunicationType" runat="server" class="form-control" placeholder="Enter Communication Type"  style="margin-left:11px;"  ></asp:TextBox>
                              <%--<input type="text" class="form-control" id="txtCommunicationType" placeholder="Enter Communication Type" name="CommunicationType" style="margin-left:11px;"/>--%>
                            </div>
                              <div class="form-group" style="padding-left:35px;"></div>
                            <div class="form-group">
                              <label for="inputdefault">IP Address :</label>
                                <asp:TextBox ID="txtIPAddress" runat="server" class="form-control" placeholder="Enter IP Address"  style="margin-left:35px;"  ></asp:TextBox>
                              <%--<input type="text" class="form-control" id="txtIPAddress" placeholder="Enter IP Address" name="IPAddress" style="margin-left:35px;"/>--%>
                            </div>
                          </div>
                        <div class="lineheight"></div>
                          <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">Port:</label>
                                <asp:TextBox ID="txtPort" runat="server" class="form-control" placeholder="Enter Port"  style="margin-left:128px;"  ></asp:TextBox>
                              <%--<input type="text" class="form-control" id="txtPort" placeholder="Enter Port" name="Port" style="margin-left:128px;"/>--%>
                            </div>
                              <div class="form-group" style="padding-left:35px;"></div>
                            <div class="form-group">
                              <label for="inputdefault">Url:</label>
                                <asp:TextBox ID="txtUrl" runat="server" class="form-control" placeholder="Enter Url Name"  style="margin-left:92px;width:380px;"  ></asp:TextBox>
                              <%--<input type="text" class="form-control" id="txtUrl" placeholder="Enter Url" name="Url" style="/*margin-left:92px; width:380px;*/"/>--%>
                            </div>
                          </div>
                        <div class="lineheight"></div>
                          <div class="form-inline">
                            <div class="form-group">
                              <label for="inputdefault">User Name:</label>
                                <asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="Enter User Name"   style="margin-left:84px;"  ></asp:TextBox>
                              <%--<input type="text" class="form-control" id="txtUserName" placeholder="Enter User Name" name="User Name" style="margin-left:84px;"/>--%>
                            </div>
                             <div class="form-group" style="padding-left:35px;"></div>
                            <div class="form-group">
                              <label for="inputdefault">Password:</label>
                                <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Enter Password"  style="margin-left:44px;"  ></asp:TextBox>
                              <%--<input type="text" class="form-control" id="txtPassword" placeholder="Enter Password" name="Password" style="margin-left:44px;"/>--%>
                            </div>
                          </div>
                        <div class="lineheight"></div>
                </div>
                <asp:UpdatePanel ID="upnlUsers" runat="server">
                <ContentTemplate>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <asp:Button ID="btnSave" runat="server"  Text="Save" class="btn btn-primary" OnClick="btnSave_Click"/>
                     <asp:Label ID="lblverification" runat="server" Font-Size="12pt"></asp:Label>
                    <%--<button type="button" class="btn btn-primary">Save</button>--%>
                </div>
         </ContentTemplate>
            </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <%--End  Device Popup--%>
    

</div>
  
</asp:Content>
