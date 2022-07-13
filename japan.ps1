Set-WinUserLanguageList -LanguageList en-GB -Force
$LanguageList = Get-WinUserLanguageList
$LanguageList[0].InputMethodTips.Clear()
$LanguageList[0].InputMethodTips.Add('0809:00020409')
$LanguageList.Add("ja-JP")
Set-WinUserLanguageList $LanguageList -Force
$JapaneseInput=@()
$JapaneseInput+="Language.Fonts.Jpan~~~und-JPAN~0.0.1.0"
$JapaneseInput+="Language.Basic~~~ja-JP~0.0.1.0"
$JapaneseInput+="Language.Handwriting~~~ja-JP~0.0.1.0"
$MissingInput=@()
ForEach ($input in $JapaneseInput) {
`$MissingInput+=(Get-WindowsCapability -online -name $input | Where-Object {$_.State -eq "NotPresent"}).Name`
}


ForEach ($input in $MissingInput) {

`Add-WindowsCapability -Online -Name $input`

}