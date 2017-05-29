setlocal enabledelayedexpansion

@echo off

set pwd=%CD%
echo %pwd%

REM 指定要进行批量重命名的文件夹
set dir0="./"
echo %dir0%

dir /a:-d /b !dir0!>temp.txt

cd %dir0%

for /f "delims=" %%i in (!pwd!/temp.txt) do (
set x="%%i"
echo !x!
set new_name=!x: =_!
set new_name=!new_name:图片=TuPian!
set new_name=!new_name:原图=YuanTu!
set new_name=!new_name:标点=BiaoDian!

set new_name=!new_name:方俊=FangJun!
set new_name=!new_name:金广谊=JinGuanYi!
set new_name=!new_name:刘小虎=LiuXiaoHu!
set new_name=!new_name:沈幼聪=ShenYouCong!
set new_name=!new_name:王洪=WangHong!
set new_name=!new_name:王剑锋=WangJianFeng!
set new_name=!new_name:项欢=XiangHuan!

set new_name=!new_name:土耳其安哥拉猫=TuErQiAnGeLaMao!
set new_name=!new_name:波斯猫=BoSiMao!
set new_name=!new_name:伯曼猫=BoManMao!
set new_name=!new_name:阿比西尼亚猫=ABiXiNiYaMao!
set new_name=!new_name:美国短尾猫=MeiGuoDuanWeiMao!
set new_name=!new_name:东方短毛猫=DongFangDuanMaoMao!
set new_name=!new_name:苏格兰折耳猫=SuGeLanZheErMao!
set new_name=!new_name:日本短尾猫=RiBenDuanWeiMao!

set new_name=!new_name:金毛=JinMao!
set new_name=!new_name:猎犬=LieQuan!
set new_name=!new_name:拉布拉多寻回犬=LaBuLaDuoXunHuiQuan!
set new_name=!new_name:约克夏=YueKeXia!
set new_name=!new_name:梗犬=GengQuan!
set new_name=!new_name:比格犬=BiGeQuan!
set new_name=!new_name:德国牧羊犬=DeGuoMuYangQuan!
set new_name=!new_name:拳师狗=QuanShiGou!
set new_name=!new_name:西施犬=XiShiQuan!
set new_name=!new_name:大丹犬=DaDanQuan!
set new_name=!new_name:马尔吉斯犬=MaErJiSiQuan!
set new_name=!new_name:萨摩耶犬=SaMoYeQuan!
set new_name=!new_name:哈士奇犬=HaShiQiQuan!
set new_name=!new_name:腊肠犬=LaChangQuan!
set new_name=!new_name:藏獒=ZangAo!
set new_name=!new_name:北京犬=BeijingQuan!
set new_name=!new_name:喜乐蒂牧羊犬=XiLeDiMuYangQuan!
set new_name=!new_name:贵妇犬=GuiFuQuan!
set new_name=!new_name:沙皮狗=ShaPiGou!
set new_name=!new_name:松狮犬=SongShiQuan!
set new_name=!new_name:雪纳瑞犬=XueNaRuiQuan!

set new_name=!new_name:德牧=DeMu!
set new_name=!new_name:斗牛=DouNiu!
set new_name=!new_name:拉布拉多犬=LaBuLaDuoQuan!
set new_name=!new_name:拳师犬=QuanShiQuan!

set new_name=!new_name:猫=Mao!
set new_name=!new_name:犬=Quan!


echo !new_name!
rename !x! !new_name!
)

set new_name=!new_name:BiGeQuan
set new_name=!new_name:DeGuoMuYangQuan
set new_name=!new_name:QuanShiGou
set new_name=!new_name:XiShiQuan
set new_name=!new_name:DaDanQuan
set new_name=!new_name:MaErJiSiQuan

pause