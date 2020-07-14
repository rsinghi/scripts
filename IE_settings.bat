@echo off
reg add "HKEY_CLASSES_ROOT\MIME\Database\Content Type\application/json" /t REG_SZ /d "{25336920-03F9-11cf-8FD0-00AA00686F13}"; 
reg add "HKEY_CLASSES_ROOT\MIME\Database\Content Type\application/json" /v Encoding /t REG_DWORD /d 0x08000000
