<a name="Title">
# vCheck Daily Report for Active Directory

![Alt text](https://s3.amazonaws.com/vcheck/vCheck-AD_Screenshot.PNG "vCheck Sample")

|Navigation|
|-----------------|
|[About](#About)|
|[Features](#Features)|
|[More Info](#More)|

<a name="About">
# About
[*Back to top*](#Title)

vCheck is a PowerShell HTML framework script, the script is designed to run as a scheduled task before you get into the office to present you with key information via an email directly to your inbox in a nice easily readable format. 

This script picks on the key known issues and potential issues scripted as plugins for various technologies written as Powershell scripts and reports it all in one place so all you do in the morning is check your email.

One of they key things about this report is if there is no issue in a particular place you will not receive that section in the email. This ensures that you have only the information you need in front of you when you get into the office.

This script is not to be confused with an Audit script, although the reporting framework can also be used for auditing scripts too. 


<a name="Features">
# What is checked for in the Active Directory version ?
[*Back to top*](#Title)

The following items are included as part of the vCheck-AD download, they are included as vCheck Plugins and can be removed or altered very easily by editing the specific plugin file which contains the data. vCheck Plugins are found under the Plugins folder.

- Forest Information
- Domain Information
- Domain Controller Information
- Site Information
- User and Machine count
- Replication Connection
- Stale Computer Object
- LAPS not configured
- Enterprise Admin
- Domain Admin
- Locked Out Account
- Passwords set to not expire

<a name="More">
# More Info
[*Back to top*](#Title)
For more information, see the vCheck-vSphere repository: https://github.com/alanrenouf/vCheck-vSphere

For an example vSphere output (doesnt contain all info) [click here](https://s3.amazonaws.com/vcheck/vCheck-AD_Sample.html)
