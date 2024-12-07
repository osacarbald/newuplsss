# Fun PowerShell Script - Just for Laughs
# Author: ChatGPT

# Function to Show a Random Joke
function Show-Joke {
    $jokes = @(
        "Why did the scarecrow win an award? Because he was outstanding in his field!",
        "Why don’t skeletons fight each other? They don’t have the guts.",
        "What do you call cheese that isn't yours? Nacho cheese!",
        "Why can't your nose be 12 inches long? Because then it would be a foot!",
        "What do you call a fake noodle? An impasta!"
    )
    $randomJoke = $jokes | Get-Random
    Add-Type -AssemblyName PresentationFramework
    [System.Windows.MessageBox]::Show($randomJoke, "Random Joke", "OK", "Information")
}

# Function to Play Beeps in a Random Pattern
function Play-Beeps {
    Write-Host "Playing Random Beeps..." -ForegroundColor Cyan
    for ($i = 0; $i -lt 5; $i++) {
        [console]::beep((Get-Random -Minimum 200 -Maximum 1500), 300)
        Start-Sleep -Milliseconds 300
    }
}

# Function to Show ASCII Art
function Show-AsciiArt {
    $asciiArt = @"
     /\_/\
    ( o.o )  PowerShell Fun Time!
     > ^ <
"@
    Write-Host $asciiArt -ForegroundColor Green
}

# Function to Open Random Websites
function Open-RandomWebsite {
    $websites = @(
        "https://www.boredpanda.com",
        "https://www.coolmathgames.com",
        "https://www.spacejam.com/1996/",
        "https://hackertyper.com/",
        "https://theuselessweb.com/"
    )
    $randomWebsite = $websites | Get-Random
    Write-Host "Opening a fun website: $randomWebsite" -ForegroundColor Yellow
    Start-Process $randomWebsite
}

# Function to Fake a Progress Bar (Prank)
function Fake-ProgressBar {
    Write-Host "Initializing Fun Progress..." -ForegroundColor Magenta
    for ($i = 1; $i -le 100; $i++) {
        Write-Progress -Activity "Doing Something Important..." -Status "$i% Complete" -PercentComplete $i
        Start-Sleep -Milliseconds 50
    }
    Write-Host "All done! (Or was it...)" -ForegroundColor Magenta
}

# Main Menu
function Show-Menu {
    do {
        Clear-Host
        Write-Host "========== PowerShell Fun Menu ==========" -ForegroundColor Cyan
        Write-Host "1. Tell Me a Joke" -ForegroundColor Yellow
        Write-Host "2. Play Random Beeps" -ForegroundColor Yellow
        Write-Host "3. Show ASCII Art" -ForegroundColor Yellow
        Write-Host "4. Open a Random Fun Website" -ForegroundColor Yellow
        Write-Host "5. Fake Progress Bar (Prank)" -ForegroundColor Yellow
        Write-Host "6. Exit" -ForegroundColor Red
        Write-Host "========================================="

        $choice = Read-Host "Choose an option (1-6)"

        switch ($choice) {
            "1" { Show-Joke }
            "2" { Play-Beeps }
            "3" { Show-AsciiArt; Pause }
            "4" { Open-RandomWebsite }
            "5" { Fake-ProgressBar; Pause }
            "6" { Write-Host "Goodbye! Have Fun!" -ForegroundColor Green; Exit }
            Default { Write-Host "Invalid choice, try again!" -ForegroundColor Red }
        }
    } while ($choice -ne "6")
}

# Run the Menu
Show-Menu
