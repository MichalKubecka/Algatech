# How to setup email clients
## Email Client Setup Guide (Thunderbird & Outlook)
This guide applies to __Mozilla Thunderbird__ and __Microsoft Outlook__
(Windows, macOS, Linux).

Please use __manual configuration__.
### Incoming Server
* Protocol: __IMAP__
* Server: __mail.alga.cz__
* Port: __993__
* Connection security: __SSL/TLS__
* Authentication method: __Normal password__
* Username: __surname@alga.cz__
### Outgoing Server
* Protocol: __SMTP__
* Server: __mail.alga.cz__
* Port: __465__
* Connection security: __SSL/TLS__
* Authentication method: __Normal password__
* Username: __surname@alga.cz__
### Important Notes
* Always use your full email address as the username
* Do not use port 587 / STARTTLS
* Do not use port 25
* If the client reports an error during automatic testing:
    * choose __Manual configuration__ or __Advanced configuration__
    * continue anyway — the settings are correct