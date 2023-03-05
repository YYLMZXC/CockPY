--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011201, pos = { x = 62.3, y = 16.5, z = 7.3 }, rot = { x = 0.0, y = 143.0, z = 0.0 }, level = 1 },
	{ config_id = 3002, monster_id = 20011201, pos = { x = 54.6, y = 16.5, z = 1.8 }, rot = { x = 0.0, y = 0.0, z = 8.0 }, level = 1 },
	{ config_id = 3003, monster_id = 20011201, pos = { x = 58.7, y = 16.5, z = -8.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3004, monster_id = 20011201, pos = { x = 68.8, y = 16.5, z = -13.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3005, monster_id = 20011201, pos = { x = 73.6, y = 16.5, z = 8.7 }, rot = { x = 0.0, y = 226.6, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 0,
	rand_suite = false,
	npcs = { }
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
