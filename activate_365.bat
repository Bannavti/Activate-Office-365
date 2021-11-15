@ECHO OFF

echo Check operating system ...
if defined PROGRAMFILES(X86) (
    
    echo 64-bit sytem detected
cd /d %ProgramFiles%\Microsoft Office\Office16

for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x"

cscript ospp.vbs /inpkey:XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99
cscript ospp.vbs /unpkey:BTDRB >nul
cscript ospp.vbs /unpkey:KHGM9 >nul
cscript ospp.vbs /unpkey:CPQVG >nul
cscript ospp.vbs /sethst:kms8.msguides.com
cscript ospp.vbs /setprt:1688
cscript ospp.vbs /act
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /dstatus


) else (
    
    echo 32-bit sytem detected


)



pause
