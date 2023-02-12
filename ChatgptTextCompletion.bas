Attribute VB_Name = "ChatGPT"
Sub TextCompletion()
'
' Text Completion Macro
'
'
  If Selection.Type = wdSelectionIP Then
    Exit Sub
  End If
  
  If Selection.Text = ChrW$(13) Then
    Exit Sub
  End If

  Dim strAPIKey As String
  Dim strURL As String
  Dim strPrompt As String
  Dim strModel As String
  Dim intMaxTokens As Integer
  Dim strResponse As String
  Dim objCurlHttp As Object
  Dim strJSONdata As String

  strAPIKey = Environ("OPENAI_API_KEY")
  
  strURL = "https://api.openai.com/v1/completions"
  strModel = "text-davinci-003"
  intMaxTokens = 2048
  strPrompt = Replace(Selection, ChrW$(13), "")
  strJSONdata = "{""model"":""" & strModel & """,""prompt"":""" & strPrompt & """,""max_tokens"":2048}"

  Set objCurlHttp = CreateObject("MSXML2.serverXMLHTTP")

  With objCurlHttp
    .Open "POST", strURL, False
    .SetRequestHeader "Content-type", "application/json"
    .SetRequestHeader "Authorization", "Bearer " + strAPIKey
    .Send (strJSONdata)

    strResponse = .ResponseText
    
    If Mid(strResponse, 6, 5) = "error" Then
      MsgBox Prompt:="The server had an error while processing your request. Sorry about that! Please try again"
      Exit Sub
    End If
    

    Dim intStartPos As Integer
    intStartPos = InStr(1, strResponse, Chr(34) & "text" & Chr(34)) + 12
    
    If intStartPos = 12 Then
      MsgBox Prompt:="ChatGPT is at capacity right now. Please wait a minute and try again."
      Exit Sub
    End If
    
    Dim intEndPos As Integer
    intEndPos = InStr(1, strResponse, Chr(34) & "index" & Chr(34)) - 2
    
    Dim intLength As Integer
    intLength = intEndPos - intStartPos
    
    Dim strOutput As String
    strOutput = Mid(strResponse, intStartPos, intLength)

    
    Dim strOutputFormatted As String, strOutputFormatted1 As String, strOutputFormatted2 As String
    strOutputFormatted1 = Replace(strOutput, "\n\n", vbCrLf)
    strOutputFormatted2 = Replace(strOutputFormatted1, "\n", vbCrLf)
    strOutputFormatted = strOutputFormatted2
    
    Selection.Collapse Direction:=wdCollapseEnd
    Selection.InsertAfter vbCr & strOutputFormatted
    Selection.Font.Name = "Courier New"
    Selection.Font.Size = 9
    Selection.Font.ColorIndex = wdViolet
    Selection.Paragraphs.Alignment = wdAlignParagraphJustify
    Selection.InsertAfter vbCr
    Selection.Collapse Direction:=wdCollapseEnd
    

  End With
  
  Set objCurlHttp = Nothing

End Sub

