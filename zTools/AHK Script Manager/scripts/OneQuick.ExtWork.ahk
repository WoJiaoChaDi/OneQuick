;========================
;��עģ��
;========================


/*
-----------------------------------------------------------ʹ��chrome��ʱ��---------------------------------------------
*/

#SingleInstance 

GroupAdd, ChromeAndPLSQL , ahk_exe chrome.exe
GroupAdd, ChromeAndPLSQL , ahk_exe plsqldev.exe

#IfWinActive ahk_exe chrome.exe
 
/*
 * @Description: �������� - ����ҳ��
 * @author XuDong
 */
 ::``q::
	addFangChan()
 return  

addFangChan(){
	refreshMenu()
	MouseClick, left,  76,  383
	Sleep, 1000
	MouseClick, left,  88,  477	;������Ϣ
	Sleep, 2000
	MouseClick, left,  1044,  318
	Sleep, 1000
	MouseClick, left,  470,  327
	Sleep, 1000
	
	ToolTip("...�ű�����")
}

/*
 * @Description: �������� - �Զ���
 * @author XuDong
 */
 ::``qq::
	 addFangChan2()
 return  
 
 addFangChan2(){
	MouseClick, left, 460, 318
	Send {Home}   
	Send +{End}
	Send ^v
	Send ^c
	MouseClick, left, 415, 360 ;���ڳ�������
	Send {down}{enter}
	Sleep 500
	MouseClick, left, 518, 360 ;���ڳ�������
	Send {down}{enter}
	MouseClick, left, 1629, 432 ;������;
	Send {down}{enter}
	MouseClick, left, 1048, 360 ;��������
	Send ^v
	MouseClick, left, 1054, 431 ;���������m2��
	Send 155
	MouseClick, left, 999, 634 ;����
	MouseClick, left, 1051, 670 ;ȷ��
	
	ToolTip("...�ű�����")
}

/*
 * @Description: ���½���Ѻ�ﵽ����I
 * @author XuDong
 */
::``qq1::
	addFangChan()
	Send ^v
	addFangChan2()
	fangChanChuPing()
	yeWuShenQing(13581611612)
	neiShen1()
return

/*
 * @Description: ������I���ÿ�ȷ��(����)
 * @author XuDong
 */
::``410::
	Send ^{F5}
	Sleep 2000
	;MouseClick, left,  87, 211	;�ر�ϵͳ�˵�
	Sleep, 1000
	addFangChan()
	Send ^v
	addFangChan2()
	fangChanChuPing()
	yeWuShenQing(13581611612)
	
	refreshMenu()
	MouseClick, left, 38, 441 ;��������
	Sleep, 800  ;�ȴ�
	MouseClick, left, 72, 477 ;��������
	Sleep, 2000  ;�ȴ�
	MouseClick, left,  1009,  253 ;����
	Sleep, 2500  ;�ȴ�
	neiShen1w()
	
	Sleep 500
	Send {enter}
	neiShen11w()
	Sleep, 2000
	neiShen2w()
	Sleep, 3000
	waiShenw()
	Sleep, 3000
	paiZhuw()
	Sleep, 3000
	zhongShenw()
return

/*
 * @Description: ������I���ÿ�ȷ��(����)
 * @author XuDong
 */
::``qq410::
	Send ^{F5}
	Sleep 2000
	;MouseClick, left,  87, 211	;�ر�ϵͳ�˵�
	Sleep, 1000
	addFangChan()
	Send ^v
	addFangChan2()
	fangChanChuPing()
	yeWuShenQing(13581611612)
	neiShen1ForNew()
	Sleep, 2000
	neiShen2()
	Sleep, 3000
	waiShen()
	Sleep, 3000
	paiZhu()
	Sleep, 3000
	zhongShen()
return

/*
 * @Description: ������I���ÿ�ȷ��(����)
 * @author XuDong
 */
::``qq412::
	Send ^{F5}
	Sleep 2000
	MouseClick, left,  87, 211	;�ر�ϵͳ�˵�
	Sleep, 1000
	addFangChan()
	Send ^v
	addFangChan2()
	fangChanChuPing()
	yeWuShenQing(13500011090)
	neiShen1ForNew()
	Sleep, 1000
	neiShen2()
	Sleep, 2000
	waiShen()
	Sleep, 2000
	paiZhu()
	Sleep, 2000
	zhongShen()
return
	
/*
 * @Description: �������� - �Զ���
 * @author XuDong
 */
 ::``w::
	fangChanChuPing()
 return  

fangChanChuPing(){
	refreshMenu()
	MouseClick, left, 64, 386 ;��������
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 75, 498 ;��������
	Sleep, 2000  ;�ȴ�
	MouseClick, left, 306, 229 ;�������޷���
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 1704, 380 
	Send {tab}{enter}	;ѡ�е�һ������
	Sleep, 3500  ;�ȴ�
	
	;~ ImageSearch, OutputVarX, OutputVarY, 0, 0, A_ScreenWidth, A_ScreenHeight,D:\SoftWare\AutoHotKey\AutoHotKey\tool\ReadFile\chuping_fangwuzuobiao2.png
	;~ if ErrorLevel = 2 
	;~ MsgBox ��������_��������_����ʵʩ������
	;~ else if ErrorLevel = 1 
	;~ MsgBox ��������_��������_δ����Ļ��Ѱ��ͼ�ꡣ
	;~ else{
		;~ MouseClick, left, %OutputVarX%, %OutputVarY% ;��λ
		MouseClick, left, 1118, 327 ;��λ
		Sleep, 800  ;�ȴ�
		Send ^+{tab}
		Sleep, 800  ;�ȴ�
		;~ sX := OutputVarX - 700
		;~ sY := OutputVarY - 25
		;~ MouseClick, left, %sX%, %sY% ;ѡ������Ȩ��
		MouseClick, left, 501, 297 ;ѡ������Ȩ��
		Send {Home}   
		Send +{End}
		Send ^c
		Send {tab 9}
		Send ^v
		Send {tab 7}
		Send {Home}   
		Send +{End}
		Send 150000 ;ϵͳ�������ۣ�Ԫ��
		Send ^{tab}
		Sleep, 4000  ;�ȴ�
		Send {enter} ;����ʧ�ܵ�ȷ��
		Sleep, 500
		MouseClick, left,  234,  187
		Sleep, 500
		MouseClick, left,  365,  348
		Sleep, 500
		MouseClick, left,  365,  348
		Sleep, 500
		Send {tab}{enter}
		Sleep, 500
		
		;~ ImageSearch, OutputVarXA, OutputVarYA, 0, 0, A_ScreenWidth, A_ScreenHeight,D:\SoftWare\AutoHotKey\AutoHotKey\tool\ReadFile\chuping_tijiao2.png
		;~ if ErrorLevel = 2 
		;~ MsgBox ��������_�ύ_����ʵʩ������
		;~ else if ErrorLevel = 1 
		;~ MsgBox ��������_�ύ_δ����Ļ��Ѱ��ͼ�ꡣ
		;~ else{
			;~ MouseClick, left,  %OutputVarXA%, %OutputVarYA%
			MouseClick, left,  756, 575 ;~ ��λ��������ѯ��ǰ��
			Send {tab 2}
			Sleep, 100
			Send, {ENTER}
		;~ }
	;~ }
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: ��ͨ������ - �Զ���
 * @author XuDong
 */
 ::``e::
	yeWuShenQing(13581611612)
 return 
 
 yeWuShenQing(ByRef tel){
	refreshMenu()
	MouseClick, left, 50, 471 ;��������
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 68, 506 ;��ͨ��
	Sleep, 2000  ;�ȴ�
	MouseClick, left, 207, 258 ;��궨λ������
	Send {tab}
	Send ^v
	Send {tab 5}{enter}
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 510, 379 ;��궨λ��һ����¼
	Sleep, 500  ;�ȴ�
	Send +{tab}+{tab}{enter}
	Sleep, 1500  ;�ȴ� 
	MouseClick, left, 477, 289 ;�ͻ�����
	Send {down}{enter}
	MouseClick, left, 1113, 285 ;�ͻ�����
	Sleep, 1500  ;�ȴ�
	MouseClick, left, 690, 483 ;��¼��
	Send %tel%{tab}{tab}{tab}{tab}{enter}
	Sleep 300
	MouseClick, left, 763, 531 ;ѡ���һ����¼
	Sleep, 500  ;�ȴ�
	MouseClick, left,  1005,  820
	Sleep, 500  ;�ȴ�
	MouseClick, left, 507, 343 ;������
	Send 150000{tab}7{tab}{tab}{tab}{enter}{tab}{tab}{tab}{enter} 
	closeTaskMsg()
	
	ToolTip("...�ű�����")
}
 
 /*
 * @Description: ����1 - �Զ���
 * @author XuDong
 */
 ::``1q::
	neiShen1ForNew()
 return  
 
 /*
 �ɵ�����I���ͻ����þɿͻ���Ϣ
 */
  neiShen1(){
	refreshMenu()
	MouseClick, left, 65, 444 ;��������
	Sleep, 800  ;�ȴ�
	MouseClick, left, 76, 478 ;��������
	Sleep, 2000  ;�ȴ�
	MouseClick, left,  1009,  265 ;����
	Sleep, 2500  ;�ȴ�
	MouseClick, left, 1657, 323 ;��������һ��
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 1007, 671 ;��������
	Sleep, 2500  ;�ȴ�
	MouseClick, left, 1657, 323 ;��������һ��
	Sleep, 3800  ;�ȴ�
	MouseClick, left, 440, 512 ;����Ժ������ �� 401 ��
	MouseClick, left, 440, 538 ;ִ��/ʧ���� �� 401 ��
	MouseClick, left, 440, 568 ;�й����������� �� 401 ��
	MouseClick, left, 443, 597 ;ȫ����ҵ������ �� 401 ��
	MouseClick, left, 1872, 254 ;���ƿͻ���Ϣ
	openCustInfo()
}
 
 /*
 �µ�����I�����֤ʹ��������֤�����һ��
 */
 neiShen1ForNew(){
	refreshMenu()
	MouseClick, left, 65, 444 ;��������
	Sleep, 800  ;�ȴ�
	MouseClick, left, 76, 478 ;��������
	Sleep, 2000  ;�ȴ�
	MouseClick, left,  1009,  265 ;����
	Sleep, 2500  ;�ȴ�
	MouseClick, left, 1657, 323 ;��������һ��
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 1007, 671 ;��������
	Sleep, 2500  ;�ȴ�
	MouseClick, left, 1657, 323 ;��������һ��
	Sleep, 3800  ;�ȴ�
	MouseClick, left, 440, 512 ;����Ժ������ �� 401 ��
	MouseClick, left, 440, 538 ;ִ��/ʧ���� �� 401 ��
	MouseClick, left, 440, 568 ;�й����������� �� 401 ��
	MouseClick, left, 443, 597 ;ȫ����ҵ������ �� 401 ��
	MouseClick, left, 1872, 255 ;���ƿͻ���Ϣ
		;openCustInfo()	;�ɵ�����I�����ÿͻ���Ϣ����ҳ��һ������
		
	Sleep 500
	MouseClick, left, 260, 284 ;�ͻ�����
	Send {tab}^v
	Send {tab 7}
	RandIdCard := getIdCardLine()
	Send %RandIdCard%	;������֤
	
	Send {tab 8}{enter}
	Sleep 500
	Send {enter}
	
	MouseClick, left, 480, 884 ;�����;
	Send {down}{Enter}
	
	MouseClick, left, 748, 934 ;�ύ
	MouseClick, left, 994, 665 ;ȷ��
	closeTaskMsg()
	Sleep, 2000
	MouseClick, left, 1044, 716 ;�ر�����
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: ����1��벿�� - �Զ���
 * @author XuDong
 */
 ::``11q::
	neiShen11()
 return  
 
 neiShen11(){
	Send {BS}
	Send ^v
	Sleep, 500  ;�ȴ�
	Send {enter}
	MouseClick, left, 1355, 503 ;ʹ�ÿͻ�
	Sleep, 1500  ;�ȴ�
	MouseClick, left,  420,  290 ;�ͻ�����
	Send {Home}   
	Send +{End}{BS}
	Sleep, 100  ;�ȴ�
	Send ^`` ;��ճ��
	Sleep, 100  ;�ȴ�
	Send 2 ;�ڶ���
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 987, 442 ;����
	Sleep, 1500  ;�ȴ�
	MouseClick, left, 1075, 671 ;��
	Sleep, 1000  ;�ȴ�
		
	MouseClick, left, 480, 884 ;�����;
	Send {down}{Enter}
	
	MouseClick, left, 748, 932 ;�ύ
	MouseClick, left, 994, 663 ;ȷ��
	closeTaskMsg()
	Sleep, 2000
	MouseClick, left, 1044, 714 ;�ر�����
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: ����1����ҳ�棩 - �Զ���
 * @author XuDong
 */
 ::``1::
	neiShen1w()
	neiShen11w()
 return  
 
 neiShen1w(){
	
	MouseClick, left, 1657, 321 ;��������һ��
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 1007, 669 ;��������
	Sleep, 2500  ;�ȴ�
	MouseClick, left, 1657, 321 ;��������һ��
	Sleep, 3800  ;�ȴ�
	;openCustInfo()	;���ÿͻ���Ϣ����ҳ��һ������
	
	ToolTip("...�ű�����")
}

::``11::
	neiShen11w()
return  
 
neishen11w(){
	
	SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
	
	MouseClick, left, 1029, 283 ;���֤��
	RandIdCard := getIdCardLine()
	ToolTip("���֤��Ϊ:"RandIdCard)
	Send %RandIdCard%	;������֤
	MouseClick, left, 514, 285 ;�ͻ�����
	Send ^a
	
	;Send ^`` ;��ճ��
	;Sleep, 100  ;�ȴ�
	;Send 2 ;�ڶ���
	
	Send ^v
	
	Sleep 200
	Random, mobile8, 10000000, 99999999	;����8λ�����
	Send {tab 2}186%mobile8%	;�ֻ���
	
	;========================
	;�������
	;========================
	MouseClick, left, 278, 228 ;�������
	MouseClick, left, 314, 279 ;��Ժ������ǰ�涨λ
	Send {tab 2}{right 2}{tab}
	Send ���Ƿ�Ժ�������ı�עŶ��
	Send {tab 2}{right 2}{tab}
	Send ����ִ��/ʧ�����ı�עŶ��
	Send {tab 2}{right 2}{tab}
	Send ���ǲ����������ı�עŶ��
	Send {tab 2}{right 2}{tab}
	Send ������ҵ�������ı�עŶ��
	Send {tab 2}{right 2}{tab}
	Send ���ǻ㷨���ı�עŶ��
	Send {tab 2}{right 2}{tab}
	Send ��������ı�עŶ��
	
	MouseClick, left, 473, 918 ;���߽��
	Send {down}{enter}
	MouseClick, left, 975, 920 ;��������
	Send {down}{enter}
	MouseClick, left, 1481, 922 ;����ʱ��
	Send {down}{enter}
	
	Send {tab}{enter}
	MouseClick, left, 1040, 503 ;ȷ���ύ
	Send {tab}{enter}{enter}
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: ����2 - �Զ���
 * @author XuDong
 */
 ::``2q::
	neiShen2()
 return  

neiShen2(){
	MouseClick, left, 1657, 321 ;��������һ��
	Sleep, 2000  ;�ȴ�
	MouseClick, left, 349, 230 ;tab������ʽ
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 1620, 362 ;��һ����Ѻ��������Ϣ
	Sleep, 2000  ;�ȴ�
	MouseClick, left, 1035, 377 ;������÷�ʽ
	Send {down}{enter}
	MouseClick, left, 465, 401 ;��������
	Send {down}{enter}
	MouseClick, left, 468, 427 ;�滮��;
	Send {down}{enter}
	MouseClick, left, 1033, 427 ;��Ȩ֤�Ǽ�����
	MouseClick, left, 981, 452 ;��Ȩ֤�Ǽ����� ��ǰ������
	MouseClick, left
	MouseClick, left
	MouseClick, left
	MouseClick, left
	MouseClick, left
	Sleep, 500  ;�ȴ�
	MouseClick, left, 1087, 581 ;��Ȩ֤�Ǽ����� 28��
	MouseClick, left, 474, 480 ;��¥��
	Send 15
	MouseClick, left, 1050, 483 ;����¥��
	Send 15
	MouseClick, left, 464, 537 ;������Դ
	Send {down}{enter}
	MouseClick, left, 1002, 535 ;�Ƿ�������֤ ��  960, 525 ��
	MouseClick, left, 1573, 538 ;��ǰ�Ƿ���Ѻ ��
	MouseClick, left, 431, 595 ;�Ƿ�Ψһס�� ��
	MouseClick, left, 1000, 588 ;�Ƿ�����/�� ��
	MouseClick, left, 1575, 594 ;�Ƿ������ ��
	MouseClick, left, 457, 315 ;��������Ȩ��
	Send {Home}   
	Send +{End}
	Send ^c
	MouseClick, left, 1608, 314 ;��Ȩ֤����
	Send {Home}   
	Send +{End}
	Send ^v
	
	;MouseClick, left, 931, 853 ;����
	fun_btn("����II-��Ѻ����Ϣ", "baocun", "����", 60, 20)
	Sleep, 500  ;�ȴ�
	Send {enter}
	
	MouseClick, left, 206, 230 ;��ǩ��Ϣ
	MouseClick, left, 1869, 256 ;�༭�ͻ���Ϣ
	Sleep 1000
	neiShen2ForCust()	;����2�ͻ���Ϣ
	
	Sleep, 500  ;�ȴ�
	fun_btn("����II", "tijiao2", "�ύ", 60, 20)
	;MouseClick, left, 753, 496 ;�ύ
	Send {enter}
	;MouseClick, left, 990, 653 ;ȷ��
	Sleep, 2000  ;�ȴ�
	Send {enter}
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: ����2����Ѻ����Ϣ�� - �Զ���
 * @author XuDong
 */
 ::``2d::
	neiShen2ForDbdm()
 return  
 
 neiShen2ForDbdm(){
	MouseClick, left, 453, 229 ;������ʽ
	MouseClick, left, 1501, 334 ;Ԥ�ƿɴ����(Ԫ)
	Send {tab}{enter}	;����
	Sleep 2500
	
	MouseClick, left, 422, 372, 2 ;���� ˫��
	Send 12
	MouseClick, left, 1035, 377 ;������÷�ʽ
	Send {down}{enter}
	MouseClick, left, 465, 401 ;��������
	Send {down}{enter}
	MouseClick, left, 468, 427 ;�滮��;
	Send {down}{enter}
	MouseClick, left, 1033, 427 ;��Ȩ֤�Ǽ�����
	MouseClick, left, 977, 461 ;��Ȩ֤�Ǽ����� ��ǰ������
	MouseClick, left


	Sleep, 500  ;�ȴ�
	MouseClick, left, 1087, 581 ;��Ȩ֤�Ǽ����� 28��
	MouseClick, left, 474, 480 ;��¥��
	Send 15
	MouseClick, left, 1050, 483 ;����¥��
	Send 15
	Send {tab}{right}	;�Ƿ���ַ�
	MouseClick, left, 1040, 518 ;��������
	Send {down}{enter}
	MouseClick, left, 476, 546 ;��������
	MouseClick, left, 411, 566, 12 ;������ǰ��
	MouseClick, left, 423, 655 ;���ѡһ��
	
	MouseClick, left, 481, 568 ;������Դ
	Send {down}{enter}
	MouseClick, left, 856, 564 ;�Ƿ�������֤
	Send {tab}{right}
	MouseClick, left, 1480, 565 ;��ǰ�Ƿ���Ѻ
	Send {tab}{right}
	MouseClick, left, 333, 620 ;�Ƿ�Ψһס�� ��
	Send {tab}{right}
	MouseClick, left, 897, 618 ;�Ƿ�����/�� ��
	Send {tab}{right}
	MouseClick, left, 1473, 619 ;�Ƿ������ ��
	Send {tab}{right}
	MouseClick, left, 457, 315 ;��������Ȩ��
	Send {Home}   
	Send +{End}
	Send ^c
	MouseClick, left, 1608, 314 ;��Ȩ֤����
	Send {Home}   
	Send +{End}
	Send ^v
	
	;fun_btn("����II-��Ѻ����Ϣ", "baocun2", "����", 60, 20)
	MouseClick, left, 850, 889 ;����
	Send {tab}{enter}
	
	Sleep, 500  ;�ȴ�
	Send {enter}

}

 /*
 * @Description: ����2���ͻ���Ϣ�� - �Զ���
 * @author XuDong
 */
 ::``2c::
	neiShen2ForCust()
 return  

neiShen2ForCust(){
	
	SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
	
	Sleep 500
	;========================
	;�ͻ�������Ϣ
	;========================
	MouseClick, left, 208, 222 ;������Ϣ
	MouseClick, left, 1899, 256 ;�޸Ŀͻ���Ϣ
	Sleep 1000
	MouseClick, left, 662, 310 ;��λ���ƶ��绰ǰ��
	Random, rand, 10000000, 99999999	;����8λ�����
	Random, rand2, 00000, 99999	;����8λ�����
	Send {tab}186%rand%
	Send {tab}^v%rand%	;��ͥסַ
	
	MouseClick, left, 441, 335 ;��λ����������ʡ
	Send {down}{enter}
	
	MouseClick, left, 838, 337 ;��λ������������
	Send {down}{enter}
	
	Send {tab}^v%rand%	;����סַ
	Send {tab}^v%rand%	;������
	MouseClick, left, 813, 361 ;����״��
	Send {down 2}{enter}
	MouseClick, left, 1339, 363 ;�������
	Send {down}{enter}
	
	MouseClick, left, 1710, 361 ;�����Ǽ�����
	MouseClick, left, 1680, 389, 10 ;������ǰѡ10����
	MouseClick, left, 1731, 473 ;���һ��
	
	MouseClick, left, 261, 383 ;��λ��ͥ�绰
	Send {tab}028852%rand2%	;��ͥ�绰
	
	MouseClick, left, 1787, 385 ;֤��������
	Sleep 200
	MouseClick, left, 1819, 413, 15 ;֤�������� ����
	MouseClick, left, 1739, 497 ;֤��������

	
	MouseClick, left, 822, 435 ;������ʱ��
	Send {down}{enter}
	
	MouseClick, left, 1220, 446 ;������
	Send {down}{enter}
	Send {tab}800000
	
	MouseClick, left, 1724, 443 ;���ѧ��
	Send {down}{enter}
	
	MouseClick, left, 402, 472 ;ѧλ
	Send {down}{enter}
	
	Send {tab}%rand%@163.com	;����
	Send {tab}%rand2%_wx	;΢�ź�
	Send {tab}%rand%	;QQ��
	Send {tab}2			;�����˿�
	Send {tab}610041	;��������

	MouseClick, left, 1264, 493 ;�����ռ���
	MouseClick, left, 1233, 514, 12 ;��ǰ�淭ҳ
	MouseClick, left, 1290, 597 ;ѡ��
	
	MouseClick, left, 1712, 497 ;ְҵ���
	Send {down}{enter}
	
	MouseClick, left, 267, 506	;��λ��ְ����
	Send {tab}8	;��ְ����
	
	MouseClick, left, 280, 526 ;��λ��˾����
	Send {tab}Ƥ��è��Ϣ�Ƽ����޹�˾
	Send {tab}��������N3-N9-1425
	
	MouseClick, left, 406, 555 ;��ҵ����
	Send {down}{enter}
	Sleep 500
	MouseClick, left, 666, 562 ;��ҵ����
	Send {down}{enter}
	
	MouseClick, left, 1125, 552 ;��λ��ע
	Send {tab}^v
	Send ���Ǳ�ע
	MouseClick, left, 429, 603 ;�ͻ���������
	Send {down}{enter}
	
	;========================
	;�ͻ���ż��Ϣ
	;========================
	MouseClick, left, 299, 634 ;��λ��ż����
	Send {tab}^v����ż			;��ż����
	
	Random, randP1, 10000000, 99999999	;����8λ�����
	Send {tab}186%randP1%		;��ż�绰
	
	MouseClick, left, 1274, 634 ;��ż�Ա�
	Send {down}{enter}
	
	MouseClick, left, 1701, 648 ;���ѧ��
	Send {down}{enter}
	
	Send {tab}18	;����
	
	MouseClick, left, 830, 659 ;֤������
	Send {down}{enter}		
	
	RandIdCardP1 := getIdCardLine()
	Send {tab}%RandIdCardP1%	;������֤
	
	MouseClick, left, 375, 683 ;��ż������
	Send {down}{enter}		;��ż������
	Send {tab}3000			;��ż������
	
	Send {tab}30			;��ż��ְ����
	
	Send {tab}^v��ַ��ַ		;��ż������ַ

	;========================
	;�ͻ�������Ϣ
	;========================
	MouseClick, left, 318, 259 ;�ͻ�������Ϣ
	Send {tab}549
	Send {tab}148
	Send {tab}549
	Send {tab}148
	
	Send {tab}^v��ϵ��1
	Random, rand3, 10000000, 99999999	;����8λ�����
	Send {tab}186%rand3%
	;Send {tab}%rand3%�����˹�ϵ
	MouseClick, left, 1594, 399 ;�����˹�ϵ
	Send {down}{enter}
	Send {tab}%rand3%22
	Send {tab}%rand3%33
	Send {tab}%rand3%ѧУ
	Send {tab}%rand3%��ϵ��ַ
	
	Send {tab}^v��ϵ��2
	Random, rand4, 10000000, 99999999	;����8λ�����
	Send {tab}186%rand4%
	;Send {tab}%rand4%�����˹�ϵ
	MouseClick, left, 1599, 485 ;�����˹�ϵ
	Send {down}{enter}
	Send {tab}%rand4%22
	Send {tab}%rand4%33
	Send {tab}%rand4%ѧУ
	Send {tab}%rand4%��ϵ��ַ
	
	Send {tab}{enter}	;����
	Sleep 600
	Send {tab}{enter}	;����
	
	ToolTip("...�ű�����")
}

/*
	����2��������Ϣ�� - �Զ���
 */
 ::``2e::
	neiShenWai()
 return
 
neiShenWai(){
	
	SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
	
	;========================
	;������Ϣ(���)
	;========================
	MouseClick, left, 200, 228 ;������Ϣ
	
	MouseClick, left, 1890, 345 ;�����ʲ���һ��
	MouseClick, left, 1890, 345 ;�����ʲ���һ��
	MouseClick, left, 1890, 345 ;�����ʲ���һ��
	MouseClick, left, 940, 363 ;��һ�������ʲ��ķ�����;
	Send ��Ӫ������
	Send {tab}�Ϸ���
	Send {tab}��112233
	Send {tab}��
	Send {tab}����
	Send {tab}��ʿ��
	Send {tab}112
	Send {tab}5000000
	Send {tab}{right}
	Send {tab}4000000
	MouseClick, left, 1507, 457 ;�����˹�ϵ
	Send {down}{enter}
	
	MouseClick, left, 447, 478 ;�ڶ��������ʲ����ʲ�����
	Send {down}
	MouseClick, left, 447, 478 ;�ڶ��������ʲ����ʲ�����
	Send {down}
	MouseClick, left, 447, 478 ;�ڶ��������ʲ����ʲ�����
	Send {down}
	
	MouseClick, left, 972, 481 ;�ڶ��������ʲ��ĳ���Ʒ���ͺ�
	Send ��A12345
	Send {tab}500000
	
	Send {tab 2}556
	Send {tab}50000
	
	MouseClick, left, 1507, 457 ;�����˹�ϵ(��һ�������ʲ�)
	Send {down}{enter}
	
	MouseClick, left, 1892, 545 ;������ˮ+1
	MouseClick, left, 1892, 545 ;������ˮ+1
	Send {tab}������ˮ1{tab}�з�����{tab}4000{tab}80000{tab}40000{tab}2000
	Send {tab}������ˮ2{tab}����������{tab}4000{tab}80000{tab}40000{tab}2000
	
	MouseClick, left, 1859, 679 ;������Դ+1
	MouseClick, left, 1841, 678 ;������Դ+1
	Send {tab}��ͽ�ı����������޿��κλ���ȥ{tab}��Ϣ�Ǹ���ͷ���ѵ������Ϸ���
	
	Send {tab}{right}{tab}{right}{tab}{right}{tab}��Ǯ�����ģ�	;�����;
	
	;========================
	;�����������
	;========================
	MouseClick, left, 290, 230 ;�����������
	MouseClick, left, 278, 276 ;�������������(��λ)
	Send {tab}{right}{tab}1{tab}2{tab}3{tab}{right}{tab}{right}{tab 2}{right}{tab}�ͻ��������ſ���˵�Ƿʳ����ã�
	Send {tab}{right}{tab}1{tab}2{tab}3{tab}{right}{tab}{right}{tab 2}{right}{tab}��ż��������Ҳ����˵�Ƿʳ����ã�
	MouseClick, left, 1623, 344 ;�����弶����
	Send {down}{enter}
	MouseClick, left, 1615, 500 ;�����弶����
	Send {down}{enter}
}

 /*
 * @Description: ����2����ҳ�棩 - �Զ���
 * @author XuDong
 */
 ::``2::
	neiShen2w()
 return  

neiShen2w(){
	
	SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
	
	MouseClick, left, 1657, 321 ;��������һ��
	Send {enter}	;��������
	Sleep 1000
	MouseClick, left, 1657, 321 ;��������һ��
	Sleep, 2000  ;�ȴ�
	
	;========================
	;������Ϣ(�ͻ���Ϣ)
	;========================
	;~ fun_btn_nomsg("����2", "huabi", "�༭�ͻ���Ϣ��ť", 10, 10)
	;~ MouseClick, left, 1898, 248 ;�༭�ͻ���Ϣ��ť
	;~ Sleep 2000
	neiShen2ForCust()
	
	;========================
	;������Ϣ(���)
	;========================
	neiShenWai()
	
	;========================
	;������ʽ
	;========================
	neiShen2ForDbdm()
	
	;========================
	;����II�ύ
	;========================
	Sleep 500
	;~ fun_btn("����II", "tijiao", "�ύ", 60, 20)
	MouseClick, left, 778, 407	;~ ����II�ύ
	Sleep 500
	
	;~ fun_btn("����II", "queding", "ȷ��", 60, 20)
	MouseClick, left, 1001, 756
	Sleep 1000
	
	ToolTip("...�ű�����")
}

/*
 * @Description: ���� - �Զ���
 * @author XuDong
 */
 ::``22::
	waiShenw()
 return  
 
 waiShenw(){
	MouseClick, left, 1657, 321 ;��������һ��
	Sleep, 5000  ;�ȴ�

	MouseClick, left, 505, 703 ;�ڲ��ṹ
	Send {down}{enter}
	MouseClick, left, 1045, 703 ;���ͽṹ
	Send {down}{enter}
	MouseClick, left, 1626, 704 ;װ��
	Send {down}{enter}
	MouseClick, left, 484, 727 ;����
	Send {down}{enter}
	
	MouseClick, left, 349, 752 ;��λ��������ʵ�ʵ�ַ���Ȩ֤��ַ�Ƿ�һ�£�
	Loop, 18{
	Send {tab}{right}
	Sleep, 10
	}
	;~ ѭ�������ִ�  �Ƿ��������ˡ��м���
	Send {tab}{tab}{tab}{tab}{tab}{tab}{tab}{tab}�����»��ı�ע��ע��ע
	Send {PgDn}{tab}{tab}

	/*
	MouseClick, left, 318, 740 ;����ʵ�ʵ�ַ���Ȩ֤��ַ�Ƿ�һ��
	Send {tab}{right}
	MouseClick, left, 908, 739 ;ʹ��״��
	Send {tab}{right}
	MouseClick, left, 1463, 738 ;�Ƿ��е���
	Send {tab}{right}
	MouseClick, left, 330, 768 ;�Ƿ����ڵ�
	Send {tab}{right}
	MouseClick, left, 905, 765 ;�Ƿ��ͨ
	Send {tab}{right}
	MouseClick, left, 1455, 771 ;�Ƿ��������ˡ��м���
	Send {tab}{right}
	*/
	
	;~ MouseClick, left, 370, 869 ;�н�����
	ClipboardOld = %ClipboardAll% ;������������ԭ��������
	Clipboard = ��������
	Send ^v
	Clipboard = %ClipboardOld% ;�ָ��������ʼ������Return
	
	;MouseClick, left, 756, 844 ;�н���ϵ��ʽ
	Send {tab}	;�н���ϵ��ʽ
	Send 18600000000
	;MouseClick, left, 1147, 841 ;���ۣ�Ԫ/m2��
	Send {tab}	;���ۣ�Ԫ/m2��
	Send 15452
	;MouseClick, left, 931, 881 ;����
	;fun_btn("����", "baocun2", "����", 60, 20)
	MouseClick, left, 954, 1024 ;�������汣��
	Send {tab}{enter}
	Sleep 500
	MouseClick, left, 1050, 676 ;����ȷ����ʾ
	
	MouseClick, left, 801, 403 ;������ҳ�汣��
	Send {tab}{enter}
	Sleep 500
	Send {enter}
	
	Sleep 2000
	
	ToolTip("...�ű�����")
}

/*
 * @Description: ���� - �Զ���
 * @author XuDong
 */
 ::``22q::
	waiShen()
 return  
 
 waiShen(){
	MouseClick, left, 1657, 321 ;��������һ��
	Sleep, 5000  ;�ȴ�

	MouseClick, left, 469, 694 ;�ڲ��ṹ
	Send {down}{enter}
	MouseClick, left, 1033, 694 ;���ͽṹ
	Send {down}{enter}
	MouseClick, left, 1609, 696 ;װ��
	Send {down}{enter}
	MouseClick, left, 462, 722 ;����
	Send {down}{enter}
	MouseClick, left, 318, 750 ;����ʵ�ʵ�ַ���Ȩ֤��ַ�Ƿ�һ��
	Send {tab}{right}
	MouseClick, left, 908, 749 ;ʹ��״��
	Send {tab}{right}
	MouseClick, left, 1463, 748 ;�Ƿ��е���
	Send {tab}{right}
	MouseClick, left, 330, 778 ;�Ƿ����ڵ�
	Send {tab}{right}
	MouseClick, left, 905, 775 ;�Ƿ��ͨ
	Send {tab}{right}
	MouseClick, left, 1455, 781 ;�Ƿ��������ˡ��м���
	Send {tab}{right}
	
	MouseClick, left, 370, 879 ;�н�����
	ClipboardOld = %ClipboardAll% ;������������ԭ��������
	Clipboard = ��������
	Send ^v
	Clipboard = %ClipboardOld% ;�ָ��������ʼ������Return
	
	;MouseClick, left, 756, 844 ;�н���ϵ��ʽ
	Send {tab}	;�н���ϵ��ʽ
	Send 18600000000
	;MouseClick, left, 1147, 841 ;���ۣ�Ԫ/m2��
	Send {tab}	;���ۣ�Ԫ/m2��
	Send 15452
	;MouseClick, left, 931, 881 ;����
	;fun_btn("����", "baocun2", "����", 60, 20)
	MouseClick, left, 746, 918 ;�������汣��
	Send {tab}{enter}
	
	MouseClick, left, 801, 403 ;������ҳ�汣��
	Send {tab}{enter}
	Sleep 500
	Send {enter}
	
	Sleep 2000
	
	ToolTip("...�ű�����")
}

/*
 * @Description: ��פ����ܼ����� - �Զ���
 * @author XuDong
 */
 ::``3::
	paiZhuw()
 return  
 
 paiZhuw(){
	MouseClick, left, 1657, 321 ;��������һ��
	Sleep, 2000  ;�ȴ�
	MouseClick, left, 860, 1013 ;�ύ
	Send {enter}
	Sleep, 2000  ;�ȴ�
	MouseClick, left, 1045, 717 ;ȷ��
	Sleep, 2000  ;�ȴ�
	Send {enter}
	Sleep, 4000
	MouseClick, left, 1044, 714 ;�ر�����
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: ��פ����ܼ����� - �Զ���
 * @author XuDong
 */
 ::``3q::
	paiZhu()
 return  
 
 paiZhu(){
	MouseClick, left, 1657, 321 ;��������һ��
	Sleep, 2000  ;�ȴ�
	MouseClick, left, 849, 436 ;�ύ
	Send {enter}
	Sleep, 2000  ;�ȴ�
	MouseClick, left, 1045, 717 ;ȷ��
	Sleep, 2000  ;�ȴ�
	Send {enter}
	Sleep, 4000
	MouseClick, left, 1044, 714 ;�ر�����
	
	ToolTip("...�ű�����")
}

/*
 * @Description: ����_������������ - �Զ���
 * @author XuDong
 */
 ::``33::
	zhongShenw()
 return  

zhongShenw(){
	;~ MouseClick, left, 1774, 317 ;��������һ��
	;~ Send {tab}{enter}	;��������һ��
	;~ MouseClick, left, 1007, 659 ;��������
	MouseClick, left, 1765, 343 ;��������һ��
	Send {tab}{enter}	;��������һ��
	Send {enter}	;��������
	Sleep, 1500  ;�ȴ�
	MouseClick, left, 1765, 343 ;��������һ��
	Send {tab}{enter}	;��������һ��
	Sleep, 3000  ;�ȴ�
	
	MouseClick, left, 1765, 343 ;����һ�£����޸ĵ�Ѻ����Ϣ���涨λ
	Send {PgDn}	;���·�ҳ
	
	Send, 1000
	MouseClick, left, 1625, 797, 3 ;�»������ۣ�Ԫ��//˫��
	Send ^c
	Send {tab}^v
	Send {tab 2}^v
	Send {tab}{tab}{tab}{tab}{enter}
	Send {tab}{tab}{tab}{enter}
	Sleep, 500  ;�ȴ�
	Send {enter} 
	;MouseClick, left, 941, 505 ;�ύ
	
	Sleep, 500  ;�ȴ�
	
	;fun_btn("������������", "tijiao5", "�ύ", 60, 20)
	MouseClick, left, 909, 400 ;�ύ
	
	MouseClick, left, 987, 665 ;ȷ��
	Sleep, 2000  ;�ȴ�
	Send {enter}
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: ����_������������ - �Զ���
 * @author XuDong
 */
 ::``33q::
	zhongShen()
 return  
 
 zhongShen(){
	MouseClick, left, 1580, 340 ;�������ڶ���
	Send {tab 2}{enter}	;�������ڶ���
	MouseClick, left, 1007, 669 ;��������
	Sleep, 2500  ;�ȴ�
	MouseClick, left, 1580, 340 ;�������ڶ���
	Send {tab 2}{enter}	;�������ڶ���
	Sleep, 4000  ;�ȴ�
	MouseClick, left, 1563, 878, 2 ;�»������ۣ�Ԫ��//˫��
	Send ^c
	Send {tab}^v
	Send {tab 2}^v
	Send {tab}{tab}{tab}{tab}{enter}
	Send {tab}{tab}{tab}{enter}
	Sleep, 500  ;�ȴ�
	Send {enter} 
	;MouseClick, left, 941, 495 ;�ύ
	
	Sleep, 500  ;�ȴ�
	
	fun_btn("������������", "tijiao5", "�ύ", 60, 20)
	
	MouseClick, left, 987, 665 ;ȷ��
	Sleep, 2000  ;�ȴ�
	Send {enter}
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: �鿴����ͼ - �Զ���
 * @author XuDong
 */
 ::``43q::
	liuChengTu()
 return  
 
 liuChengTu(){
	MouseClick, left,  80,  281
	Sleep, 1000
	MouseClick, left,  94,  370
	Sleep, 1500
	MouseClick, left,  1005,  324
	Sleep, 2500
	MouseClick, left,  1717,  449
	
	ToolTip("...�ű�����")
}

/*
 * @Description: �������������� - �Զ���
 * @author XuDong
 */
 ::``4::
	shenPi1w()
 return  
 
 shenPi1w(){
	
	MouseClick, left,  1474,  283
	Sleep, 100
	Send, {TAB}{enter}
	Sleep, 2000  ;�ȴ�
	MouseClick, left, 1657, 321 ;��������һ��
	MouseClick, left, 1007, 669 ;��������
	Sleep, 2000  ;�ȴ�
	
	MouseClick, left, 367, 292 ;��Ҫǩ����ļ�
	Send {tab}{space}{tab}{space}{tab}{space}{tab}{space}{tab}{space}{tab}{space}
	
	MouseClick, left, 510, 427 ;�ÿ��������
	

	MouseClick, left, 280, 239 ;�����Ϣ
	MouseClick, left, 773, 350 ;��������֤ 
	;~ Loop, 7{
	;~ Send {tab}{right %A_Index%}{tab}%A_Index%
	;~ Sleep, 100
	;~ }
	
	;~ Send {tab}	;����˻��ڱ�
	;~ Loop, 7{
	;~ Send {tab}{right %A_Index%}{tab}%A_Index%
	;~ Sleep, 100
	;~ }

	;~ Send {tab}	;����˻���֤��
	;~ Loop, 7{
	;~ Send {tab}{right %A_Index%}{tab}%A_Index%
	;~ Sleep, 100
	;~ }
	
	;~ Send {tab}	;���ű���-�����
	;~ Loop, 11{
	;~ Send {tab}{right %A_Index%}{tab}%A_Index%
	;~ Sleep, 100
	;~ }
	
	;~ Send {tab}	;���ű���-��ż
	;~ Loop, 11{
	;~ Send {tab}{right %A_Index%}{tab}%A_Index%
	;~ Sleep, 100
	;~ }
	
	;~ Send {tab}	;���߲�ѯ��ͼ
	;~ Loop, 3{
	;~ Send {tab}{right %A_Index%}{tab}%A_Index%
	;~ Sleep, 100
	;~ }
	
	;~ Send {tab}	;�����;
	;~ Loop, 6{
	;~ Send {tab}{right %A_Index%}{tab}%A_Index%
	;~ Sleep, 100
	;~ }
	
	;~ Send {tab}	;����֤
	;~ Loop, 13{
	;~ Send {tab}{right %A_Index%}{tab}%A_Index%
	;~ Sleep, 100
	;~ }
	
	;~ Send {tab}	;������ͬ
	;~ Loop, 1{
	;~ Send {tab}{right %A_Index%}{tab}%A_Index%
	;~ Sleep, 100
	;~ }
	
	;~ Send {tab}	;����
	;~ Loop, 1{
	;~ Send {tab}{right %A_Index%}{tab}%A_Index%
	;~ Sleep, 100
	;~ }
	
	;~ Send {tab}	;������Ѻ��������²���
	;~ Loop, 7{
	;~ Send {tab}{right %A_Index%}{tab}%A_Index%
	;~ Sleep, 100
	;~ }
	
	MouseClick, left, 823, 918 ;ͬ��
	Send {enter}

	ToolTip("...�ű�����")
}

 /*
 * @Description: �������������� - �Զ���
 * @author XuDong
 */
 ::``4q::
	shenPi1()
 return  
 
 shenPi1(){
	MouseClick, left,  1474,  283
	Sleep, 100
	Send, {TAB}{enter}
	Sleep, 2000  ;�ȴ�
	MouseClick, left, 1657, 321 ;��������һ��
	MouseClick, left, 1007, 669 ;��������
	Sleep, 2000  ;�ȴ�
	MouseClick, left, 715, 459 ;��Ҫǩ����ļ�
	Send {down}{down}{down}{esc}
	Send {tab}{tab}{tab}{enter}{enter}
	Sleep, 2000  ;�ȴ�
	Send {enter}
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: �������������� - �Զ���
 * @author XuDong
 */
 ::``44q::
	shenPi2()
 return  
 
 shenPi2(){
	MouseClick, left, 1657, 321 ;��������һ��
	MouseClick, left, 1007, 669 ;��������
	Sleep, 2000  ;�ȴ�
	MouseClick, left, 346, 227 ;������Ϣ
	Sleep, 500  ;�ȴ�
	
	fun_btn("��������������", "fushuchanpin", "������Ʒ", 100, 15)
	Sleep, 100
	Send {down}{enter}
	Send {tab}500000 ;���Ŷ��(Ԫ)
	
	fun_btn("��������������", "shenpi_xuyaoqianshudewenjian", "��Ҫ�������ļ�", 300, 20)
	Send {down}{down}{down}{esc}
	Send {tab}{tab}{enter}{enter}
	Sleep, 2000  ;�ȴ�
	Send {enter}
	
	ToolTip("...�ű�����")
}

/*
 * @Description: �������������� - �Զ���
 * @author XuDong
 */
 ::``44::
	shenPi2w()
 return  
 
 shenPi2w(){
	MouseClick, left, 1657, 321 ;��������һ��
	MouseClick, left, 1007, 669 ;��������
	Sleep, 2000  ;�ȴ�
	;~ MouseClick, left, 346, 217 ;������Ϣ
	;~ Sleep, 500  ;�ȴ�
	
	;~ MouseClick, left, 486, 536 ;������Ʒ
	;~ Send {down}{enter}
	;~ Send {tab}800000
	;~ Send {tab}8
	;~ Send {tab}{space}{tab}{space}{tab}{space}{tab}{space}{tab}{space}{tab}{space}{tab}{space}
	;~ MouseClick, left, 740, 725 ;ͬ��ǰ��һ��
	;~ Send {tab}{enter}
	
	MouseClick, left, 825, 589 ;��������
	Send {enter}
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: �ʽ�רԱ�����ſ����� - �Զ���
 * @author XuDong
 */
 ::``444::
	ziJinZhuanYuan()
 return  
 
 ziJinZhuanYuan(){
	MouseClick, left,  1439, 318
	Send {tab 2}{enter}
	Sleep, 3000  ;�ȴ�
	MouseClick, left, 467, 425 ;�ʽ�
	Send {down 1}{enter}
	MouseClick, left, 1055, 425 ;�ſ����
	Send {down 4}{enter}
	MouseClick, left, 1700, 436 ;�ƻ������ʲ���
	Send {down 1}{enter}
	Send {tab}{enter 2}
	Sleep, 2000  ;�ȴ�
	Send {enter}
	
	ToolTip("...�ű�����")
}
 
  /*
 * @Description: �ÿ�ȷ�� - �Զ���
 * @author XuDong
 */
 ::``5::
	yongKuanQueRen()
 return  
 
 yongKuanQueRen(){
	
	;~ nomsg := fun_btn_nomsg("�ÿ�ȷ��", "yongkuanqueren", "�ÿ�ȷ��", 10, 10)
	;~ if(nomsg == 2 || nomsg == 1){
		;~ MouseClick, left,  1749, 305
		;~ Send {tab}{enter}	;��������
	;~ }else{
		;~ Send {tab 2}{enter}	;��������
	;~ }
	
	MouseClick, left,  1746, 324
	Send {tab}{enter}	;��������
	Sleep 1500
	MouseClick, left,  497, 661	;������
	
	MouseClick, left,  510, 687, 2	;Ӫ������ ˫��
	Send 19.8
	
	MouseClick, left,  1103, 727	;ҵ���ƽ����ȡ��ʽ
	MouseClick, left,  1098, 795	;�ſ�ǰ��ȡ���ַſ������ȡ
	MouseClick, left,  1075, 685, 2	;ҵ���ƽ�� ˫��
	Send 6
	MouseClick, left,  1620, 713, 2	;ҵ���ƽ�ѷſ�� ˫��
	Send 2
	
	MouseClick, left,  1101, 756	;���ʷ������ȡ��ʽ
	MouseClick, left,  1122, 822	;�ſ�ǰ��ȡ���ַſ������ȡ
	MouseClick, left,  1640, 753, 2	;���ʷ���ѷſ��  ˫��
	Send 1.5
	
	
	MouseClick, left,  500, 717	;ҵ���ƽ����ȡ��ʽ
	MouseClick, left,  519, 761	;ί����ȡ
	
	MouseClick, left,  890, 910	;�ύ
	MouseClick, left,  995, 751	;ȷ��
	
	ToolTip("...�ű�����")
}
 
   /*
 * @Description: �ÿ����� - �Զ���
 * @author XuDong
 */
 ::``55::
	yongKuanPiFu()
 return  
 
 yongKuanPiFu(){
	MouseClick, left, 1657, 321 ;��������һ��
	Sleep, 2000  ;�ȴ�
	MouseClick, left,  800,  965
	Sleep, 100
	Send, {TAB}{ENTER}{ENTER}
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: ������� - �Զ���
 * @author XuDong
 */
 ::``555::
	tiKuanShenQing()
 return  

tiKuanShenQing(){
	
	nomsg := fun_btn_nomsg("�������", "tikuanshenqing", "�������", 10, 10)
	if(nomsg == 2 || nomsg == 1){
		MouseClick, left, 1657, 321 ;��������һ��
		MouseClick, left, 1007, 669 ;��������
	}else{
		Send {tab 2}{enter}	;��������
	}
	
	Sleep, 2500  ;�ȴ�
	
	
	MouseClick, left, 298, 283 ;��ͬ��Ϣtab
	Send {tab 5}{enter}		;��ͬ��Ч����
	
	;========================
	;�ͻ����ۿ�����
	;========================
	MouseClick, left, 1814, 531 ;�ͻ����ۿ�����
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 968, 527 ;ѡ�е�һ���ͻ��˺�ѡ��
	Sleep, 500  ;�ȴ�
	MouseClick, left, 987, 807 ;ȷ��
	
	;========================
	;�ͻ��ſ��˻�������
	;========================
	MouseClick, left, 1811, 555	;�ͻ��ſ��˻�������
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 924, 547 ;ѡ�е�һ���ͻ��˺�ѡ��
	Sleep, 500  ;�ȴ�
	MouseClick, left, 987, 807 ;ȷ��
	
	
	Sleep, 500  ;�ȴ�
	MouseClick, left, 534, 746 ;������;
	Send {down}{enter}
	
	Send {tab}123	;��;˵����
	
	MouseClick, left, 1150, 480 ;��ͬ��Ч��
	Send {enter}
	
	MouseClick, left, 633, 820 ;��λ�������ͬǰ��
	Send {tab 2}{enter}	;�ݴ�
	sleep 1000 
	
	Send {enter}
	MouseClick, left, 633, 820 ;zj
	Send {tab 3}{enter}	;���ɺ�ͬ
	;~ sleep 5000 
	
	;~ Send {enter}
	;~ MouseClick, left, 633, 820 ;zj
	;~ Send {tab 4}{enter}	;ǩ����ͬ
	;~ sleep 5000 
	
	/*
	fun_btn("�������", "qiandinghetong", "ǩ����ͬ", 70, 10)
	sleep 100
	Send {enter}
	Sleep, 2000  ;�ȴ�
	closeTaskMsg()
	*/
	
	ToolTip("...�ű�����")
	
	
}

 /*
 * @Description: ��Ӫ�ſ�� - �Զ���
 * @author XuDong
 */
 ::``6::
	yunYing()
 return

yunYing(){
	MouseClick, left,  1645,  320
	Sleep, 1500
	MouseClick, left,  201,  536
	Sleep, 100
	Send, {TAB}{SPACE}
	
	nomsg := fun_btn_nomsg("��Ӫ4��", "tijiao6", "�ύ", 50, 10)
	if(nomsg != 0){		
		fun_btn_nomsg("��Ӫ4��", "tongyi2", "ͬ��", 50, 10)
	}
	
	Sleep, 500
	Send {ENTER}
	Sleep, 1500
	Send {ENTER}
	Sleep, 500
	Send {ENTER}
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: ��ǰ������ȡ/����
 * @author XuDong
 */
 ::``66::
	daiqianfeiyong()
 return

daiqianfeiyong(){
	
	fun_btn("�˵�", "feiyongshouqu", "������ȡ", 50, 10)
	Sleep, 200
	
	fun_btn("�˵�", "daiqianfeiyongshouqu", "��ǰ������ȡ", 50, 10)
	Sleep, 200
	MouseClick, left,  353, 232		;�ͻ�����
	Send ^v
	fun_btn("��ǰ������ȡ", "sousuotubiao", "����ͼ��", 50, 10)
	Sleep 300
	MouseClick, left,  575, 347		;��һ������
	fun_btn("��ǰ������ȡ", "duigoutubiao", "�Թ�ͼ��", 50, 10)
	Sleep 500
	fun_btn("��ǰ������ȡ", "duigoutubiao", "�Թ�ͼ��", 50, 10)
	Sleep 100
	Send {enter}
	Sleep 500
	
	fun_btn("�˵�", "daiqianfeiyongfuhe", "��ǰ���ø���", 50, 10)
	Sleep, 200
	MouseClick, left,  353, 232		;�ͻ�����
	Send ^v
	fun_btn("��ǰ������ȡ", "sousuotubiao", "����ͼ��", 50, 10)
	Sleep 300
	MouseClick, left,  575, 347		;��һ������
	fun_btn("��ǰ������ȡ", "duigoutubiao", "�Թ�ͼ��", 50, 10)
	Sleep 500
	fun_btn("��ǰ������ȡ", "duigoutubiao", "�Թ�ͼ��", 50, 10)
	Sleep 100
	Send {enter}
	
	ToolTip("...�ű�����")
}


/*
 * @Description: ������ǩ - �Զ���
 * @author XuDong
 */
 ::``dz:: 
	dzMianQian()
 return    
 
 dzMianQian(){
	Send {PgDn} 
	Sleep 100
	MouseClick, left, 469, 489
	Send 1{tab}2{tab}3{tab}4{tab}{tab}{tab}{tab}{tab}{tab}{tab}{tab}{space}{tab}{tab}{tab}{tab}6{tab}{tab}7{tab}80000{tab}79999{tab}10{tab}11{tab}1222 2222 2222 22{tab}13{tab}14{tab}15{tab}79888{tab}60000{tab}18{tab}19{tab}59999{tab}21{tab}22{tab}23
	
	MouseClick, left, 318, 254 ; ��λ�����ż��������
	Send {tab}{tab}{tab}{tab}{tab}{tab}{tab}{tab}{space}
	Send {tab}{tab}{tab}{space}
	Send {tab}{tab}{tab}{space}
	Send {tab}{tab}{tab}{space}
	MouseClick, left, 1050, 528 ;������ǰ״̬
	Send {down}{enter}
	MouseClick, left, 1611, 516 ;ʹ��״̬
	Send {down}{enter}
	MouseClick, left, 470, 548 ;Ȩ����֤������
	Send {down}{enter}
	MouseClick, left, 1029, 548 ;Ȩ����֤����
	Send 421002198005106890
	MouseClick, left, 1574, 557 ;�������ڵ���
	Send {down}{enter}
	MouseClick, left, 1663, 557 ;�������ڵ���
	Send {down}{enter}
	MouseClick, left, 464, 577 ;������;
	Send {down}{enter}
	MouseClick, left, 1600, 584 ;��������
	Send {down}{enter}
	MouseClick, left, 1036, 662 ;���ŷ�ʽ
	Send {down}{enter}
	Send {PgUp}
	Sleep, 300  ;�ȴ�
	MouseClick, left, 1841, 256 ;�����ͻ�������Ϣ
	Sleep, 1000  ;�ȴ�
	openCustInfo()
	
	ToolTip("...�ű�����")
}

 /*
 * @Description: �������
 * @author XuDong
 */
 ::``hc:: 
	Send ^r
	Sleep, 1500  ;�ȴ�
	MouseClick, left, 80, 263 ;ϵͳ�������
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 310, 267 ;��λ�������ֵ仺��
	Send {tab}{enter}{tab}{tab}{enter}{tab}{enter}{tab}{enter}{tab}{enter}{tab}{enter}{tab}{enter}
	Sleep, 700  ;�ȴ�
	Send ^r
 return    

 /*
 * @Description: ˢ�²˵�
 * @author XuDong
 */
 refreshMenu(){
	/*
	MouseClick, left, 78, 251 ;ˢ�²˵�
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 78, 251 ;ˢ�²˵�
	Sleep, 1000  ;�ȴ�
	*/
	ImageSearch, OutputVarX, OutputVarY, 0, 0, A_ScreenWidth, A_ScreenHeight,D:\SoftWare\AutoHotKey\AutoHotKey\tool\ReadFile\caidan_dakai_3.bmp
	if ErrorLevel = 2 
	MsgBox �˵�_��_����ʵʩ������
	else if ErrorLevel = 1 
	MsgBox �˵�_��_δ����Ļ��Ѱ��ͼ�ꡣ
	else{
		MouseClick, left, %OutputVarX%, %OutputVarY% ;��λ
		Sleep, 500  ;�ȴ�
	}
	
	ToolTip("...�ű�����")
 }

 /*
 * @Description: �ر�������ɴ���
 * @author XuDong
 */
 closeTaskMsg(){
	Sleep, 3000  ;�ȴ�
	Send {enter}
	
	ToolTip("...�ű�����")
 }

 /*
 * @Description: �򿪿ͻ���Ϣ��ѯ����������ҳ
 * @author XuDong
 */
 openCustInfo(){
	refreshMenu()
	MouseClick, left, 53, 410 ;�˵�-�ͻ���Ϣ����
	Sleep, 1000  ;�ȴ�
	MouseClick, left, 75, 449 ;�˵�-�ͻ���Ϣ
	Sleep, 1500  ;�ȴ�
	MouseClick, left, 311, 1031 ;ҳ
	Send {Home}   
	Send +{End}
	Send 4{enter}
	Sleep, 1500  ;�ȴ�
	MouseClick, left,  403,  604, 2
	Send ^c
	
	ImageSearch, OutputVarXA, OutputVarYA, 0, 0, A_ScreenWidth, A_ScreenHeight,D:\SoftWare\AutoHotKey\AutoHotKey\tool\ReadFile\dangqiantab.bmp
		if ErrorLevel = 2 
		MsgBox ��ǰtab_����ʵʩ������
		else if ErrorLevel = 1 
		MsgBox ��ǰtab_δ����Ļ��Ѱ��ͼ�ꡣ
		else{
			sX := OutputVarXA - 70
			sY := OutputVarYA
			MouseClick, left, %sX%, %sY% ;
		}
		
	ToolTip("...�ű�����")
 }
 

 
    /*
 * @Description: chrome����Ԥ����
 * @author XuDong
 */
 ::``tt::
	SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
	autoTestLogin(super, 123456, 1)
 return

   /*
 * @Description: chrome�������
 * @author XuDong
 */
 ::``oa::
	SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
	autoTestLogin(super, 123456, 0)
 return
 
   /*
 * @Description: chrome������ģʽ�����򿪲���\Ԥ������ַ
 * @author XuDong
 */
 autoTestLogin(ByRef userId, ByRef passwrd, ByRef openType){
	
	SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
	
	if openType = 0 
	{
		localHttp = http://oa.cdhryx.cn:6900/sso/toLogin.do?loginKey=ftd	;���Ի���
	}
	else
	{
		localHttp = http://test.cdhryx.cn:6900/sso/toLogin.do?loginKey=ftd	;Ԥ����
	}
	
	Send ^+n
	Send ^l
	Send %localHttp%
	Send {enter}
	Sleep, 2000  ;�ȴ�
	Send {tab}{tab}super{enter}
	Sleep, 500  ;�ȴ�
	Send {tab}123456{enter}
	Sleep, 500  ;�ȴ�
	Send {tab}{tab}qazwsx{enter}
	Send {enter}
	
	ToolTip("...�ű�����")
}
 
  /*
 * @Description: chrome������ģʽ������tagҳ��//����������ķ���
 * @author XuDong
 */
 autoLogin(ByRef userId, ByRef urlType, ByRef openType)
 {
	SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
	
	if openType = 0 
	{
		Send ^t
	}
	else
	{
		Send ^+n
	}
	
	Send ^l
	if urlType = 0 
	{
		localHttp = http://localhost:8069/ts/login.do
	}
	else if urlType = 1 
	{
		localHttp = http://localhost:8066/ts/login.do
	}
	else if urlType = 2 
	{
		localHttp = http://localhost:8063/ts/login.do
	}
	else if urlType = 3 
	{
		localHttp = http://localhost:8039/ts/login.do
	}
	else if urlType = 4 
	{
		localHttp = http://www.baidu.com
	}
	Send %localHttp%
	Send {enter}
	Sleep, 1500  ;�ȴ�
	Send {tab}
	Send %userId%
	Send {enter}
	
	ToolTip("...�ű�����")
 }
 

 

 













 
    /*
 * @Description: �������crs������
 * @author XuDong
 */
 ::``crs:: 
	autoLogin(13501274292, 0, 0)
 return  
 
 ::``1crs:: 
	autoLogin(13501274292, 1, 1)
 return  
 
  ::``2crs:: 
	autoLogin(13501274292, 2, 1)
 return  
 
  ::``3crs:: 
	autoLogin(13501274292, 3, 1)
 return  
 
 
 /*
 * @Description: �������cqx������
 * @author XuDong
 */
 ::``cqx:: 
	autoLogin(13581611612, 0, 0)
 return   
 
 ::``1cqx:: 
	autoLogin(13581611612, 1, 1)
 return   
 
  ::``2cqx:: 
	autoLogin(13581611612, 2, 1)
 return   
 
 ::``3cqx:: 
	autoLogin(13581611612, 3, 1)
 return   
 
 ::``jjc:: 
	autoLogin(18510602312, 0, 0)
 return   
 
 ::``1jjc:: 
	autoLogin(18510602312, 1, 1)
 return   
 
  ::``2jjc:: 
	autoLogin(18510602312, 2, 1)
 return   
 
 ::``3jjc:: 
	autoLogin(18510602312, 3, 1)
 return   
 
 ::``cjs:: 
	autoLogin(15918702471, 0, 0)
 return   
 
 ::``1cjs:: 
	autoLogin(15918702471, 1, 1)
 return   
 
  ::``2cjs:: 
	autoLogin(15918702471, 2, 1)
 return   
 
 ::``3cjs:: 
	autoLogin(15918702471, 3, 1)
 return   
 
 
 ::``jlz:: 
	autoLogin(18210515167, 0, 0)
 return   
 
 ::``1jlz:: 
	autoLogin(18210515167, 1, 1)
 return   
 
  ::``2jlz:: 
	autoLogin(18210515167, 2, 1)
 return   
 
 ::``3jlz:: 
	autoLogin(18210515167, 3, 1)
 return   
 
 
 ::``tjz:: 
	autoLogin(15201442426, 0, 0)
 return   
 
 ::``1tjz:: 
	autoLogin(15201442426, 1, 1)
 return   
 
  ::``2tjz:: 
	autoLogin(15201442426, 2, 1)
 return   
 
 ::``3tjz:: 
	autoLogin(15201442426, 3, 1)
 return   
 
    /*
 * @Description: �������cxl��С��
 * @author XuDong
 */
 ::``cxl:: 
	autoLogin(13521284135, 0, 0)
 return   
 
 ::``1cxl:: 
	autoLogin(13521284135, 1, 1)
 return   
 
  ::``2cxl:: 
	autoLogin(13521284135, 2, 1)
 return   
 
 ::``3cxl:: 
	autoLogin(13521284135, 3, 1)
 return   


 /*
 * @Description: �������lzh��־��
 * @author XuDong
 */
 ::``lzh:: 
	autoLogin(13500011090, 0, 0)
 return   
 
 ::``1lzh:: 
	autoLogin(13500011090, 1, 1)
 return   
 
  ::``2lzh:: 
	autoLogin(13500011090, 2, 1)
 return   
 
 ::``3lzh:: 
	autoLogin(13500011090, 3, 1)
 return   



 /*
 * @Description: �������lzp��־��
 * @author XuDong
 */
 ::``lzp:: 
	autoLogin(15972997555, 0, 0)
 return 
 
 ::``1lzp:: 
	autoLogin(15972997555, 1, 1)
 return 
 
  ::``2lzp:: 
	autoLogin(15972997555, 2, 1)
 return 
 
 ::``3lzp:: 
	autoLogin(15972997555, 3, 1)
 return 
 
 
    /*
 * @Description: �������xgr�ҹ���
 * @author XuDong
 */
 ::``xgr:: 
	autoLogin(13301206456, 0, 0)
 return 
 
 ::``1xgr:: 
	autoLogin(13301206456, 1, 1)
 return 
 
  ::``2xgr:: 
	autoLogin(13301206456, 2, 1)
 return 
 
 ::``3xgr:: 
	autoLogin(13301206456, 3, 1)
 return 

 
      /*
 * @Description: �������dam������
 * @author XuDong
 */
  ::``dam:: 
	autoLogin(15130796352, 0, 0)
 return 
 
 ::``1dam:: 
	autoLogin(15130796352, 1, 1)
 return 
 
   ::``2dam:: 
	autoLogin(15130796352, 2, 1)
 return 
 
 ::``3dam:: 
	autoLogin(15130796352, 3, 1)
 return 



 /*
 * @Description: �������ql����
 * @author XuDong
 */
 ::``qlz:: 
	autoLogin(13701247226, 0, 0)
 return 

 ::``1qlz:: 
	autoLogin(13701247226, 1, 1)
 return 
 
  ::``2qlz:: 
	autoLogin(13701247226, 2, 1)
 return 

 ::``3qlz:: 
	autoLogin(13701247226, 3, 1)
 return 
 
 /*
 * @Description: �������ql����
 * @author XuDong
 */
 ::``zfz:: 
	autoLogin(13717658868, 0, 0)
 return 

 ::``1zfz:: 
	autoLogin(13717658868, 1, 1)
 return 
 
  ::``2zfz:: 
	autoLogin(13717658868, 2, 1)
 return 

 ::``3zfz:: 
	autoLogin(13717658868, 3, 1)
 return 
 
 /*
 * @Description: �������ql����
 * @author XuDong
 */
 ::``fbb:: 
	autoLogin(18501367449, 0, 0)
 return 

 ::``1fbb:: 
	autoLogin(18501367449, 1, 1)
 return 
 
  ::``2fbb:: 
	autoLogin(18501367449, 2, 1)
 return 

 ::``3fbb:: 
	autoLogin(18501367449, 3, 1)
 return 

  /*
 * @Description: �������ytzҶ��
 * @author XuDong
 */
 ::``ytz:: 
	autoLogin(13537712861, 0, 0)
 return

 ::``1ytz:: 
	autoLogin(13537712861, 1, 1)
 return
 
  ::``2ytz:: 
	autoLogin(13537712861, 2, 1)
 return

 ::``3ytz:: 
	autoLogin(13537712861, 3, 1)
 return

  /*
 * @Description: �������tlw�����
 * @author XuDong
 */
 ::``tlw:: 
	autoLogin(18301179489, 0, 0)
 return

 ::``1tlw:: 
	autoLogin(18301179489, 1, 1)
 return
 
  ::``2tlw:: 
	autoLogin(18301179489, 2, 1)
 return

 ::``3tlw:: 
	autoLogin(18301179489, 3, 1)
 return

  /*
 * @Description: �������pj�˽�
 * @author XuDong
 */
 ::``pjz:: 
	autoLogin(13922236063, 0, 0)
 return

 ::``1pjz:: 
	autoLogin(13922236063, 1, 1)
 return
 
  ::``2pjz:: 
	autoLogin(13922236063, 2, 1)
 return

 ::``3pjz:: 
	autoLogin(13922236063, 3, 1)
 return

  /*
 * @Description: �������zny������
 * @author XuDong
 */
 ::``zny:: 
	autoLogin(13242030118, 0, 0)
 return

 ::``1zny:: 
	autoLogin(13242030118, 1, 1)
 return
 
  ::``2zny:: 
	autoLogin(13242030118, 2, 1)
 return

 ::``3zny:: 
	autoLogin(13242030118, 3, 1)
 return
 
  /*
 * @Description: �������sdd�ﵤ��
 * @author XuDong
 */
 ::``sdd:: 
	autoLogin(13011893241, 0, 0)
 return

 ::``1sdd:: 
	autoLogin(13011893241, 1, 1)
 return
 
  ::``2sdd:: 
	autoLogin(13011893241, 2, 1)
 return

 ::``3sdd:: 
	autoLogin(13011893241, 3, 1)
 return
 
 ::``cll:: 
	autoLogin(18210473155, 0, 0)
 return

 ::``1cll:: 
	autoLogin(18210473155, 1, 1)
 return
 
  ::``2cll:: 
	autoLogin(18210473155, 2, 1)
 return

 ::``3cll:: 
	autoLogin(18210473155, 3, 1)
 return

 
  /*
 * @Description: ��ޱ
 * @author XuDong
 */
 ::``dwz:: 
	autoLogin(13366186570, 0, 0)
 return

 ::``1dwz:: 
	autoLogin(13366186570, 1, 1)
 return
 
  ::``2dwz:: 
	autoLogin(13366186570, 2, 1)
 return

 ::``3dwz:: 
	autoLogin(13366186570, 3, 1)
 return
 
 #IfWinActive 
 
 

/*
-----------------------------------------------------------ʹ��chrome��PLSQL��ʱ�򣨸ô����鶨����  ���ļ�ͷ  �У�---------------------------------------------
*/
 #IfWinActive ahk_group ChromeAndPLSQL
 
	::crs::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13501274292
		Send {Enter}
	return
 
 	::cqx::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13581611612
		Send {Enter}
	return
	
	::jjc::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18510602312
		Send {Enter}
	return
	
	::cjs::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 15918702471
		Send {Enter}
	return
	
	::cqx::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18210515167
		Send {Enter}
	return

	::tjz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 15201442426
		Send {Enter}
	return

	::cxl::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13521284135
		Send {Enter}
	return

	::dam::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 15130796352
		Send {Enter}
	return

	::dsz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18611698942
		Send {Enter}
	return

	::dwz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13366186570
		Send {Enter}
	return

	::gfz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18514256561
		Send {Enter}
	return

	::hgz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13601089205
		Send {Enter}
	return

	::hhz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13522217556
		Send {Enter}
	return

	::hmz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13003923034
		Send {Enter}
	return

	::hwj::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18800181757
		Send {Enter}
	return

	::hyl::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18664661876
		Send {Enter}
	return

	::hzz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18612315653
		Send {Enter}
	return

	::jhj::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13132250820
		Send {Enter}
	return

	::lcz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18810551529
		Send {Enter}
	return

	::lmr::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13161716585
		Send {Enter}
	return

	::lyh::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 15810022483
		Send {Enter}
	return

	::lzh::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13500011090
		Send {Enter}
	return

	::lzp::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 15972997555
		Send {Enter}
	return

	::pjz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13922236063
		Send {Enter}
	return

	::qlz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13701247226
		Send {Enter}
	return
	
	::zfz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13717658868
		Send {Enter}
	return
	
	::fbb::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18501367449
		Send {Enter}
	return

	::sygrb::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13321182669
		Send {Enter}
	return

	::tlh::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18301179489
		Send {Enter}
	return

	::tlw::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18301179489
		Send {Enter}
	return

	::tzz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18305405616
		Send {Enter}
	return

	::wdm::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13146664817
		Send {Enter}
	return

	::wxl::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13682658612
		Send {Enter}
	return

	::xgr::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13301206456
		Send {Enter}
	return

	::yjz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18683259087
		Send {Enter}
	return

	::ysz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13810803511
		Send {Enter}
	return
	
	::cll::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 18210473155
		Send {Enter}
	return

	::ytz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13537712861
		Send {Enter}
	return

	::zdk::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13860107916
		Send {Enter}
	return

	::zhy::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13510209701
		Send {Enter}
	return

	::zlz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 15801502686
		Send {Enter}
	return

	::zny::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13242030118
		Send {Enter}
	return
	
	::sdd::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send 13011893241
		Send {Enter}
	return
	
	::adz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send ^a
		Send admin
		Send {tab}
		Send 123456
		Send {Enter}
	return
	
	::sdx::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send ^a
		Send super
		Send {tab}123456
		Sleep 100
		Send {tab 2}qazwsx
		Send {tab 3}{Enter}
	return
	
	::adx::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send ^a
		Send admin
		Send {tab}123456
		Sleep 100
		Send {tab 2}qazwsx
		Send {tab 3}{Enter}
	return
	
	::wdz::
		SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
		Send ^a
		Send 13568887446
		Send {tab}verygood
		Sleep 100
		Send {tab 2}wd
	return
 
  #IfWinActive 
 
 /*
-----------------------------------------------------------ʹ��eclipse��ʱ��---------------------------------------------
*/
 #IfWinActive ahk_class SWT_Window0
 
 /*
 * @Description: �ĳ�m01
 * @author XuDong
 */
 :://m01:: 
	micChangeTo(01)
 return
 
 /*
 * @Description: �ĳ�m10
 * @author XuDong
 */
 :://m10:: 
	micChangeTo(10)
 return

 /*
 * @Description: �ĳ�m12
 * @author XuDong
 */
 :://m12:: 
	micChangeTo(12)
 return

/*
 * @Description: mic�޸Ļ�����
 * @author XuDong
 */
micChangeTo(ByRef bchId){
	ClipboardOld = %ClipboardAll% ;������������ԭ��������
    Clipboard = COMPANY_IDENTIFICATION
	Send ^+r
	Sleep, 200  ;�ȴ�
	Send microcredit{enter}
	Sleep, 100  ;�ȴ�
	Send ^f
	Sleep, 200  ;�ȴ�
	Send ^v{enter}{esc}
	Sleep, 200  ;�ȴ�
	Send ^d
	Send ^+{enter}
	Sleep, 200  ;�ȴ�
	Send ^v`=M
	Send %bchId%
	Send ^s
	Clipboard = %ClipboardOld% ;�ָ��������ʼ������Return
	
	ToolTip("...�ű�����")
}

#IfWinActive

 
 /*
-----------------------------------------------------------�κ�ʱ��---------------------------------------------
*/

/*
 * @Description: //ex������excel�ļ���
 * @author XuDong
 */
 :://ex::   
 Run D:\��ݷ�ʽ\excel
 return    
 
 /*
 * @Description: //ex������excel�ļ���
 * @author XuDong
 */
 :://sql::   
 Run E:\work\petecat\eclipse-jee-luna-SR2-win32-x86_64\workspace\microcredit-parent-yxjr-v2\microcredit-busbase-yxjr\sql
 return    

  /*
 * @Description: ����excel�ļ�
 * @author XuDong
 */
 :://cex::
	FileCopy, D:\Work\PeteCat\sql_LOAN_DATABASE\LOAN_DATABASE.xlsx, D:\��ݷ�ʽ\excel\LOAN_DATABASE.xlsx, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, D:\Work\PeteCat\sql_LOAN_DATABASE\LOAN_DATABASE.xlsx, D:\��ݷ�ʽ\excel\LOAN_DATABASE(1).xlsx, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, D:\Work\PeteCat\sql_LOAN_DATABASE\LOAN_DATABASE.xlsx, D:\��ݷ�ʽ\excel\LOAN_DATABASE(2).xlsx, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, D:\Work\PeteCat\sql_LOAN_DATABASE\LOAN_DATABASE.xlsx, D:\��ݷ�ʽ\excel\LOAN_DATABASE(3).xlsx, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, D:\Work\PeteCat\sql_LOAN_DATABASE\LOAN_DATABASE.xlsx, D:\��ݷ�ʽ\excel\LOAN_DATABASE(4).xlsx, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, D:\Work\PeteCat\sql_LOAN_DATABASE\LOAN_DATABASE.xlsx, D:\��ݷ�ʽ\excel\LOAN_DATABASE(5).xlsx, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, D:\Work\PeteCat\sql_LOAN_DATABASE\LOAN_DATABASE.xlsx, D:\��ݷ�ʽ\excel\LOAN_DATABASE(6).xlsx, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	
	MsgBox ...���ṹExcel�Ѿ�������ϣ�
 return
 
  /*
 * @Description: ΢��bus�л�����
 * @author XuDong
 */
 ::``wxz:: 
	ahkPath = %A_ScriptDir%
	bus2ZhPath := SubStr(ahkPath, 1 , StrLen(ahkPath)-31) "tool\ReadFile\Bus2Zg.txt"
	FileCopy, %bus2ZhPath%, D:\works\pertercat\eclipse-jee-luna-SR2-win32-x86_64_forWXJK\workspace\busplatform\src\main\resources\config\M01_MIC_INTERFACE.properties, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, %bus2ZhPath%, D:\works\pertercat\eclipse-jee-luna-SR2-win32-x86_64_forWXJK\workspace\busplatform\src\main\resources\config\M10_MIC_INTERFACE.properties, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, %bus2ZhPath%, D:\works\pertercat\eclipse-jee-luna-SR2-win32-x86_64_forWXJK\workspace\busplatform\src\main\resources\config\M12_MIC_INTERFACE.properties, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, %bus2ZhPath%, D:\works\pertercat\eclipse-jee-luna-SR2-win32-x86_64_forWXJK_tag\workspace\busplatform_tag\src\main\resources\config\M01_MIC_INTERFACE.properties, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, %bus2ZhPath%, D:\works\pertercat\eclipse-jee-luna-SR2-win32-x86_64_forWXJK_tag\workspace\busplatform_tag\src\main\resources\config\M10_MIC_INTERFACE.properties, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, %bus2ZhPath%, D:\works\pertercat\eclipse-jee-luna-SR2-win32-x86_64_forWXJK_tag\workspace\busplatform_tag\src\main\resources\config\M12_MIC_INTERFACE.properties, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	MsgBox, 0, ��ʾ, ΢��bus��m01��m10��m12���滻��  ����  ���ӣ�, 1
 return
 
   /*
 * @Description: ΢��bus�л���֧
 * @author XuDong
 */
 ::``wxf:: 
	ahkPath = %A_ScriptDir%
    bus2ZhPath := SubStr(ahkPath, 1 , StrLen(ahkPath)-31) "tool\ReadFile\Bus2Fz.txt"
	FileCopy, %bus2ZhPath%, D:\works\pertercat\eclipse-jee-luna-SR2-win32-x86_64_forWXJK\workspace\busplatform\src\main\resources\config\M01_MIC_INTERFACE.properties, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, %bus2ZhPath%, D:\works\pertercat\eclipse-jee-luna-SR2-win32-x86_64_forWXJK\workspace\busplatform\src\main\resources\config\M10_MIC_INTERFACE.properties, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, %bus2ZhPath%, D:\works\pertercat\eclipse-jee-luna-SR2-win32-x86_64_forWXJK\workspace\busplatform\src\main\resources\config\M12_MIC_INTERFACE.properties, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, %bus2ZhPath%, D:\works\pertercat\eclipse-jee-luna-SR2-win32-x86_64_forWXJK_tag\workspace\busplatform_tag\src\main\resources\config\M01_MIC_INTERFACE.properties, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, %bus2ZhPath%, D:\works\pertercat\eclipse-jee-luna-SR2-win32-x86_64_forWXJK_tag\workspace\busplatform_tag\src\main\resources\config\M10_MIC_INTERFACE.properties, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	FileCopy, %bus2ZhPath%, D:\works\pertercat\eclipse-jee-luna-SR2-win32-x86_64_forWXJK_tag\workspace\busplatform_tag\src\main\resources\config\M12_MIC_INTERFACE.properties, 1 ; ͨ���ṩһ���µ������������ļ���ͬ���ļ����С�
	MsgBox, 0, ��ʾ, ΢��bus��m01��m10��m12���滻��  ��֧  ���ӣ�, 1
 return
 
    /*
 * @Description: ����
 * @author XuDong
 */
 :://rivs:: 

	Loop, 134{
		MouseClick, left, 1043, 274
		Send {enter}
		Sleep 2000
	}
	
 return


 /*
���뷨�л�����
*/
SwitchIME(dwLayout){
    HKL:=DllCall("LoadKeyboardLayout", Str, dwLayout, UInt, 1)
    ControlGetFocus,ctl,A
    SendMessage,0x50,0,HKL,%ctl%,A
}

/*
	ͼƬ������ť
*/
fun_btn(ByRef eventName, ByRef btnId, ByRef btnName, ByRef xAdd, ByRef yAdd){
	ImageSearch, OutputVarX, OutputVarY, 0, 0, A_ScreenWidth, A_ScreenHeight,D:\SoftWare\AutoHotKey\AutoHotKey\tool\ReadFile\%btnId%.bmp
	if ErrorLevel = 2 
	MsgBox %eventName%_%btnName%_����ʵʩ������
	else if ErrorLevel = 1 
	MsgBox %eventName%_%btnName%_δ����Ļ��Ѱ��ͼ�ꡣ
	else{
		xa := OutputVarX + xAdd		
		ya := OutputVarY + yAdd
		MouseClick, left,  %xa%, %ya%
		Sleep, 500  ;�ȴ�
	}
}

/*
	ͼƬ������ť
*/
fun_btn_nomsg(ByRef eventName, ByRef btnId, ByRef btnName, ByRef xAdd, ByRef yAdd){
	ImageSearch, OutputVarX, OutputVarY, 0, 0, A_ScreenWidth, A_ScreenHeight,D:\SoftWare\AutoHotKey\AutoHotKey\tool\ReadFile\%btnId%.bmp
	nomsg := 2
	if (ErrorLevel = 2) {
		aa = %eventName%_%btnName%_δ����Ļ��Ѱ��ͼ�ꡣ
		ToolTip(aa)
		nomsg := 2	
	}else if (ErrorLevel = 1) {
		bb = %eventName%_%btnName%_δ����Ļ��Ѱ��ͼ�ꡣ
		ToolTip(bb)
		nomsg := 1
	}else{
		xa := OutputVarX + xAdd		
		ya := OutputVarY + yAdd
		MouseClick, left,  %xa%, %ya%
		Sleep, 500  ;�ȴ�
		nomsg := 0
	}
	return nomsg
}

/*
��50w���֤�����л�ȡ���֤
*/
 getIdCard(){
	ahkPath = %A_ScriptDir%
    idCardPath := SubStr(ahkPath, 1 , StrLen(ahkPath)-31) "tool\ReadFile\IdCardRandom_50W.txt"
	Random, idCardRand, 000000, 500000
	FileReadLine, idCardLine, %idCardPath%, %idCardRand%
	return %idCardLine%
}

/*
ѭ����ȡ���֤��д���ļ����޳��Ѿ���ȡ����������
*/
 getIdCardLine(){
    ahkPath = %A_ScriptDir%
    idCardPath := SubStr(ahkPath, 1 , StrLen(ahkPath)-31) "tool\ReadFile\IdCardFile.txt"
	idCardPath2 := SubStr(ahkPath, 1 , StrLen(ahkPath)-31) "tool\ReadFile\IdCardFile2.txt"
	
	idCardTmp = "";
	
	FileDelete, %idCardPath2%	;ɾ�������ļ�
	Loop, read, %idCardPath%	;һ��һ��ѭ����ȡ�ļ�
	{
		;~ MsgBox, �� %A_Index% ��Ƭ���� %A_LoopReadLine%��
		if(1 != A_Index){
			FileAppend, %A_LoopReadLine%`n, %idCardPath2%	;������һ��д�뱸���ļ�
		}else{
			idCardTmp := A_LoopReadLine
		}
	}
	
	FileDelete, %idCardPath%	;ɾ��Դ�ļ�
	FileMove, %idCardPath2%, %idCardPath% ; �����������ļ���
	
	return idCardTmp
}

/*
ѭ����ȡ�ļ���д���ļ�
*/
 getReadFile(){
    idCardPath := "D:\read.txt"
	FileDelete, D:\read2.txt	;ɾ�������ļ�
	Loop, read, %idCardPath%	;һ��һ��ѭ����ȡ�ļ�
	{
		;~ MsgBox, �� %A_Index% ��Ƭ���� %A_LoopReadLine%��
		if(1 != A_Index){
			FileAppend, %A_LoopReadLine%`n, D:\read2.txt	;������һ��д�뱸���ļ�
		}
	}
	
	FileDelete, D:\read.txt	;ɾ��Դ�ļ�
	FileMove, D:\read2.txt, D:\read.txt ; �����������ļ���
}

:://ff::
:R:cc2::Pause3333
	index := InStr(ahk_bak_dir,"::") ;����.java�ַ���titile��������е�λ�ã�����ֵ��indexJava  (λ���Ǵ�1��ʼ
	ahk_bak_dir := SubStr(ahk_bak_dir, 1 , index+1)  ;�ַ�����ȡ
return

;---------------------------------------
; Tooltips and Timers
;---------------------------------------	
	RandomSleep:			; Random timing between Autofire shots
		Random, random, 14, 25
		Sleep %random%-5
	Return
	
	RemoveToolTip:			; Used to remove tooltips.
	   SetTimer, RemoveToolTip, Off
	   tooltip
	Return

	ToolTip(label) ;Function to show a tooltip when activating, deactivating or changing values.
	{
  		ToolTip, %label%, 1200, 1000 ;Tooltips are shown under crosshair for FullHD monitors.
  		SetTimer, RemoveToolTip, 1000 ;Removes tooltip after 1.3 seconds.
  		Return
	}

/*
 * @Description: ��ͣ�ű�
 * @author XuDong
 */
Pause::Pause 

;---------------------------------------
; ����ͼƬ��ֻ�ܲ�ѯ��ǰ����ڵ��ļ���   2
;---------------------------------------
/*
NumpadSub::
ImageSearch, OutputVarX, OutputVarY, 0, 0, A_ScreenWidth, A_ScreenHeight,D:\SoftWare\AutoHotKey\AutoHotKey\tool\ReadFile\test.bmp 
if ErrorLevel = 2 
MsgBox ����ʵʩ������
else if ErrorLevel = 1 
MsgBox δ����Ļ��Ѱ��ͼ�ꡣ
else 
 ;MsgBox �� %OutputVarX%x%OutputVarY% ��Ѱ��ͼ�ꡣ
MouseMove  %OutputVarX%, %OutputVarY%
return 
*/


