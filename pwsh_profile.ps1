 oh-my-posh init pwsh --config "C:\Users\anavk\gruvbox.omp.json" | Invoke-Expression

New-Alias -Name g -Value "git"

New-Alias -Name l -Value "lazygit"

New-Alias -Name d -Value "lazydocker"

New-Alias -Name n -Value "nvim"

set-alias -name p -value pnpm

function e {
    explorer .
}

function v {
    code .
}

function to:webp {
    Get-ChildItem *.jpg,*.png,*.jpeg | ForEach-Object { ffmpeg -i $_.FullName ($_.BaseName + ".webp") }
}

function to:webm {
    Get-ChildItem *.mkv,*.mp4,*.avi | ForEach-Object { ffmpeg -i $_.FullName -c:v libvpx-vp9 -c:a libopus ($_.BaseName + ".webm") }
}


function touch {
    param ([string]$filename)
    New-Item -ItemType File -Name $filename
}
