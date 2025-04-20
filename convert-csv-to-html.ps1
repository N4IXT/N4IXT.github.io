param (
  [string]$CsvFile = "D:\OneDrive\Barc History\Wireless Books.csv",
  [string]$HtmlFile = "output.html"
)

if (-not (Test-Path $CsvFile)) {
  Write-Host "The file '$CsvFile' does not exist." -ForegroundColor Red
  exit
}

# Read the CSV file
$csvData = Import-Csv -Path $CsvFile

# Start the HTML table
$htmlContent = "<table border='1'>`n"

# Add table headers
$htmlContent += "<tr>"
foreach ($header in $csvData[0].PSObject.Properties.Name) {
  $htmlContent += "<th>$header</th>"
}
$htmlContent += "</tr>`n"

# Add table rows
foreach ($row in $csvData) {
  $htmlContent += "<tr>"
  foreach ($value in $row.PSObject.Properties.Value) {
    $htmlContent += "<td>$value</td>"
  }
  $htmlContent += "</tr>`n"
}

# End the HTML table
$htmlContent += "</table>"

# Write the HTML content to the output file
Set-Content -Path $HtmlFile -Value $htmlContent

Write-Host "HTML table has been written to '$HtmlFile'." -ForegroundColor Green