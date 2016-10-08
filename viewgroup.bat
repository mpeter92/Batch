setlocal enabledelayedexpansion

Set /p _file="Please enter the full path to the file with the list of pcs to amend: "

::Set /p name="Please enter the username: "

for /f %%G IN (%_file%) do echo %%G >> \\ieatw1-d\temp\smithm\scripts\group.csv && c:\pstools\psexec \\%%G -c wmic computersystem get model >> \\ieatw1-d\temp\smithm\scripts\group.csv
