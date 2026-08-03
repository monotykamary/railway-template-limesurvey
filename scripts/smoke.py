#!/usr/bin/env python3
import os,re,requests
b=os.environ['BASE_URL'].rstrip('/');user=os.environ['ADMIN_USER'];pw=os.environ['ADMIN_PASSWORD'];page=requests.get(b+'/',timeout=30);assert page.status_code==200 and 'LimeSurvey' in page.text
url=b+'/index.php/admin/authentication/sa/login';bad=requests.Session();g=bad.get(url);token=re.search(r'name="YII_CSRF_TOKEN" value="([^"]+)"',g.text);data={'authMethod':'Authdb','user':user,'password':'wrong','loginlang':'default'};data.update({'YII_CSRF_TOKEN':token.group(1)} if token else {});br=bad.post(url,data=data,allow_redirects=True);assert '/admin/authentication' in br.url or 'Incorrect' in br.text
s=requests.Session();g=s.get(url);token=re.search(r'name="YII_CSRF_TOKEN" value="([^"]+)"',g.text);data={'authMethod':'Authdb','user':user,'password':pw,'loginlang':'default'};data.update({'YII_CSRF_TOKEN':token.group(1)} if token else {});r=s.post(url,data=data,allow_redirects=True,timeout=30);assert r.status_code==200 and ('admin/index' in r.url or 'Welcome' in r.text or 'Configuration' in r.text),r.url
print('LimeSurvey smoke checks passed')
