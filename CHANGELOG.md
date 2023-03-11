# CHANGELOG
This changelog file outlines a chronologically ordered list of the changes made on this project. 
It is organized by version and release date followed by a list of Enhancements, New Features, Bug Fixes, and/or Breaking Changes.
<br /><br />

## Version 0.1.3 (Latest) 
**Released:** February 12, 2023<br />
**Tag:** v0.1.3

### Bug Fix

  - Added additional error handling for when ChatGPT is at capacity. When this occurs an Alert Message will display on the screen rather than a Run-time Error 5 message from Microsoft Visual Basic


<br /><br />
## Version 0.1.2 
**Releasd:** February 10, 2023<br />
**Tag:** v0.1.2 

### Breaking Changes

 - Moved the location of the OpenAI API Key from source to a Windows Environment variable.

<br /><br />
## Version 0.1.1 
**Releasd:** February 8, 2023<br />
**Tag:** v0.1.1

### Bug Fix

  - Added additional error handling for ChatGPT error responses 
  - Responses from ChatGPT often contain '/n' in the returned text strings. We have replaced cases of /n in the text string with a carriage return. This makes output in Word much more readable.

<br /><br />
## Version 0.1.0 (Initial Release)
**Releasd:** February 6, 2023<br />
**Tag:** v0.1.0

This is the initial release
