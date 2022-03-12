DECLARE @HTML_TEMPLATE NVARCHAR(MAX);
SET @HTML_TEMPLATE = N'
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" lang="en">
  <head>
    <title>Communication</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
		<div class="container" style="margin: 0;padding: 0;width: 100%;max-width: 100%;height: 100%;max-height: 100%;display: block;text-align: center;">
			<br />
			<br />
			
			<!--HEADER LOGO-->
			<img style="text-align: center" src="{{##HEADER_LOGO_URL##}}" alt="logo" />
			<!--HEADER LOGO-->
        </div>
        <br />
        <br />
        <br />
        <br />
		
        <!--CONTENT-->
		{{##CONTENT##}}
		<!--CONTENT-->        
        
        <br />
        <br />
        <br />
        <br />
        <br />

		<div class="container" style="margin: 0;padding: 0;width: 100%;max-width: 100%;height: 100%;max-height: 100%;display: block;text-align: center;">
			<!--AUTOMATIC TEXT-->
			{{##AUTOMATIC_TEXT##}}
			<!--AUTOMATIC TEXT-->    
			
			<br />
			<br />			
			
			<!--FOOTER-->
			{{##FOOTER##}}
			<!--FOOTER-->    
			
			<br/>
			<br/>
			
			<p class="copyright" style="margin: 0;padding: 0;display: inline;font-family: ''ProximaNova'', sans-serif;font-size: small;color: grey;width: 45%;text-align: center;">
			<b>&#169; {{##COPYRIGHT_YEAR##}} Ports America. All rights reserved.</b></p>
		</div>
    </div>
  </body>
</html>
';

IF NOT EXISTS (SELECT TOP 1 1 FROM EmailTemplate WHERE EmailType = 'BroadcastNotification' AND TerminalId IS NULL)
BEGIN
    INSERT INTO EmailTemplate (EmailTemplateType, EmailType, HtmlContent)
    VALUES
    ('Full', 'BroadcastNotification', @HTML_TEMPLATE);
END