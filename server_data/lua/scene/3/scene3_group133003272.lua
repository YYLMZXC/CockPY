--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 922, monster_id = 21030101, pos = { x = 2680.6, y = 244.4, z = -1276.8 }, rot = { x = 0.0, y = 70.4, z = 0.0 }, level = 22, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 1034, monster_id = 21010901, pos = { x = 2680.2, y = 244.7, z = -1279.9 }, rot = { x = 0.0, y = 16.4, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1035, monster_id = 21010101, pos = { x = 2692.2, y = 244.0, z = -1267.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 1036, monster_id = 20011001, pos = { x = 2682.7, y = 244.3, z = -1276.4 }, rot = { x = 0.0, y = 287.0, z = 0.0 }, level = 15, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 1037, monster_id = 21010101, pos = { x = 2682.9, y = 244.2, z = -1278.4 }, rot = { x = 0.0, y = 334.6, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
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
		monsters = { 922, 1034, 1035, 1036, 1037 },
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
