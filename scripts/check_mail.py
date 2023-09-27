#!/usr/bin/env python
import imaplib

cnt = 0
obj = imaplib.IMAP4_SSL('mailserver.com', 993)
obj.login('login@mailserver.com', 'password')
obj.select()
_, data = obj.search(None,'UnSeen')
for num in data[0].split():
    cnt += 1
print (cnt)
obj.close()
obj.logout()

