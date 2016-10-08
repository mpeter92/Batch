type \\ieatw1-d\temp\smithm\scripts\pcs.txt

set /p _sure="Are you sure you want to disable the list of pcs? " 

if %_sure%==y goto disable
if %_sure%==n goto exit

:disable
FOR /F %%G in (\\ieatw1-d\temp\smithm\scripts\pcs.txt) do dsquery computer -name %%G |dsmove computer "CN=Hib Devices - Disabled,CN=Hib Devices - Disabled,CN=Hib Devices,DC=Iehibdom,DC=COM" | dsmod computer -disabled yes -desc "disabled by MSmith %date%

:exit
exit