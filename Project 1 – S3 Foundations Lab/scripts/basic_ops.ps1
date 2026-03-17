param(
    [Parameter(Mandatory=$true)]
    [string]$BucketName
)

Write-Host "1) Listing all objects"
aws s3 ls "s3://$BucketName/" --recursive

Write-Host ""
Write-Host "2) Copying one object from raw/ to processed/"
aws s3 cp `
  "s3://$BucketName/raw/raw-01.txt" `
  "s3://$BucketName/processed/copied-from-raw-01.txt"

Write-Host ""
Write-Host "3) Deleting test files under raw/test/"
aws s3 rm "s3://$BucketName/raw/test/" --recursive

Write-Host ""
Write-Host "4) Final listing"
aws s3 ls "s3://$BucketName/" --recursive