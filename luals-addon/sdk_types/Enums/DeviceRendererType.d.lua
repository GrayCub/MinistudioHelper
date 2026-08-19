---@meta
---@diagnostic disable: missing-fields

---@class DeviceRendererType : EnumValue<DeviceRendererType>
---@field Value DeviceRendererType
Enum.DeviceRendererType = {
    ---@type DeviceRendererType
    OpenGLES2 = {}, -- Value = 0; OpenGL ES 2.0
    ---@type DeviceRendererType
    OpenGLES3 = {}, -- Value = 1; OpenGL ES 3.0
    ---@type DeviceRendererType
    OpenGLCore = {}, -- Value = 2; OpenGL Core
    ---@type DeviceRendererType
    D3D11 = {}, -- Value = 3; DirectX 11
    ---@type DeviceRendererType
    D3D12 = {}, -- Value = 4; DirectX 12
}

