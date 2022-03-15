﻿DECLARE @HTML_TEMPLATE NVARCHAR(MAX);
SET @HTML_TEMPLATE = N'
<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office"> <head> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1"> <style type="text/css">.container-link{content: "({{##LINK##}})";}</style> </head> <body> <div class="container" style="margin: 0;padding: 0;width: 100%;max-width: 100%;height: 100%;max-height: 100%;display: block;text-align: center;"> <br><br><img src="{{##HOST_WEB_SITE##}}/assets/images/logos/ports_america_logo.png"> <br><br><br><h1 class="user-title" style="font-family: ''ProximaNova'', sans-serif;display: inline-block;font-weight: normal;text-align: center;max-width: 80%;word-wrap: break-word;">Dear <b>{{##USER_FULL_NAME##}},</b></h1> <br><p class="user-message" style="margin: 0;padding: 0;display: inline-block;font-family: ''ProximaNova'', sans-serif;font-size: x-large;color: #2d2d2d;width: 45%;text-align: center;">Congratulations, your account has been approved for the following Terminal(s): <b>{{##DETAIL_0001##}}</b></p><br><br><br><img src="{{##HOST_WEB_SITE##}}/assets/images/provided/email-images/coffee.png" style="max-height: 200px;width: auto"> <br><table width="100%" class="table"> <tr> <td align="center" class="btn btn-default" style="mso-style-priority:100 !important;text-decoration:none;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size: 14px;padding: 6px 12px 6px 12px;display: inline-block;text-align: center;white-space: nowrap;vertical-align: middle;-ms-touch-action: manipulation;touch-action: manipulation;cursor: pointer;background-image: none;border: 1px solid transparent;border-radius: 5px;color: #ffffff;background-color: #bd2036;border-color: #ccc;font-family: ''Chaparral Pro'', sans-serif;width: 45%;height: 45px;max-width: 300px;"> <p> <a href="{{##LINK##}}" class="a-text" style="margin: 0;padding: 0;text-decoration: none;color: #ffffff;font-family: ''Chaparral Pro'', sans-serif; width: 100%;height: 100%; cursor: pointer;"> <b><i>Login</i></b> </a> </p></td></tr></table> <br><br><br><br><p class="copyright" style="margin: 0;padding: 0;display: inline;font-family: ''ProximaNova'', sans-serif;font-size: small;color: grey;width: 45%;text-align: center;"><b>&#169;{{##COPYRIGHT_YEAR##}}Ports America. All rights reserved.</b></p></div></body></html>
';

IF NOT EXISTS (SELECT TOP 1 1 FROM EmailTemplate WHERE EmailType = 'UserSignUpAutomaticApproved' AND TerminalId IS NULL)
BEGIN
    INSERT INTO EmailTemplate (EmailSubject, EmailTemplateType, EmailType, HtmlContent)
    VALUES
    ('SignUp Approved', 'Full', 'UserSignUpAutomaticApproved', @HTML_TEMPLATE);
END