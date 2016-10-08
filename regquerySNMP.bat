for /f "tokens=9 delims=^\" %%A in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Monitors\Standard TCP/IP Port\Ports"')^
do reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Monitors\Standard TCP/IP Port\Ports\%%A"^
 /v "SNMP Enabled"

ping 127.0.0.1 -n 100
 