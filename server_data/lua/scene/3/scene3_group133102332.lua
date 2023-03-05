--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 332002, monster_id = 21010101, pos = { x = 1657.2, y = 206.6, z = 847.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "丘丘人", pose_id = 9013 },
	{ config_id = 332003, monster_id = 21010101, pos = { x = 1659.1, y = 207.0, z = 851.1 }, rot = { x = 0.0, y = 250.6, z = 0.0 }, level = 20, drop_tag = "丘丘人", pose_id = 9016 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 332001, gadget_id = 70211001, pos = { x = 1657.9, y = 207.1, z = 850.4 }, rot = { x = 356.2, y = 212.2, z = 359.6 }, level = 18, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true }
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
		-- description = suite_1,
		monsters = { 332002, 332003 },
		gadgets = { 332001 },
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
