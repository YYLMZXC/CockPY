--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 477001, monster_id = 21010201, pos = { x = 1.9, y = 298.5, z = 905.1 }, rot = { x = 348.4, y = 133.4, z = 4.9 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 477004, monster_id = 21010201, pos = { x = 5.1, y = 298.0, z = 908.9 }, rot = { x = 348.4, y = 86.4, z = 4.9 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 477005, monster_id = 21030401, pos = { x = 0.3, y = 296.7, z = 911.0 }, rot = { x = 339.8, y = 139.9, z = 5.4 }, level = 32, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 477002, gadget_id = 70211012, pos = { x = 1.3, y = 297.7, z = 908.4 }, rot = { x = 18.9, y = 1.5, z = 9.1 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_477003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_477003", action = "action_EVENT_ANY_MONSTER_DIE_477003" }
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
		monsters = { 477001 },
		gadgets = { 477002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_477003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_477003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_477003(context, evt)
	-- 将configid为 477002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 477002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
