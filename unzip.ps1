Param(
[string]$zip_path, 
[string]$unzip_path
)
echo "$unzip_path"
Expand-Archive -LiteralPath $zip_path -DestinationPath $unzip_path