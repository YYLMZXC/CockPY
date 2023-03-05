--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 464, monster_id = 21010201, pos = { x = 1352.5, y = 239.2, z = -1623.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "丘丘人" },
	{ config_id = 465, monster_id = 21010201, pos = { x = 1353.2, y = 247.9, z = -1660.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "丘丘人" },
	{ config_id = 627, monster_id = 21010501, pos = { x = 1356.7, y = 255.2, z = -1667.4 }, rot = { x = 0.0, y = 3.5, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true }
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
		monsters = { 464, 465, 627 },
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
