 oh-my-posh init pwsh --config "C:\Users\anavk\gruvbox.omp.json" | Invoke-Expression

New-Alias -Name g -Value "git"

New-Alias -Name l -Value "lazygit"

New-Alias -Name n -Value "nvim"

set-alias -name p -value pnpm

function e {
    explorer .
}

function v {
    code .
}

function compress {
	foreach ($f in Get-ChildItem) { ffmpeg -i $f.FullName "$($f.BaseName).webp" }
}

function touch {
    param ([string]$filename)
    New-Item -ItemType File -Name $filename
}