--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 165001, monster_id = 28030401, pos = { x = -898.4, y = 176.6, z = 859.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 165002, monster_id = 28030401, pos = { x = -900.8, y = 176.9, z = 855.3 }, rot = { x = 0.0, y = 285.4, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 165003, monster_id = 28030401, pos = { x = -897.1, y = 175.8, z = 851.7 }, rot = { x = 0.0, y = 227.9, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 165004, monster_id = 28030401, pos = { x = -896.8, y = 176.2, z = 855.5 }, rot = { x = 0.0, y = 72.6, z = 0.0 }, level = 32, drop_tag = "鸟类" }
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
		monsters = { 165001, 165002, 165003, 165004 },
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
