
$KeyFile = "./private_key.key"
$Key = New-Object Byte[] 24   # You can use 16, 24, or 32 for AES
[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($Key)
$Key | out-file $KeyFile

$txt = Read-Host -Prompt 'Enter the text to encrypt'

$PasswordFile = "./pass.txt"
$KeyFile = "./private_key.key"
$Key = Get-Content $KeyFile
$Password = $txt | ConvertTo-SecureString -AsPlainText -Force
$Password | ConvertFrom-SecureString -key $Key | Out-File $PasswordFile