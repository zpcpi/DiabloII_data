--[[1f01

]]
local t = {
'o_typedef',
{
	{
		['name']='o_typedef',
		['define']={
			[1]={
				['name']='name',
				['type']='string',
			},
			[2]={
				['name']='img',
				['type']='scriptview',
			},
			[3]={
				['name']='mod',
				['type']='string',
			},
			[4]={
				['name']='modetype',
				['type']='string',
			},
			[5]={
				['name']='base',
				['type']='_type',
			},
			[6]={
				['name']='define',
				['type']='_desc',
			},
		},
	},
	{
		['name']='o_animation',
		['define']={
			[1]={
				['name']='rate',
				['type']='int',
			},
			[2]={
				['name']='循环',
				['type']='int',
			},
			[3]={
				['name']='类别',
				['type']='string',
			},
			[4]={
				['name']='图像',
				['type']='_image',
			},
		},
	},
	{
		['name']='o_event',
		['define']={
			[1]={
				['name']='name',
				['type']='string',
			},
			[2]={
				['name']='arg',
				['type']='_o_var',
			},
		},
	},
	{
		['name']='o_font',
		['define']={
			[1]={
				['name']='fontname',
				['type']='sysfont',
			},
			[2]={
				['name']='ttf',
				['type']='boolean',
			},
		},
	},
	{
		['name']='o_fontstyle',
		['define']={
			[1]={
				['name']='color',
				['type']='color',
			},
		},
	},
	{
		['name']='o_image',
		['define']={
			[1]={
				['name']='grid',
				['type']='grid9',
			},
		},
	},
	{
		['name']='o_misc',
		['define']={
			[1]={
				['name']='作弊指令列表',
				['type']='_string',
			},
		},
	},
	{
		['name']='o_cheat_system_item',
		['define']={
			[1]={
				['name']='执行函数',
				['type']='funs',
			},
			[2]={
				['name']='默认参数',
				['type']='string',
			},
		},
	},
	{
		['name']='o_excel',
		['showname']='excel数据对照表',
		['define']={
			[1]={
				['name']='文件名称',
				['type']='string',
			},
			[2]={
				['name']='sheet名称',
				['type']='string',
			},
			[3]={
				['name']='默认值文件名称',
				['type']='type',
			},
			[4]={
				['name']='默认值sheet名称',
				['type']='string',
			},
			[5]={
				['name']='o表名称',
				['type']='string',
			},
			[6]={
				['name']='是否转置',
				['type']='boolean',
			},
			[7]={
				['name']='是否全托',
				['type']='boolean',
			},
			[8]={
				['name']='导出前额外处理',
				['type']='funs@excel_fix',
			},
			[9]={
				['name']='导入后额外处理',
				['type']='funs@excel_fix',
			},
		},
	},
	{
		['name']='o_Armor',
		['showname']='Armor',
		['define']={
			[1]={
				['name']='str_name',
				['type']='string',
				['needcopy']=true,
			},
			[2]={
				['name']='version',
				['type']='int',
				['needcopy']=true,
			},
			[3]={
				['name']='compactsave',
				['type']='int',
				['needcopy']=true,
			},
			[4]={
				['name']='rarity',
				['type']='int',
				['needcopy']=true,
			},
			[5]={
				['name']='spawnable',
				['type']='int',
				['needcopy']=true,
			},
			[6]={
				['name']='minac',
				['type']='int',
				['needcopy']=true,
			},
			[7]={
				['name']='maxac',
				['type']='int',
				['needcopy']=true,
			},
			[8]={
				['name']='absorbs',
				['type']='int',
				['needcopy']=true,
			},
			[9]={
				['name']='speed',
				['type']='int',
				['needcopy']=true,
			},
			[10]={
				['name']='reqstr',
				['type']='int',
				['needcopy']=true,
			},
			[11]={
				['name']='block',
				['type']='int',
				['needcopy']=true,
			},
			[12]={
				['name']='durability',
				['type']='int',
				['needcopy']=true,
			},
			[13]={
				['name']='nodurability',
				['type']='int',
				['needcopy']=true,
			},
			[14]={
				['name']='level',
				['type']='int',
				['needcopy']=true,
			},
			[15]={
				['name']='levelreq',
				['type']='int',
				['needcopy']=true,
			},
			[16]={
				['name']='cost',
				['type']='int',
				['needcopy']=true,
			},
			[17]={
				['name']='gamble cost',
				['type']='int',
				['needcopy']=true,
			},
			[18]={
				['name']='code',
				['type']='string',
				['needcopy']=true,
			},
			[19]={
				['name']='namestr',
				['type']='string',
				['needcopy']=true,
			},
			[20]={
				['name']='magic lvl',
				['type']='int',
				['needcopy']=true,
			},
			[21]={
				['name']='auto prefix',
				['type']='int',
				['needcopy']=true,
			},
			[22]={
				['name']='alternategfx',
				['type']='string',
				['needcopy']=true,
			},
			[23]={
				['name']='OpenBetaGfx',
				['type']='string',
				['needcopy']=true,
			},
			[24]={
				['name']='normcode',
				['type']='string',
				['needcopy']=true,
			},
			[25]={
				['name']='ubercode',
				['type']='string',
				['needcopy']=true,
			},
			[26]={
				['name']='ultracode',
				['type']='string',
				['needcopy']=true,
			},
			[27]={
				['name']='spelloffset',
				['type']='int',
				['needcopy']=true,
			},
			[28]={
				['name']='component',
				['type']='int',
				['needcopy']=true,
			},
			[29]={
				['name']='invwidth',
				['type']='int',
				['needcopy']=true,
			},
			[30]={
				['name']='invheight',
				['type']='int',
				['needcopy']=true,
			},
			[31]={
				['name']='hasinv',
				['type']='int',
				['needcopy']=true,
			},
			[32]={
				['name']='gemsockets',
				['type']='int',
				['needcopy']=true,
			},
			[33]={
				['name']='gemapplytype',
				['type']='int',
				['needcopy']=true,
			},
			[34]={
				['name']='flippyfile',
				['type']='string',
				['needcopy']=true,
			},
			[35]={
				['name']='invfile',
				['type']='string',
				['needcopy']=true,
			},
			[36]={
				['name']='uniqueinvfile',
				['type']='string',
				['needcopy']=true,
			},
			[37]={
				['name']='setinvfile',
				['type']='string',
				['needcopy']=true,
			},
			[38]={
				['name']='rArm',
				['type']='int',
				['needcopy']=true,
			},
			[39]={
				['name']='lArm',
				['type']='int',
				['needcopy']=true,
			},
			[40]={
				['name']='Torso',
				['type']='int',
				['needcopy']=true,
			},
			[41]={
				['name']='Legs',
				['type']='int',
				['needcopy']=true,
			},
			[42]={
				['name']='rSPad',
				['type']='int',
				['needcopy']=true,
			},
			[43]={
				['name']='lSPad',
				['type']='int',
				['needcopy']=true,
			},
			[44]={
				['name']='useable',
				['type']='int',
				['needcopy']=true,
			},
			[45]={
				['name']='throwable',
				['type']='int',
				['needcopy']=true,
			},
			[46]={
				['name']='stackable',
				['type']='int',
				['needcopy']=true,
			},
			[47]={
				['name']='minstack',
				['type']='int',
				['needcopy']=true,
			},
			[48]={
				['name']='maxstack',
				['type']='int',
				['needcopy']=true,
			},
			[49]={
				['name']='type',
				['type']='string',
				['needcopy']=true,
			},
			[50]={
				['name']='type2',
				['type']='string',
				['needcopy']=true,
			},
			[51]={
				['name']='dropsound',
				['type']='string',
				['needcopy']=true,
			},
			[52]={
				['name']='dropsfxframe',
				['type']='int',
				['needcopy']=true,
			},
			[53]={
				['name']='usesound',
				['type']='string',
				['needcopy']=true,
			},
			[54]={
				['name']='unique',
				['type']='int',
				['needcopy']=true,
			},
			[55]={
				['name']='transparent',
				['type']='int',
				['needcopy']=true,
			},
			[56]={
				['name']='transtbl',
				['type']='int',
				['needcopy']=true,
			},
			[57]={
				['name']='quivered',
				['type']='int',
				['needcopy']=true,
			},
			[58]={
				['name']='lightradius',
				['type']='int',
				['needcopy']=true,
			},
			[59]={
				['name']='belt',
				['type']='int',
				['needcopy']=true,
			},
			[60]={
				['name']='quest',
				['type']='int',
				['needcopy']=true,
			},
			[61]={
				['name']='missiletype',
				['type']='int',
				['needcopy']=true,
			},
			[62]={
				['name']='durwarning',
				['type']='int',
				['needcopy']=true,
			},
			[63]={
				['name']='qntwarning',
				['type']='int',
				['needcopy']=true,
			},
			[64]={
				['name']='mindam',
				['type']='int',
				['needcopy']=true,
			},
			[65]={
				['name']='maxdam',
				['type']='int',
				['needcopy']=true,
			},
			[66]={
				['name']='StrBonus',
				['type']='int',
				['needcopy']=true,
			},
			[67]={
				['name']='DexBonus',
				['type']='int',
				['needcopy']=true,
			},
			[68]={
				['name']='gemoffset',
				['type']='int',
				['needcopy']=true,
			},
			[69]={
				['name']='bitfield1',
				['type']='int',
				['needcopy']=true,
			},
			[70]={
				['name']='CharsiMin',
				['type']='int',
				['needcopy']=true,
			},
			[71]={
				['name']='CharsiMax',
				['type']='int',
				['needcopy']=true,
			},
			[72]={
				['name']='CharsiMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[73]={
				['name']='CharsiMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[74]={
				['name']='CharsiMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[75]={
				['name']='GheedMin',
				['type']='int',
				['needcopy']=true,
			},
			[76]={
				['name']='GheedMax',
				['type']='int',
				['needcopy']=true,
			},
			[77]={
				['name']='GheedMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[78]={
				['name']='GheedMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[79]={
				['name']='GheedMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[80]={
				['name']='AkaraMin',
				['type']='int',
				['needcopy']=true,
			},
			[81]={
				['name']='AkaraMax',
				['type']='int',
				['needcopy']=true,
			},
			[82]={
				['name']='AkaraMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[83]={
				['name']='AkaraMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[84]={
				['name']='AkaraMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[85]={
				['name']='FaraMin',
				['type']='int',
				['needcopy']=true,
			},
			[86]={
				['name']='FaraMax',
				['type']='int',
				['needcopy']=true,
			},
			[87]={
				['name']='FaraMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[88]={
				['name']='FaraMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[89]={
				['name']='FaraMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[90]={
				['name']='LysanderMin',
				['type']='int',
				['needcopy']=true,
			},
			[91]={
				['name']='LysanderMax',
				['type']='int',
				['needcopy']=true,
			},
			[92]={
				['name']='LysanderMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[93]={
				['name']='LysanderMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[94]={
				['name']='LysanderMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[95]={
				['name']='DrognanMin',
				['type']='int',
				['needcopy']=true,
			},
			[96]={
				['name']='DrognanMax',
				['type']='int',
				['needcopy']=true,
			},
			[97]={
				['name']='DrognanMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[98]={
				['name']='DrognanMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[99]={
				['name']='DrognanMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[100]={
				['name']='HraltiMin',
				['type']='int',
				['needcopy']=true,
			},
			[101]={
				['name']='HraltiMax',
				['type']='int',
				['needcopy']=true,
			},
			[102]={
				['name']='HraltiMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[103]={
				['name']='HraltiMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[104]={
				['name']='HraltiMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[105]={
				['name']='AlkorMin',
				['type']='int',
				['needcopy']=true,
			},
			[106]={
				['name']='AlkorMax',
				['type']='int',
				['needcopy']=true,
			},
			[107]={
				['name']='AlkorMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[108]={
				['name']='AlkorMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[109]={
				['name']='AlkorMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[110]={
				['name']='OrmusMin',
				['type']='int',
				['needcopy']=true,
			},
			[111]={
				['name']='OrmusMax',
				['type']='int',
				['needcopy']=true,
			},
			[112]={
				['name']='OrmusMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[113]={
				['name']='OrmusMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[114]={
				['name']='OrmusMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[115]={
				['name']='ElzixMin',
				['type']='int',
				['needcopy']=true,
			},
			[116]={
				['name']='ElzixMax',
				['type']='int',
				['needcopy']=true,
			},
			[117]={
				['name']='ElzixMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[118]={
				['name']='ElzixMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[119]={
				['name']='ElzixMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[120]={
				['name']='AshearaMin',
				['type']='int',
				['needcopy']=true,
			},
			[121]={
				['name']='AshearaMax',
				['type']='int',
				['needcopy']=true,
			},
			[122]={
				['name']='AshearaMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[123]={
				['name']='AshearaMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[124]={
				['name']='AshearaMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[125]={
				['name']='CainMin',
				['type']='int',
				['needcopy']=true,
			},
			[126]={
				['name']='CainMax',
				['type']='int',
				['needcopy']=true,
			},
			[127]={
				['name']='CainMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[128]={
				['name']='CainMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[129]={
				['name']='CainMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[130]={
				['name']='HalbuMin',
				['type']='int',
				['needcopy']=true,
			},
			[131]={
				['name']='HalbuMax',
				['type']='int',
				['needcopy']=true,
			},
			[132]={
				['name']='HalbuMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[133]={
				['name']='HalbuMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[134]={
				['name']='HalbuMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[135]={
				['name']='JamellaMin',
				['type']='int',
				['needcopy']=true,
			},
			[136]={
				['name']='JamellaMax',
				['type']='int',
				['needcopy']=true,
			},
			[137]={
				['name']='JamellaMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[138]={
				['name']='JamellaMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[139]={
				['name']='JamellaMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[140]={
				['name']='LarzukMin',
				['type']='int',
				['needcopy']=true,
			},
			[141]={
				['name']='LarzukMax',
				['type']='int',
				['needcopy']=true,
			},
			[142]={
				['name']='LarzukMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[143]={
				['name']='LarzukMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[144]={
				['name']='LarzukMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[145]={
				['name']='MalahMin',
				['type']='int',
				['needcopy']=true,
			},
			[146]={
				['name']='MalahMax',
				['type']='int',
				['needcopy']=true,
			},
			[147]={
				['name']='MalahMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[148]={
				['name']='MalahMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[149]={
				['name']='MalahMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[150]={
				['name']='DrehyaMin',
				['type']='int',
				['needcopy']=true,
			},
			[151]={
				['name']='DrehyaMax',
				['type']='int',
				['needcopy']=true,
			},
			[152]={
				['name']='DrehyaMagicMin',
				['type']='int',
				['needcopy']=true,
			},
			[153]={
				['name']='DrehyaMagicMax',
				['type']='int',
				['needcopy']=true,
			},
			[154]={
				['name']='DrehyaMagicLvl',
				['type']='int',
				['needcopy']=true,
			},
			[155]={
				['name']='Source Art',
				['type']='int',
				['needcopy']=true,
			},
			[156]={
				['name']='Game Art',
				['type']='int',
				['needcopy']=true,
			},
			[157]={
				['name']='Transform',
				['type']='int',
				['needcopy']=true,
			},
			[158]={
				['name']='InvTrans',
				['type']='int',
				['needcopy']=true,
			},
			[159]={
				['name']='SkipName',
				['type']='int',
				['needcopy']=true,
			},
			[160]={
				['name']='NightmareUpgrade',
				['type']='string',
				['needcopy']=true,
			},
			[161]={
				['name']='HellUpgrade',
				['type']='string',
				['needcopy']=true,
			},
			[162]={
				['name']='mindam',
				['type']='int',
				['needcopy']=true,
			},
			[163]={
				['name']='maxdam',
				['type']='int',
				['needcopy']=true,
			},
			[164]={
				['name']='nameable',
				['type']='int',
				['needcopy']=true,
			},
		},
	},
}}
return t