setlocal enabledelayedexpansion

@echo off

set pwd=%CD%
echo %pwd%

REM ָ��Ҫ�����������������ļ���
set dir0="./"
echo %dir0%

dir /a:-d /b !dir0!>temp.txt

cd %dir0%

for /f "delims=" %%i in (!pwd!/temp.txt) do (
set x="%%i"
echo !x!
set new_name=!x: =_!
set new_name=!new_name:ͼƬ=TuPian!
set new_name=!new_name:ԭͼ=YuanTu!
set new_name=!new_name:���=BiaoDian!

set new_name=!new_name:����=FangJun!
set new_name=!new_name:�����=JinGuanYi!
set new_name=!new_name:��С��=LiuXiaoHu!
set new_name=!new_name:���״�=ShenYouCong!
set new_name=!new_name:����=WangHong!
set new_name=!new_name:������=WangJianFeng!
set new_name=!new_name:�=XiangHuan!

set new_name=!new_name:�����䰲����è=TuErQiAnGeLaMao!
set new_name=!new_name:��˹è=BoSiMao!
set new_name=!new_name:����è=BoManMao!
set new_name=!new_name:����������è=ABiXiNiYaMao!
set new_name=!new_name:������βè=MeiGuoDuanWeiMao!
set new_name=!new_name:������ëè=DongFangDuanMaoMao!
set new_name=!new_name:�ո����۶�è=SuGeLanZheErMao!
set new_name=!new_name:�ձ���βè=RiBenDuanWeiMao!

set new_name=!new_name:��ë=JinMao!
set new_name=!new_name:��Ȯ=LieQuan!
set new_name=!new_name:��������Ѱ��Ȯ=LaBuLaDuoXunHuiQuan!
set new_name=!new_name:Լ����=YueKeXia!
set new_name=!new_name:��Ȯ=GengQuan!
set new_name=!new_name:�ȸ�Ȯ=BiGeQuan!
set new_name=!new_name:�¹�����Ȯ=DeGuoMuYangQuan!
set new_name=!new_name:ȭʦ��=QuanShiGou!
set new_name=!new_name:��ʩȮ=XiShiQuan!
set new_name=!new_name:��Ȯ=DaDanQuan!
set new_name=!new_name:�����˹Ȯ=MaErJiSiQuan!
set new_name=!new_name:��ĦҮȮ=SaMoYeQuan!
set new_name=!new_name:��ʿ��Ȯ=HaShiQiQuan!
set new_name=!new_name:����Ȯ=LaChangQuan!
set new_name=!new_name:����=ZangAo!
set new_name=!new_name:����Ȯ=BeijingQuan!
set new_name=!new_name:ϲ�ֵ�����Ȯ=XiLeDiMuYangQuan!
set new_name=!new_name:��Ȯ=GuiFuQuan!
set new_name=!new_name:ɳƤ��=ShaPiGou!
set new_name=!new_name:��ʨȮ=SongShiQuan!
set new_name=!new_name:ѩ����Ȯ=XueNaRuiQuan!

set new_name=!new_name:����=DeMu!
set new_name=!new_name:��ţ=DouNiu!
set new_name=!new_name:��������Ȯ=LaBuLaDuoQuan!
set new_name=!new_name:ȭʦȮ=QuanShiQuan!

set new_name=!new_name:è=Mao!
set new_name=!new_name:Ȯ=Quan!


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