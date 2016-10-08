Setlocal EnableDelayedExpansion

for /f %%G IN (S:\smithm\scripts\vms.txt) do xcopy S:\smithm\scripts\diskpart_extend.txt \\%%G\c$ /Y & c:\pstools\psexec \\%%G diskpart /s c:\diskpart_extend.txt