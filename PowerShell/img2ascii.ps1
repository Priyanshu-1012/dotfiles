$imagePath = Read-Host "Enter the path to the image file"

if (-not (Test-Path $imagePath)) {
    Write-Host "The specified image file does not exist."
    return
}

$image = [System.Drawing.Image]::FromFile($imagePath)

$height = Read-Host "height"
$width = Read-Host "width"

$bitmap = New-Object System.Drawing.Bitmap $image, $width, $height

$asciiChars = "@%#*+=-:. "

$output = ""
for ($y = 0; $y -lt $height; $y++) {
    for ($x = 0; $x -lt $width; $x++) {
        $pixel = $bitmap.GetPixel($x, $y)
        $brightness = ($pixel.R + $pixel.G + $pixel.B) / 3
        $index = [math]::Floor(($brightness / 255) * ($asciiChars.Length - 1))
        $output += $asciiChars[$index]
    }
    $output += "`n"  
}

$output
