--[[1003

]]
local t = {
[==[o_excel]==],
{
	{
		['name']=0x10030001,
		['showname']=[==[excel关联表]==],
		['class']={n=0,[1] = 'excel_读取数据',
		},
		['文件名称']=[==[excel关联表.xlsx]==],
		['sheet名称']=[==[excel关联表]==],
		['默认值文件名称']=[==[excel关联表.xlsx]==],
		['默认值sheet名称']=[==[excel关联表_辅助]==],
		['o表名称']=[==[o_excel]==],
		['是否转置']=false,
		['是否全托']=false,
	},
	{
		['name']=0x10030002,
		['showname']=[==[作弊指令表]==],
		['class']={n=0,[1] = 'excel_读取数据',
		},
		['文件名称']=[==[作弊指令表.xlsx]==],
		['sheet名称']=[==[作弊指令表]==],
		['o表名称']=[==[o_cheat_system_item]==],
		['是否转置']=false,
		['是否全托']=true,
	},
	{
		['name']=0x10030064,
		['showname']=[==[Armor]==],
		['class']={n=0,[1] = 'excel_写出数据',
		},
		['文件名称']=[==[data_excel/Armor.xlsx]==],
		['sheet名称']=[==[Sheet1]==],
		['o表名称']=[==[o_Armor]==],
		['是否转置']=false,
		['是否全托']=true,
	},
	{
		['name']=0x10030065,
		['showname']=[==[Skills]==],
		['class']={n=0,[1] = 'excel_读取数据',
		},
		['文件名称']=[==[data_excel/Skills.xlsx]==],
		['sheet名称']=[==[Sheet1]==],
		['o表名称']=[==[o_Skills]==],
		['是否转置']=false,
		['是否全托']=true,
	},
	{
		['name']=0x10030066,
		['showname']=[==[Weapons]==],
		['class']={n=0,[1] = 'excel_读取数据',
		},
		['文件名称']=[==[data_excel/Weapons.xlsx]==],
		['sheet名称']=[==[Sheet1]==],
		['o表名称']=[==[o_Weapons]==],
		['是否转置']=false,
		['是否全托']=true,
	},
	{
		['name']=0x10030067,
		['showname']=[==[ArmType]==],
		['class']={n=0,[1] = 'excel_读取数据',
		},
		['文件名称']=[==[data_excel/ArmType.xlsx]==],
		['sheet名称']=[==[Sheet1]==],
		['o表名称']=[==[o_ArmType]==],
		['是否转置']=false,
		['是否全托']=true,
	},
	{
		['name']=0x10030068,
		['showname']=[==[WeaponClass]==],
		['class']={n=0,[1] = 'excel_写出数据',
		},
		['文件名称']=[==[data_excel/WeaponClass.xlsx]==],
		['sheet名称']=[==[Sheet1]==],
		['o表名称']=[==[o_WeaponClass]==],
		['是否转置']=false,
		['是否全托']=true,
	},
}}
return t