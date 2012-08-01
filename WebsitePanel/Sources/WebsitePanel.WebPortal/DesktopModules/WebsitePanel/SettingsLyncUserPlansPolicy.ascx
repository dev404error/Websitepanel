﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SettingsLyncUserPlansPolicy.ascx.cs" Inherits="WebsitePanel.Portal.SettingsLyncUserPlansPolicy" %>
<%@ Register Src="UserControls/CollapsiblePanel.ascx" TagName="CollapsiblePanel" TagPrefix="wsp" %>


	<asp:GridView id="gvPlans" runat="server"  EnableViewState="true" AutoGenerateColumns="false"
		Width="100%" EmptyDataText="gvPlans" CssSelectorClass="NormalGridView" OnRowCommand="gvPlan_RowCommand" >
		<Columns>
            <asp:TemplateField HeaderText="gvPlanEdit">
                <ItemTemplate>
                    <asp:ImageButton ID="cmdEdit" runat="server" SkinID="EditSmall" CommandName="EditItem" AlternateText="Edit record" CommandArgument='<%# Eval("LyncUserPlanId") %>' ></asp:ImageButton>
                </ItemTemplate>
             </asp:TemplateField>
			<asp:TemplateField HeaderText="gvPlan">
				<ItemStyle Width="70%"></ItemStyle>
				<ItemTemplate>
					<asp:Label id="lnkDisplayPlan" runat="server" EnableViewState="true" ><%# Eval("LyncUserPlanName")%></asp:Label>
                 </ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="gvPlanDefault">
				<ItemTemplate>
					<div style="text-align:center">
						<input type="radio" name="DefaultPlan" value='<%# Eval("LyncUserPlanId") %>' <%# IsChecked((bool)Eval("IsDefault")) %> />
					</div>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField>
				<ItemTemplate>
					&nbsp;<asp:ImageButton id="imgDelPlan" runat="server" Text="Delete" SkinID="ExchangeDelete"
						CommandName="DeleteItem" CommandArgument='<%# Eval("LyncUserPlanId") %>' 
						meta:resourcekey="cmdDelete" OnClientClick="return confirm('Are you sure you want to delete selected plan?')"></asp:ImageButton>
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
	<br />
	<div style="text-align: center">
		<asp:Button ID="btnSetDefaultPlan" runat="server" meta:resourcekey="btnSetDefaulPlan"
            Text="Set Default Lync user plan" CssClass="Button1" OnClick="btnSetDefaultPlan_Click" />
    </div>
	<wsp:CollapsiblePanel id="secPlan" runat="server"
        TargetControlID="Plan" meta:resourcekey="secPlan" Text="Plan">
    </wsp:CollapsiblePanel>
    <asp:Panel ID="Plan" runat="server" Height="0" style="overflow:hidden;">
		<table>
			<tr>
				<td class="FormLabel200" align="right">
									
				</td>
				<td>
					<asp:TextBox ID="txtPlan" runat="server" CssClass="TextBox200" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valRequirePlan" runat="server" meta:resourcekey="valRequirePlan" ControlToValidate="txtPlan"
					ErrorMessage="Enter plan name" ValidationGroup="CreatePlan" Display="Dynamic" Text="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
				</td>
			</tr>
		</table>
		<br />
	</asp:Panel>

	<wsp:CollapsiblePanel id="secPlanFeatures" runat="server" TargetControlID="PlanFeatures" meta:resourcekey="secPlanFeatures" Text="Plan Features">
    </wsp:CollapsiblePanel>
    <asp:Panel ID="PlanFeatures" runat="server" Height="0" style="overflow:hidden;">
		<table>
			<tr>
				<td>
					<asp:CheckBox ID="chkIM" runat="server" meta:resourcekey="chkIM" Text="Instant Messaging"></asp:CheckBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:CheckBox ID="chkMobility" runat="server" meta:resourcekey="chkMobility" Text="Mobility"></asp:CheckBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:CheckBox ID="chkFederation" runat="server" meta:resourcekey="chkFederation" Text="Federation"></asp:CheckBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:CheckBox ID="chkConferencing" runat="server" meta:resourcekey="chkConferencing" Text="Conferencing"></asp:CheckBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:CheckBox ID="chkEnterpriseVoice" runat="server" meta:resourcekey="chkEnterpriseVoice" Text="Enterprise Voice"></asp:CheckBox>
				</td>
			</tr>
		</table>
		<br />
	</asp:Panel>
			
	<wsp:CollapsiblePanel id="secEnterpriseVoice" runat="server"
        TargetControlID="EnterpriseVoice" meta:resourcekey="secEnterpriseVoice" Text="Enterprise Voice Policy">
    </wsp:CollapsiblePanel>
    <asp:Panel ID="EnterpriseVoice" runat="server" Height="0" style="overflow:hidden;">
		<table>
			<tr>
				<td>
					<asp:RadioButton ID="chkNone" groupName="VoicePolicy" runat="server" meta:resourcekey="chkNone" Text="None"></asp:RadioButton>
				</td>
			</tr>

			<tr>
				<td>
					<asp:RadioButton ID="chkEmergency" groupName="VoicePolicy" runat="server" meta:resourcekey="chkEmergency" Text="Emergency Calls"></asp:RadioButton>
				</td>
			</tr>
			<tr>
				<td>
					<asp:RadioButton ID="chkNational" groupName="VoicePolicy" runat="server" meta:resourcekey="chkNational" Text="National Calls"></asp:RadioButton>
				</td>
			</tr>
			<tr>
				<td>
					<asp:RadioButton ID="chkMobile" groupName="VoicePolicy" runat="server" meta:resourcekey="chkMobile" Text="Mobile Calls"></asp:RadioButton>
				</td>
			</tr>
			<tr>
				<td>
					<asp:RadioButton ID="chkInternational" groupName="VoicePolicy" runat="server" meta:resourcekey="chkInternational" Text="International Calls"></asp:RadioButton>
				</td>
			</tr>


		</table>
		<br />
	</asp:Panel>
					
	<br />

    <div class="FormButtonsBarClean">
        <asp:Button ID="btnAddPlan" runat="server" meta:resourcekey="btnAddPlan"
            Text="Add New plan" CssClass="Button1" OnClick="btnAddPlan_Click" />
    </div>



