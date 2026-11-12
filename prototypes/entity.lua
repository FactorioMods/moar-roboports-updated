local function deepCopy(original)
  local copy = {}
  for k, v in pairs(original) do
      -- as before, but if we find a table, make sure we copy that too
      if type(v) == "table" then
          v = deepCopy(v)
      end
      copy[k] = v
  end
  return copy
end

roboportext = deepCopy(data.raw.roboport["roboport"])
roboportext.name = "roboport-ext"
roboportext.fast_replaceable_group = "roboport"
roboportext.logistics_radius = 32
roboportext.construction_radius = 300
roboportext.minable = {mining_time = 0.5, result = "roboport-ext"}
roboportext.energy_source = {
    type = "electric",
    usage_priority = "secondary-input",
    input_flow_limit = "2GW",
    buffer_capacity = "2GJ"
  }
roboportext.recharge_minimum = "240MJ"
roboportext.energy_usage = "10MW"
roboportext.charging_energy = "50MW"
roboportext.robot_slots_count = 20
roboportext.material_slots_count = 10
roboportext.charging_offsets = {
{-1.5,1.5},{-1.0,1.5},{-0.5,1.5},{0.0,1.5},{0.5,1.5},{1.0,1.5},{1.5,1.5},
{-1.5,1.0},										   			                         {1.5,1.0},
{-1.5,0.5},										   			                         {1.5,0.5},
{-1.5,-0.5},									   			                         {1.5,0.0},
{-1.5,-1.0},									   			                         {1.5,-0.5},
{-1.5,-1.5},									   			                         {1.5,-1.5},
{-1.5,-1.5},{-1.0,-1.5},{-0.5,-1.5},{0.0,-1.5},{0.5,-1.5},{1.0,-1.5},{1.5,-1.5},
{-1.2, -0.8}, {-1.8, -0.2},
{1.8, -0.2}, {1.2, -0.8},
{1.8, 1.2}, {1.2, 1.8},
{-1.2, 1.8}, {-1.8, 1.2}
}
roboportext.base.layers =
  {
    {
      filename = "__Moar_Roboports__/graphics/entity/roboport/roboport-ext-base.png",
      width = 143,
      height = 135,
      shift = {0.5, 0.25},
      hr_version =
      {
        filename = "__Moar_Roboports__/graphics/entity/roboport/hr-roboport-ext-base.png",
        width = 228,
        height = 277,
        shift = util.by_pixel(2, 7.75),
        scale = 0.5
      }
    },
    {
      filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
      width = 147,
      height = 101,
      draw_as_shadow = true,
      shift = util.by_pixel(28.5, 19.25),
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
        width = 294,
        height = 201,
        draw_as_shadow = true,
        force_hr_shadow = true,
        shift = util.by_pixel(28.5, 19.25),
        scale = 0.5
      }
    }
  }



  
roboportprod = deepCopy(data.raw.roboport["roboport"])
roboportprod.name = "roboport-prod"
roboportprod.fast_replaceable_group = "roboport"
roboportprod.logistics_radius = 16
roboportprod.construction_radius = 16
roboportprod.minable = {mining_time = 1, result = "roboport-prod"}
roboportprod.energy_source = {
  type = "electric",
  usage_priority = "secondary-input",
  input_flow_limit = "2GW",
  buffer_capacity = "2GJ"
}
roboportprod.recharge_minimum = "240MJ"
roboportprod.energy_usage = "20MW"
roboportprod.charging_energy = "50MW"
roboportprod.robot_slots_count = 24
roboportprod.material_slots_count = 10
roboportprod.charging_offsets = {
{-1.5,1.5},{-1.0,1.5},{-0.5,1.5},{0.0,1.5},{0.5,1.5},{1.0,1.5},{1.5,1.5},
{-1.5,1.0},										   			                          {1.5,1.0},
{-1.5,0.5},										   			                          {1.5,0.5},
{-1.5,-0.5},									   			                          {1.5,0.0},
{-1.5,-1.0},									   			                          {1.5,-0.5},
{-1.5,-1.5},									   			                          {1.5,-1.5},
{-1.5,-1.5},{-1.0,-1.5},{-0.5,-1.5},{0.0,-1.5},{0.5,-1.5},{1.0,-1.5},{1.5,-1.5},
{-1.2, -0.8}, {-1.8, -0.2},
{1.8, -0.2}, {1.2, -0.8},
{1.8, 1.2}, {1.2, 1.8},
{-1.2, 1.8}, {-1.8, 1.2}

}
roboportprod.base.layers =
  {
    {
      filename = "__Moar_Roboports__/graphics/entity/roboport/roboport-prod-base.png",
      width = 143,
      height = 135,
      shift = {0.5, 0.25},
      hr_version =
      {
        filename = "__Moar_Roboports__/graphics/entity/roboport/hr-roboport-prod-base.png",
        width = 228,
        height = 277,
        shift = util.by_pixel(2, 7.75),
        scale = 0.5
      }
    },
    {
      filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
      width = 147,
      height = 101,
      draw_as_shadow = true,
      shift = util.by_pixel(28.5, 19.25),
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
        width = 294,
        height = 201,
        draw_as_shadow = true,
        force_hr_shadow = true,
        shift = util.by_pixel(28.5, 19.25),
        scale = 0.5
      }
    }
  }



roboportprod2 = deepCopy(data.raw.roboport["roboport"])
roboportprod2.name = "roboport-prod2"
roboportprod2.fast_replaceable_group = "roboport"
roboportprod2.logistics_radius = 32
roboportprod2.construction_radius = 32
roboportprod2.minable = {mining_time = 1, result = "roboport-prod2"}
roboportprod2.energy_source = {
  type = "electric",
  usage_priority = "secondary-input",
  input_flow_limit = "2GW",
  buffer_capacity = "2GJ"
}
roboportprod2.recharge_minimum = "240MJ"
roboportprod2.energy_usage = "20MW"
roboportprod2.charging_energy = "50MW"
roboportprod2.robot_slots_count = 24
roboportprod2.material_slots_count = 10
roboportprod.charging_offsets = {
{-1.5,1.5},{-1.0,1.5},{-0.5,1.5},{0.0,1.5},{0.5,1.5},{1.0,1.5},{1.5,1.5},
{-1.5,1.0},										   			                          {1.5,1.0},
{-1.5,0.5},										   			                          {1.5,0.5},
{-1.5,-0.5},									   			                          {1.5,0.0},
{-1.5,-1.0},									   			                          {1.5,-0.5},
{-1.5,-1.5},									   			                          {1.5,-1.5},
{-1.5,-1.5},{-1.0,-1.5},{-0.5,-1.5},{0.0,-1.5},{0.5,-1.5},{1.0,-1.5},{1.5,-1.5},
{-1.2, -0.8}, {-1.8, -0.2},
{1.8, -0.2}, {1.2, -0.8},
{1.8, 1.2}, {1.2, 1.8},
{-1.2, 1.8}, {-1.8, 1.2}

}
roboportprod2.base.layers =
  {
    {
      filename = "__Moar_Roboports__/graphics/entity/roboport/roboport-prod-base2.png",
      width = 143,
      height = 135,
      shift = {0.5, 0.25},
      hr_version =
      {
        filename = "__Moar_Roboports__/graphics/entity/roboport/hr-roboport-prod-base2.png",
        width = 228,
        height = 277,
        shift = util.by_pixel(2, 7.75),
        scale = 0.5
      }
    },
    {
      filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
      width = 147,
      height = 101,
      draw_as_shadow = true,
      shift = util.by_pixel(28.5, 19.25),
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
        width = 294,
        height = 201,
        draw_as_shadow = true,
        force_hr_shadow = true,
        shift = util.by_pixel(28.5, 19.25),
        scale = 0.5
      }
    }
  }


data:extend(
  {
    roboportext,
    roboportprod,
    roboportprod2
    
  }
)