# Prompt for version
$version = Read-Host "Enter the version"

# Get all folders in src
$srcFolders = Get-ChildItem -Path ".\src" -Directory

foreach ($folder in $srcFolders) {
    $tag = "$($folder.Name)/$version"
    git tag $tag
    Write-Host "Created tag: $tag"
}

git push --tags
Write-Host "Pushed all tags."