#!/usr/bin/env python3
import os,re,requests
b=os.environ['BASE_URL'].rstrip('/');user=os.environ['ADMIN_USER'];pw=os.environ['ADMIN_PASSWORD'];url=b+'/index.php/admin/authentication/sa/login'
page=requests.get(b+'/',timeout=30);assert page.status_code==200 and 'LimeSurvey' in page.text
def submit(password):
 s=requests.Session();g=s.get(url,timeout=30);token=re.search(r'value="([^"]+)" name="YII_CSRF_TOKEN"',g.text);assert token
 data={'YII_CSRF_TOKEN':token.group(1),'authMethod':'Authdb','user':user,'password':password,'loginlang':'default','action':'login','login_submit':'login','width':'1280'}
 return s,s.post(url,data=data,allow_redirects=True,timeout=30)
_,bad=submit('wrong-password');assert '/admin/authentication' in bad.url or 'Incorrect' in bad.text
_,login=submit(pw);assert login.status_code==200 and 'dashboard/view' in login.url and 'logout' in login.text.lower(),login.url
print('LimeSurvey smoke checks passed')
