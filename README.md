# PyramidPlugin for Chatterino
Plugin to create automated Pyramids at different Sizes and Emotes

### Installation
1. Download the Newest [Release](https://github.com/smokedzn/pyramidplugin/releases)
2. Extract or Move the Folder inside the ZIP File to 

``` C:\Users\[Your Username]\AppData\Roaming\Chatterino2\Plugins ```  

3. Enable the Plugin in the Chatterino Settings  

```Settings -> Plugins -> "Enable plugins"``` 
> **If nothing shows up after enabling plugins, disable ```"Enable plugins"``` and turn it on again *or* restart your Chatterino**
4. Click on ```Enable``` at the bottom after the enabling the Plugin
5. (Optional) If you want to change any Settings while having Chatterino open and the Plugin enabled, click on ```Reload``` right under ```Disable```

### Usage
**Command Usage:**```/Pyramid <Emote> <Size>```
> You can also make Text Pyramids by simply entering another Word of your choice at ```<Emote>```   
> The Default Emote is ```Kappa``` with a maximum Size up to ```10```  
> If you don't add ```<Emote>``` or ```<Size>``` your Pyramid will default to ```Kappa``` and ```3```

### Settings
**You can change the Settings of this Plugin at your own Risk inside ```init.lua```:**  

Change default size **(Row 2)**: 
``` lua
size = size or <size | default: 3>
```  
and **(Row 33)**
``` lua
if not size then size = <size | default: 3> end
```

Change chat delay (in milliseconds) **(Row 16)**:
``` lua
local delay_increment = <delay | default: 800>
```  

Change default emote at **(Row 31)**:
``` lua
local emote = ctx.words and ctx.words[2] or <"Emote" | default: "Kappa">
```  

Change maximum size at **(Row 37)**:
``` lua
if size > <size | default: 10> then size = <size | default: 10> end
```  
