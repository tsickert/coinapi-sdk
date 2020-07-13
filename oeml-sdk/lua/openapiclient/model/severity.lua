--[[
  OEML - REST API
 
  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 
  The version of the OpenAPI document: v1
  
  Generated by: https://openapi-generator.tech
]]

-- severity class
local severity = {}
local severity_mt = {
	__name = "severity";
	__index = severity;
}

local function cast_severity(t)
	return setmetatable(t, severity_mt)
end

local function new_severity()
	return cast_severity({
	})
end

return {
	cast = cast_severity;
	new = new_severity;
}