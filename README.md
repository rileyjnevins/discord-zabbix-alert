# Discord Alerts | Zabbix
Working Discord Alerts for Zabbix Server 5.0+.

# Foundation
This code has been created by Zabbix (https://www.zabbix.com/integrations/discord) and has not been updated for newer Zabbix Server versions. I've simply adjusted their code to support the Discord API & Zabbix changes. I do not take/claim ownership of the contents found here. 

For more information about the Zabbix project, visit their website (https://www.zabbix.com/). 

# Setup
1. Login to your Zabbix Server. 
2. Create a Macro under Administration -> General -> Macros.
3. Create one named "{$ZABBIX.URL}" containing the URL to your Zabbix Server.
4. Go to Administration -> Media Types -> Import (select media_discord.xml). 
6. Once imported and added, go to Administration -> Users -> Admin -> Media
6. Add the newly created "Discord" media type, and edit the "send to" field with your Discord Webhook URL.

# Debug
Having troubles importing the xml file? You can manually enter the information found in the XML in the Add Media section. This works just as good, but takes a chunk of time. 
Create parameters with peoper names/values.
Copy script contents into script section.
Save media type. 
