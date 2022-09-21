$pass = Get-Content "./pass.txt"
$Key = Get-Content "./private_key.key"

write "Text decrypt :"

$encrypt_pass = ConvertTo-SecureString $pass -Key $Key
$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($encrypt_pass)
[System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR) | write

pause