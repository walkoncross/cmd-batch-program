url="http://mail.163.com" '��ַ
uname="walkoncross"  '�û���
upwd="8888"  '����

set ie=createobject("internetexplorer.application")
ie.navigate url
ie.Visible = true 'true Ϊ��ʾ����  false ����

do while ie.busy
wscript.sleep 100
loop

ie.document.getelementbyid("idInput").value=uname
wscript.sleep 1000
ie.document.getelementbyid("pwdInput").value=upwd
wscript.sleep 1000
ie.document.getelementbyid("loginBtn").click