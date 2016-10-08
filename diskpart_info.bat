Setlocal EnableDelayedExpansion



for /f %%G IN (S:\smithm\scripts\vms.txt) do xcopy S:\smithm\scripts\diskpart_info.txt \\%%G\c$ /Y & echo. >> s:\smithm\scripts\vmsdiskinfo.txt & echo %%G >> S:\smithm\scripts\vmsdiskinfo.txt & c:\pstools\psexec \\%%G diskpart /s c:\diskpart_info.txt >> S:\smithm\scripts\vmsdiskinfo.txt