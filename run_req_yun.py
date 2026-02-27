# encoding=utf-8
import urllib;
import time  
import datetime
print("go89_run_req_yun.py");
import base64
import time
import re
import ddddocr
 
import smtplib
from email.header import Header

from email.mime.multipart import  MIMEMultipart
from email.mime.text import MIMEText
from email.mime.application import MIMEApplication
from email.mime.image import MIMEImage#用来构造邮件内容的库

import math


import requests;
import ssl
ssl._create_default_https_context = ssl._create_unverified_context
#, verify=False


from requests.packages.urllib3.exceptions import InsecureRequestWarning
requests.packages.urllib3.disable_warnings(InsecureRequestWarning)

from requests.packages.urllib3.exceptions import SNIMissingWarning
requests.packages.urllib3.disable_warnings(SNIMissingWarning)

from requests.packages.urllib3.exceptions import InsecurePlatformWarning
requests.packages.urllib3.disable_warnings(InsecurePlatformWarning)


#from urllib3.exceptions import InsecureRequestWarning;urllib3.disable_warnings(InsecureRequestWarning);
#from urllib3.exceptions import SNIMissingWarning;urllib3.disable_warnings(SNIMissingWarning);




mail_host = "smtp.189.cn"  #设置服务器
mail_user = "18975806194@189.cn"  #用户名
mail_pass = "544957720"   #授权码非邮箱密码
receivers = ['295667420@qq.com']   #接收邮箱、



headers3 = {
'Accept': '*/*',
'Cache-Control': 'no-cache',
'Connection': 'close',
#'Referer':'https://Sycsecret.buuoj.cn',
#'X-Forwarded-For':'localhost',
#'Content-Type': 'application/x-www-form-urlencoded',
'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0'
}

filename2="11.jpg";

def  mail889(tle23,toStr33):
  global mail_user;
  global mail_pass;
  global mail_host;
  global receivers;
  global filename2;
  msg = MIMEMultipart()  #创建一个带附件的实例
  msg["Subject"] = str(tle23)+str(toStr33)  #指定邮件主题
  msg["From"] = mail_user
  msg["To"] = ','.join(receivers) #邮件接收人
  mail_text = str(tle23)+'yzm: '+toStr33+'<img src="cid:image1">'
  textApart = MIMEText(mail_text, 'html', 'utf-8')
  msg.attach(textApart)
  
  image4=MIMEImage(open(filename2,'rb').read()  ,filename2.split('.')[-1]  )
  #修改文件名
  image4.add_header('Content-ID', '<image1>') 
  image4['Content-Disposition']='images;filename="1a970863dc44b373f3f9d17658a53512.jpg"'
  msg.attach(image4)

    
  #附件部分
#  part2 = MIMEApplication(open(filename2,'rb').read())
#  print(filename2);
#  part2.add_header('Content-Disposition','attachment',filename=filename2)
#  msg.attach(part2)

  try:
      s = smtplib.SMTP(mail_host, timeout=8)  # 连接smtp邮件服务器,端口默认是25
      s.login(mail_user, mail_pass)  # 登陆服务器
      s.sendmail(mail_user, receivers, msg.as_string())  # 发送邮件
      s.close()
  except Exception as e:
      print("error:", e)

    


def recognize(img_bytes):
    ocr = ddddocr.DdddOcr()
    res = ocr.classification(img_bytes)
    print(res);
    return str(res);


s2 = requests.Session()  #, proxies={ 'http':'http://127.0.0.1:8080/' }
s2.get('http://www.xg51.net/login.asp',headers=headers3)
cnt3=0;

def go89():
  global s2;
  global cnt3;
  global filename2;
  print("go89");
  if cnt3 >2 :
   return ; #, proxies={ 'http':'http://127.0.0.1:8080/' }
  s4=s2.get('http://www.xg51.net/include/checkcode.asp',headers=headers3,stream=False, timeout=3)
  if s4.status_code == 200:
          utc77=time.mktime(datetime.datetime.now().timetuple());
          print(utc77);
          filename2 = str(utc77)+'.jpg';
          with open(filename2, 'wb') as f2:
                  f2.write(s4.content); # save jpg
                  f2.close();
          ck2=recognize(s4.content);
          print("go89_A");
          if len(ck2)==0 or ck2.isspace() : 
            pass
          else:
             data2 = {'username':'liuhuan22','password':"544957720",'checkcode':ck2,'checkbox':"on"}; #, proxies={ 'http':'http://127.0.0.1:8080/' }
             s6=s2.post('http://www.xg51.net/login.asp?action=login',headers=headers3,stream=False, timeout=3,data=data2)
             if s6.status_code == 200:
               pattern2="[\u4e00-\u9fa5]+" 
               regex = re.compile(pattern2)
               results = regex.findall(s6.text)
               print(results)
               r8='='.join(results);
               print(r8);
               r9=re.findall('码错误',r8)   #验正码错误  验证码
               if len(r9) > 0 :
                 time.sleep(2);
                 cnt3=cnt3+1;
                 go89();
               else   :
                 mail889(ck2,r8);
               print(r9);


go89();

#if __name__ == '_main_' :
#    go89();


 


 