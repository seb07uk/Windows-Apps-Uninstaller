Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object Windows.Forms.Form
$form.StartPosition = "CenterScreen"
$form.Text = "Windows Apps Uninstaller v1.0"
$form.Width = 400
$form.Height = 300
$form.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon("app.ico")

# Dodanie obrazka logo.jpg
$pictureBox = New-Object Windows.Forms.PictureBox
$pictureBox.Image = [System.Drawing.Image]::FromFile("logo.jpg")
$pictureBox.SizeMode = "StretchImage"
$pictureBox.Width = 120
$pictureBox.Height = 100
$pictureBox.Location = New-Object Drawing.Point(250, 20)

$form.Controls.Add($pictureBox)

# Przycisk Opcja 1
$button1 = New-Object Windows.Forms.Button
$button1.Text = "Disable App Updates"
$button1.Width = 100
$button1.Height = 35
$button1.Location = New-Object Drawing.Point(8, 20)
$button1.Add_Click({
    $batPath = "opcja1.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $batPath", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button1)

# Przycisk Opcja 2
$button2 = New-Object Windows.Forms.Button
$button2.Text = "Debloat Edge"
$button2.Width = 100
$button2.Height = 30
$button2.Location = New-Object Drawing.Point(8, 60)
$button2.Add_Click({
    $batPath = "opcja2.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $batPath", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button2)
# Przycisk Opcja 3
$button3 = New-Object Windows.Forms.Button
$button3.Text = "Remove Edge"
$button3.Width = 100
$button3.Height = 30
$button3.Location = New-Object Drawing.Point(8, 100)
$button3.Add_Click({
    $batPath = "opcja3.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $batPath", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button3)

# Przycisk Opcja 4
$button4 = New-Object Windows.Forms.Button
$button4.Text = "Remove Copilot"
$button4.Width = 100
$button4.Height = 30
$button4.Location = New-Object Drawing.Point(8, 140)  
$button4.Add_Click({
    $batPath = "opcja4.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $batPath", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button4)

# Przycisk Opcja 5
$button5 = New-Object Windows.Forms.Button
$button5.Text = "Remove Extensions"
$button5.Width = 100
$button5.Height = 35
$button5.Location = New-Object Drawing.Point(8, 180)  
$button5.Add_Click({
    $batPath = "opcja5.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $batPath", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button5)

# Przycisk Opcja 6
$button6 = New-Object Windows.Forms.Button
$button6.Text = "Remove Microsoft Store"
$button6.Width = 100
$button6.Height = 35
$button6.Location = New-Object Drawing.Point(8, 220)  # Pozycja obok Opcji 1 (10 + 100 + 10 odstępu)
$button6.Add_Click({
    $batPath = "opcja6.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $batPath", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button6)

# Przycisk Opcja 7
$button7 = New-Object Windows.Forms.Button
$button7.Text = "Remove Microsoft Apps"
$button7.Width = 100
$button7.Height = 35
$button7.Location = New-Object Drawing.Point(130, 20)
$button7.Add_Click({
    $batPath = "opcja7.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $batPath", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button7)

# Przycisk Opcja 8
$button8 = New-Object Windows.Forms.Button
$button8.Text = "Remove OneDrive"
$button8.Width = 100
$button8.Height = 35
$button8.Location = New-Object Drawing.Point(130, 60)
$button8.Add_Click({
    $batPath = "opcja8.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $batPath", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button8)

# Przycisk Opcja 9
$button9 = New-Object Windows.Forms.Button
$button9.Text = "Remove Third Party Apps"
$button9.Width = 100
$button9.Height = 35
$button9.Location = New-Object Drawing.Point(130, 100)
$button9.Add_Click({
    $batPath = "opcja9.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $batPath", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button9)

# Przycisk Opcja 10
$button10 = New-Object Windows.Forms.Button
$button10.Text = "Remove Taskbar Widgets"
$button10.Width = 100
$button10.Height = 35
$button10.Location = New-Object Drawing.Point(130, 140)
$button10.Add_Click({
    $batPath = "opcja10.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $batPath", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button10)

# Przycisk Opcja 11
$button11 = New-Object Windows.Forms.Button
$button11.Text = "Remove Widgets"
$button11.Width = 100
$button11.Height = 30
$button11.Location = New-Object Drawing.Point(130, 180)
$button11.Add_Click({
    $batPath = "opcja11.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $batPath", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button11)

# Przycisk Opcja 12
$button12 = New-Object Windows.Forms.Button
$button12.Text = "XBox App Remove"
$button12.Width = 100
$button12.Height = 35
$button12.Location = New-Object Drawing.Point(130, 220)
$button12.Add_Click({
    $batPath = "opcja12.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $batPath", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button12)

# Przycisk About
$AboutIcon = New-Object Windows.Forms.PictureBox
$AboutIcon.Image = [System.Drawing.Image]::FromFile("polsoft.jpg")
$AboutIcon.SizeMode = "StretchImage"
$AboutIcon.Width = 60
$AboutIcon.Height = 40
$AboutIcon.Location = New-Object Drawing.Point(280, 140)
$AboutIcon.Add_Click({
    $ps1Path = "about.ps1"
    if (Test-Path $ps1Path) {
        Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -File `"$ps1Path`""
    } else {
        [System.Windows.Forms.MessageBox]::Show("Nie znaleziono pliku: $ps1Path", "Błąd", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($AboutIcon)

# Przycisk GitHub
$GitHubIcon = New-Object Windows.Forms.PictureBox
$GitHubIcon.Image = [System.Drawing.Image]::FromFile("github.png")
$GitHubIcon.SizeMode = "StretchImage"
$GitHubIcon.Width = 40
$GitHubIcon.Height = 40
$GitHubIcon.Location = New-Object Drawing.Point(330, 200)  # Pozycja pod guzikiem About
$GitHubIcon.Add_Click({
    Start-Process "https://github.com/seb07uk"
})
$form.Controls.Add($GitHubIcon)

# Przycisk Email
# Ikona Email jako PictureBox
$emailIcon = New-Object Windows.Forms.PictureBox
$emailIcon.Image = [System.Drawing.Image]::FromFile("email.png")
$emailIcon.SizeMode = "StretchImage"
$emailIcon.Width = 40
$emailIcon.Height = 40
$emailIcon.Location = New-Object Drawing.Point(260, 200) 
$emailIcon.Add_Click({
    Start-Process "mailto:polsoft.its@fastservice.com"
})
$form.Controls.Add($emailIcon)
$form.Topmost = $true
$form.ShowDialog()

