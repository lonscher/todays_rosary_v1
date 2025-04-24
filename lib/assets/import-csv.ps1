$lgs = Import-Csv -Path C:\GitHub\todays_rosary\lib\assets\liturgical_calendar_2025.csv -Delimiter '|' 

$lgs | select Month,Day,DOW,Color,Grade,Notes,Readings | ft 
