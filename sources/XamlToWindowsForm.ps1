[CmdletBinding(PositionalBinding=$false)]
Param(
  [Parameter(Mandatory=$true)][ValidateScript({ Test-Path -Path $_ })][string]$XamlFile,
  [Parameter(Mandatory=$false)][switch]$ShowForm
)

Trap {
  Throw 'An unhandled exception occured! Further execution has been terminated!'
}

Add-Type -AssemblyName PresentationCore, PresentationFramework -ErrorAction Stop

$XAML = [XML](Get-Content -Path $XamlFile -Raw -ErrorAction Stop)

try {
  $XAML.Window.RemoveAttribute('x:Class')
  $XAML.Window.RemoveAttribute('xmlns:local')
  $XAML.Window.RemoveAttribute('xmlns:d')
  $XAML.Window.RemoveAttribute('xmlns:mc')
  $XAML.Window.RemoveAttribute('mc:Ignorable')
}
catch [System.Management.Automation.RuntimeException] {
    Write-Output 'A runtime exception occured which probably means that a value provided for the RemoveAttribute is invalid!'
}
catch {
  Write-Output 'Something went wrong but not sure exactly what so it is time for some old fashioned debugging!'
}
Finally {
  Write-Output 'No sense in executing any more code so exiting with status code 1!'
  exit 1
}

$XAMLReader = New-Object -TypeName System.Xml.XmlNodeReader $XAML -ErrorAction Stop
$RawForm = [Windows.Markup.XamlReader]::Load($XAMLReader)

$XmlNamespaceManager = [System.Xml.XmlNamespaceManager]::new($XAML.NameTable)
$XmlNamespaceManager.AddNamespace('x', 'http://schema.microsoft.com/winfx/2006/xaml')

$Gui = @{}
$NamedNodes = $XAML.SelectNodes("//*[@x:Name]", $XmlNamespaceManager)
$NamedNodes | ForEach-Object -Process { $Gui.Add($PSItem.Name, $RawForm.FindName($PSItem.Name)) }

if($ShowForm) { $RawForm.ShowDialog() }