BEGIN ~UTHing01~

//------------------------------- ��ѡ�� -------------------------------//

IF ~Global("UTTalkedToHinge","MYAREA",0)~
THEN BEGIN First
SAY
	~�����ü�����ǰ��һ�б�ʾ����֮ǰ��֪ʶ������ǰ������ʵ���ŦԴԴ�������������ϵع��䵽���˼��֮�С��������֪�����Լ����ںδ���~
IF ~~
THEN GOTO Second
END

IF ~~
THEN BEGIN Second
SAY
	~�����ǳ�Խ�ռ��ά�ȡ���Խʱ������㣬����������ֻ�����ֹ�����ƶ�Կ��������ݣ�������Ӱ֮������������������Ϊ�����ն�İ�λ��֮һ��~
IF ~~
THEN GOTO Third
END

IF ~~
THEN BEGIN Third
SAY
	~����Ԫ����������~
	IF ~Global("UTTalkedToHinge","MYAREA",0)~ THEN DO
		~SetGlobal("UTTalkedToHinge","MYAREA",1)~ GOTO Start
END

IF ~GlobalGT("UTTalkedToHinge","MYAREA",0)~
THEN BEGIN Start
SAY
	~���ѱ���˹�����壺~
IF ~~
THEN REPLY
	~Ϊ��չ����ʤ֮����~
	GOTO Challenge
IF ~~
THEN REPLY
	~Ϊ�ᴴ��ս��֮�У�~
	GOTO Storage
IF ~~
THEN REPLY
	~Ϊ�Ὺ�����֮�ţ�~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTCutR2")
	~ EXIT
IF ~~
THEN REPLY
	~�����Ի���~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
IF ~~
THEN REPLY
	~��������ѡ����~
	GOTO Miscellaneous
END

//------------------------------- ս�� -------------------------------//

IF ~~ 
THEN BEGIN Challenge
SAY
	~~
IF ~~
THEN REPLY
	~��ս������С�ӡ�~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb01")
	~ EXIT
IF ~~
THEN REPLY
	~��ս������С�ӡ�~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb02")
	~ EXIT
IF ~~
THEN REPLY
	~��ս�����ߡ�~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb03")
	~ EXIT
IF ~~
THEN REPLY
	~��ս�޻��ߡ�~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb04")
	~ EXIT
IF ~~
THEN REPLY
	~��սն���ߡ�~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb05")
	~ EXIT
IF ~~
THEN REPLY
	~�ص��ϼ��˵���~
	GOTO Start
IF ~~
THEN REPLY
	~�����Ի���~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
END

//------------------------------- �̵� -------------------------------//

IF ~~ 
THEN BEGIN Storage
SAY
	~~
IF ~~
THEN REPLY
	~������Ԫ�̵ꡣ~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		StartStore("trshop",LastTalkedToBy(Myself))
	~ EXIT
IF ~~
THEN REPLY
	~�ص��ϼ��˵���~
	GOTO Start
IF ~~
THEN REPLY
	~�����Ի���~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
END

//------------------------------- ���� -------------------------------//

IF ~~ 
THEN BEGIN Miscellaneous
SAY
	~~
IF ~Global("Comet","MYAREA",0)~ 
THEN REPLY
	~�����������֣���׹��~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		SetGlobal("Comet","MYAREA",1)
	~ EXIT
IF ~Global("Comet","MYAREA",1)~ 
THEN REPLY
	~�ر��������֣���׹��~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		SetGlobal("Comet","MYAREA",0)
	~ EXIT
IF ~~
THEN REPLY
	~�ص��ϼ��˵���~
	GOTO Start
IF ~~
THEN REPLY
	~�����Ի���~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
END