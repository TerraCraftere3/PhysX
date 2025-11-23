Get-ChildItem "." -Recurse -File | ForEach-Object {
    $sizeMB = [math]::Round($_.Length / 1MB, 2)

    if ($sizeMB -gt 90) {
        Write-Host "$($_.FullName) - $sizeMB MB" -ForegroundColor Red
    }
    elseif ($sizeMB -gt 50) {
        Write-Host "$($_.FullName) - $sizeMB MB" -ForegroundColor Yellow
    }
    elseif ($sizeMB -gt 10) {
        Write-Host "$($_.FullName) - $sizeMB MB" -ForegroundColor Green
    }
}
