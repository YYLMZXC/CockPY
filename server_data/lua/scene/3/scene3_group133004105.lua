--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 275, monster_id = 21010501, pos = { x = 2320.2, y = 299.5, z = -190.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "远程丘丘人" },
	{ config_id = 276, monster_id = 21010501, pos = { x = 2339.2, y = 294.6, z = -204.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "远程丘丘人" }
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
	rand_suite = true
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
		monsters = { 275, 276 },
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
