Set /p _file="Please enter the full path to the file with the list of pcs to amend: "

Set /p name="Please enter the username: "

for /f %%G IN (%_file%) do c:\pstools\psexec \\%%G -c net localgroup "Remote Desktop Users" /add "%name%"
