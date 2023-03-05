--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 527, monster_id = 20010301, pos = { x = 2660.8, y = 261.5, z = -372.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 528, monster_id = 20010301, pos = { x = 2659.3, y = 262.5, z = -366.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 529, monster_id = 20010301, pos = { x = 2646.9, y = 259.6, z = -368.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 530, monster_id = 20010301, pos = { x = 2653.4, y = 261.7, z = -372.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 531, monster_id = 20010301, pos = { x = 2634.3, y = 260.5, z = -374.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
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
		monsters = { 527, 528, 529, 530, 531 },
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
