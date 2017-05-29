url="http://mail.163.com" '网址
uname="walkoncross"  '用户名
upwd="8888"  '密码

set ie=createobject("internetexplorer.application")
ie.navigate url
ie.Visible = true 'true 为显示窗口  false 隐藏

do while ie.busy
wscript.sleep 100
loop

ie.document.getelementbyid("idInput").value=uname
wscript.sleep 1000
ie.document.getelementbyid("pwdInput").value=upwd
wscript.sleep 1000
ie.document.getelementbyid("loginBtn").click