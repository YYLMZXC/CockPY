-- Trigger变量
local defs = {
	group_id = 133103142,
	gadget_riddle_hint = 142001,
	gadget_riddle_1 = 142002,
	gadget_riddle_2 = 142003,
	gadget_riddle_3 = 142004,
	gadget_riddle_4 = 142005,
	gadget_chest = 142006
}


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
	{ config_id = 142001, gadget_id = 70310012, pos = { x = 968.0, y = 270.6, z = 1592.0 }, rot = { x = 354.1, y = 190.6, z = 1.4 }, level = 19, persistent = true },
	{ config_id = 142002, gadget_id = 70310011, pos = { x = 969.7, y = 270.7, z = 1589.0 }, rot = { x = 0.0, y = 276.1, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 142003, gadget_id = 70310011, pos = { x = 946.0, y = 271.4, z = 1588.5 }, rot = { x = 0.0, y = 317.5, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 142004, gadget_id = 70310011, pos = { x = 975.5, y = 268.9, z = 1600.6 }, rot = { x = 0.0, y = 257.6, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 142005, gadget_id = 70310011, pos = { x = 968.3, y = 270.1, z = 1578.4 }, rot = { x = 0.0, y = 14.1, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 142006, gadget_id = 70211112, pos = { x = 968.0, y = 271.1, z = 1591.8 }, rot = { x = 354.2, y = 186.0, z = 1.9 }, level = 19, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_142007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142007", action = "action_EVENT_GADGET_STATE_CHANGE_142007", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_142008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_142008", action = "action_EVENT_VARIABLE_CHANGE_142008", trigger_count = 0 },
	{ name = "GROUP_LOAD_142009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_142009" }
}

-- 变量
variables = {
	{ name = "State_Flag", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { 142001, 142002, 142003, 142004, 142005, 142006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_142007", "VARIABLE_CHANGE_142008", "GROUP_LOAD_142009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142007(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	if 0 == ScriptLib.GetCurTriggerCount(context) then
	ScriptLib.MarkPlayerAction(context, 1003, 1, 1)
	end 
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_142008(context, evt)
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_142008(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_LOAD_142009(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end
