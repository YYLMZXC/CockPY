--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 347001, monster_id = 24010101, pos = { x = 495.2, y = 237.6, z = 1152.2 }, rot = { x = 0.0, y = 279.9, z = 0.0 }, level = 24, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 347002, gadget_id = 70211012, pos = { x = 498.9, y = 237.3, z = 1151.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_347003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_347003", action = "action_EVENT_ANY_MONSTER_DIE_347003" }
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
		monsters = { 347001 },
		gadgets = { 347002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_347003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_347003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_347003(context, evt)
	-- 将configid为 347002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 347002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
