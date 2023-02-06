# Add ChatGPT to Microsoft Word
How to add ChatGPT's Text Completion functionality to Microsoft Word.
<br /><br />

<!-- badges: start -->
<!-- badges: end -->

<!-- DESCRIPTION -->
## 1. Description

With the click of a single button you can access ChatGPT's awesome natural language capabilies in Microsoft Word
<br /><br />

<!-- GETTING STARTED -->
## 2. Getting Started
### 2.1 Dependencies
- Requires an OpenAI API Key (create an account and get API Key at <a href="https://chat.openai.com">https://chat.openai.com</a>)
- Requires Microsoft Windows 10/11 (<a href="https://www.microsoft.com/en-au/windows">https://www.microsoft.com/en-au/windows</a>)
- Requires Microsoft Word 365 (<a href="https://www.microsoft.com/en-us">https://www.microsoft.com/en-us</a>)
<br /><br />
    
<!-- INSTRUCTIONS -->
## 3. Instructions

There are 4 basic steps in order to add a ChatGPT button into Microsoft Word

<br /><br />

### 3.1 Enable the Developer Tab

The Developer tab isn't displayed by default, but you can add it to the ribbon.

**Step 1** - On the File tab, go to Options > Customize Ribbon.

**Step 2** - Under Customize the Ribbon and under Main Tabs, select the Developer check box.

<img src=".github/assets/images/enable-developer-tab-highlighted.png" width=100% height=100%>
<br />

The latest instructions to enable the Developer Tab from Microsoft can be found here: 
<a href="https://support.microsoft.com/en-us/office/show-the-developer-tab-in-word-e356706f-1891-4bb8-8d72-f57a51146792">https://support.microsoft.com/en-us/office/show-the-developer-tab-in-word-e356706f-1891-4bb8-8d72-f57a51146792</a>

<br /><br />

### 3.2 Import the ChatgptTextCompletion.bas file

**Step 1** - Download and Save the latest ChatgptTextCompletion.bas file from this repository.
<br />

Keep the location of where the file is saved as you will need it later.<br />
<br />

**Step 2** - On the Developer tab, click the Visual Basic button.

<img src=".github/assets/images/developer-tab-visual-basic.png" width=100% height=100%>
<br />

**Step 3** - On the File tab, go to Import File...

<img src=".github/assets/images/visual-basic-file-import-section.png" width=100% height=100%>
<br />

**Step 4** - Select the ChatgptTextCompletion.bas file and click Open

<br /><br />

### 3.3 Add your OpenAI APIKey into the ChatgptTextCompletion.bas file

**Step 1** - In the Project window (top left hand side) double click on the ChatgptTextCompletion Module.
<br />

**Step 2** - Replace the highlighted XX-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX with your APIKEY.

<img src=".github/assets/images/visual-basic-add-apikey-section.png" width=100% height=100%>
<br />
Please ensure that you APIKEY is surrounded by double quotation marks such as <strong>"</strong>sk-1234....sErtV3<strong>"</strong>
<br /><br />

### 3.4 Add your ChatGPT button into the Microsoft Word Ribbon

**Step 1** - Add a new tab
<br />
  - On the File tab, go to Options > Customize Ribbon
  - Click New Tab
<br />

<img src=".github/assets/images/options-customize-ribbon-new-tab.png" width=40% height=40%>
<br />

 **Step 2** - Rename the New Tab to **AI Assistant**

<img src=".github/assets/images/options-customize-ribbon-rename-tab.png" width=35% height=35%>
<br />

**Step 3** - Rename New Group (Custom) to **ChatGPT**

<img src=".github/assets/images/rename-new-group.png" width=35% height=35%>
<br />

**Step 4** - Select Macros in the Choose Commands from dropdown box

<img src=".github/assets/images/choose-commands-from-macros.png" width=35% height=35%>
<br />

**Step 5** - Select the ChatgptTextCompletion Macro and click Add >>

<img src=".github/assets/images/add-the-macro-into-new-group.png" width=75% height=75%>
<br />


**Step 6** - Rename button to **Text Completion**, select a Symbol and click OK

<img src=".github/assets/images/rename-button-to-text-completion.png" width=35% height=35%>
<br />

After the preceding steps have been completed the Microsoft Word screen should look like the following:

<img src=".github/assets/images/screen-after-chatgpt-button-added.png" width=100% height=100%>
<br />
