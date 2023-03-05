--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 327001, monster_id = 21010301, pos = { x = 1495.8, y = 243.0, z = -1585.4 }, rot = { x = 0.0, y = 110.0, z = 0.0 }, level = 19, drop_tag = "丘丘人" },
	{ config_id = 327002, monster_id = 21010601, pos = { x = 1489.4, y = 242.9, z = -1586.6 }, rot = { x = 0.0, y = 284.4, z = 0.0 }, level = 19, drop_tag = "丘丘人", pose_id = 9016 },
	{ config_id = 327003, monster_id = 21010201, pos = { x = 1537.2, y = 245.5, z = -1568.7 }, rot = { x = 0.0, y = 122.7, z = 0.0 }, level = 19, drop_tag = "丘丘人" },
	{ config_id = 327004, monster_id = 21010201, pos = { x = 1533.0, y = 245.5, z = -1567.8 }, rot = { x = 0.0, y = 212.2, z = 0.0 }, level = 19, drop_tag = "丘丘人", pose_id = 9002 },
	{ config_id = 327005, monster_id = 21010201, pos = { x = 1534.6, y = 245.5, z = -1565.3 }, rot = { x = 0.0, y = 45.6, z = 0.0 }, level = 19, drop_tag = "丘丘人", pose_id = 9002 },
	{ config_id = 327006, monster_id = 21011001, pos = { x = 1619.6, y = 246.1, z = -1586.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 327007, monster_id = 21010501, pos = { x = 1617.9, y = 246.1, z = -1586.9 }, rot = { x = 0.0, y = 329.8, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 327008, monster_id = 21010301, pos = { x = 1619.4, y = 246.1, z = -1582.2 }, rot = { x = 0.0, y = 63.9, z = 0.0 }, level = 19, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 327009, monster_id = 21010701, pos = { x = 1606.6, y = 246.4, z = -1625.5 }, rot = { x = 0.0, y = 15.8, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 327010, monster_id = 21010101, pos = { x = 1606.2, y = 246.4, z = -1630.5 }, rot = { x = 0.0, y = 238.0, z = 0.0 }, level = 19, drop_tag = "丘丘人", pose_id = 9010 },
	{ config_id = 327011, monster_id = 21010101, pos = { x = 1601.1, y = 246.7, z = -1627.8 }, rot = { x = 0.0, y = 176.1, z = 0.0 }, level = 19, drop_tag = "丘丘人", pose_id = 9016 }
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
		monsters = { 327001, 327002, 327003, 327004, 327005, 327006, 327007, 327008, 327009, 327010, 327011 },
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
