param (
    [switch]$Firefox
)

$files = (
    ".\content-script.js",
    ($Firefox ? ".\firefox\manifest.json" : ".\manifest.json"),
    ".\icons\"
)

Compress-Archive -Path $files -DestinationPath ($Firefox ? "AdSpeedup-Firefox.zip" : "AdSpeedup.zip") -Force