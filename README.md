# Discord Alerts | Zabbix 5.X

![image](https://user-images.githubusercontent.com/64431703/115061856-4a6c2980-9eaf-11eb-8e74-eef7d3407e58.png)

# Foundation
This code has been created by Zabbix (https://www.zabbix.com/integrations/discord) and has not been updated for newer Zabbix Server versions. I've simply adjusted their code to support the Discord API & Zabbix changes. I do not take/claim ownership of the contents found here. 

For more information about the Zabbix project, visit their website (https://www.zabbix.com/). 

# Setup/Installation
1. Login to your Zabbix Server. 
2. Create a Macro under Administration -> General -> Macros.
3. Create one named "{$ZABBIX.URL}" containing the URL to your Zabbix Server.
4. Direct to Configuration -> Actions, and enable the existing rule. 
5. Go to Administration -> Media Types -> Create
6. Add the listed Paramaters & Values:

![image](https://user-images.githubusercontent.com/64431703/115061104-53103000-9eae-11eb-95c1-228d7d34ba92.png)

6. Copy the contents of <a href="https://github.com/rileyjnevins/discord-zabbix-alert/blob/main/script.sh">script.sh</a> into the "script" field and apply.

![image](https://user-images.githubusercontent.com/64431703/115061167-6fac6800-9eae-11eb-8306-353c30039d9e.png)

8. Once the media type is added, go to Administration -> Users -> **Admin (your admin user)** -> Media
9. Add the newly created "Discord" media type, and edit the "send to" field with your Discord Webhook URL.
10. All done! Enjoy Zabbix Discord Alerts.
