--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214, monster_id = 28010202, pos = { x = 2956.0, y = 207.0, z = 106.9 }, rot = { x = 0.0, y = 39.5, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 215, monster_id = 28010202, pos = { x = 2957.5, y = 207.1, z = 107.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 216, monster_id = 28010202, pos = { x = 2956.4, y = 207.1, z = 109.2 }, rot = { x = 0.0, y = 108.1, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 217, monster_id = 28010202, pos = { x = 2957.7, y = 207.1, z = 110.3 }, rot = { x = 0.0, y = 197.7, z = 0.0 }, level = 1, drop_tag = "采集动物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 464, gadget_id = 70211101, pos = { x = 2957.5, y = 207.1, z = 108.7 }, rot = { x = 0.0, y = 207.4, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true }
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
		monsters = { 214, 215, 216, 217 },
		gadgets = { 464 },
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
