Shared = Shared or {}

Shared.Animation = Shared.Animation or {
	OpenProp = GetHashKey("zerio_radio"),
	OpenBone = 28422,
	OpenOffset = vector3(0.0, 0.0, 0.0),
	OpenRotation = vector3(90.0, 90.0, 0.0),

	-- TalkProp = GetHashKey('prop_cs_hand_radio'),
	-- TalkBone = 28422,
	-- TalkOffset = vector3(0.0, 0.0, 0.0),
	-- TalkRotation = vector3(0.0, 0.0, 0.0),

	OpenDictionary = {
		normal = "cellphone@",
		in_car = "cellphone@in_car@ds",
	},

	OpenAnimation = {
		open = "cellphone_text_in",
		closed = "cellphone_text_out",
	},

	TalkDictionary = "random@arrests",
	TalkAnimation = "generic_radio_chatter",
}