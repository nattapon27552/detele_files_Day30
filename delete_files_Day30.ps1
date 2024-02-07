$dateTime = (Get-Date).AddDays(-30)
$path = "C:\test\"
Get-ChildItem -Path $Path -Recurse -File | Where-Object { $_.LastWriteTime -lt $dateTime } | Remove-Item 