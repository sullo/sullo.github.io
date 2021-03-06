---
layout: post
title: "Nikto Interactive"
tag: Nikto
---

When running Nikto, you have the ability to save all findings in plaintext files by using the -Save option. This option takes one argument, a directory name, which will be used or created to save all findings, one per text file.  Each file will be named in the following format: HOSTNAME_PORT_DATE_TESTID.txt

These save files contain basic test information such as the test ID and message, the full HTTP response, and JSON representations of both the request and response. They also contain a “Reason” for the finding—for example “Response Code Match” (the code from the HTTP response matched the test database) or “Content Match” (versus the response body), which is helpful for debugging.
This text file can be used for evidence of a test finding later, and can also serve as documentation for reports.

Additionally, the JSON can be used to replay the original test’s request by using the included replay.pl program (note that Nikto will need the JSON::PP module installed).
replay.pl has only two options:      -file      -proxy

By supplying the Nikto save file as the -file option value, replay.pl will parse the request and send it to the original target server. The -proxy option will route the request through the specified proxy (format host:port), which makes it easy to move a request from the command line to a tool like Burp.

This type of replay is especially handy when rechecking findings after application changes have been implemented. The output will again provide the original Nikto test information, and will show both the headers and body of the new request. 

One final tip—by supplying a “.” to the -Save option, Nikto will automatically name and create a new directory in the format: savedir_HOST_PORT_DATETIME

