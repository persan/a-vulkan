s!../../Vulkan-Docs/src/vulkan/!!

s!pragma Ada_2005;!pragma Ada_2012;!

s!with Vulkan.Low_Level.stdint_h;!!
s!with Vulkan.Low_Level.stddef_h;!!
s!1000.0f!1000.0!

s-Vulkan.Low_Level.stdint_h.uint32_t-Interfaces.unsigned_32-
s-Vulkan.Low_Level.stdint_h.uint64_t-Interfaces.unsigned_64-
s-Vulkan.Low_Level.stddef_h.size_t-size_t-
s-Vulkan.Low_Level.stdint_h.int32_t-Interfaces.Integer_32-
s-Vulkan.Low_Level.stdint_h.uint8_t-Interfaces.Integer_8-
s!with Vulkan.Low_Level.stdint_h;!!

s!with Vulkan.Low_Level.bits_stdint_uintn_h;!!
s!Vulkan.Low_Level.bits_stdint_uintn_h.uint32_t!Interfaces.C.unsigned_short!
s!Vulkan.Low_Level.bits_stdint_uintn_h.uint64_t!Interfaces.C.unsigned_long!
s!Vulkan.Low_Level.bits_stdint_intn_h.int32_t!Interfaces.C.short!
s!Vulkan.Low_Level.bits_stdint_uintn_h.uint8_t!Interfaces.C.unsigned_char!
s!Vulkan.Low_Level.bits_stdint_intn_h.int64_t!Interfaces.C.long!
s!Vulkan.Low_Level.bits_stdint_uintn_h.uint16_t!Interfaces.C.unsigned_short!
s!Vulkan.Low_Level.stdint_h.uintptr_t!access Interfaces.C.unsigned!

s!with Vulkan.Low_Level.bits_stdint_intn_h;!!


s!--  unsupported macro: VK_REMAINING_MIP_LEVELS (~0U)!function VK_REMAINING_MIP_LEVELS return Interfaces.Unsigned_64 is (not 0);\
   function VK_REMAINING_MIP_LEVELS return Interfaces.Unsigned_32 is (not 0);\
   function VK_REMAINING_MIP_LEVELS return Interfaces.Unsigned_16 is (not 0);\
   function VK_REMAINING_MIP_LEVELS return Interfaces.Unsigned_8 is (not 0);!
s!--  unsupported macro: VK_REMAINING_ARRAY_LAYERS (~0U)!function VK_REMAINING_ARRAY_LAYERS return Interfaces.Unsigned_64 is (not 0);\
   function VK_REMAINING_ARRAY_LAYERS return Interfaces.Unsigned_32 is (not 0);\
   function VK_REMAINING_ARRAY_LAYERS return Interfaces.Unsigned_16 is (not 0);\
   function VK_REMAINING_ARRAY_LAYERS return Interfaces.Unsigned_8 is (not 0);!
s!--  unsupported macro: VK_WHOLE_SIZE (~0ULL)!function VK_WHOLE_SIZE return Interfaces.Unsigned_64 is (not 0);\
   function VK_WHOLE_SIZE return Interfaces.Unsigned_32 is (not 0);\
   function VK_WHOLE_SIZE return Interfaces.Unsigned_16 is (not 0);\
   function VK_WHOLE_SIZE return Interfaces.Unsigned_8 is (not 0);!
s!--  unsupported macro: VK_ATTACHMENT_UNUSED (~0U)!function VK_ATTACHMENT_UNUSED return Interfaces.Unsigned_64 is (not 0);\
   function VK_ATTACHMENT_UNUSED return Interfaces.Unsigned_32 is (not 0);\
   function VK_ATTACHMENT_UNUSED return Interfaces.Unsigned_16 is (not 0);\
   function VK_ATTACHMENT_UNUSED return Interfaces.Unsigned_8 is (not 0);!
s!--  unsupported macro: VK_QUEUE_FAMILY_IGNORED (~0U)!function VK_QUEUE_FAMILY_IGNORED return Interfaces.Unsigned_64 is (not 0);\
   function VK_QUEUE_FAMILY_IGNORED return Interfaces.Unsigned_32 is (not 0);\
   function VK_QUEUE_FAMILY_IGNORED return Interfaces.Unsigned_16 is (not 0);\
   function VK_QUEUE_FAMILY_IGNORED return Interfaces.Unsigned_8 is (not 0);!
s!--  unsupported macro: VK_SUBPASS_EXTERNAL (~0U)!function VK_SUBPASS_EXTERNAL return Interfaces.Unsigned_64 is (not 0);\
   function VK_SUBPASS_EXTERNAL return Interfaces.Unsigned_32 is (not 0);\
   function VK_SUBPASS_EXTERNAL return Interfaces.Unsigned_16 is (not 0);\
   function VK_SUBPASS_EXTERNAL return Interfaces.Unsigned_8 is (not 0);!

s!   type VkEnumerateInstanceLayerPropertiesChain;!!
s!   type VkEnumerateInstanceVersionChain;!!
s!   type VkEnumerateInstanceExtensionPropertiesChain;!!
