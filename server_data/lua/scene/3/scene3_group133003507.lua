--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 507001, gadget_id = 70900340, pos = { x = 2745.9, y = 265.8, z = -1186.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30 },
	{ config_id = 507002, gadget_id = 70900340, pos = { x = 2778.6, y = 270.6, z = -1171.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30 },
	{ config_id = 507003, gadget_id = 70900340, pos = { x = 2771.6, y = 261.6, z = -1217.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30 }
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
		monsters = { },
		gadgets = { 507001, 507002, 507003 },
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
