﻿DECLARE @HTML_TEMPLATE_NOT_APPROVED_BY_ADMIN NVARCHAR(MAX);
SET @HTML_TEMPLATE_NOT_APPROVED_BY_ADMIN = N'
<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" lang="en"> <head> <title>Request denied</title> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1"> <style type="text/css">.container-link{content: "({{##LINK##}})";}</style> </head> <body style="background-color: #FFFFFF;"> <div class="container" style="margin: 0;padding: 0;width: 100%;max-width: 100%;height: 100%;max-height: 100%;display: block;text-align: center;"> <br/> <br/> <img src="{{##HOST_WEB_SITE##}}/assets/images/logos/ports_america_logo.png" alt="logo"/> <h1 class="user-title" style=" margin-top: 60px; height: 39px; color: #000000; font-size: 32px; letter-spacing: 0; line-height: 39px; text-align: center; font-family: ''ProximaNova'', sans-serif; display: block; font-weight: normal; text-align: center; word-wrap: break-word;" > Dear <b>{{##USER_FULL_NAME##}},</b></h1> <br/> <p class="user-message" style="margin: 0;padding: 0;display: inline-block;font-family: ''ProximaNova'', sans-serif;font-size: x-large;color: #2d2d2d;width: 45%;text-align: center;"> Your request has been denied in the Terminal(s): <b>{{##DETAIL_0001##}}</b> <br/>for the following: </p><p style=''height: 20px; color: #C1222B; font-family: "ProximaNova"; font-size: 14px; font-weight: bold; letter-spacing: 0; line-height: 20px; text-align: center; margin-top: 25px;''>{{##DETAIL_0002##}}</p><br/> <br/> <br/> <img src="{{##HOST_WEB_SITE##}}/assets/images/provided/email-images/email-account-blocked.png" alt="account blocked"> <br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/> <p class="copyright" style="margin: 0;padding: 0;display: inline;font-family: ''ProximaNova'', sans-serif;font-size: small;color: grey;width: 45%;text-align: center;"><b>&#169;{{##COPYRIGHT_YEAR##}}Ports America. All rights reserved.</b></p></div></body></html>
';

IF NOT EXISTS (SELECT TOP 1 1 FROM EmailTemplate WHERE EmailType = 'UserSignUpNotApprovedByAdmin' AND TerminalId IS NULL)
BEGIN
    INSERT INTO EmailTemplate (EmailSubject, EmailTemplateType, EmailType, HtmlContent)
    VALUES
    ('SignUp Denied', 'Full', 'UserSignUpNotApprovedByAdmin', @HTML_TEMPLATE_NOT_APPROVED_BY_ADMIN);
END