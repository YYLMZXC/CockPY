--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 410001, monster_id = 21010201, pos = { x = 188.7, y = 186.8, z = 1270.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘人" },
	{ config_id = 410002, monster_id = 21010201, pos = { x = 161.0, y = 189.0, z = 1247.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘人" },
	{ config_id = 410003, monster_id = 21010201, pos = { x = 131.4, y = 186.9, z = 1256.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘人" }
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
	suite = 1,
	end_suite = 0,
	rand_suite = false
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
		monsters = { 410001, 410002, 410003 },
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
