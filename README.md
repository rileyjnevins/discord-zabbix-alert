# Discord Alerter | Zabbix 5.X

![image]()

# Foundation
This code has been created by Zabbix (https://www.zabbix.com/integrations/discord) and adjusted by Riley Nevins (https://github.com/rileyjnevins/discord-zabbix-alert) to support the Discord API & Zabbix changes in version 5.0 and newer.

I have modified this script for `@mentioning` users with their Discord ID saved in their Zabbix profiles.
I do not take/claim ownership of the contents found here. 

For more information about the Zabbix project, visit their website (https://www.zabbix.com/).

# Setup/Installation
1. Login to your Zabbix Server.
2. Create a Macro under Administration -> General -> Macros.
3. Create one named "{$ZABBIX.URL}" containing the URL to your Zabbix Server.
4. Direct to Configuration -> Actions, and enable the existing rule.
5. Go to Administration -> Media Types -> Create.
6. Add the listed Paramaters & Values:

![image]()

7. Insert your Discord Webhook URL into the field `discord_endpoint`.

8. Copy the contents of <a href="https://github.com/Dweller13/discord-zabbix-alerter/blob/main/script.sh">script.sh</a> into the "script" field and apply.

9. Once the media type is added, go to Administration -> Users -> **Select any User** -> Media.
10. Add the newly created "Discord" media type, and edit the "Send to" field with User's Discord ID.
11. All done! Enjoy Zabbix Discord Alerter with user mention.
