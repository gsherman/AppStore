AppStore
========

A simple sample asp.net web application used for testing forms authentication across applications.

This allows users to authenticate through this app, and then be automatically logged into other apps (such as Dovetail Mobile).

It uses App_Data\MembershipUsers.xml as a membership provider.

The web,config for this app, as well as the other app (such as Dovetail Mobile) must be configured properly.
The name, protection, and path attributes must match exactly in each Web.config file.
Validation and decryption keys must also exactly match.
 
