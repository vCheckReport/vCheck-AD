<a name="Title">
# vCheck Daily Report for Active Directory
[![stars badge]][stars]
[![forks badge]][forks]
[![issues badge]][issues]

[stars badge]:https://img.shields.io/github/stars/vCheckReport/vCheck-AD.svg
[forks badge]:https://img.shields.io/github/forks/vCheckReport/vCheck-AD.svg
[issues badge]:https://img.shields.io/github/issues/vCheckReport/vCheck-AD.svg

[stars]:https://github.com/vCheckReport/vCheck-AD/stargazers
[forks]:https://github.com/vCheckReport/vCheck-AD/network
[issues]:https://github.com/vCheckReport/vCheck-AD/issues

![Alt text](https://vcheck.report/samples/vCheck-AD_Screenshot.PNG "vCheck Sample")

|Navigation|
|-----------------|
|[About](#About)|
|[Features](#Features)|
|[More Info](#More)|

<a name="About">
# About

vCheck is a PowerShell HTML framework script, the script is designed to run as a scheduled task before you get into the office to present you with key information via an email directly to your inbox in a nice easily readable format. 

This script picks on the key known issues and potential issues scripted as plugins for various technologies written as Powershell scripts and reports it all in one place so all you do in the morning is check your email.

One of they key things about this report is if there is no issue in a particular place you will not receive that section in the email. This ensures that you have only the information you need in front of you when you get into the office.

This script is not to be confused with an Audit script, although the reporting framework can also be used for auditing scripts too. 

[*Back to top*](#Title)

<a name="Features">
# What is checked for in the Active Directory version ?

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

[*Back to top*](#Title)

<a name="More">
# More Info
For more information, see the vCheck-vSphere repository: https://github.com/alanrenouf/vCheck-vSphere

For an example report (doesn't contain all info) [click here](https://vcheck.report/samples/vCheck-AD_Sample.html)

[*Back to top*](#Title)
