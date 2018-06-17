# POC iOS login features
POC of iOS logging in security features and facilities

### Why
To study, test and optimize the common logging in flow using auto fill and byometrics.

### Important
This poc demo is intended exlcusively for researching and implementing features related to user login and security in iOS apps. Project organization, desing patters and architecture were not taken so seriously.

### Webcredentials associated domains service
The `apple-app-site-association` file must be in the website server. Preferred inside the root + `/.well-known/`  
There is no way to test it without the two way link between app and site/webserver, so the qick type bar will not be helpfull until this is done.
