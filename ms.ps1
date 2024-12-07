param([string]$id)

# Check if the ID is passed correctly
if ($id) {
    Write-Host "The passed ID is: $id" -ForegroundColor Green
} else {
    Write-Host "No ID was passed!" -ForegroundColor Red
}

# Your main script logic here
Write-Host "Executing the hosted script..." -ForegroundColor Cyan
