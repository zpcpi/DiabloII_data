--[[1f01

]]
local t = {
    'o_typedef',
{ 
	{
		name = 'o_typedef',
        define = {
		{['name'] = 'name',['type'] = 'string',},
		{['name'] = 'define',['type'] = '_desc',},}
		},
	{
        name = 'o_animation',
		['img']='v_animation',
		['mod']='animation',
		['modetype']='line',
            define = {
			{['name'] = 'rate',['type'] = 'int',},
			{['name'] = '循环',['type'] = 'int',},
			{['name'] = '类别',['type'] = 'string',},
			{['name'] = '图像',['type'] = '_image',},}
			},
	{
        name = 'o_event',
            define = {
			{['name'] = 'name',['type'] = 'string',},
			{['name'] = 'arg',['type'] = '_o_var'},}
			},

	{
        name = 'o_font',
            define = {
			{['name'] = 'fontname',['type'] = 'sysfont',},
			{['name'] = 'ttf',['type'] = 'boolean',},}
			},
	{
        name = 'o_fontstyle',
            define = {
			{['name'] = 'color',['type'] = 'color',},}
			},
	{
        name = 'o_image',
		['mod']='image',
            define = {
			{['name'] = 'grid',['type'] = 'grid9',},}
			},		

	{
		name = 'o_var',
			define = {
		{['name'] = 'id',['type'] = 'string',},
		{['name'] = 'type',['type'] = 'type',},}
	},
	{
		name = 'o_misc',
		define = {
			[1]={
				['name']='项目信息',
				['type']='_o_project',
			},
		},
	},
	{
		name = 'o_project',
		define = {
			[1]={
				['name']='项目名称',
				['type']='string',
			},
			[2]={
				['name']='版本库地址',
				['type']='string',
			},
			[3]={
				['name']='存放目录',
				['type']='string',
			},
		},
	},
},

}
return t
