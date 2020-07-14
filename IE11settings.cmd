@echo off
echo starting prerun
echo Windows Registry Editor Version 5.00 > IE11settings.reg
echo. >> IE11settings.reg
echo [HKEY_CLASSES_ROOT\MIME\Database\Content Type\application/json] "CLSID"="{25336920-03F9-11cf-8FD0-00AA00686F13}" "Encoding"=hex:08,00,00,00 >> IE11settings.reg
echo [HKEY_CLASSES_ROOT\MIME\Database\Content Type\text/json] "CLSID"="{25336920-03F9-11cf-8FD0-00AA00686F13}" "Encoding"=hex:08,00,00,00 >> IE11settings.reg

echo content of registry file to import:
type IE11settings.reg
echo importing registry file
reg import IE11settings.reg

