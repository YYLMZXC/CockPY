--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 805001, monster_id = 28030201, pos = { x = -891.2, y = 264.3, z = 1298.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 805002, monster_id = 28030201, pos = { x = -620.3, y = 259.0, z = 1303.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 805003, monster_id = 28030201, pos = { x = -564.4, y = 265.8, z = 1041.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 805004, monster_id = 28030201, pos = { x = -716.3, y = 274.5, z = 978.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 805005, monster_id = 28030201, pos = { x = -593.1, y = 353.6, z = 823.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 805006, monster_id = 28030201, pos = { x = -866.4, y = 259.6, z = 823.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 805007, monster_id = 28030201, pos = { x = -366.9, y = 281.5, z = 767.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 805008, monster_id = 28030201, pos = { x = -141.3, y = 260.1, z = 1041.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 805009, monster_id = 28030201, pos = { x = -145.1, y = 261.8, z = 799.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类" },
	{ config_id = 805010, monster_id = 28030201, pos = { x = -279.6, y = 286.8, z = 1287.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" }
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
		monsters = { 805001, 805002, 805003, 805004, 805005, 805006, 805007, 805008, 805009, 805010 },
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
