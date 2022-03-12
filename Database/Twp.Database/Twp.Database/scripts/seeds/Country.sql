----select * from VT_COUNTRY

--SELECT 
--	' IF NOT EXISTS(SELECT TOP 1 1 FROM  '
--	+
--	'Country'
--	+
--	' WHERE Name = ''' + C.COUNTRY + ''' '
--	+
--	' AND Code = ''' + C.ISO_CD + ''' '
--	+
--	' ) '
--	+
--	' BEGIN '
--	+
--	' INSERT INTO  '
--	+
--	' Country '
--	+
--	' (Id, Code, Name) '
--	+
--	' VALUES ( '+ CONVERT(VARCHAR(10), C.COUNTRY_ID) + ', ''' + C.ISO_CD + ''', ''' + C.COUNTRY + ''' '
--	+ ' ) '
--	+ ' END ; '
--FROM
--	VT_COUNTRY C


BEGIN TRY
	BEGIN TRANSACTION ADD_COUNTRIES


	 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Afghanistan'  AND Code = 'AF'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 4, 'AF', 'Afghanistan'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Albania'  AND Code = 'AL'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 8, 'AL', 'Albania'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Algeria'  AND Code = 'DZ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 12, 'DZ', 'Algeria'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'American Samoa'  AND Code = 'AS'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 16, 'AS', 'American Samoa'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Andorra'  AND Code = 'AD'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 20, 'AD', 'Andorra'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Angola'  AND Code = 'AO'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 24, 'AO', 'Angola'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Antigua and Barbuda'  AND Code = 'AG'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 28, 'AG', 'Antigua and Barbuda'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Azerbaijan'  AND Code = 'AZ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 31, 'AZ', 'Azerbaijan'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Argentina'  AND Code = 'AR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 32, 'AR', 'Argentina'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Australia'  AND Code = 'AU'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 36, 'AU', 'Australia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Austria'  AND Code = 'AT'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 40, 'AT', 'Austria'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Bahamas'  AND Code = 'BS'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 44, 'BS', 'Bahamas'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Bahrain'  AND Code = 'BH'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 48, 'BH', 'Bahrain'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Bangladesh'  AND Code = 'BD'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 50, 'BD', 'Bangladesh'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Armenia'  AND Code = 'AM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 51, 'AM', 'Armenia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Barbados'  AND Code = 'BB'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 52, 'BB', 'Barbados'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Belgium'  AND Code = 'BE'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 56, 'BE', 'Belgium'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Bermuda'  AND Code = 'BM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 60, 'BM', 'Bermuda'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Bhutan'  AND Code = 'BT'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 64, 'BT', 'Bhutan'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Bolivia'  AND Code = 'BO'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 68, 'BO', 'Bolivia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Bosnia and Herzegovina'  AND Code = 'BA'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 70, 'BA', 'Bosnia and Herzegovina'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Botswana'  AND Code = 'BW'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 72, 'BW', 'Botswana'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Brazil'  AND Code = 'BR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 76, 'BR', 'Brazil'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Belize'  AND Code = 'BZ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 84, 'BZ', 'Belize'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Solomon Islands'  AND Code = 'SB'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 90, 'SB', 'Solomon Islands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'British Virgin Islands'  AND Code = 'VG'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 92, 'VG', 'British Virgin Islands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Brunei Darussalam'  AND Code = 'BN'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 96, 'BN', 'Brunei Darussalam'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Bulgaria'  AND Code = 'BG'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 100, 'BG', 'Bulgaria'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Myanmar'  AND Code = 'MM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 104, 'MM', 'Myanmar'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Burundi'  AND Code = 'BI'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 108, 'BI', 'Burundi'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Belarus'  AND Code = 'BY'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 112, 'BY', 'Belarus'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Cambodia'  AND Code = 'KH'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 116, 'KH', 'Cambodia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Cameroon'  AND Code = 'CM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 120, 'CM', 'Cameroon'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Canada'  AND Code = 'CA'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 124, 'CA', 'Canada'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Cape Verde'  AND Code = 'CV'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 132, 'CV', 'Cape Verde'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Cayman Islands'  AND Code = 'KY'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 136, 'KY', 'Cayman Islands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Central African Republic'  AND Code = 'CF'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 140, 'CF', 'Central African Republic'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Sri Lanka'  AND Code = 'LK'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 144, 'LK', 'Sri Lanka'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Chad'  AND Code = 'TD'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 148, 'TD', 'Chad'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Chile'  AND Code = 'CL'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 152, 'CL', 'Chile'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'China'  AND Code = 'CN'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 156, 'CN', 'China'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Taiwan Province of China'  AND Code = 'TW'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 158, 'TW', 'Taiwan Province of China'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Colombia'  AND Code = 'CO'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 170, 'CO', 'Colombia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Comoros'  AND Code = 'KM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 174, 'KM', 'Comoros'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Mayotte'  AND Code = 'YT'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 175, 'YT', 'Mayotte'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Congo'  AND Code = 'CG'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 178, 'CG', 'Congo'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Democratic Republic of the Congo'  AND Code = 'CD'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 180, 'CD', 'Democratic Republic of the Congo'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Cook Islands'  AND Code = 'CK'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 184, 'CK', 'Cook Islands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Costa Rica'  AND Code = 'CR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 188, 'CR', 'Costa Rica'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Croatia'  AND Code = 'HR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 191, 'HR', 'Croatia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Cuba'  AND Code = 'CU'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 192, 'CU', 'Cuba'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Cyprus'  AND Code = 'CY'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 196, 'CY', 'Cyprus'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Czech Republic'  AND Code = 'CZ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 203, 'CZ', 'Czech Republic'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Benin'  AND Code = 'BJ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 204, 'BJ', 'Benin'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Denmark'  AND Code = 'DK'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 208, 'DK', 'Denmark'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Dominica'  AND Code = 'DM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 212, 'DM', 'Dominica'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Dominican Republic'  AND Code = 'DO'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 214, 'DO', 'Dominican Republic'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Ecuador'  AND Code = 'EC'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 218, 'EC', 'Ecuador'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'El Salvador'  AND Code = 'SV'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 222, 'SV', 'El Salvador'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Equatorial Guinea'  AND Code = 'GQ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 226, 'GQ', 'Equatorial Guinea'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Ethiopia'  AND Code = 'ET'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 231, 'ET', 'Ethiopia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Eritrea'  AND Code = 'ER'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 232, 'ER', 'Eritrea'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Estonia'  AND Code = 'EE'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 233, 'EE', 'Estonia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Faroe Islands'  AND Code = 'FO'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 234, 'FO', 'Faroe Islands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Falkland Islands (Malvinas)'  AND Code = 'FK'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 238, 'FK', 'Falkland Islands (Malvinas)'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Fiji'  AND Code = 'FJ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 242, 'FJ', 'Fiji'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Finland'  AND Code = 'FI'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 246, 'FI', 'Finland'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'France'  AND Code = 'FR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 250, 'FR', 'France'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'French Guiana'  AND Code = 'GF'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 254, 'GF', 'French Guiana'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'French Polynesia'  AND Code = 'PF'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 258, 'PF', 'French Polynesia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Djibouti'  AND Code = 'DJ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 262, 'DJ', 'Djibouti'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Gabon'  AND Code = 'GA'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 266, 'GA', 'Gabon'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Georgia'  AND Code = 'GE'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 268, 'GE', 'Georgia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Gambia'  AND Code = 'GM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 270, 'GM', 'Gambia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Occupied Palestinian Territory'  AND Code = 'PK'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 275, 'PK', 'Occupied Palestinian Territory'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Germany'  AND Code = 'DE'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 276, 'DE', 'Germany'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Ghana'  AND Code = 'GH'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 288, 'GH', 'Ghana'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Gibraltar'  AND Code = 'GI'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 292, 'GI', 'Gibraltar'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Kiribati'  AND Code = 'KI'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 296, 'KI', 'Kiribati'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Greece'  AND Code = 'GR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 300, 'GR', 'Greece'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Greenland'  AND Code = 'GL'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 304, 'GL', 'Greenland'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Grenada'  AND Code = 'GD'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 308, 'GD', 'Grenada'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Guadeloupe'  AND Code = 'GP'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 312, 'GP', 'Guadeloupe'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Guam'  AND Code = 'GU'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 316, 'GU', 'Guam'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Guatemala'  AND Code = 'GT'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 320, 'GT', 'Guatemala'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Guinea'  AND Code = 'GN'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 324, 'GN', 'Guinea'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Guyana'  AND Code = 'GY'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 328, 'GY', 'Guyana'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Haiti'  AND Code = 'HT'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 332, 'HT', 'Haiti'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Holy See'  AND Code = 'VA'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 336, 'VA', 'Holy See'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Honduras'  AND Code = 'HN'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 340, 'HN', 'Honduras'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Hong Kong'  AND Code = 'HK'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 344, 'HK', 'Hong Kong'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Hungary'  AND Code = 'HU'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 348, 'HU', 'Hungary'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Iceland'  AND Code = 'IS'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 352, 'IS', 'Iceland'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'India'  AND Code = 'IN'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 356, 'IN', 'India'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Indonesia'  AND Code = 'ID'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 360, 'ID', 'Indonesia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Iran (Islamic Republic of)'  AND Code = 'IR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 364, 'IR', 'Iran (Islamic Republic of)'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Iraq'  AND Code = 'IQ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 368, 'IQ', 'Iraq'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Ireland'  AND Code = 'IE'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 372, 'IE', 'Ireland'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Israel'  AND Code = 'IL'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 376, 'IL', 'Israel'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Italy'  AND Code = 'IT'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 380, 'IT', 'Italy'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Cote d''Ivoire'  AND Code = 'CI'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 384, 'CI', 'Cote d''Ivoire'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Jamaica'  AND Code = 'JM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 388, 'JM', 'Jamaica'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Japan'  AND Code = 'JP'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 392, 'JP', 'Japan'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Kazakhstan'  AND Code = 'KZ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 398, 'KZ', 'Kazakhstan'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Jordan'  AND Code = 'JO'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 400, 'JO', 'Jordan'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Kenya'  AND Code = 'KE'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 404, 'KE', 'Kenya'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Democratic People''s Republic of Korea'  AND Code = 'KP'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 408, 'KP', 'Democratic People''s Republic of Korea'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Republic of Korea'  AND Code = 'KR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 410, 'KR', 'Republic of Korea'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Kuwait'  AND Code = 'KW'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 414, 'KW', 'Kuwait'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Kyrgyzstan'  AND Code = 'KG'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 417, 'KG', 'Kyrgyzstan'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Lao People''s Democratic Republic'  AND Code = 'LA'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 418, 'LA', 'Lao People''s Democratic Republic'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Lebanon'  AND Code = 'LB'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 422, 'LB', 'Lebanon'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Lesotho'  AND Code = 'LS'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 426, 'LS', 'Lesotho'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Latvia'  AND Code = 'LV'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 428, 'LV', 'Latvia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Liberia'  AND Code = 'LR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 430, 'LR', 'Liberia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Libyan Arab Jamahiriya'  AND Code = 'LY'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 434, 'LY', 'Libyan Arab Jamahiriya'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Liechtenstein'  AND Code = 'LI'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 438, 'LI', 'Liechtenstein'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Lithuania'  AND Code = 'LT'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 440, 'LT', 'Lithuania'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Luxembourg'  AND Code = 'LU'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 442, 'LU', 'Luxembourg'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Macau'  AND Code = 'MO'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 446, 'MO', 'Macau'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Madagascar'  AND Code = 'MG'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 450, 'MG', 'Madagascar'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Malawi'  AND Code = 'MW'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 454, 'MW', 'Malawi'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Malaysia'  AND Code = 'MY'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 458, 'MY', 'Malaysia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Maldives'  AND Code = 'MV'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 462, 'MV', 'Maldives'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Mali'  AND Code = 'ML'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 466, 'ML', 'Mali'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Malta'  AND Code = 'MT'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 470, 'MT', 'Malta'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Martinique'  AND Code = 'MQ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 474, 'MQ', 'Martinique'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Mauritania'  AND Code = 'MR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 478, 'MR', 'Mauritania'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Mauritius'  AND Code = 'MU'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 480, 'MU', 'Mauritius'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Mexico'  AND Code = 'MX'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 484, 'MX', 'Mexico'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Monaco'  AND Code = 'MC'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 492, 'MC', 'Monaco'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Mongolia'  AND Code = 'MN'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 496, 'MN', 'Mongolia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Republic of Moldova'  AND Code = 'MD'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 498, 'MD', 'Republic of Moldova'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Montserrat'  AND Code = 'MS'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 500, 'MS', 'Montserrat'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Morocco'  AND Code = 'MA'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 504, 'MA', 'Morocco'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Mozambique'  AND Code = 'MZ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 508, 'MZ', 'Mozambique'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Oman'  AND Code = 'OM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 512, 'OM', 'Oman'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Namibia'  AND Code = 'NA'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 516, 'NA', 'Namibia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Nauru'  AND Code = 'NR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 520, 'NR', 'Nauru'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Nepal'  AND Code = 'NP'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 524, 'NP', 'Nepal'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Netherlands'  AND Code = 'NL'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 528, 'NL', 'Netherlands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Netherlands Antilles'  AND Code = 'AN'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 530, 'AN', 'Netherlands Antilles'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Aruba'  AND Code = 'AW'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 533, 'AW', 'Aruba'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'New Caledonia'  AND Code = 'NC'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 540, 'NC', 'New Caledonia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Vanuatu'  AND Code = 'VU'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 548, 'VU', 'Vanuatu'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'New Zealand'  AND Code = 'NZ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 554, 'NZ', 'New Zealand'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Nicaragua'  AND Code = 'NI'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 558, 'NI', 'Nicaragua'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Niger'  AND Code = 'NE'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 562, 'NE', 'Niger'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Nigeria'  AND Code = 'NG'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 566, 'NG', 'Nigeria'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Niue'  AND Code = 'NU'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 570, 'NU', 'Niue'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Norfolk Island'  AND Code = 'NF'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 574, 'NF', 'Norfolk Island'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Norway'  AND Code = 'NO'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 578, 'NO', 'Norway'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Northern Mariana Islands'  AND Code = 'MP'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 580, 'MP', 'Northern Mariana Islands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Micronesia, Federated States of'  AND Code = 'FM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 583, 'FM', 'Micronesia, Federated States of'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Marshall Islands'  AND Code = 'MH'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 584, 'MH', 'Marshall Islands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Palau'  AND Code = 'PW'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 585, 'PW', 'Palau'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Pakistan'  AND Code = 'PK'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 586, 'PK', 'Pakistan'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Panama'  AND Code = 'PA'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 591, 'PA', 'Panama'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Papua New Guinea'  AND Code = 'PG'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 598, 'PG', 'Papua New Guinea'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Paraguay'  AND Code = 'PY'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 600, 'PY', 'Paraguay'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Peru'  AND Code = 'PE'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 604, 'PE', 'Peru'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Philippines'  AND Code = 'PH'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 608, 'PH', 'Philippines'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Pitcairn'  AND Code = 'PN'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 612, 'PN', 'Pitcairn'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Poland'  AND Code = 'PL'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 616, 'PL', 'Poland'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Portugal'  AND Code = 'PT'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 620, 'PT', 'Portugal'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Guinea-Bissau'  AND Code = 'GW'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 624, 'GW', 'Guinea-Bissau'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Timor-Leste'  AND Code = 'TL'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 626, 'TL', 'Timor-Leste'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Puerto Rico'  AND Code = 'PR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 630, 'PR', 'Puerto Rico'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Qatar'  AND Code = 'QA'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 634, 'QA', 'Qatar'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Romania'  AND Code = 'RO'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 642, 'RO', 'Romania'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Russian Federation'  AND Code = 'RU'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 643, 'RU', 'Russian Federation'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Rwanda'  AND Code = 'RW'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 646, 'RW', 'Rwanda'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Saint Helena'  AND Code = 'SH'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 654, 'SH', 'Saint Helena'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Saint Kitts and Nevis'  AND Code = 'KN'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 659, 'KN', 'Saint Kitts and Nevis'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Anguilla'  AND Code = 'AI'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 660, 'AI', 'Anguilla'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Saint Lucia'  AND Code = 'LC'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 662, 'LC', 'Saint Lucia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Saint Pierre and Miquelon'  AND Code = 'PM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 666, 'PM', 'Saint Pierre and Miquelon'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Saint Vincent and the Grenadines'  AND Code = 'VC'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 670, 'VC', 'Saint Vincent and the Grenadines'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'San Marino'  AND Code = 'SM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 674, 'SM', 'San Marino'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Sao Tome and Principe'  AND Code = 'ST'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 678, 'ST', 'Sao Tome and Principe'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Saudi Arabia'  AND Code = 'SA'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 682, 'SA', 'Saudi Arabia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Senegal'  AND Code = 'SN'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 686, 'SN', 'Senegal'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Seychelles'  AND Code = 'SC'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 690, 'SC', 'Seychelles'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Sierra Leone'  AND Code = 'SL'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 694, 'SL', 'Sierra Leone'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Singapore'  AND Code = 'SG'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 702, 'SG', 'Singapore'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Slovakia'  AND Code = 'SK'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 703, 'SK', 'Slovakia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Viet Nam'  AND Code = 'VN'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 704, 'VN', 'Viet Nam'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Slovenia'  AND Code = 'SI'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 705, 'SI', 'Slovenia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Somalia'  AND Code = 'SO'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 706, 'SO', 'Somalia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'South Africa'  AND Code = 'ZA'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 710, 'ZA', 'South Africa'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Zimbabwe'  AND Code = 'ZW'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 716, 'ZW', 'Zimbabwe'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Spain'  AND Code = 'ES'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 724, 'ES', 'Spain'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Western Sahara'  AND Code = 'EH'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 732, 'EH', 'Western Sahara'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Sudan'  AND Code = 'SD'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 736, 'SD', 'Sudan'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Suriname'  AND Code = 'SR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 740, 'SR', 'Suriname'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Svalbard and Jan Mayen Islands'  AND Code = 'SJ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 744, 'SJ', 'Svalbard and Jan Mayen Islands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Swaziland'  AND Code = 'SZ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 748, 'SZ', 'Swaziland'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Sweden'  AND Code = 'SE'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 752, 'SE', 'Sweden'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Switzerland'  AND Code = 'CH'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 756, 'CH', 'Switzerland'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Syrian Arab Republic'  AND Code = 'SY'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 760, 'SY', 'Syrian Arab Republic'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Tajikistan'  AND Code = 'TJ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 762, 'TJ', 'Tajikistan'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Thailand'  AND Code = 'TH'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 764, 'TH', 'Thailand'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Togo'  AND Code = 'TG'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 768, 'TG', 'Togo'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Tokelau'  AND Code = 'TK'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 772, 'TK', 'Tokelau'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Tonga'  AND Code = 'TO'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 776, 'TO', 'Tonga'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Trinidad and Tobago'  AND Code = 'TT'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 780, 'TT', 'Trinidad and Tobago'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'United Arab Emirates'  AND Code = 'AE'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 784, 'AE', 'United Arab Emirates'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Tunisia'  AND Code = 'TN'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 788, 'TN', 'Tunisia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Turkey'  AND Code = 'TR'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 792, 'TR', 'Turkey'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Turkmenistan'  AND Code = 'TM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 795, 'TM', 'Turkmenistan'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Turks and Caicos Islands'  AND Code = 'TC'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 796, 'TC', 'Turks and Caicos Islands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Tuvalu'  AND Code = 'TV'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 798, 'TV', 'Tuvalu'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Uganda'  AND Code = 'UG'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 800, 'UG', 'Uganda'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Ukraine'  AND Code = 'UA'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 804, 'UA', 'Ukraine'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'The former Yugoslav Republic of Macedonia'  AND Code = 'MK'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 807, 'MK', 'The former Yugoslav Republic of Macedonia'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Egypt'  AND Code = 'EG'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 818, 'EG', 'Egypt'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'United Kingdom'  AND Code = 'GB'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 826, 'GB', 'United Kingdom'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Channel Islands'  AND Code = 'GB'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 830, 'GB', 'Channel Islands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Isle of Man'  AND Code = 'IM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 833, 'IM', 'Isle of Man'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'United Republic of Tanzania'  AND Code = 'TZ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 834, 'TZ', 'United Republic of Tanzania'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'United States'  AND Code = 'US'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 840, 'US', 'United States'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'United States Virgin Islands'  AND Code = 'VI'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 850, 'VI', 'United States Virgin Islands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Burkina Faso'  AND Code = 'BF'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 854, 'BF', 'Burkina Faso'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Uruguay'  AND Code = 'UY'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 858, 'UY', 'Uruguay'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Uzbekistan'  AND Code = 'UZ'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 860, 'UZ', 'Uzbekistan'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Venezuela'  AND Code = 'VE'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 862, 'VE', 'Venezuela'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Wallis and Futuna Islands'  AND Code = 'WF'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 876, 'WF', 'Wallis and Futuna Islands'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Samoa'  AND Code = 'WC'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 882, 'WC', 'Samoa'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Yemen'  AND Code = 'YE'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 887, 'YE', 'Yemen'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Serbia and Montenegro'  AND Code = 'RS'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 891, 'RS', 'Serbia and Montenegro'  )  END ; 
 IF NOT EXISTS(SELECT TOP 1 1 FROM  Country WHERE Name = 'Zambia'  AND Code = 'ZM'  )  BEGIN  INSERT INTO   Country  (Id, Code, Name)  VALUES ( 894, 'ZM', 'Zambia'  )  END ; 

	COMMIT TRANSACTION ADD_COUNTRIES
END TRY
BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION ADD_COUNTRIES
	  PRINT 'ERROR'
   END 
END CATCH


--	SELECT 
--		' UPDATE Country SET OperationEnabled = '
--		+
--		CASE WHEN OP_ENABLED = 'N' THEN '0' ELSE '1' END
--		+
--		' , '
--		+
--		' OrderBy = ' + CONVERT(VARCHAR(8), ORDER_NO)
--		+
--		' WHERE Code = ''' + ISO_CD + ''''
--		+ 
--		' AND Name = ''' + COUNTRY + ''';'
--	FROM VT_COUNTRY

BEGIN TRY
	BEGIN TRANSACTION ADD_OPERATION_ENABLED

	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AF' AND Name = 'Afghanistan';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AL' AND Name = 'Albania';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'DZ' AND Name = 'Algeria';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AS' AND Name = 'American Samoa';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AD' AND Name = 'Andorra';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AO' AND Name = 'Angola';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AG' AND Name = 'Antigua and Barbuda';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AZ' AND Name = 'Azerbaijan';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AR' AND Name = 'Argentina';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AU' AND Name = 'Australia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AT' AND Name = 'Austria';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BS' AND Name = 'Bahamas';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BH' AND Name = 'Bahrain';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BD' AND Name = 'Bangladesh';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AM' AND Name = 'Armenia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BB' AND Name = 'Barbados';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BE' AND Name = 'Belgium';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BM' AND Name = 'Bermuda';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BT' AND Name = 'Bhutan';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BO' AND Name = 'Bolivia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BA' AND Name = 'Bosnia and Herzegovina';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BW' AND Name = 'Botswana';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BR' AND Name = 'Brazil';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BZ' AND Name = 'Belize';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SB' AND Name = 'Solomon Islands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'VG' AND Name = 'British Virgin Islands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BN' AND Name = 'Brunei Darussalam';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BG' AND Name = 'Bulgaria';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MM' AND Name = 'Myanmar';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BI' AND Name = 'Burundi';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BY' AND Name = 'Belarus';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'KH' AND Name = 'Cambodia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CM' AND Name = 'Cameroon';
	 UPDATE Country SET OperationEnabled = 1 ,  OrderBy = 3 WHERE Code = 'CA' AND Name = 'Canada';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CV' AND Name = 'Cape Verde';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'KY' AND Name = 'Cayman Islands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CF' AND Name = 'Central African Republic';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'LK' AND Name = 'Sri Lanka';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TD' AND Name = 'Chad';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CL' AND Name = 'Chile';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CN' AND Name = 'China';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TW' AND Name = 'Taiwan Province of China';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CO' AND Name = 'Colombia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'KM' AND Name = 'Comoros';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'YT' AND Name = 'Mayotte';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CG' AND Name = 'Congo';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CD' AND Name = 'Democratic Republic of the Congo';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CK' AND Name = 'Cook Islands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CR' AND Name = 'Costa Rica';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'HR' AND Name = 'Croatia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CU' AND Name = 'Cuba';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CY' AND Name = 'Cyprus';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CZ' AND Name = 'Czech Republic';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BJ' AND Name = 'Benin';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'DK' AND Name = 'Denmark';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'DM' AND Name = 'Dominica';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'DO' AND Name = 'Dominican Republic';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'EC' AND Name = 'Ecuador';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SV' AND Name = 'El Salvador';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GQ' AND Name = 'Equatorial Guinea';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'ET' AND Name = 'Ethiopia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'ER' AND Name = 'Eritrea';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'EE' AND Name = 'Estonia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'FO' AND Name = 'Faroe Islands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'FK' AND Name = 'Falkland Islands (Malvinas)';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'FJ' AND Name = 'Fiji';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'FI' AND Name = 'Finland';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'FR' AND Name = 'France';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GF' AND Name = 'French Guiana';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PF' AND Name = 'French Polynesia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'DJ' AND Name = 'Djibouti';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GA' AND Name = 'Gabon';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GE' AND Name = 'Georgia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GM' AND Name = 'Gambia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PK' AND Name = 'Occupied Palestinian Territory';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'DE' AND Name = 'Germany';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GH' AND Name = 'Ghana';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GI' AND Name = 'Gibraltar';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'KI' AND Name = 'Kiribati';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GR' AND Name = 'Greece';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GL' AND Name = 'Greenland';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GD' AND Name = 'Grenada';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GP' AND Name = 'Guadeloupe';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GU' AND Name = 'Guam';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GT' AND Name = 'Guatemala';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GN' AND Name = 'Guinea';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GY' AND Name = 'Guyana';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'HT' AND Name = 'Haiti';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'VA' AND Name = 'Holy See';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'HN' AND Name = 'Honduras';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'HK' AND Name = 'Hong Kong';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'HU' AND Name = 'Hungary';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'IS' AND Name = 'Iceland';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'IN' AND Name = 'India';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'ID' AND Name = 'Indonesia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'IR' AND Name = 'Iran (Islamic Republic of)';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'IQ' AND Name = 'Iraq';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'IE' AND Name = 'Ireland';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'IL' AND Name = 'Israel';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'IT' AND Name = 'Italy';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CI' AND Name = 'Cote d''Ivoire';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'JM' AND Name = 'Jamaica';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'JP' AND Name = 'Japan';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'KZ' AND Name = 'Kazakhstan';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'JO' AND Name = 'Jordan';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'KE' AND Name = 'Kenya';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'KP' AND Name = 'Democratic People''s Republic of Korea';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'KR' AND Name = 'Republic of Korea';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'KW' AND Name = 'Kuwait';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'KG' AND Name = 'Kyrgyzstan';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'LA' AND Name = 'Lao People''s Democratic Republic';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'LB' AND Name = 'Lebanon';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'LS' AND Name = 'Lesotho';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'LV' AND Name = 'Latvia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'LR' AND Name = 'Liberia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'LY' AND Name = 'Libyan Arab Jamahiriya';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'LI' AND Name = 'Liechtenstein';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'LT' AND Name = 'Lithuania';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'LU' AND Name = 'Luxembourg';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MO' AND Name = 'Macau';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MG' AND Name = 'Madagascar';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MW' AND Name = 'Malawi';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MY' AND Name = 'Malaysia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MV' AND Name = 'Maldives';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'ML' AND Name = 'Mali';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MT' AND Name = 'Malta';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MQ' AND Name = 'Martinique';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MR' AND Name = 'Mauritania';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MU' AND Name = 'Mauritius';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 4 WHERE Code = 'MX' AND Name = 'Mexico';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MC' AND Name = 'Monaco';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MN' AND Name = 'Mongolia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MD' AND Name = 'Republic of Moldova';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MS' AND Name = 'Montserrat';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MA' AND Name = 'Morocco';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MZ' AND Name = 'Mozambique';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'OM' AND Name = 'Oman';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'NA' AND Name = 'Namibia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'NR' AND Name = 'Nauru';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'NP' AND Name = 'Nepal';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'NL' AND Name = 'Netherlands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AN' AND Name = 'Netherlands Antilles';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AW' AND Name = 'Aruba';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'NC' AND Name = 'New Caledonia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'VU' AND Name = 'Vanuatu';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'NZ' AND Name = 'New Zealand';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'NI' AND Name = 'Nicaragua';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'NE' AND Name = 'Niger';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'NG' AND Name = 'Nigeria';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'NU' AND Name = 'Niue';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'NF' AND Name = 'Norfolk Island';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'NO' AND Name = 'Norway';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MP' AND Name = 'Northern Mariana Islands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'FM' AND Name = 'Micronesia, Federated States of';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MH' AND Name = 'Marshall Islands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PW' AND Name = 'Palau';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PK' AND Name = 'Pakistan';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PA' AND Name = 'Panama';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PG' AND Name = 'Papua New Guinea';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PY' AND Name = 'Paraguay';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PE' AND Name = 'Peru';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PH' AND Name = 'Philippines';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PN' AND Name = 'Pitcairn';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PL' AND Name = 'Poland';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PT' AND Name = 'Portugal';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GW' AND Name = 'Guinea-Bissau';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TL' AND Name = 'Timor-Leste';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PR' AND Name = 'Puerto Rico';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'QA' AND Name = 'Qatar';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'RO' AND Name = 'Romania';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'RU' AND Name = 'Russian Federation';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'RW' AND Name = 'Rwanda';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SH' AND Name = 'Saint Helena';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'KN' AND Name = 'Saint Kitts and Nevis';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AI' AND Name = 'Anguilla';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'LC' AND Name = 'Saint Lucia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'PM' AND Name = 'Saint Pierre and Miquelon';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'VC' AND Name = 'Saint Vincent and the Grenadines';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SM' AND Name = 'San Marino';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'ST' AND Name = 'Sao Tome and Principe';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SA' AND Name = 'Saudi Arabia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SN' AND Name = 'Senegal';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SC' AND Name = 'Seychelles';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SL' AND Name = 'Sierra Leone';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SG' AND Name = 'Singapore';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SK' AND Name = 'Slovakia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'VN' AND Name = 'Viet Nam';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SI' AND Name = 'Slovenia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SO' AND Name = 'Somalia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'ZA' AND Name = 'South Africa';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'ZW' AND Name = 'Zimbabwe';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'ES' AND Name = 'Spain';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'EH' AND Name = 'Western Sahara';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SD' AND Name = 'Sudan';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SR' AND Name = 'Suriname';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SJ' AND Name = 'Svalbard and Jan Mayen Islands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SZ' AND Name = 'Swaziland';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SE' AND Name = 'Sweden';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'CH' AND Name = 'Switzerland';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'SY' AND Name = 'Syrian Arab Republic';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TJ' AND Name = 'Tajikistan';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TH' AND Name = 'Thailand';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TG' AND Name = 'Togo';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TK' AND Name = 'Tokelau';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TO' AND Name = 'Tonga';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TT' AND Name = 'Trinidad and Tobago';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'AE' AND Name = 'United Arab Emirates';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TN' AND Name = 'Tunisia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TR' AND Name = 'Turkey';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TM' AND Name = 'Turkmenistan';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TC' AND Name = 'Turks and Caicos Islands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TV' AND Name = 'Tuvalu';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'UG' AND Name = 'Uganda';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'UA' AND Name = 'Ukraine';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'MK' AND Name = 'The former Yugoslav Republic of Macedonia';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'EG' AND Name = 'Egypt';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GB' AND Name = 'United Kingdom';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'GB' AND Name = 'Channel Islands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'IM' AND Name = 'Isle of Man';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'TZ' AND Name = 'United Republic of Tanzania';
	 UPDATE Country SET OperationEnabled = 1 ,  OrderBy = 1 WHERE Code = 'US' AND Name = 'United States';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 2 WHERE Code = 'VI' AND Name = 'United States Virgin Islands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'BF' AND Name = 'Burkina Faso';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'UY' AND Name = 'Uruguay';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'UZ' AND Name = 'Uzbekistan';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'VE' AND Name = 'Venezuela';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'WF' AND Name = 'Wallis and Futuna Islands';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'WC' AND Name = 'Samoa';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'YE' AND Name = 'Yemen';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'RS' AND Name = 'Serbia and Montenegro';
	 UPDATE Country SET OperationEnabled = 0 ,  OrderBy = 999 WHERE Code = 'ZM' AND Name = 'Zambia';

 	COMMIT TRANSACTION ADD_OPERATION_ENABLED
END TRY
BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION ADD_OPERATION_ENABLED
	  PRINT 'ERROR'
   END 
END CATCH


--select * from country