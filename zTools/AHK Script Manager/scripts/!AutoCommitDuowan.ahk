 :://duowan::
	
	htmlid = 46380818
	counttime = 0
	
	Loop,30{
		counttime := counttime + 1
		htmlid := htmlid + 1
		Random, rad, 10000000, 99999999	;����8λ�����
		Random, rad1, 10000000, 99999999	;����8λ�����
		Random, rad2, 10000000, 99999999	;����8λ�����
		Random, rad3, 10000000, 99999999	;����8λ�����
		Random, rad4, 10000000, 99999999	;����8λ�����
		Random, rad5, 10000000, 99999999	;����8λ�����
	
		Send ^t
		Send http://bbs.duowan.com/thread-%htmlid%-1-1.html
		Sleep, 1000
		Send {Enter}
		
		Sleep, 3000
		
		Send ^{End}
		Sleep, 1000
		MouseClick, left, 760, 792
		Send ��������¥��˵���������������˼�����㶥��ȥ������
		Sleep, 1000
		Send ^{Enter}
		
		Sleep, 1800000	;��Сʱ����һ��
		Send ^w
		
		
		if(counttime == 5){
			MsgBox 1234545
		}
	}
	
	
 return  