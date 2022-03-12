DECLARE 
	@PasswordRecoveryTemplateUrl NVARCHAR(2000),
	@UserSignUpNotApprovedByAdminTemplateUrl NVARCHAR(2000),
	@UserSignUpNeedAdminApprovalTemplateUrl NVARCHAR(2000),
	@UserSignUpAutomaticApprovedTemplateUrl NVARCHAR(2000),
	@UserSignUpApprovedByAdminTemplateUrl NVARCHAR(2000),
	@AdminNotificationToApproveUsersTemplateUrl NVARCHAR(2000);

-- NEED CI/CD PROCESS TO GET THESE URLS AND RUN THIS SCRIPT EXPECTING SOME PARAMETERS

INSERT INTO EmailTemplate (EmailSubject, EmailType, HtmlFileUrl, EmailTemplateType)
VALUES ('Forgot Password Verification Email', 'PasswordRecovery', @PasswordRecoveryTemplateUrl, 'Full');

INSERT INTO EmailTemplate (EmailSubject, EmailType, HtmlFileUrl, EmailTemplateType)
VALUES ('SignUp Denied', 'UserSignUpNotApprovedByAdmin', @UserSignUpNotApprovedByAdminTemplateUrl, 'Full')


INSERT INTO EmailTemplate (EmailSubject, EmailType, HtmlFileUrl, EmailTemplateType)
VALUES ('SignUp is Under Review', 'UserSignUpNeedAdminApproval', @UserSignUpNeedAdminApprovalTemplateUrl, 'Full')


INSERT INTO EmailTemplate (EmailSubject, EmailType, HtmlFileUrl, EmailTemplateType)
VALUES ('SignUp Approved', 'UserSignUpAutomaticApproved', @UserSignUpAutomaticApprovedTemplateUrl, 'Full')

INSERT INTO EmailTemplate (EmailSubject, EmailType, HtmlFileUrl, EmailTemplateType)
VALUES ('SignUp Approved', 'UserSignUpApprovedByAdmin', @UserSignUpApprovedByAdminTemplateUrl, 'Full')

INSERT INTO EmailTemplate (EmailSubject, EmailType, HtmlFileUrl, EmailTemplateType)
VALUES ('New users to approve', 'AdminNotificationToApproveUsers', @AdminNotificationToApproveUsersTemplateUrl, 'Full')