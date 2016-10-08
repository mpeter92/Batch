
$domain = Read-Host -Prompt 'Enter your domain'
$user = Read-Host -Prompt 'Enter your username'

Add-Computer -Credential $domain\$user -DomainName $domain