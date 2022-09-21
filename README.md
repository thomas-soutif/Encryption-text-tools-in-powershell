# Encryption-text-tools-in-powershell

A easy way to secure your text without any external library , just your computer with Windows.
Encrypt with a **24 bytes key**, you can change it in the `__generate.ps1 file`

## Generate the encrypt text and the private key

In the `encrypt_tool directory`, just start **GENERATE.cmd**

Then, follow the instruction that will ask you which text you want to encrypt. 

2 files will be create : 

- the pass encrypt (you can see it like the public key) : **pass.txt**
- the key pass (you can see it like the private key) : **private_key.key**


## Decrypt the text
In the `decrypt_tool directory`, just start **DECRYPT.cmd**

You should have the `pass.txt` and `private_key.key` files to decrypt the text.
