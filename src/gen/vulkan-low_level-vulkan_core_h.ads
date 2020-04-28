pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with System;
with Interfaces.C.Strings;



package Vulkan.Low_Level.vulkan_core_h is

   VULKAN_CORE_H_u : constant := 1;  --  vulkan_core.h:2

   VK_VERSION_1_0 : constant := 1;  --  vulkan_core.h:32
   --  arg-macro: function VK_MAKE_VERSION (major, minor, patch)
   --    return ((major) << 22) or ((minor) << 12) or (patch);
   --  unsupported macro: VK_API_VERSION_1_0 VK_MAKE_VERSION(1, 0, 0)
   --  arg-macro: function VK_VERSION_MAJOR (version)
   --    return (uint32_t)(version) >> 22;
   --  arg-macro: function VK_VERSION_MINOR (version)
   --    return ((uint32_t)(version) >> 12) and 16#3ff#;
   --  arg-macro: function VK_VERSION_PATCH (version)
   --    return (uint32_t)(version) and 16#fff#;

   VK_HEADER_VERSION : constant := 131;  --  vulkan_core.h:47

   VK_NULL_HANDLE : constant := 0;  --  vulkan_core.h:50
   --  unsupported macro: VK_DEFINE_HANDLE(object) typedef struct object ##_T* object;
   --  unsupported macro: VK_DEFINE_NON_DISPATCHABLE_HANDLE(object) typedef struct object ##_T *object;

   VK_LOD_CLAMP_NONE : constant := 1000.0;  --  vulkan_core.h:93
   function VK_REMAINING_MIP_LEVELS return Interfaces.Unsigned_64 is (not 0);
   function VK_REMAINING_MIP_LEVELS return Interfaces.Unsigned_32 is (not 0);
   function VK_REMAINING_MIP_LEVELS return Interfaces.Unsigned_16 is (not 0);
   function VK_REMAINING_MIP_LEVELS return Interfaces.Unsigned_8 is (not 0);
   function VK_REMAINING_ARRAY_LAYERS return Interfaces.Unsigned_64 is (not 0);
   function VK_REMAINING_ARRAY_LAYERS return Interfaces.Unsigned_32 is (not 0);
   function VK_REMAINING_ARRAY_LAYERS return Interfaces.Unsigned_16 is (not 0);
   function VK_REMAINING_ARRAY_LAYERS return Interfaces.Unsigned_8 is (not 0);
   function VK_WHOLE_SIZE return Interfaces.Unsigned_64 is (not 0);
   function VK_WHOLE_SIZE return Interfaces.Unsigned_32 is (not 0);
   function VK_WHOLE_SIZE return Interfaces.Unsigned_16 is (not 0);
   function VK_WHOLE_SIZE return Interfaces.Unsigned_8 is (not 0);
   function VK_ATTACHMENT_UNUSED return Interfaces.Unsigned_64 is (not 0);
   function VK_ATTACHMENT_UNUSED return Interfaces.Unsigned_32 is (not 0);
   function VK_ATTACHMENT_UNUSED return Interfaces.Unsigned_16 is (not 0);
   function VK_ATTACHMENT_UNUSED return Interfaces.Unsigned_8 is (not 0);

   VK_TRUE : constant := 1;  --  vulkan_core.h:98
   VK_FALSE : constant := 0;  --  vulkan_core.h:99
   function VK_QUEUE_FAMILY_IGNORED return Interfaces.Unsigned_64 is (not 0);
   function VK_QUEUE_FAMILY_IGNORED return Interfaces.Unsigned_32 is (not 0);
   function VK_QUEUE_FAMILY_IGNORED return Interfaces.Unsigned_16 is (not 0);
   function VK_QUEUE_FAMILY_IGNORED return Interfaces.Unsigned_8 is (not 0);
   function VK_SUBPASS_EXTERNAL return Interfaces.Unsigned_64 is (not 0);
   function VK_SUBPASS_EXTERNAL return Interfaces.Unsigned_32 is (not 0);
   function VK_SUBPASS_EXTERNAL return Interfaces.Unsigned_16 is (not 0);
   function VK_SUBPASS_EXTERNAL return Interfaces.Unsigned_8 is (not 0);

   VK_MAX_PHYSICAL_DEVICE_NAME_SIZE : constant := 256;  --  vulkan_core.h:102
   VK_UUID_SIZE : constant := 16;  --  vulkan_core.h:103
   VK_MAX_MEMORY_TYPES : constant := 32;  --  vulkan_core.h:104
   VK_MAX_MEMORY_HEAPS : constant := 16;  --  vulkan_core.h:105
   VK_MAX_EXTENSION_NAME_SIZE : constant := 256;  --  vulkan_core.h:106
   VK_MAX_DESCRIPTION_SIZE : constant := 256;  --  vulkan_core.h:107

   VK_VERSION_1_1 : constant := 1;  --  vulkan_core.h:4025
   --  unsupported macro: VK_API_VERSION_1_1 VK_MAKE_VERSION(1, 1, 0)

   VK_MAX_DEVICE_GROUP_SIZE : constant := 32;  --  vulkan_core.h:4031
   VK_LUID_SIZE : constant := 8;  --  vulkan_core.h:4032
   --  unsupported macro: VK_QUEUE_FAMILY_EXTERNAL (~0U-1)

   VK_VERSION_1_2 : constant := 1;  --  vulkan_core.h:4906
   --  unsupported macro: VK_API_VERSION_1_2 VK_MAKE_VERSION(1, 2, 0)

   VK_MAX_DRIVER_NAME_SIZE : constant := 256;  --  vulkan_core.h:4911
   VK_MAX_DRIVER_INFO_SIZE : constant := 256;  --  vulkan_core.h:4912

   VK_KHR_surface : constant := 1;  --  vulkan_core.h:5660

   VK_KHR_SURFACE_SPEC_VERSION : constant := 25;  --  vulkan_core.h:5662
   VK_KHR_SURFACE_EXTENSION_NAME : aliased constant String := "VK_KHR_surface" & ASCII.NUL;  --  vulkan_core.h:5663

   VK_KHR_swapchain : constant := 1;  --  vulkan_core.h:5780

   VK_KHR_SWAPCHAIN_SPEC_VERSION : constant := 70;  --  vulkan_core.h:5782
   VK_KHR_SWAPCHAIN_EXTENSION_NAME : aliased constant String := "VK_KHR_swapchain" & ASCII.NUL;  --  vulkan_core.h:5783

   VK_KHR_display : constant := 1;  --  vulkan_core.h:5939

   VK_KHR_DISPLAY_SPEC_VERSION : constant := 23;  --  vulkan_core.h:5942
   VK_KHR_DISPLAY_EXTENSION_NAME : aliased constant String := "VK_KHR_display" & ASCII.NUL;  --  vulkan_core.h:5943

   VK_KHR_display_swapchain : constant := 1;  --  vulkan_core.h:6064
   VK_KHR_DISPLAY_SWAPCHAIN_SPEC_VERSION : constant := 10;  --  vulkan_core.h:6065
   VK_KHR_DISPLAY_SWAPCHAIN_EXTENSION_NAME : aliased constant String := "VK_KHR_display_swapchain" & ASCII.NUL;  --  vulkan_core.h:6066

   VK_KHR_sampler_mirror_clamp_to_edge : constant := 1;  --  vulkan_core.h:6087
   VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_SPEC_VERSION : constant := 3;  --  vulkan_core.h:6088
   VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_EXTENSION_NAME : aliased constant String := "VK_KHR_sampler_mirror_clamp_to_edge" & ASCII.NUL;  --  vulkan_core.h:6089

   VK_KHR_multiview : constant := 1;  --  vulkan_core.h:6092
   VK_KHR_MULTIVIEW_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6093
   VK_KHR_MULTIVIEW_EXTENSION_NAME : aliased constant String := "VK_KHR_multiview" & ASCII.NUL;  --  vulkan_core.h:6094

   VK_KHR_get_physical_device_properties2 : constant := 1;  --  vulkan_core.h:6103
   VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_SPEC_VERSION : constant := 2;  --  vulkan_core.h:6104
   VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_EXTENSION_NAME : aliased constant String := "VK_KHR_get_physical_device_properties2" & ASCII.NUL;  --  vulkan_core.h:6105

   VK_KHR_device_group : constant := 1;  --  vulkan_core.h:6168
   VK_KHR_DEVICE_GROUP_SPEC_VERSION : constant := 4;  --  vulkan_core.h:6169
   VK_KHR_DEVICE_GROUP_EXTENSION_NAME : aliased constant String := "VK_KHR_device_group" & ASCII.NUL;  --  vulkan_core.h:6170

   VK_KHR_shader_draw_parameters : constant := 1;  --  vulkan_core.h:6220
   VK_KHR_SHADER_DRAW_PARAMETERS_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6221
   VK_KHR_SHADER_DRAW_PARAMETERS_EXTENSION_NAME : aliased constant String := "VK_KHR_shader_draw_parameters" & ASCII.NUL;  --  vulkan_core.h:6222

   VK_KHR_maintenance1 : constant := 1;  --  vulkan_core.h:6225
   VK_KHR_MAINTENANCE1_SPEC_VERSION : constant := 2;  --  vulkan_core.h:6226
   VK_KHR_MAINTENANCE1_EXTENSION_NAME : aliased constant String := "VK_KHR_maintenance1" & ASCII.NUL;  --  vulkan_core.h:6227

   VK_KHR_device_group_creation : constant := 1;  --  vulkan_core.h:6240
   VK_KHR_DEVICE_GROUP_CREATION_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6241
   VK_KHR_DEVICE_GROUP_CREATION_EXTENSION_NAME : aliased constant String := "VK_KHR_device_group_creation" & ASCII.NUL;  --  vulkan_core.h:6242
   --  unsupported macro: VK_MAX_DEVICE_GROUP_SIZE_KHR VK_MAX_DEVICE_GROUP_SIZE

   VK_KHR_external_memory_capabilities : constant := 1;  --  vulkan_core.h:6258
   VK_KHR_EXTERNAL_MEMORY_CAPABILITIES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6259
   VK_KHR_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME : aliased constant String := "VK_KHR_external_memory_capabilities" & ASCII.NUL;  --  vulkan_core.h:6260
   --  unsupported macro: VK_LUID_SIZE_KHR VK_LUID_SIZE

   VK_KHR_external_memory : constant := 1;  --  vulkan_core.h:6292
   VK_KHR_EXTERNAL_MEMORY_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6293
   VK_KHR_EXTERNAL_MEMORY_EXTENSION_NAME : aliased constant String := "VK_KHR_external_memory" & ASCII.NUL;  --  vulkan_core.h:6294
   --  unsupported macro: VK_QUEUE_FAMILY_EXTERNAL_KHR VK_QUEUE_FAMILY_EXTERNAL

   VK_KHR_external_memory_fd : constant := 1;  --  vulkan_core.h:6304
   VK_KHR_EXTERNAL_MEMORY_FD_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6305
   VK_KHR_EXTERNAL_MEMORY_FD_EXTENSION_NAME : aliased constant String := "VK_KHR_external_memory_fd" & ASCII.NUL;  --  vulkan_core.h:6306

   VK_KHR_external_semaphore_capabilities : constant := 1;  --  vulkan_core.h:6344
   VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6345
   VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME : aliased constant String := "VK_KHR_external_semaphore_capabilities" & ASCII.NUL;  --  vulkan_core.h:6346

   VK_KHR_external_semaphore : constant := 1;  --  vulkan_core.h:6369
   VK_KHR_EXTERNAL_SEMAPHORE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6370
   VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME : aliased constant String := "VK_KHR_external_semaphore" & ASCII.NUL;  --  vulkan_core.h:6371

   VK_KHR_external_semaphore_fd : constant := 1;  --  vulkan_core.h:6380
   VK_KHR_EXTERNAL_SEMAPHORE_FD_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6381
   VK_KHR_EXTERNAL_SEMAPHORE_FD_EXTENSION_NAME : aliased constant String := "VK_KHR_external_semaphore_fd" & ASCII.NUL;  --  vulkan_core.h:6382

   VK_KHR_push_descriptor : constant := 1;  --  vulkan_core.h:6414
   VK_KHR_PUSH_DESCRIPTOR_SPEC_VERSION : constant := 2;  --  vulkan_core.h:6415
   VK_KHR_PUSH_DESCRIPTOR_EXTENSION_NAME : aliased constant String := "VK_KHR_push_descriptor" & ASCII.NUL;  --  vulkan_core.h:6416

   VK_KHR_shader_float16_int8 : constant := 1;  --  vulkan_core.h:6444
   VK_KHR_SHADER_FLOAT16_INT8_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6445
   VK_KHR_SHADER_FLOAT16_INT8_EXTENSION_NAME : aliased constant String := "VK_KHR_shader_float16_int8" & ASCII.NUL;  --  vulkan_core.h:6446

   VK_KHR_16bit_storage : constant := 1;  --  vulkan_core.h:6453
   VK_KHR_16BIT_STORAGE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6454
   VK_KHR_16BIT_STORAGE_EXTENSION_NAME : aliased constant String := "VK_KHR_16bit_storage" & ASCII.NUL;  --  vulkan_core.h:6455

   VK_KHR_incremental_present : constant := 1;  --  vulkan_core.h:6460
   VK_KHR_INCREMENTAL_PRESENT_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6461
   VK_KHR_INCREMENTAL_PRESENT_EXTENSION_NAME : aliased constant String := "VK_KHR_incremental_present" & ASCII.NUL;  --  vulkan_core.h:6462

   VK_KHR_descriptor_update_template : constant := 1;  --  vulkan_core.h:6483

   VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6486
   VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_EXTENSION_NAME : aliased constant String := "VK_KHR_descriptor_update_template" & ASCII.NUL;  --  vulkan_core.h:6487

   VK_KHR_imageless_framebuffer : constant := 1;  --  vulkan_core.h:6520
   VK_KHR_IMAGELESS_FRAMEBUFFER_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6521
   VK_KHR_IMAGELESS_FRAMEBUFFER_EXTENSION_NAME : aliased constant String := "VK_KHR_imageless_framebuffer" & ASCII.NUL;  --  vulkan_core.h:6522

   VK_KHR_create_renderpass2 : constant := 1;  --  vulkan_core.h:6533
   VK_KHR_CREATE_RENDERPASS_2_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6534
   VK_KHR_CREATE_RENDERPASS_2_EXTENSION_NAME : aliased constant String := "VK_KHR_create_renderpass2" & ASCII.NUL;  --  vulkan_core.h:6535

   VK_KHR_shared_presentable_image : constant := 1;  --  vulkan_core.h:6578
   VK_KHR_SHARED_PRESENTABLE_IMAGE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6579
   VK_KHR_SHARED_PRESENTABLE_IMAGE_EXTENSION_NAME : aliased constant String := "VK_KHR_shared_presentable_image" & ASCII.NUL;  --  vulkan_core.h:6580

   VK_KHR_external_fence_capabilities : constant := 1;  --  vulkan_core.h:6596
   VK_KHR_EXTERNAL_FENCE_CAPABILITIES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6597
   VK_KHR_EXTERNAL_FENCE_CAPABILITIES_EXTENSION_NAME : aliased constant String := "VK_KHR_external_fence_capabilities" & ASCII.NUL;  --  vulkan_core.h:6598

   VK_KHR_external_fence : constant := 1;  --  vulkan_core.h:6621
   VK_KHR_EXTERNAL_FENCE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6622
   VK_KHR_EXTERNAL_FENCE_EXTENSION_NAME : aliased constant String := "VK_KHR_external_fence" & ASCII.NUL;  --  vulkan_core.h:6623

   VK_KHR_external_fence_fd : constant := 1;  --  vulkan_core.h:6632
   VK_KHR_EXTERNAL_FENCE_FD_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6633
   VK_KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME : aliased constant String := "VK_KHR_external_fence_fd" & ASCII.NUL;  --  vulkan_core.h:6634

   VK_KHR_performance_query : constant := 1;  --  vulkan_core.h:6666
   VK_KHR_PERFORMANCE_QUERY_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6667
   VK_KHR_PERFORMANCE_QUERY_EXTENSION_NAME : aliased constant String := "VK_KHR_performance_query" & ASCII.NUL;  --  vulkan_core.h:6668

   VK_KHR_maintenance2 : constant := 1;  --  vulkan_core.h:6813
   VK_KHR_MAINTENANCE2_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6814
   VK_KHR_MAINTENANCE2_EXTENSION_NAME : aliased constant String := "VK_KHR_maintenance2" & ASCII.NUL;  --  vulkan_core.h:6815

   VK_KHR_get_surface_capabilities2 : constant := 1;  --  vulkan_core.h:6832
   VK_KHR_GET_SURFACE_CAPABILITIES_2_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6833
   VK_KHR_GET_SURFACE_CAPABILITIES_2_EXTENSION_NAME : aliased constant String := "VK_KHR_get_surface_capabilities2" & ASCII.NUL;  --  vulkan_core.h:6834

   VK_KHR_variable_pointers : constant := 1;  --  vulkan_core.h:6870
   VK_KHR_VARIABLE_POINTERS_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6871
   VK_KHR_VARIABLE_POINTERS_EXTENSION_NAME : aliased constant String := "VK_KHR_variable_pointers" & ASCII.NUL;  --  vulkan_core.h:6872

   VK_KHR_get_display_properties2 : constant := 1;  --  vulkan_core.h:6879
   VK_KHR_GET_DISPLAY_PROPERTIES_2_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6880
   VK_KHR_GET_DISPLAY_PROPERTIES_2_EXTENSION_NAME : aliased constant String := "VK_KHR_get_display_properties2" & ASCII.NUL;  --  vulkan_core.h:6881

   VK_KHR_dedicated_allocation : constant := 1;  --  vulkan_core.h:6942
   VK_KHR_DEDICATED_ALLOCATION_SPEC_VERSION : constant := 3;  --  vulkan_core.h:6943
   VK_KHR_DEDICATED_ALLOCATION_EXTENSION_NAME : aliased constant String := "VK_KHR_dedicated_allocation" & ASCII.NUL;  --  vulkan_core.h:6944

   VK_KHR_storage_buffer_storage_class : constant := 1;  --  vulkan_core.h:6951
   VK_KHR_STORAGE_BUFFER_STORAGE_CLASS_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6952
   VK_KHR_STORAGE_BUFFER_STORAGE_CLASS_EXTENSION_NAME : aliased constant String := "VK_KHR_storage_buffer_storage_class" & ASCII.NUL;  --  vulkan_core.h:6953

   VK_KHR_relaxed_block_layout : constant := 1;  --  vulkan_core.h:6956
   VK_KHR_RELAXED_BLOCK_LAYOUT_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6957
   VK_KHR_RELAXED_BLOCK_LAYOUT_EXTENSION_NAME : aliased constant String := "VK_KHR_relaxed_block_layout" & ASCII.NUL;  --  vulkan_core.h:6958

   VK_KHR_get_memory_requirements2 : constant := 1;  --  vulkan_core.h:6961
   VK_KHR_GET_MEMORY_REQUIREMENTS_2_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6962
   VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME : aliased constant String := "VK_KHR_get_memory_requirements2" & ASCII.NUL;  --  vulkan_core.h:6963

   VK_KHR_image_format_list : constant := 1;  --  vulkan_core.h:6995
   VK_KHR_IMAGE_FORMAT_LIST_SPEC_VERSION : constant := 1;  --  vulkan_core.h:6996
   VK_KHR_IMAGE_FORMAT_LIST_EXTENSION_NAME : aliased constant String := "VK_KHR_image_format_list" & ASCII.NUL;  --  vulkan_core.h:6997

   VK_KHR_sampler_ycbcr_conversion : constant := 1;  --  vulkan_core.h:7002

   VK_KHR_SAMPLER_YCBCR_CONVERSION_SPEC_VERSION : constant := 14;  --  vulkan_core.h:7005
   VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME : aliased constant String := "VK_KHR_sampler_ycbcr_conversion" & ASCII.NUL;  --  vulkan_core.h:7006

   VK_KHR_bind_memory2 : constant := 1;  --  vulkan_core.h:7042
   VK_KHR_BIND_MEMORY_2_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7043
   VK_KHR_BIND_MEMORY_2_EXTENSION_NAME : aliased constant String := "VK_KHR_bind_memory2" & ASCII.NUL;  --  vulkan_core.h:7044

   VK_KHR_maintenance3 : constant := 1;  --  vulkan_core.h:7065
   VK_KHR_MAINTENANCE3_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7066
   VK_KHR_MAINTENANCE3_EXTENSION_NAME : aliased constant String := "VK_KHR_maintenance3" & ASCII.NUL;  --  vulkan_core.h:7067

   VK_KHR_draw_indirect_count : constant := 1;  --  vulkan_core.h:7082
   VK_KHR_DRAW_INDIRECT_COUNT_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7083
   VK_KHR_DRAW_INDIRECT_COUNT_EXTENSION_NAME : aliased constant String := "VK_KHR_draw_indirect_count" & ASCII.NUL;  --  vulkan_core.h:7084

   VK_KHR_shader_subgroup_extended_types : constant := 1;  --  vulkan_core.h:7109
   VK_KHR_SHADER_SUBGROUP_EXTENDED_TYPES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7110
   VK_KHR_SHADER_SUBGROUP_EXTENDED_TYPES_EXTENSION_NAME : aliased constant String := "VK_KHR_shader_subgroup_extended_types" & ASCII.NUL;  --  vulkan_core.h:7111

   VK_KHR_8bit_storage : constant := 1;  --  vulkan_core.h:7116
   VK_KHR_8BIT_STORAGE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7117
   VK_KHR_8BIT_STORAGE_EXTENSION_NAME : aliased constant String := "VK_KHR_8bit_storage" & ASCII.NUL;  --  vulkan_core.h:7118

   VK_KHR_shader_atomic_int64 : constant := 1;  --  vulkan_core.h:7123
   VK_KHR_SHADER_ATOMIC_INT64_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7124
   VK_KHR_SHADER_ATOMIC_INT64_EXTENSION_NAME : aliased constant String := "VK_KHR_shader_atomic_int64" & ASCII.NUL;  --  vulkan_core.h:7125

   VK_KHR_shader_clock : constant := 1;  --  vulkan_core.h:7130
   VK_KHR_SHADER_CLOCK_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7131
   VK_KHR_SHADER_CLOCK_EXTENSION_NAME : aliased constant String := "VK_KHR_shader_clock" & ASCII.NUL;  --  vulkan_core.h:7132

   VK_KHR_driver_properties : constant := 1;  --  vulkan_core.h:7142
   VK_KHR_DRIVER_PROPERTIES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7143
   VK_KHR_DRIVER_PROPERTIES_EXTENSION_NAME : aliased constant String := "VK_KHR_driver_properties" & ASCII.NUL;  --  vulkan_core.h:7144
   --  unsupported macro: VK_MAX_DRIVER_NAME_SIZE_KHR VK_MAX_DRIVER_NAME_SIZE
   --  unsupported macro: VK_MAX_DRIVER_INFO_SIZE_KHR VK_MAX_DRIVER_INFO_SIZE

   VK_KHR_shader_float_controls : constant := 1;  --  vulkan_core.h:7155
   VK_KHR_SHADER_FLOAT_CONTROLS_SPEC_VERSION : constant := 4;  --  vulkan_core.h:7156
   VK_KHR_SHADER_FLOAT_CONTROLS_EXTENSION_NAME : aliased constant String := "VK_KHR_shader_float_controls" & ASCII.NUL;  --  vulkan_core.h:7157

   VK_KHR_depth_stencil_resolve : constant := 1;  --  vulkan_core.h:7164
   VK_KHR_DEPTH_STENCIL_RESOLVE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7165
   VK_KHR_DEPTH_STENCIL_RESOLVE_EXTENSION_NAME : aliased constant String := "VK_KHR_depth_stencil_resolve" & ASCII.NUL;  --  vulkan_core.h:7166

   VK_KHR_swapchain_mutable_format : constant := 1;  --  vulkan_core.h:7177
   VK_KHR_SWAPCHAIN_MUTABLE_FORMAT_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7178
   VK_KHR_SWAPCHAIN_MUTABLE_FORMAT_EXTENSION_NAME : aliased constant String := "VK_KHR_swapchain_mutable_format" & ASCII.NUL;  --  vulkan_core.h:7179

   VK_KHR_timeline_semaphore : constant := 1;  --  vulkan_core.h:7182
   VK_KHR_TIMELINE_SEMAPHORE_SPEC_VERSION : constant := 2;  --  vulkan_core.h:7183
   VK_KHR_TIMELINE_SEMAPHORE_EXTENSION_NAME : aliased constant String := "VK_KHR_timeline_semaphore" & ASCII.NUL;  --  vulkan_core.h:7184

   VK_KHR_vulkan_memory_model : constant := 1;  --  vulkan_core.h:7224
   VK_KHR_VULKAN_MEMORY_MODEL_SPEC_VERSION : constant := 3;  --  vulkan_core.h:7225
   VK_KHR_VULKAN_MEMORY_MODEL_EXTENSION_NAME : aliased constant String := "VK_KHR_vulkan_memory_model" & ASCII.NUL;  --  vulkan_core.h:7226

   VK_KHR_spirv_1_4 : constant := 1;  --  vulkan_core.h:7231
   VK_KHR_SPIRV_1_4_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7232
   VK_KHR_SPIRV_1_4_EXTENSION_NAME : aliased constant String := "VK_KHR_spirv_1_4" & ASCII.NUL;  --  vulkan_core.h:7233

   VK_KHR_surface_protected_capabilities : constant := 1;  --  vulkan_core.h:7236
   VK_KHR_SURFACE_PROTECTED_CAPABILITIES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7237
   VK_KHR_SURFACE_PROTECTED_CAPABILITIES_EXTENSION_NAME : aliased constant String := "VK_KHR_surface_protected_capabilities" & ASCII.NUL;  --  vulkan_core.h:7238

   VK_KHR_separate_depth_stencil_layouts : constant := 1;  --  vulkan_core.h:7247
   VK_KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7248
   VK_KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_EXTENSION_NAME : aliased constant String := "VK_KHR_separate_depth_stencil_layouts" & ASCII.NUL;  --  vulkan_core.h:7249

   VK_KHR_uniform_buffer_standard_layout : constant := 1;  --  vulkan_core.h:7258
   VK_KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7259
   VK_KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_EXTENSION_NAME : aliased constant String := "VK_KHR_uniform_buffer_standard_layout" & ASCII.NUL;  --  vulkan_core.h:7260

   VK_KHR_buffer_device_address : constant := 1;  --  vulkan_core.h:7265
   VK_KHR_BUFFER_DEVICE_ADDRESS_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7266
   VK_KHR_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME : aliased constant String := "VK_KHR_buffer_device_address" & ASCII.NUL;  --  vulkan_core.h:7267

   VK_KHR_pipeline_executable_properties : constant := 1;  --  vulkan_core.h:7297
   VK_KHR_PIPELINE_EXECUTABLE_PROPERTIES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7298
   VK_KHR_PIPELINE_EXECUTABLE_PROPERTIES_EXTENSION_NAME : aliased constant String := "VK_KHR_pipeline_executable_properties" & ASCII.NUL;  --  vulkan_core.h:7299

   VK_EXT_debug_report : constant := 1;  --  vulkan_core.h:7390

   VK_EXT_DEBUG_REPORT_SPEC_VERSION : constant := 9;  --  vulkan_core.h:7392
   VK_EXT_DEBUG_REPORT_EXTENSION_NAME : aliased constant String := "VK_EXT_debug_report" & ASCII.NUL;  --  vulkan_core.h:7393

   VK_NV_glsl_shader : constant := 1;  --  vulkan_core.h:7498
   VK_NV_GLSL_SHADER_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7499
   VK_NV_GLSL_SHADER_EXTENSION_NAME : aliased constant String := "VK_NV_glsl_shader" & ASCII.NUL;  --  vulkan_core.h:7500

   VK_EXT_depth_range_unrestricted : constant := 1;  --  vulkan_core.h:7503
   VK_EXT_DEPTH_RANGE_UNRESTRICTED_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7504
   VK_EXT_DEPTH_RANGE_UNRESTRICTED_EXTENSION_NAME : aliased constant String := "VK_EXT_depth_range_unrestricted" & ASCII.NUL;  --  vulkan_core.h:7505

   VK_IMG_filter_cubic : constant := 1;  --  vulkan_core.h:7508
   VK_IMG_FILTER_CUBIC_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7509
   VK_IMG_FILTER_CUBIC_EXTENSION_NAME : aliased constant String := "VK_IMG_filter_cubic" & ASCII.NUL;  --  vulkan_core.h:7510

   VK_AMD_rasterization_order : constant := 1;  --  vulkan_core.h:7513
   VK_AMD_RASTERIZATION_ORDER_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7514
   VK_AMD_RASTERIZATION_ORDER_EXTENSION_NAME : aliased constant String := "VK_AMD_rasterization_order" & ASCII.NUL;  --  vulkan_core.h:7515

   VK_AMD_shader_trinary_minmax : constant := 1;  --  vulkan_core.h:7533
   VK_AMD_SHADER_TRINARY_MINMAX_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7534
   VK_AMD_SHADER_TRINARY_MINMAX_EXTENSION_NAME : aliased constant String := "VK_AMD_shader_trinary_minmax" & ASCII.NUL;  --  vulkan_core.h:7535

   VK_AMD_shader_explicit_vertex_parameter : constant := 1;  --  vulkan_core.h:7538
   VK_AMD_SHADER_EXPLICIT_VERTEX_PARAMETER_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7539
   VK_AMD_SHADER_EXPLICIT_VERTEX_PARAMETER_EXTENSION_NAME : aliased constant String := "VK_AMD_shader_explicit_vertex_parameter" & ASCII.NUL;  --  vulkan_core.h:7540

   VK_EXT_debug_marker : constant := 1;  --  vulkan_core.h:7543
   VK_EXT_DEBUG_MARKER_SPEC_VERSION : constant := 4;  --  vulkan_core.h:7544
   VK_EXT_DEBUG_MARKER_EXTENSION_NAME : aliased constant String := "VK_EXT_debug_marker" & ASCII.NUL;  --  vulkan_core.h:7545

   VK_AMD_gcn_shader : constant := 1;  --  vulkan_core.h:7599
   VK_AMD_GCN_SHADER_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7600
   VK_AMD_GCN_SHADER_EXTENSION_NAME : aliased constant String := "VK_AMD_gcn_shader" & ASCII.NUL;  --  vulkan_core.h:7601

   VK_NV_dedicated_allocation : constant := 1;  --  vulkan_core.h:7604
   VK_NV_DEDICATED_ALLOCATION_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7605
   VK_NV_DEDICATED_ALLOCATION_EXTENSION_NAME : aliased constant String := "VK_NV_dedicated_allocation" & ASCII.NUL;  --  vulkan_core.h:7606

   VK_EXT_transform_feedback : constant := 1;  --  vulkan_core.h:7628
   VK_EXT_TRANSFORM_FEEDBACK_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7629
   VK_EXT_TRANSFORM_FEEDBACK_EXTENSION_NAME : aliased constant String := "VK_EXT_transform_feedback" & ASCII.NUL;  --  vulkan_core.h:7630

   VK_NVX_image_view_handle : constant := 1;  --  vulkan_core.h:7715
   VK_NVX_IMAGE_VIEW_HANDLE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7716
   VK_NVX_IMAGE_VIEW_HANDLE_EXTENSION_NAME : aliased constant String := "VK_NVX_image_view_handle" & ASCII.NUL;  --  vulkan_core.h:7717

   VK_AMD_draw_indirect_count : constant := 1;  --  vulkan_core.h:7735
   VK_AMD_DRAW_INDIRECT_COUNT_SPEC_VERSION : constant := 2;  --  vulkan_core.h:7736
   VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME : aliased constant String := "VK_AMD_draw_indirect_count" & ASCII.NUL;  --  vulkan_core.h:7737

   VK_AMD_negative_viewport_height : constant := 1;  --  vulkan_core.h:7762
   VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7763
   VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_EXTENSION_NAME : aliased constant String := "VK_AMD_negative_viewport_height" & ASCII.NUL;  --  vulkan_core.h:7764

   VK_AMD_gpu_shader_half_float : constant := 1;  --  vulkan_core.h:7767
   VK_AMD_GPU_SHADER_HALF_FLOAT_SPEC_VERSION : constant := 2;  --  vulkan_core.h:7768
   VK_AMD_GPU_SHADER_HALF_FLOAT_EXTENSION_NAME : aliased constant String := "VK_AMD_gpu_shader_half_float" & ASCII.NUL;  --  vulkan_core.h:7769

   VK_AMD_shader_ballot : constant := 1;  --  vulkan_core.h:7772
   VK_AMD_SHADER_BALLOT_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7773
   VK_AMD_SHADER_BALLOT_EXTENSION_NAME : aliased constant String := "VK_AMD_shader_ballot" & ASCII.NUL;  --  vulkan_core.h:7774

   VK_AMD_texture_gather_bias_lod : constant := 1;  --  vulkan_core.h:7777
   VK_AMD_TEXTURE_GATHER_BIAS_LOD_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7778
   VK_AMD_TEXTURE_GATHER_BIAS_LOD_EXTENSION_NAME : aliased constant String := "VK_AMD_texture_gather_bias_lod" & ASCII.NUL;  --  vulkan_core.h:7779

   VK_AMD_shader_info : constant := 1;  --  vulkan_core.h:7788
   VK_AMD_SHADER_INFO_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7789
   VK_AMD_SHADER_INFO_EXTENSION_NAME : aliased constant String := "VK_AMD_shader_info" & ASCII.NUL;  --  vulkan_core.h:7790

   VK_AMD_shader_image_load_store_lod : constant := 1;  --  vulkan_core.h:7832
   VK_AMD_SHADER_IMAGE_LOAD_STORE_LOD_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7833
   VK_AMD_SHADER_IMAGE_LOAD_STORE_LOD_EXTENSION_NAME : aliased constant String := "VK_AMD_shader_image_load_store_lod" & ASCII.NUL;  --  vulkan_core.h:7834

   VK_NV_corner_sampled_image : constant := 1;  --  vulkan_core.h:7837
   VK_NV_CORNER_SAMPLED_IMAGE_SPEC_VERSION : constant := 2;  --  vulkan_core.h:7838
   VK_NV_CORNER_SAMPLED_IMAGE_EXTENSION_NAME : aliased constant String := "VK_NV_corner_sampled_image" & ASCII.NUL;  --  vulkan_core.h:7839

   VK_IMG_format_pvrtc : constant := 1;  --  vulkan_core.h:7848
   VK_IMG_FORMAT_PVRTC_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7849
   VK_IMG_FORMAT_PVRTC_EXTENSION_NAME : aliased constant String := "VK_IMG_format_pvrtc" & ASCII.NUL;  --  vulkan_core.h:7850

   VK_NV_external_memory_capabilities : constant := 1;  --  vulkan_core.h:7853
   VK_NV_EXTERNAL_MEMORY_CAPABILITIES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7854
   VK_NV_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME : aliased constant String := "VK_NV_external_memory_capabilities" & ASCII.NUL;  --  vulkan_core.h:7855

   VK_NV_external_memory : constant := 1;  --  vulkan_core.h:7895
   VK_NV_EXTERNAL_MEMORY_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7896
   VK_NV_EXTERNAL_MEMORY_EXTENSION_NAME : aliased constant String := "VK_NV_external_memory" & ASCII.NUL;  --  vulkan_core.h:7897

   VK_EXT_validation_flags : constant := 1;  --  vulkan_core.h:7912
   VK_EXT_VALIDATION_FLAGS_SPEC_VERSION : constant := 2;  --  vulkan_core.h:7913
   VK_EXT_VALIDATION_FLAGS_EXTENSION_NAME : aliased constant String := "VK_EXT_validation_flags" & ASCII.NUL;  --  vulkan_core.h:7914

   VK_EXT_shader_subgroup_ballot : constant := 1;  --  vulkan_core.h:7933
   VK_EXT_SHADER_SUBGROUP_BALLOT_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7934
   VK_EXT_SHADER_SUBGROUP_BALLOT_EXTENSION_NAME : aliased constant String := "VK_EXT_shader_subgroup_ballot" & ASCII.NUL;  --  vulkan_core.h:7935

   VK_EXT_shader_subgroup_vote : constant := 1;  --  vulkan_core.h:7938
   VK_EXT_SHADER_SUBGROUP_VOTE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7939
   VK_EXT_SHADER_SUBGROUP_VOTE_EXTENSION_NAME : aliased constant String := "VK_EXT_shader_subgroup_vote" & ASCII.NUL;  --  vulkan_core.h:7940

   VK_EXT_texture_compression_astc_hdr : constant := 1;  --  vulkan_core.h:7943
   VK_EXT_TEXTURE_COMPRESSION_ASTC_HDR_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7944
   VK_EXT_TEXTURE_COMPRESSION_ASTC_HDR_EXTENSION_NAME : aliased constant String := "VK_EXT_texture_compression_astc_hdr" & ASCII.NUL;  --  vulkan_core.h:7945

   VK_EXT_astc_decode_mode : constant := 1;  --  vulkan_core.h:7954
   VK_EXT_ASTC_DECODE_MODE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:7955
   VK_EXT_ASTC_DECODE_MODE_EXTENSION_NAME : aliased constant String := "VK_EXT_astc_decode_mode" & ASCII.NUL;  --  vulkan_core.h:7956

   VK_EXT_conditional_rendering : constant := 1;  --  vulkan_core.h:7971
   VK_EXT_CONDITIONAL_RENDERING_SPEC_VERSION : constant := 2;  --  vulkan_core.h:7972
   VK_EXT_CONDITIONAL_RENDERING_EXTENSION_NAME : aliased constant String := "VK_EXT_conditional_rendering" & ASCII.NUL;  --  vulkan_core.h:7973

   VK_NVX_device_generated_commands : constant := 1;  --  vulkan_core.h:8014

   VK_NVX_DEVICE_GENERATED_COMMANDS_SPEC_VERSION : constant := 3;  --  vulkan_core.h:8017
   VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME : aliased constant String := "VK_NVX_device_generated_commands" & ASCII.NUL;  --  vulkan_core.h:8018

   VK_NV_clip_space_w_scaling : constant := 1;  --  vulkan_core.h:8237
   VK_NV_CLIP_SPACE_W_SCALING_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8238
   VK_NV_CLIP_SPACE_W_SCALING_EXTENSION_NAME : aliased constant String := "VK_NV_clip_space_w_scaling" & ASCII.NUL;  --  vulkan_core.h:8239

   VK_EXT_direct_mode_display : constant := 1;  --  vulkan_core.h:8264
   VK_EXT_DIRECT_MODE_DISPLAY_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8265
   VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME : aliased constant String := "VK_EXT_direct_mode_display" & ASCII.NUL;  --  vulkan_core.h:8266

   VK_EXT_display_surface_counter : constant := 1;  --  vulkan_core.h:8276
   VK_EXT_DISPLAY_SURFACE_COUNTER_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8277
   VK_EXT_DISPLAY_SURFACE_COUNTER_EXTENSION_NAME : aliased constant String := "VK_EXT_display_surface_counter" & ASCII.NUL;  --  vulkan_core.h:8278

   VK_EXT_display_control : constant := 1;  --  vulkan_core.h:8311
   VK_EXT_DISPLAY_CONTROL_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8312
   VK_EXT_DISPLAY_CONTROL_EXTENSION_NAME : aliased constant String := "VK_EXT_display_control" & ASCII.NUL;  --  vulkan_core.h:8313

   VK_GOOGLE_display_timing : constant := 1;  --  vulkan_core.h:8396
   VK_GOOGLE_DISPLAY_TIMING_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8397
   VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME : aliased constant String := "VK_GOOGLE_display_timing" & ASCII.NUL;  --  vulkan_core.h:8398

   VK_NV_sample_mask_override_coverage : constant := 1;  --  vulkan_core.h:8440
   VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8441
   VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_EXTENSION_NAME : aliased constant String := "VK_NV_sample_mask_override_coverage" & ASCII.NUL;  --  vulkan_core.h:8442

   VK_NV_geometry_shader_passthrough : constant := 1;  --  vulkan_core.h:8445
   VK_NV_GEOMETRY_SHADER_PASSTHROUGH_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8446
   VK_NV_GEOMETRY_SHADER_PASSTHROUGH_EXTENSION_NAME : aliased constant String := "VK_NV_geometry_shader_passthrough" & ASCII.NUL;  --  vulkan_core.h:8447

   VK_NV_viewport_array2 : constant := 1;  --  vulkan_core.h:8450
   VK_NV_VIEWPORT_ARRAY2_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8451
   VK_NV_VIEWPORT_ARRAY2_EXTENSION_NAME : aliased constant String := "VK_NV_viewport_array2" & ASCII.NUL;  --  vulkan_core.h:8452

   VK_NVX_multiview_per_view_attributes : constant := 1;  --  vulkan_core.h:8455
   VK_NVX_MULTIVIEW_PER_VIEW_ATTRIBUTES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8456
   VK_NVX_MULTIVIEW_PER_VIEW_ATTRIBUTES_EXTENSION_NAME : aliased constant String := "VK_NVX_multiview_per_view_attributes" & ASCII.NUL;  --  vulkan_core.h:8457

   VK_NV_viewport_swizzle : constant := 1;  --  vulkan_core.h:8466
   VK_NV_VIEWPORT_SWIZZLE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8467
   VK_NV_VIEWPORT_SWIZZLE_EXTENSION_NAME : aliased constant String := "VK_NV_viewport_swizzle" & ASCII.NUL;  --  vulkan_core.h:8468

   VK_EXT_discard_rectangles : constant := 1;  --  vulkan_core.h:8502
   VK_EXT_DISCARD_RECTANGLES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8503
   VK_EXT_DISCARD_RECTANGLES_EXTENSION_NAME : aliased constant String := "VK_EXT_discard_rectangles" & ASCII.NUL;  --  vulkan_core.h:8504

   VK_EXT_conservative_rasterization : constant := 1;  --  vulkan_core.h:8541
   VK_EXT_CONSERVATIVE_RASTERIZATION_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8542
   VK_EXT_CONSERVATIVE_RASTERIZATION_EXTENSION_NAME : aliased constant String := "VK_EXT_conservative_rasterization" & ASCII.NUL;  --  vulkan_core.h:8543

   VK_EXT_depth_clip_enable : constant := 1;  --  vulkan_core.h:8579
   VK_EXT_DEPTH_CLIP_ENABLE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8580
   VK_EXT_DEPTH_CLIP_ENABLE_EXTENSION_NAME : aliased constant String := "VK_EXT_depth_clip_enable" & ASCII.NUL;  --  vulkan_core.h:8581

   VK_EXT_swapchain_colorspace : constant := 1;  --  vulkan_core.h:8598
   VK_EXT_SWAPCHAIN_COLOR_SPACE_SPEC_VERSION : constant := 4;  --  vulkan_core.h:8599
   VK_EXT_SWAPCHAIN_COLOR_SPACE_EXTENSION_NAME : aliased constant String := "VK_EXT_swapchain_colorspace" & ASCII.NUL;  --  vulkan_core.h:8600

   VK_EXT_hdr_metadata : constant := 1;  --  vulkan_core.h:8603
   VK_EXT_HDR_METADATA_SPEC_VERSION : constant := 2;  --  vulkan_core.h:8604
   VK_EXT_HDR_METADATA_EXTENSION_NAME : aliased constant String := "VK_EXT_hdr_metadata" & ASCII.NUL;  --  vulkan_core.h:8605

   VK_EXT_external_memory_dma_buf : constant := 1;  --  vulkan_core.h:8635
   VK_EXT_EXTERNAL_MEMORY_DMA_BUF_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8636
   VK_EXT_EXTERNAL_MEMORY_DMA_BUF_EXTENSION_NAME : aliased constant String := "VK_EXT_external_memory_dma_buf" & ASCII.NUL;  --  vulkan_core.h:8637

   VK_EXT_queue_family_foreign : constant := 1;  --  vulkan_core.h:8640
   VK_EXT_QUEUE_FAMILY_FOREIGN_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8641
   VK_EXT_QUEUE_FAMILY_FOREIGN_EXTENSION_NAME : aliased constant String := "VK_EXT_queue_family_foreign" & ASCII.NUL;  --  vulkan_core.h:8642
   --  unsupported macro: VK_QUEUE_FAMILY_FOREIGN_EXT (~0U-2)

   VK_EXT_debug_utils : constant := 1;  --  vulkan_core.h:8646

   VK_EXT_DEBUG_UTILS_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8648
   VK_EXT_DEBUG_UTILS_EXTENSION_NAME : aliased constant String := "VK_EXT_debug_utils" & ASCII.NUL;  --  vulkan_core.h:8649

   VK_EXT_sampler_filter_minmax : constant := 1;  --  vulkan_core.h:8787
   VK_EXT_SAMPLER_FILTER_MINMAX_SPEC_VERSION : constant := 2;  --  vulkan_core.h:8788
   VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME : aliased constant String := "VK_EXT_sampler_filter_minmax" & ASCII.NUL;  --  vulkan_core.h:8789

   VK_AMD_gpu_shader_int16 : constant := 1;  --  vulkan_core.h:8798
   VK_AMD_GPU_SHADER_INT16_SPEC_VERSION : constant := 2;  --  vulkan_core.h:8799
   VK_AMD_GPU_SHADER_INT16_EXTENSION_NAME : aliased constant String := "VK_AMD_gpu_shader_int16" & ASCII.NUL;  --  vulkan_core.h:8800

   VK_AMD_mixed_attachment_samples : constant := 1;  --  vulkan_core.h:8803
   VK_AMD_MIXED_ATTACHMENT_SAMPLES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8804
   VK_AMD_MIXED_ATTACHMENT_SAMPLES_EXTENSION_NAME : aliased constant String := "VK_AMD_mixed_attachment_samples" & ASCII.NUL;  --  vulkan_core.h:8805

   VK_AMD_shader_fragment_mask : constant := 1;  --  vulkan_core.h:8808
   VK_AMD_SHADER_FRAGMENT_MASK_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8809
   VK_AMD_SHADER_FRAGMENT_MASK_EXTENSION_NAME : aliased constant String := "VK_AMD_shader_fragment_mask" & ASCII.NUL;  --  vulkan_core.h:8810

   VK_EXT_inline_uniform_block : constant := 1;  --  vulkan_core.h:8813
   VK_EXT_INLINE_UNIFORM_BLOCK_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8814
   VK_EXT_INLINE_UNIFORM_BLOCK_EXTENSION_NAME : aliased constant String := "VK_EXT_inline_uniform_block" & ASCII.NUL;  --  vulkan_core.h:8815

   VK_EXT_shader_stencil_export : constant := 1;  --  vulkan_core.h:8848
   VK_EXT_SHADER_STENCIL_EXPORT_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8849
   VK_EXT_SHADER_STENCIL_EXPORT_EXTENSION_NAME : aliased constant String := "VK_EXT_shader_stencil_export" & ASCII.NUL;  --  vulkan_core.h:8850

   VK_EXT_sample_locations : constant := 1;  --  vulkan_core.h:8853
   VK_EXT_SAMPLE_LOCATIONS_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8854
   VK_EXT_SAMPLE_LOCATIONS_EXTENSION_NAME : aliased constant String := "VK_EXT_sample_locations" & ASCII.NUL;  --  vulkan_core.h:8855

   VK_EXT_blend_operation_advanced : constant := 1;  --  vulkan_core.h:8927
   VK_EXT_BLEND_OPERATION_ADVANCED_SPEC_VERSION : constant := 2;  --  vulkan_core.h:8928
   VK_EXT_BLEND_OPERATION_ADVANCED_EXTENSION_NAME : aliased constant String := "VK_EXT_blend_operation_advanced" & ASCII.NUL;  --  vulkan_core.h:8929

   VK_NV_fragment_coverage_to_color : constant := 1;  --  vulkan_core.h:8967
   VK_NV_FRAGMENT_COVERAGE_TO_COLOR_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8968
   VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME : aliased constant String := "VK_NV_fragment_coverage_to_color" & ASCII.NUL;  --  vulkan_core.h:8969

   VK_NV_framebuffer_mixed_samples : constant := 1;  --  vulkan_core.h:8981
   VK_NV_FRAMEBUFFER_MIXED_SAMPLES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:8982
   VK_NV_FRAMEBUFFER_MIXED_SAMPLES_EXTENSION_NAME : aliased constant String := "VK_NV_framebuffer_mixed_samples" & ASCII.NUL;  --  vulkan_core.h:8983

   VK_NV_fill_rectangle : constant := 1;  --  vulkan_core.h:9008
   VK_NV_FILL_RECTANGLE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9009
   VK_NV_FILL_RECTANGLE_EXTENSION_NAME : aliased constant String := "VK_NV_fill_rectangle" & ASCII.NUL;  --  vulkan_core.h:9010

   VK_NV_shader_sm_builtins : constant := 1;  --  vulkan_core.h:9013
   VK_NV_SHADER_SM_BUILTINS_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9014
   VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME : aliased constant String := "VK_NV_shader_sm_builtins" & ASCII.NUL;  --  vulkan_core.h:9015

   VK_EXT_post_depth_coverage : constant := 1;  --  vulkan_core.h:9031
   VK_EXT_POST_DEPTH_COVERAGE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9032
   VK_EXT_POST_DEPTH_COVERAGE_EXTENSION_NAME : aliased constant String := "VK_EXT_post_depth_coverage" & ASCII.NUL;  --  vulkan_core.h:9033

   VK_EXT_image_drm_format_modifier : constant := 1;  --  vulkan_core.h:9036
   VK_EXT_IMAGE_DRM_FORMAT_MODIFIER_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9037
   VK_EXT_IMAGE_DRM_FORMAT_MODIFIER_EXTENSION_NAME : aliased constant String := "VK_EXT_image_drm_format_modifier" & ASCII.NUL;  --  vulkan_core.h:9038

   VK_EXT_validation_cache : constant := 1;  --  vulkan_core.h:9092

   VK_EXT_VALIDATION_CACHE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9094
   VK_EXT_VALIDATION_CACHE_EXTENSION_NAME : aliased constant String := "VK_EXT_validation_cache" & ASCII.NUL;  --  vulkan_core.h:9095

   VK_EXT_descriptor_indexing : constant := 1;  --  vulkan_core.h:9150
   VK_EXT_DESCRIPTOR_INDEXING_SPEC_VERSION : constant := 2;  --  vulkan_core.h:9151
   VK_EXT_DESCRIPTOR_INDEXING_EXTENSION_NAME : aliased constant String := "VK_EXT_descriptor_indexing" & ASCII.NUL;  --  vulkan_core.h:9152

   VK_EXT_shader_viewport_index_layer : constant := 1;  --  vulkan_core.h:9169
   VK_EXT_SHADER_VIEWPORT_INDEX_LAYER_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9170
   VK_EXT_SHADER_VIEWPORT_INDEX_LAYER_EXTENSION_NAME : aliased constant String := "VK_EXT_shader_viewport_index_layer" & ASCII.NUL;  --  vulkan_core.h:9171

   VK_NV_shading_rate_image : constant := 1;  --  vulkan_core.h:9174
   VK_NV_SHADING_RATE_IMAGE_SPEC_VERSION : constant := 3;  --  vulkan_core.h:9175
   VK_NV_SHADING_RATE_IMAGE_EXTENSION_NAME : aliased constant String := "VK_NV_shading_rate_image" & ASCII.NUL;  --  vulkan_core.h:9176

   VK_NV_ray_tracing : constant := 1;  --  vulkan_core.h:9280

   VK_NV_RAY_TRACING_SPEC_VERSION : constant := 3;  --  vulkan_core.h:9282
   VK_NV_RAY_TRACING_EXTENSION_NAME : aliased constant String := "VK_NV_ray_tracing" & ASCII.NUL;  --  vulkan_core.h:9283
   --  unsupported macro: VK_SHADER_UNUSED_NV (~0U)

   VK_NV_representative_fragment_test : constant := 1;  --  vulkan_core.h:9580
   VK_NV_REPRESENTATIVE_FRAGMENT_TEST_SPEC_VERSION : constant := 2;  --  vulkan_core.h:9581
   VK_NV_REPRESENTATIVE_FRAGMENT_TEST_EXTENSION_NAME : aliased constant String := "VK_NV_representative_fragment_test" & ASCII.NUL;  --  vulkan_core.h:9582

   VK_EXT_filter_cubic : constant := 1;  --  vulkan_core.h:9597
   VK_EXT_FILTER_CUBIC_SPEC_VERSION : constant := 3;  --  vulkan_core.h:9598
   VK_EXT_FILTER_CUBIC_EXTENSION_NAME : aliased constant String := "VK_EXT_filter_cubic" & ASCII.NUL;  --  vulkan_core.h:9599

   VK_EXT_global_priority : constant := 1;  --  vulkan_core.h:9615
   VK_EXT_GLOBAL_PRIORITY_SPEC_VERSION : constant := 2;  --  vulkan_core.h:9616
   VK_EXT_GLOBAL_PRIORITY_EXTENSION_NAME : aliased constant String := "VK_EXT_global_priority" & ASCII.NUL;  --  vulkan_core.h:9617

   VK_EXT_external_memory_host : constant := 1;  --  vulkan_core.h:9637
   VK_EXT_EXTERNAL_MEMORY_HOST_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9638
   VK_EXT_EXTERNAL_MEMORY_HOST_EXTENSION_NAME : aliased constant String := "VK_EXT_external_memory_host" & ASCII.NUL;  --  vulkan_core.h:9639

   VK_AMD_buffer_marker : constant := 1;  --  vulkan_core.h:9670
   VK_AMD_BUFFER_MARKER_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9671
   VK_AMD_BUFFER_MARKER_EXTENSION_NAME : aliased constant String := "VK_AMD_buffer_marker" & ASCII.NUL;  --  vulkan_core.h:9672

   VK_AMD_pipeline_compiler_control : constant := 1;  --  vulkan_core.h:9685
   VK_AMD_PIPELINE_COMPILER_CONTROL_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9686
   VK_AMD_PIPELINE_COMPILER_CONTROL_EXTENSION_NAME : aliased constant String := "VK_AMD_pipeline_compiler_control" & ASCII.NUL;  --  vulkan_core.h:9687

   VK_EXT_calibrated_timestamps : constant := 1;  --  vulkan_core.h:9701
   VK_EXT_CALIBRATED_TIMESTAMPS_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9702
   VK_EXT_CALIBRATED_TIMESTAMPS_EXTENSION_NAME : aliased constant String := "VK_EXT_calibrated_timestamps" & ASCII.NUL;  --  vulkan_core.h:9703

   VK_AMD_shader_core_properties : constant := 1;  --  vulkan_core.h:9739
   VK_AMD_SHADER_CORE_PROPERTIES_SPEC_VERSION : constant := 2;  --  vulkan_core.h:9740
   VK_AMD_SHADER_CORE_PROPERTIES_EXTENSION_NAME : aliased constant String := "VK_AMD_shader_core_properties" & ASCII.NUL;  --  vulkan_core.h:9741

   VK_AMD_memory_overallocation_behavior : constant := 1;  --  vulkan_core.h:9763
   VK_AMD_MEMORY_OVERALLOCATION_BEHAVIOR_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9764
   VK_AMD_MEMORY_OVERALLOCATION_BEHAVIOR_EXTENSION_NAME : aliased constant String := "VK_AMD_memory_overallocation_behavior" & ASCII.NUL;  --  vulkan_core.h:9765

   VK_EXT_vertex_attribute_divisor : constant := 1;  --  vulkan_core.h:9784
   VK_EXT_VERTEX_ATTRIBUTE_DIVISOR_SPEC_VERSION : constant := 3;  --  vulkan_core.h:9785
   VK_EXT_VERTEX_ATTRIBUTE_DIVISOR_EXTENSION_NAME : aliased constant String := "VK_EXT_vertex_attribute_divisor" & ASCII.NUL;  --  vulkan_core.h:9786

   VK_EXT_pipeline_creation_feedback : constant := 1;  --  vulkan_core.h:9814
   VK_EXT_PIPELINE_CREATION_FEEDBACK_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9815
   VK_EXT_PIPELINE_CREATION_FEEDBACK_EXTENSION_NAME : aliased constant String := "VK_EXT_pipeline_creation_feedback" & ASCII.NUL;  --  vulkan_core.h:9816

   VK_NV_shader_subgroup_partitioned : constant := 1;  --  vulkan_core.h:9840
   VK_NV_SHADER_SUBGROUP_PARTITIONED_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9841
   VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME : aliased constant String := "VK_NV_shader_subgroup_partitioned" & ASCII.NUL;  --  vulkan_core.h:9842

   VK_NV_compute_shader_derivatives : constant := 1;  --  vulkan_core.h:9845
   VK_NV_COMPUTE_SHADER_DERIVATIVES_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9846
   VK_NV_COMPUTE_SHADER_DERIVATIVES_EXTENSION_NAME : aliased constant String := "VK_NV_compute_shader_derivatives" & ASCII.NUL;  --  vulkan_core.h:9847

   VK_NV_mesh_shader : constant := 1;  --  vulkan_core.h:9857
   VK_NV_MESH_SHADER_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9858
   VK_NV_MESH_SHADER_EXTENSION_NAME : aliased constant String := "VK_NV_mesh_shader" & ASCII.NUL;  --  vulkan_core.h:9859

   VK_NV_fragment_shader_barycentric : constant := 1;  --  vulkan_core.h:9918
   VK_NV_FRAGMENT_SHADER_BARYCENTRIC_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9919
   VK_NV_FRAGMENT_SHADER_BARYCENTRIC_EXTENSION_NAME : aliased constant String := "VK_NV_fragment_shader_barycentric" & ASCII.NUL;  --  vulkan_core.h:9920

   VK_NV_shader_image_footprint : constant := 1;  --  vulkan_core.h:9929
   VK_NV_SHADER_IMAGE_FOOTPRINT_SPEC_VERSION : constant := 2;  --  vulkan_core.h:9930
   VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME : aliased constant String := "VK_NV_shader_image_footprint" & ASCII.NUL;  --  vulkan_core.h:9931

   VK_NV_scissor_exclusive : constant := 1;  --  vulkan_core.h:9940
   VK_NV_SCISSOR_EXCLUSIVE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9941
   VK_NV_SCISSOR_EXCLUSIVE_EXTENSION_NAME : aliased constant String := "VK_NV_scissor_exclusive" & ASCII.NUL;  --  vulkan_core.h:9942

   VK_NV_device_diagnostic_checkpoints : constant := 1;  --  vulkan_core.h:9967
   VK_NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_SPEC_VERSION : constant := 2;  --  vulkan_core.h:9968
   VK_NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_EXTENSION_NAME : aliased constant String := "VK_NV_device_diagnostic_checkpoints" & ASCII.NUL;  --  vulkan_core.h:9969

   VK_INTEL_shader_integer_functions2 : constant := 1;  --  vulkan_core.h:9998
   VK_INTEL_SHADER_INTEGER_FUNCTIONS_2_SPEC_VERSION : constant := 1;  --  vulkan_core.h:9999
   VK_INTEL_SHADER_INTEGER_FUNCTIONS_2_EXTENSION_NAME : aliased constant String := "VK_INTEL_shader_integer_functions2" & ASCII.NUL;  --  vulkan_core.h:10000

   VK_INTEL_performance_query : constant := 1;  --  vulkan_core.h:10009

   VK_INTEL_PERFORMANCE_QUERY_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10011
   VK_INTEL_PERFORMANCE_QUERY_EXTENSION_NAME : aliased constant String := "VK_INTEL_performance_query" & ASCII.NUL;  --  vulkan_core.h:10012

   VK_EXT_pci_bus_info : constant := 1;  --  vulkan_core.h:10160
   VK_EXT_PCI_BUS_INFO_SPEC_VERSION : constant := 2;  --  vulkan_core.h:10161
   VK_EXT_PCI_BUS_INFO_EXTENSION_NAME : aliased constant String := "VK_EXT_pci_bus_info" & ASCII.NUL;  --  vulkan_core.h:10162

   VK_AMD_display_native_hdr : constant := 1;  --  vulkan_core.h:10174
   VK_AMD_DISPLAY_NATIVE_HDR_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10175
   VK_AMD_DISPLAY_NATIVE_HDR_EXTENSION_NAME : aliased constant String := "VK_AMD_display_native_hdr" & ASCII.NUL;  --  vulkan_core.h:10176

   VK_EXT_fragment_density_map : constant := 1;  --  vulkan_core.h:10199
   VK_EXT_FRAGMENT_DENSITY_MAP_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10200
   VK_EXT_FRAGMENT_DENSITY_MAP_EXTENSION_NAME : aliased constant String := "VK_EXT_fragment_density_map" & ASCII.NUL;  --  vulkan_core.h:10201

   VK_EXT_scalar_block_layout : constant := 1;  --  vulkan_core.h:10226
   VK_EXT_SCALAR_BLOCK_LAYOUT_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10227
   VK_EXT_SCALAR_BLOCK_LAYOUT_EXTENSION_NAME : aliased constant String := "VK_EXT_scalar_block_layout" & ASCII.NUL;  --  vulkan_core.h:10228

   VK_GOOGLE_hlsl_functionality1 : constant := 1;  --  vulkan_core.h:10233
   VK_GOOGLE_HLSL_FUNCTIONALITY1_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10234
   VK_GOOGLE_HLSL_FUNCTIONALITY1_EXTENSION_NAME : aliased constant String := "VK_GOOGLE_hlsl_functionality1" & ASCII.NUL;  --  vulkan_core.h:10235

   VK_GOOGLE_decorate_string : constant := 1;  --  vulkan_core.h:10238
   VK_GOOGLE_DECORATE_STRING_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10239
   VK_GOOGLE_DECORATE_STRING_EXTENSION_NAME : aliased constant String := "VK_GOOGLE_decorate_string" & ASCII.NUL;  --  vulkan_core.h:10240

   VK_EXT_subgroup_size_control : constant := 1;  --  vulkan_core.h:10243
   VK_EXT_SUBGROUP_SIZE_CONTROL_SPEC_VERSION : constant := 2;  --  vulkan_core.h:10244
   VK_EXT_SUBGROUP_SIZE_CONTROL_EXTENSION_NAME : aliased constant String := "VK_EXT_subgroup_size_control" & ASCII.NUL;  --  vulkan_core.h:10245

   VK_AMD_shader_core_properties2 : constant := 1;  --  vulkan_core.h:10270
   VK_AMD_SHADER_CORE_PROPERTIES_2_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10271
   VK_AMD_SHADER_CORE_PROPERTIES_2_EXTENSION_NAME : aliased constant String := "VK_AMD_shader_core_properties2" & ASCII.NUL;  --  vulkan_core.h:10272

   VK_AMD_device_coherent_memory : constant := 1;  --  vulkan_core.h:10287
   VK_AMD_DEVICE_COHERENT_MEMORY_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10288
   VK_AMD_DEVICE_COHERENT_MEMORY_EXTENSION_NAME : aliased constant String := "VK_AMD_device_coherent_memory" & ASCII.NUL;  --  vulkan_core.h:10289

   VK_EXT_memory_budget : constant := 1;  --  vulkan_core.h:10298
   VK_EXT_MEMORY_BUDGET_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10299
   VK_EXT_MEMORY_BUDGET_EXTENSION_NAME : aliased constant String := "VK_EXT_memory_budget" & ASCII.NUL;  --  vulkan_core.h:10300

   VK_EXT_memory_priority : constant := 1;  --  vulkan_core.h:10310
   VK_EXT_MEMORY_PRIORITY_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10311
   VK_EXT_MEMORY_PRIORITY_EXTENSION_NAME : aliased constant String := "VK_EXT_memory_priority" & ASCII.NUL;  --  vulkan_core.h:10312

   VK_NV_dedicated_allocation_image_aliasing : constant := 1;  --  vulkan_core.h:10327
   VK_NV_DEDICATED_ALLOCATION_IMAGE_ALIASING_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10328
   VK_NV_DEDICATED_ALLOCATION_IMAGE_ALIASING_EXTENSION_NAME : aliased constant String := "VK_NV_dedicated_allocation_image_aliasing" & ASCII.NUL;  --  vulkan_core.h:10329

   VK_EXT_buffer_device_address : constant := 1;  --  vulkan_core.h:10338
   VK_EXT_BUFFER_DEVICE_ADDRESS_SPEC_VERSION : constant := 2;  --  vulkan_core.h:10339
   VK_EXT_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME : aliased constant String := "VK_EXT_buffer_device_address" & ASCII.NUL;  --  vulkan_core.h:10340

   VK_EXT_tooling_info : constant := 1;  --  vulkan_core.h:10368
   VK_EXT_TOOLING_INFO_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10369
   VK_EXT_TOOLING_INFO_EXTENSION_NAME : aliased constant String := "VK_EXT_tooling_info" & ASCII.NUL;  --  vulkan_core.h:10370

   VK_EXT_separate_stencil_usage : constant := 1;  --  vulkan_core.h:10403
   VK_EXT_SEPARATE_STENCIL_USAGE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10404
   VK_EXT_SEPARATE_STENCIL_USAGE_EXTENSION_NAME : aliased constant String := "VK_EXT_separate_stencil_usage" & ASCII.NUL;  --  vulkan_core.h:10405

   VK_EXT_validation_features : constant := 1;  --  vulkan_core.h:10410
   VK_EXT_VALIDATION_FEATURES_SPEC_VERSION : constant := 2;  --  vulkan_core.h:10411
   VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME : aliased constant String := "VK_EXT_validation_features" & ASCII.NUL;  --  vulkan_core.h:10412

   VK_NV_cooperative_matrix : constant := 1;  --  vulkan_core.h:10448
   VK_NV_COOPERATIVE_MATRIX_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10449
   VK_NV_COOPERATIVE_MATRIX_EXTENSION_NAME : aliased constant String := "VK_NV_cooperative_matrix" & ASCII.NUL;  --  vulkan_core.h:10450

   VK_NV_coverage_reduction_mode : constant := 1;  --  vulkan_core.h:10516
   VK_NV_COVERAGE_REDUCTION_MODE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10517
   VK_NV_COVERAGE_REDUCTION_MODE_EXTENSION_NAME : aliased constant String := "VK_NV_coverage_reduction_mode" & ASCII.NUL;  --  vulkan_core.h:10518

   VK_EXT_fragment_shader_interlock : constant := 1;  --  vulkan_core.h:10561
   VK_EXT_FRAGMENT_SHADER_INTERLOCK_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10562
   VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME : aliased constant String := "VK_EXT_fragment_shader_interlock" & ASCII.NUL;  --  vulkan_core.h:10563

   VK_EXT_ycbcr_image_arrays : constant := 1;  --  vulkan_core.h:10574
   VK_EXT_YCBCR_IMAGE_ARRAYS_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10575
   VK_EXT_YCBCR_IMAGE_ARRAYS_EXTENSION_NAME : aliased constant String := "VK_EXT_ycbcr_image_arrays" & ASCII.NUL;  --  vulkan_core.h:10576

   VK_EXT_headless_surface : constant := 1;  --  vulkan_core.h:10585
   VK_EXT_HEADLESS_SURFACE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10586
   VK_EXT_HEADLESS_SURFACE_EXTENSION_NAME : aliased constant String := "VK_EXT_headless_surface" & ASCII.NUL;  --  vulkan_core.h:10587

   VK_EXT_line_rasterization : constant := 1;  --  vulkan_core.h:10606
   VK_EXT_LINE_RASTERIZATION_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10607
   VK_EXT_LINE_RASTERIZATION_EXTENSION_NAME : aliased constant String := "VK_EXT_line_rasterization" & ASCII.NUL;  --  vulkan_core.h:10608

   VK_EXT_host_query_reset : constant := 1;  --  vulkan_core.h:10656
   VK_EXT_HOST_QUERY_RESET_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10657
   VK_EXT_HOST_QUERY_RESET_EXTENSION_NAME : aliased constant String := "VK_EXT_host_query_reset" & ASCII.NUL;  --  vulkan_core.h:10658

   VK_EXT_index_type_uint8 : constant := 1;  --  vulkan_core.h:10672
   VK_EXT_INDEX_TYPE_UINT8_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10673
   VK_EXT_INDEX_TYPE_UINT8_EXTENSION_NAME : aliased constant String := "VK_EXT_index_type_uint8" & ASCII.NUL;  --  vulkan_core.h:10674

   VK_EXT_shader_demote_to_helper_invocation : constant := 1;  --  vulkan_core.h:10683
   VK_EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10684
   VK_EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_EXTENSION_NAME : aliased constant String := "VK_EXT_shader_demote_to_helper_invocation" & ASCII.NUL;  --  vulkan_core.h:10685

   VK_EXT_texel_buffer_alignment : constant := 1;  --  vulkan_core.h:10694
   VK_EXT_TEXEL_BUFFER_ALIGNMENT_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10695
   VK_EXT_TEXEL_BUFFER_ALIGNMENT_EXTENSION_NAME : aliased constant String := "VK_EXT_texel_buffer_alignment" & ASCII.NUL;  --  vulkan_core.h:10696

   VK_GOOGLE_user_type : constant := 1;  --  vulkan_core.h:10714
   VK_GOOGLE_USER_TYPE_SPEC_VERSION : constant := 1;  --  vulkan_core.h:10715
   VK_GOOGLE_USER_TYPE_EXTENSION_NAME : aliased constant String := "VK_GOOGLE_user_type" & ASCII.NUL;  --  vulkan_core.h:10716

  --** Copyright (c) 2015-2019 The Khronos Group Inc.
  --**
  --** Licensed under the Apache License, Version 2.0 (the "License");
  --** you may not use this file except in compliance with the License.
  --** You may obtain a copy of the License at
  --**
  --**     http://www.apache.org/licenses/LICENSE-2.0
  --**
  --** Unless required by applicable law or agreed to in writing, software
  --** distributed under the License is distributed on an "AS IS" BASIS,
  --** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  --** See the License for the specific language governing permissions and
  --** limitations under the License.
  -- 

  --** This header is generated from the Khronos Vulkan XML API Registry.
  --**
  -- 

  -- DEPRECATED: This define has been removed. Specific version defines (e.g. VK_API_VERSION_1_0), or the VK_MAKE_VERSION macro, should be used instead.
  --#define VK_API_VERSION VK_MAKE_VERSION(1, 0, 0) // Patch version should always be set to 0
  -- Vulkan 1.0 version number
  -- Version of this file
   subtype VkFlags is Interfaces.C.unsigned_short;  -- vulkan_core.h:64

   subtype VkBool32 is Interfaces.C.unsigned_short;  -- vulkan_core.h:65

   subtype VkDeviceSize is Interfaces.C.unsigned_long;  -- vulkan_core.h:66

   subtype VkSampleMask is Interfaces.C.unsigned_short;  -- vulkan_core.h:67

   type VkInstance_T is null record;   -- incomplete struct

   type VkInstance is access all VkInstance_T;  -- vulkan_core.h:68

   type VkPhysicalDevice_T is null record;   -- incomplete struct

   type VkPhysicalDevice is access all VkPhysicalDevice_T;  -- vulkan_core.h:69

   type VkDevice_T is null record;   -- incomplete struct

   type VkDevice is access all VkDevice_T;  -- vulkan_core.h:70

   type VkQueue_T is null record;   -- incomplete struct

   type VkQueue is access all VkQueue_T;  -- vulkan_core.h:71

   type VkSemaphore_T is null record;   -- incomplete struct

   type VkSemaphore is access all VkSemaphore_T;  -- vulkan_core.h:72

   type VkCommandBuffer_T is null record;   -- incomplete struct

   type VkCommandBuffer is access all VkCommandBuffer_T;  -- vulkan_core.h:73

   type VkFence_T is null record;   -- incomplete struct

   type VkFence is access all VkFence_T;  -- vulkan_core.h:74

   type VkDeviceMemory_T is null record;   -- incomplete struct

   type VkDeviceMemory is access all VkDeviceMemory_T;  -- vulkan_core.h:75

   type VkBuffer_T is null record;   -- incomplete struct

   type VkBuffer is access all VkBuffer_T;  -- vulkan_core.h:76

   type VkImage_T is null record;   -- incomplete struct

   type VkImage is access all VkImage_T;  -- vulkan_core.h:77

   type VkEvent_T is null record;   -- incomplete struct

   type VkEvent is access all VkEvent_T;  -- vulkan_core.h:78

   type VkQueryPool_T is null record;   -- incomplete struct

   type VkQueryPool is access all VkQueryPool_T;  -- vulkan_core.h:79

   type VkBufferView_T is null record;   -- incomplete struct

   type VkBufferView is access all VkBufferView_T;  -- vulkan_core.h:80

   type VkImageView_T is null record;   -- incomplete struct

   type VkImageView is access all VkImageView_T;  -- vulkan_core.h:81

   type VkShaderModule_T is null record;   -- incomplete struct

   type VkShaderModule is access all VkShaderModule_T;  -- vulkan_core.h:82

   type VkPipelineCache_T is null record;   -- incomplete struct

   type VkPipelineCache is access all VkPipelineCache_T;  -- vulkan_core.h:83

   type VkPipelineLayout_T is null record;   -- incomplete struct

   type VkPipelineLayout is access all VkPipelineLayout_T;  -- vulkan_core.h:84

   type VkRenderPass_T is null record;   -- incomplete struct

   type VkRenderPass is access all VkRenderPass_T;  -- vulkan_core.h:85

   type VkPipeline_T is null record;   -- incomplete struct

   type VkPipeline is access all VkPipeline_T;  -- vulkan_core.h:86

   type VkDescriptorSetLayout_T is null record;   -- incomplete struct

   type VkDescriptorSetLayout is access all VkDescriptorSetLayout_T;  -- vulkan_core.h:87

   type VkSampler_T is null record;   -- incomplete struct

   type VkSampler is access all VkSampler_T;  -- vulkan_core.h:88

   type VkDescriptorPool_T is null record;   -- incomplete struct

   type VkDescriptorPool is access all VkDescriptorPool_T;  -- vulkan_core.h:89

   type VkDescriptorSet_T is null record;   -- incomplete struct

   type VkDescriptorSet is access all VkDescriptorSet_T;  -- vulkan_core.h:90

   type VkFramebuffer_T is null record;   -- incomplete struct

   type VkFramebuffer is access all VkFramebuffer_T;  -- vulkan_core.h:91

   type VkCommandPool_T is null record;   -- incomplete struct

   type VkCommandPool is access all VkCommandPool_T;  -- vulkan_core.h:92

   subtype VkPipelineCacheHeaderVersion is unsigned;
   VK_PIPELINE_CACHE_HEADER_VERSION_ONE : constant unsigned := 1;
   VK_PIPELINE_CACHE_HEADER_VERSION_BEGIN_RANGE : constant unsigned := 1;
   VK_PIPELINE_CACHE_HEADER_VERSION_END_RANGE : constant unsigned := 1;
   VK_PIPELINE_CACHE_HEADER_VERSION_RANGE_SIZE : constant unsigned := 1;
   VK_PIPELINE_CACHE_HEADER_VERSION_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:109

   subtype VkResult is int;
   VK_SUCCESS : constant int := 0;
   VK_NOT_READY : constant int := 1;
   VK_TIMEOUT : constant int := 2;
   VK_EVENT_SET : constant int := 3;
   VK_EVENT_RESET : constant int := 4;
   VK_INCOMPLETE : constant int := 5;
   VK_ERROR_OUT_OF_HOST_MEMORY : constant int := -1;
   VK_ERROR_OUT_OF_DEVICE_MEMORY : constant int := -2;
   VK_ERROR_INITIALIZATION_FAILED : constant int := -3;
   VK_ERROR_DEVICE_LOST : constant int := -4;
   VK_ERROR_MEMORY_MAP_FAILED : constant int := -5;
   VK_ERROR_LAYER_NOT_PRESENT : constant int := -6;
   VK_ERROR_EXTENSION_NOT_PRESENT : constant int := -7;
   VK_ERROR_FEATURE_NOT_PRESENT : constant int := -8;
   VK_ERROR_INCOMPATIBLE_DRIVER : constant int := -9;
   VK_ERROR_TOO_MANY_OBJECTS : constant int := -10;
   VK_ERROR_FORMAT_NOT_SUPPORTED : constant int := -11;
   VK_ERROR_FRAGMENTED_POOL : constant int := -12;
   VK_ERROR_UNKNOWN : constant int := -13;
   VK_ERROR_OUT_OF_POOL_MEMORY : constant int := -1000069000;
   VK_ERROR_INVALID_EXTERNAL_HANDLE : constant int := -1000072003;
   VK_ERROR_FRAGMENTATION : constant int := -1000161000;
   VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS : constant int := -1000257000;
   VK_ERROR_SURFACE_LOST_KHR : constant int := -1000000000;
   VK_ERROR_NATIVE_WINDOW_IN_USE_KHR : constant int := -1000000001;
   VK_SUBOPTIMAL_KHR : constant int := 1000001003;
   VK_ERROR_OUT_OF_DATE_KHR : constant int := -1000001004;
   VK_ERROR_INCOMPATIBLE_DISPLAY_KHR : constant int := -1000003001;
   VK_ERROR_VALIDATION_FAILED_EXT : constant int := -1000011001;
   VK_ERROR_INVALID_SHADER_NV : constant int := -1000012000;
   VK_ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT : constant int := -1000158000;
   VK_ERROR_NOT_PERMITTED_EXT : constant int := -1000174001;
   VK_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT : constant int := -1000255000;
   VK_ERROR_OUT_OF_POOL_MEMORY_KHR : constant int := -1000069000;
   VK_ERROR_INVALID_EXTERNAL_HANDLE_KHR : constant int := -1000072003;
   VK_ERROR_FRAGMENTATION_EXT : constant int := -1000161000;
   VK_ERROR_INVALID_DEVICE_ADDRESS_EXT : constant int := -1000257000;
   VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR : constant int := -1000257000;
   VK_RESULT_BEGIN_RANGE : constant int := -13;
   VK_RESULT_END_RANGE : constant int := 5;
   VK_RESULT_RANGE_SIZE : constant int := 19;
   VK_RESULT_MAX_ENUM : constant int := 2147483647;  -- vulkan_core.h:117

   subtype VkStructureType is unsigned;
   VK_STRUCTURE_TYPE_APPLICATION_INFO : constant unsigned := 0;
   VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO : constant unsigned := 1;
   VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO : constant unsigned := 2;
   VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO : constant unsigned := 3;
   VK_STRUCTURE_TYPE_SUBMIT_INFO : constant unsigned := 4;
   VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO : constant unsigned := 5;
   VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE : constant unsigned := 6;
   VK_STRUCTURE_TYPE_BIND_SPARSE_INFO : constant unsigned := 7;
   VK_STRUCTURE_TYPE_FENCE_CREATE_INFO : constant unsigned := 8;
   VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO : constant unsigned := 9;
   VK_STRUCTURE_TYPE_EVENT_CREATE_INFO : constant unsigned := 10;
   VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO : constant unsigned := 11;
   VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO : constant unsigned := 12;
   VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO : constant unsigned := 13;
   VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO : constant unsigned := 14;
   VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO : constant unsigned := 15;
   VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO : constant unsigned := 16;
   VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO : constant unsigned := 17;
   VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO : constant unsigned := 18;
   VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO : constant unsigned := 19;
   VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO : constant unsigned := 20;
   VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO : constant unsigned := 21;
   VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO : constant unsigned := 22;
   VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO : constant unsigned := 23;
   VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO : constant unsigned := 24;
   VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO : constant unsigned := 25;
   VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO : constant unsigned := 26;
   VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO : constant unsigned := 27;
   VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO : constant unsigned := 28;
   VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO : constant unsigned := 29;
   VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO : constant unsigned := 30;
   VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO : constant unsigned := 31;
   VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO : constant unsigned := 32;
   VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO : constant unsigned := 33;
   VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO : constant unsigned := 34;
   VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET : constant unsigned := 35;
   VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET : constant unsigned := 36;
   VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO : constant unsigned := 37;
   VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO : constant unsigned := 38;
   VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO : constant unsigned := 39;
   VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO : constant unsigned := 40;
   VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO : constant unsigned := 41;
   VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO : constant unsigned := 42;
   VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO : constant unsigned := 43;
   VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER : constant unsigned := 44;
   VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER : constant unsigned := 45;
   VK_STRUCTURE_TYPE_MEMORY_BARRIER : constant unsigned := 46;
   VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO : constant unsigned := 47;
   VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO : constant unsigned := 48;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES : constant unsigned := 1000094000;
   VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO : constant unsigned := 1000157000;
   VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO : constant unsigned := 1000157001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES : constant unsigned := 1000083000;
   VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS : constant unsigned := 1000127000;
   VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO : constant unsigned := 1000127001;
   VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO : constant unsigned := 1000060000;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO : constant unsigned := 1000060003;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO : constant unsigned := 1000060004;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO : constant unsigned := 1000060005;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO : constant unsigned := 1000060006;
   VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO : constant unsigned := 1000060013;
   VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO : constant unsigned := 1000060014;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES : constant unsigned := 1000070000;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO : constant unsigned := 1000070001;
   VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2 : constant unsigned := 1000146000;
   VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2 : constant unsigned := 1000146001;
   VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2 : constant unsigned := 1000146002;
   VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2 : constant unsigned := 1000146003;
   VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2 : constant unsigned := 1000146004;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2 : constant unsigned := 1000059000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2 : constant unsigned := 1000059001;
   VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2 : constant unsigned := 1000059002;
   VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2 : constant unsigned := 1000059003;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2 : constant unsigned := 1000059004;
   VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2 : constant unsigned := 1000059005;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2 : constant unsigned := 1000059006;
   VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2 : constant unsigned := 1000059007;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2 : constant unsigned := 1000059008;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES : constant unsigned := 1000117000;
   VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO : constant unsigned := 1000117001;
   VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO : constant unsigned := 1000117002;
   VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO : constant unsigned := 1000117003;
   VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO : constant unsigned := 1000053000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES : constant unsigned := 1000053001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES : constant unsigned := 1000053002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES : constant unsigned := 1000120000;
   VK_STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO : constant unsigned := 1000145000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES : constant unsigned := 1000145001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES : constant unsigned := 1000145002;
   VK_STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2 : constant unsigned := 1000145003;
   VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO : constant unsigned := 1000156000;
   VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO : constant unsigned := 1000156001;
   VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO : constant unsigned := 1000156002;
   VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO : constant unsigned := 1000156003;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES : constant unsigned := 1000156004;
   VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES : constant unsigned := 1000156005;
   VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO : constant unsigned := 1000085000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO : constant unsigned := 1000071000;
   VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES : constant unsigned := 1000071001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO : constant unsigned := 1000071002;
   VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES : constant unsigned := 1000071003;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES : constant unsigned := 1000071004;
   VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO : constant unsigned := 1000072000;
   VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO : constant unsigned := 1000072001;
   VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO : constant unsigned := 1000072002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO : constant unsigned := 1000112000;
   VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES : constant unsigned := 1000112001;
   VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO : constant unsigned := 1000113000;
   VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO : constant unsigned := 1000077000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO : constant unsigned := 1000076000;
   VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES : constant unsigned := 1000076001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES : constant unsigned := 1000168000;
   VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT : constant unsigned := 1000168001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES : constant unsigned := 1000063000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES : constant unsigned := 49;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES : constant unsigned := 50;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES : constant unsigned := 51;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES : constant unsigned := 52;
   VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO : constant unsigned := 1000147000;
   VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2 : constant unsigned := 1000109000;
   VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2 : constant unsigned := 1000109001;
   VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2 : constant unsigned := 1000109002;
   VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2 : constant unsigned := 1000109003;
   VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2 : constant unsigned := 1000109004;
   VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO : constant unsigned := 1000109005;
   VK_STRUCTURE_TYPE_SUBPASS_END_INFO : constant unsigned := 1000109006;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES : constant unsigned := 1000177000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES : constant unsigned := 1000196000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES : constant unsigned := 1000180000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES : constant unsigned := 1000082000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES : constant unsigned := 1000197000;
   VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO : constant unsigned := 1000161000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES : constant unsigned := 1000161001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES : constant unsigned := 1000161002;
   VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO : constant unsigned := 1000161003;
   VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT : constant unsigned := 1000161004;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES : constant unsigned := 1000199000;
   VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE : constant unsigned := 1000199001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES : constant unsigned := 1000221000;
   VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO : constant unsigned := 1000246000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES : constant unsigned := 1000130000;
   VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO : constant unsigned := 1000130001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES : constant unsigned := 1000211000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES : constant unsigned := 1000108000;
   VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO : constant unsigned := 1000108001;
   VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO : constant unsigned := 1000108002;
   VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO : constant unsigned := 1000108003;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES : constant unsigned := 1000253000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES : constant unsigned := 1000175000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES : constant unsigned := 1000241000;
   VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT : constant unsigned := 1000241001;
   VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT : constant unsigned := 1000241002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES : constant unsigned := 1000261000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES : constant unsigned := 1000207000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES : constant unsigned := 1000207001;
   VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO : constant unsigned := 1000207002;
   VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO : constant unsigned := 1000207003;
   VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO : constant unsigned := 1000207004;
   VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO : constant unsigned := 1000207005;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES : constant unsigned := 1000257000;
   VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO : constant unsigned := 1000244001;
   VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO : constant unsigned := 1000257002;
   VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO : constant unsigned := 1000257003;
   VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO : constant unsigned := 1000257004;
   VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR : constant unsigned := 1000001000;
   VK_STRUCTURE_TYPE_PRESENT_INFO_KHR : constant unsigned := 1000001001;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR : constant unsigned := 1000060007;
   VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR : constant unsigned := 1000060008;
   VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR : constant unsigned := 1000060009;
   VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR : constant unsigned := 1000060010;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR : constant unsigned := 1000060011;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR : constant unsigned := 1000060012;
   VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR : constant unsigned := 1000002000;
   VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR : constant unsigned := 1000002001;
   VK_STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR : constant unsigned := 1000003000;
   VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR : constant unsigned := 1000004000;
   VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR : constant unsigned := 1000005000;
   VK_STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR : constant unsigned := 1000006000;
   VK_STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR : constant unsigned := 1000008000;
   VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR : constant unsigned := 1000009000;
   VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT : constant unsigned := 1000011000;
   VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD : constant unsigned := 1000018000;
   VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT : constant unsigned := 1000022000;
   VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT : constant unsigned := 1000022001;
   VK_STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT : constant unsigned := 1000022002;
   VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV : constant unsigned := 1000026000;
   VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV : constant unsigned := 1000026001;
   VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV : constant unsigned := 1000026002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT : constant unsigned := 1000028000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT : constant unsigned := 1000028001;
   VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT : constant unsigned := 1000028002;
   VK_STRUCTURE_TYPE_IMAGE_VIEW_HANDLE_INFO_NVX : constant unsigned := 1000030000;
   VK_STRUCTURE_TYPE_TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD : constant unsigned := 1000041000;
   VK_STRUCTURE_TYPE_STREAM_DESCRIPTOR_SURFACE_CREATE_INFO_GGP : constant unsigned := 1000049000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV : constant unsigned := 1000050000;
   VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV : constant unsigned := 1000056000;
   VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV : constant unsigned := 1000056001;
   VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_NV : constant unsigned := 1000057000;
   VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_NV : constant unsigned := 1000057001;
   VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV : constant unsigned := 1000058000;
   VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT : constant unsigned := 1000061000;
   VK_STRUCTURE_TYPE_VI_SURFACE_CREATE_INFO_NN : constant unsigned := 1000062000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES_EXT : constant unsigned := 1000066000;
   VK_STRUCTURE_TYPE_IMAGE_VIEW_ASTC_DECODE_MODE_EXT : constant unsigned := 1000067000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT : constant unsigned := 1000067001;
   VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR : constant unsigned := 1000073000;
   VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR : constant unsigned := 1000073001;
   VK_STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHR : constant unsigned := 1000073002;
   VK_STRUCTURE_TYPE_MEMORY_GET_WIN32_HANDLE_INFO_KHR : constant unsigned := 1000073003;
   VK_STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR : constant unsigned := 1000074000;
   VK_STRUCTURE_TYPE_MEMORY_FD_PROPERTIES_KHR : constant unsigned := 1000074001;
   VK_STRUCTURE_TYPE_MEMORY_GET_FD_INFO_KHR : constant unsigned := 1000074002;
   VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_KHR : constant unsigned := 1000075000;
   VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR : constant unsigned := 1000078000;
   VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR : constant unsigned := 1000078001;
   VK_STRUCTURE_TYPE_D3D12_FENCE_SUBMIT_INFO_KHR : constant unsigned := 1000078002;
   VK_STRUCTURE_TYPE_SEMAPHORE_GET_WIN32_HANDLE_INFO_KHR : constant unsigned := 1000078003;
   VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_FD_INFO_KHR : constant unsigned := 1000079000;
   VK_STRUCTURE_TYPE_SEMAPHORE_GET_FD_INFO_KHR : constant unsigned := 1000079001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR : constant unsigned := 1000080000;
   VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT : constant unsigned := 1000081000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT : constant unsigned := 1000081001;
   VK_STRUCTURE_TYPE_CONDITIONAL_RENDERING_BEGIN_INFO_EXT : constant unsigned := 1000081002;
   VK_STRUCTURE_TYPE_PRESENT_REGIONS_KHR : constant unsigned := 1000084000;
   VK_STRUCTURE_TYPE_OBJECT_TABLE_CREATE_INFO_NVX : constant unsigned := 1000086000;
   VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NVX : constant unsigned := 1000086001;
   VK_STRUCTURE_TYPE_CMD_PROCESS_COMMANDS_INFO_NVX : constant unsigned := 1000086002;
   VK_STRUCTURE_TYPE_CMD_RESERVE_SPACE_FOR_COMMANDS_INFO_NVX : constant unsigned := 1000086003;
   VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_LIMITS_NVX : constant unsigned := 1000086004;
   VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_FEATURES_NVX : constant unsigned := 1000086005;
   VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV : constant unsigned := 1000087000;
   VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_EXT : constant unsigned := 1000090000;
   VK_STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT : constant unsigned := 1000091000;
   VK_STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT : constant unsigned := 1000091001;
   VK_STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT : constant unsigned := 1000091002;
   VK_STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT : constant unsigned := 1000091003;
   VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE : constant unsigned := 1000092000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX : constant unsigned := 1000097000;
   VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV : constant unsigned := 1000098000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT : constant unsigned := 1000099000;
   VK_STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT : constant unsigned := 1000099001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT : constant unsigned := 1000101000;
   VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT : constant unsigned := 1000101001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT : constant unsigned := 1000102000;
   VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT : constant unsigned := 1000102001;
   VK_STRUCTURE_TYPE_HDR_METADATA_EXT : constant unsigned := 1000105000;
   VK_STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR : constant unsigned := 1000111000;
   VK_STRUCTURE_TYPE_IMPORT_FENCE_WIN32_HANDLE_INFO_KHR : constant unsigned := 1000114000;
   VK_STRUCTURE_TYPE_EXPORT_FENCE_WIN32_HANDLE_INFO_KHR : constant unsigned := 1000114001;
   VK_STRUCTURE_TYPE_FENCE_GET_WIN32_HANDLE_INFO_KHR : constant unsigned := 1000114002;
   VK_STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR : constant unsigned := 1000115000;
   VK_STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR : constant unsigned := 1000115001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR : constant unsigned := 1000116000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR : constant unsigned := 1000116001;
   VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR : constant unsigned := 1000116002;
   VK_STRUCTURE_TYPE_PERFORMANCE_QUERY_SUBMIT_INFO_KHR : constant unsigned := 1000116003;
   VK_STRUCTURE_TYPE_ACQUIRE_PROFILING_LOCK_INFO_KHR : constant unsigned := 1000116004;
   VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_KHR : constant unsigned := 1000116005;
   VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_DESCRIPTION_KHR : constant unsigned := 1000116006;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR : constant unsigned := 1000119000;
   VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR : constant unsigned := 1000119001;
   VK_STRUCTURE_TYPE_SURFACE_FORMAT_2_KHR : constant unsigned := 1000119002;
   VK_STRUCTURE_TYPE_DISPLAY_PROPERTIES_2_KHR : constant unsigned := 1000121000;
   VK_STRUCTURE_TYPE_DISPLAY_PLANE_PROPERTIES_2_KHR : constant unsigned := 1000121001;
   VK_STRUCTURE_TYPE_DISPLAY_MODE_PROPERTIES_2_KHR : constant unsigned := 1000121002;
   VK_STRUCTURE_TYPE_DISPLAY_PLANE_INFO_2_KHR : constant unsigned := 1000121003;
   VK_STRUCTURE_TYPE_DISPLAY_PLANE_CAPABILITIES_2_KHR : constant unsigned := 1000121004;
   VK_STRUCTURE_TYPE_IOS_SURFACE_CREATE_INFO_MVK : constant unsigned := 1000122000;
   VK_STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK : constant unsigned := 1000123000;
   VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT : constant unsigned := 1000128000;
   VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT : constant unsigned := 1000128001;
   VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT : constant unsigned := 1000128002;
   VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT : constant unsigned := 1000128003;
   VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT : constant unsigned := 1000128004;
   VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_USAGE_ANDROID : constant unsigned := 1000129000;
   VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_PROPERTIES_ANDROID : constant unsigned := 1000129001;
   VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_ANDROID : constant unsigned := 1000129002;
   VK_STRUCTURE_TYPE_IMPORT_ANDROID_HARDWARE_BUFFER_INFO_ANDROID : constant unsigned := 1000129003;
   VK_STRUCTURE_TYPE_MEMORY_GET_ANDROID_HARDWARE_BUFFER_INFO_ANDROID : constant unsigned := 1000129004;
   VK_STRUCTURE_TYPE_EXTERNAL_FORMAT_ANDROID : constant unsigned := 1000129005;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES_EXT : constant unsigned := 1000138000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES_EXT : constant unsigned := 1000138001;
   VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK_EXT : constant unsigned := 1000138002;
   VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO_EXT : constant unsigned := 1000138003;
   VK_STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT : constant unsigned := 1000143000;
   VK_STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT : constant unsigned := 1000143001;
   VK_STRUCTURE_TYPE_PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT : constant unsigned := 1000143002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT : constant unsigned := 1000143003;
   VK_STRUCTURE_TYPE_MULTISAMPLE_PROPERTIES_EXT : constant unsigned := 1000143004;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT : constant unsigned := 1000148000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT : constant unsigned := 1000148001;
   VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT : constant unsigned := 1000148002;
   VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV : constant unsigned := 1000149000;
   VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV : constant unsigned := 1000152000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV : constant unsigned := 1000154000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV : constant unsigned := 1000154001;
   VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT : constant unsigned := 1000158000;
   VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT : constant unsigned := 1000158001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT : constant unsigned := 1000158002;
   VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT : constant unsigned := 1000158003;
   VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT : constant unsigned := 1000158004;
   VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT : constant unsigned := 1000158005;
   VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT : constant unsigned := 1000160000;
   VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT : constant unsigned := 1000160001;
   VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV : constant unsigned := 1000164000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV : constant unsigned := 1000164001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV : constant unsigned := 1000164002;
   VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV : constant unsigned := 1000164005;
   VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_NV : constant unsigned := 1000165000;
   VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_NV : constant unsigned := 1000165001;
   VK_STRUCTURE_TYPE_GEOMETRY_NV : constant unsigned := 1000165003;
   VK_STRUCTURE_TYPE_GEOMETRY_TRIANGLES_NV : constant unsigned := 1000165004;
   VK_STRUCTURE_TYPE_GEOMETRY_AABB_NV : constant unsigned := 1000165005;
   VK_STRUCTURE_TYPE_BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_NV : constant unsigned := 1000165006;
   VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_NV : constant unsigned := 1000165007;
   VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV : constant unsigned := 1000165008;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_NV : constant unsigned := 1000165009;
   VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV : constant unsigned := 1000165011;
   VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_INFO_NV : constant unsigned := 1000165012;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV : constant unsigned := 1000166000;
   VK_STRUCTURE_TYPE_PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV : constant unsigned := 1000166001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT : constant unsigned := 1000170000;
   VK_STRUCTURE_TYPE_FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT : constant unsigned := 1000170001;
   VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_EXT : constant unsigned := 1000174000;
   VK_STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT : constant unsigned := 1000178000;
   VK_STRUCTURE_TYPE_MEMORY_HOST_POINTER_PROPERTIES_EXT : constant unsigned := 1000178001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT : constant unsigned := 1000178002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR : constant unsigned := 1000181000;
   VK_STRUCTURE_TYPE_PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD : constant unsigned := 1000183000;
   VK_STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_EXT : constant unsigned := 1000184000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD : constant unsigned := 1000185000;
   VK_STRUCTURE_TYPE_DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD : constant unsigned := 1000189000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT : constant unsigned := 1000190000;
   VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT : constant unsigned := 1000190001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT : constant unsigned := 1000190002;
   VK_STRUCTURE_TYPE_PRESENT_FRAME_TOKEN_GGP : constant unsigned := 1000191000;
   VK_STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO_EXT : constant unsigned := 1000192000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_NV : constant unsigned := 1000201000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV : constant unsigned := 1000202000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV : constant unsigned := 1000202001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_NV : constant unsigned := 1000203000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV : constant unsigned := 1000204000;
   VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV : constant unsigned := 1000205000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV : constant unsigned := 1000205002;
   VK_STRUCTURE_TYPE_CHECKPOINT_DATA_NV : constant unsigned := 1000206000;
   VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV : constant unsigned := 1000206001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL : constant unsigned := 1000209000;
   VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO_INTEL : constant unsigned := 1000210000;
   VK_STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL : constant unsigned := 1000210001;
   VK_STRUCTURE_TYPE_PERFORMANCE_MARKER_INFO_INTEL : constant unsigned := 1000210002;
   VK_STRUCTURE_TYPE_PERFORMANCE_STREAM_MARKER_INFO_INTEL : constant unsigned := 1000210003;
   VK_STRUCTURE_TYPE_PERFORMANCE_OVERRIDE_INFO_INTEL : constant unsigned := 1000210004;
   VK_STRUCTURE_TYPE_PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL : constant unsigned := 1000210005;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT : constant unsigned := 1000212000;
   VK_STRUCTURE_TYPE_DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD : constant unsigned := 1000213000;
   VK_STRUCTURE_TYPE_SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD : constant unsigned := 1000213001;
   VK_STRUCTURE_TYPE_IMAGEPIPE_SURFACE_CREATE_INFO_FUCHSIA : constant unsigned := 1000214000;
   VK_STRUCTURE_TYPE_METAL_SURFACE_CREATE_INFO_EXT : constant unsigned := 1000217000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT : constant unsigned := 1000218000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT : constant unsigned := 1000218001;
   VK_STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT : constant unsigned := 1000218002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES_EXT : constant unsigned := 1000225000;
   VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT : constant unsigned := 1000225001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES_EXT : constant unsigned := 1000225002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_2_AMD : constant unsigned := 1000227000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD : constant unsigned := 1000229000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_BUDGET_PROPERTIES_EXT : constant unsigned := 1000237000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT : constant unsigned := 1000238000;
   VK_STRUCTURE_TYPE_MEMORY_PRIORITY_ALLOCATE_INFO_EXT : constant unsigned := 1000238001;
   VK_STRUCTURE_TYPE_SURFACE_PROTECTED_CAPABILITIES_KHR : constant unsigned := 1000239000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV : constant unsigned := 1000240000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT : constant unsigned := 1000244000;
   VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT : constant unsigned := 1000244002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES_EXT : constant unsigned := 1000245000;
   VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT : constant unsigned := 1000247000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV : constant unsigned := 1000249000;
   VK_STRUCTURE_TYPE_COOPERATIVE_MATRIX_PROPERTIES_NV : constant unsigned := 1000249001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV : constant unsigned := 1000249002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV : constant unsigned := 1000250000;
   VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV : constant unsigned := 1000250001;
   VK_STRUCTURE_TYPE_FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV : constant unsigned := 1000250002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT : constant unsigned := 1000251000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT : constant unsigned := 1000252000;
   VK_STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_INFO_EXT : constant unsigned := 1000255000;
   VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_FULL_SCREEN_EXCLUSIVE_EXT : constant unsigned := 1000255002;
   VK_STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_WIN32_INFO_EXT : constant unsigned := 1000255001;
   VK_STRUCTURE_TYPE_HEADLESS_SURFACE_CREATE_INFO_EXT : constant unsigned := 1000256000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT : constant unsigned := 1000259000;
   VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT : constant unsigned := 1000259001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_EXT : constant unsigned := 1000259002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_EXT : constant unsigned := 1000265000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR : constant unsigned := 1000269000;
   VK_STRUCTURE_TYPE_PIPELINE_INFO_KHR : constant unsigned := 1000269001;
   VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_PROPERTIES_KHR : constant unsigned := 1000269002;
   VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INFO_KHR : constant unsigned := 1000269003;
   VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_STATISTIC_KHR : constant unsigned := 1000269004;
   VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR : constant unsigned := 1000269005;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES_EXT : constant unsigned := 1000276000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT : constant unsigned := 1000281000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES_EXT : constant unsigned := 1000281001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES : constant unsigned := 1000120000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETER_FEATURES : constant unsigned := 1000063000;
   VK_STRUCTURE_TYPE_DEBUG_REPORT_CREATE_INFO_EXT : constant unsigned := 1000011000;
   VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO_KHR : constant unsigned := 1000053000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES_KHR : constant unsigned := 1000053001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES_KHR : constant unsigned := 1000053002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2_KHR : constant unsigned := 1000059000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2_KHR : constant unsigned := 1000059001;
   VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2_KHR : constant unsigned := 1000059002;
   VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2_KHR : constant unsigned := 1000059003;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2_KHR : constant unsigned := 1000059004;
   VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2_KHR : constant unsigned := 1000059005;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2_KHR : constant unsigned := 1000059006;
   VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2_KHR : constant unsigned := 1000059007;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2_KHR : constant unsigned := 1000059008;
   VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO_KHR : constant unsigned := 1000060000;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO_KHR : constant unsigned := 1000060003;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO_KHR : constant unsigned := 1000060004;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO_KHR : constant unsigned := 1000060005;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO_KHR : constant unsigned := 1000060006;
   VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO_KHR : constant unsigned := 1000060013;
   VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO_KHR : constant unsigned := 1000060014;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES_KHR : constant unsigned := 1000070000;
   VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO_KHR : constant unsigned := 1000070001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO_KHR : constant unsigned := 1000071000;
   VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES_KHR : constant unsigned := 1000071001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO_KHR : constant unsigned := 1000071002;
   VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES_KHR : constant unsigned := 1000071003;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES_KHR : constant unsigned := 1000071004;
   VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO_KHR : constant unsigned := 1000072000;
   VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_KHR : constant unsigned := 1000072001;
   VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_KHR : constant unsigned := 1000072002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO_KHR : constant unsigned := 1000076000;
   VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES_KHR : constant unsigned := 1000076001;
   VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO_KHR : constant unsigned := 1000077000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES_KHR : constant unsigned := 1000082000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT16_INT8_FEATURES_KHR : constant unsigned := 1000082000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES_KHR : constant unsigned := 1000083000;
   VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO_KHR : constant unsigned := 1000085000;
   VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES2_EXT : constant unsigned := 1000090000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES_KHR : constant unsigned := 1000108000;
   VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO_KHR : constant unsigned := 1000108001;
   VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO_KHR : constant unsigned := 1000108002;
   VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO_KHR : constant unsigned := 1000108003;
   VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2_KHR : constant unsigned := 1000109000;
   VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2_KHR : constant unsigned := 1000109001;
   VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2_KHR : constant unsigned := 1000109002;
   VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2_KHR : constant unsigned := 1000109003;
   VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2_KHR : constant unsigned := 1000109004;
   VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO_KHR : constant unsigned := 1000109005;
   VK_STRUCTURE_TYPE_SUBPASS_END_INFO_KHR : constant unsigned := 1000109006;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO_KHR : constant unsigned := 1000112000;
   VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES_KHR : constant unsigned := 1000112001;
   VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO_KHR : constant unsigned := 1000113000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES_KHR : constant unsigned := 1000117000;
   VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO_KHR : constant unsigned := 1000117001;
   VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO_KHR : constant unsigned := 1000117002;
   VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO_KHR : constant unsigned := 1000117003;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES_KHR : constant unsigned := 1000120000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES_KHR : constant unsigned := 1000120000;
   VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS_KHR : constant unsigned := 1000127000;
   VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO_KHR : constant unsigned := 1000127001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES_EXT : constant unsigned := 1000130000;
   VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO_EXT : constant unsigned := 1000130001;
   VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2_KHR : constant unsigned := 1000146000;
   VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2_KHR : constant unsigned := 1000146001;
   VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2_KHR : constant unsigned := 1000146002;
   VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2_KHR : constant unsigned := 1000146003;
   VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2_KHR : constant unsigned := 1000146004;
   VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO_KHR : constant unsigned := 1000147000;
   VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO_KHR : constant unsigned := 1000156000;
   VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO_KHR : constant unsigned := 1000156001;
   VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO_KHR : constant unsigned := 1000156002;
   VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO_KHR : constant unsigned := 1000156003;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES_KHR : constant unsigned := 1000156004;
   VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES_KHR : constant unsigned := 1000156005;
   VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO_KHR : constant unsigned := 1000157000;
   VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO_KHR : constant unsigned := 1000157001;
   VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO_EXT : constant unsigned := 1000161000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES_EXT : constant unsigned := 1000161001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES_EXT : constant unsigned := 1000161002;
   VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO_EXT : constant unsigned := 1000161003;
   VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT_EXT : constant unsigned := 1000161004;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES_KHR : constant unsigned := 1000168000;
   VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT_KHR : constant unsigned := 1000168001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES_KHR : constant unsigned := 1000175000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES_KHR : constant unsigned := 1000177000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES_KHR : constant unsigned := 1000180000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES_KHR : constant unsigned := 1000196000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES_KHR : constant unsigned := 1000197000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES_KHR : constant unsigned := 1000199000;
   VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE_KHR : constant unsigned := 1000199001;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES_KHR : constant unsigned := 1000207000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES_KHR : constant unsigned := 1000207001;
   VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO_KHR : constant unsigned := 1000207002;
   VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO_KHR : constant unsigned := 1000207003;
   VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO_KHR : constant unsigned := 1000207004;
   VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO_KHR : constant unsigned := 1000207005;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES_KHR : constant unsigned := 1000211000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES_EXT : constant unsigned := 1000221000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES_KHR : constant unsigned := 1000241000;
   VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT_KHR : constant unsigned := 1000241001;
   VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT_KHR : constant unsigned := 1000241002;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_ADDRESS_FEATURES_EXT : constant unsigned := 1000244000;
   VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_EXT : constant unsigned := 1000244001;
   VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO_EXT : constant unsigned := 1000246000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES_KHR : constant unsigned := 1000253000;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_KHR : constant unsigned := 1000257000;
   VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_KHR : constant unsigned := 1000244001;
   VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO_KHR : constant unsigned := 1000257002;
   VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO_KHR : constant unsigned := 1000257003;
   VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO_KHR : constant unsigned := 1000257004;
   VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES_EXT : constant unsigned := 1000261000;
   VK_STRUCTURE_TYPE_BEGIN_RANGE : constant unsigned := 0;
   VK_STRUCTURE_TYPE_END_RANGE : constant unsigned := 48;
   VK_STRUCTURE_TYPE_RANGE_SIZE : constant unsigned := 49;
   VK_STRUCTURE_TYPE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:162

   subtype VkSystemAllocationScope is unsigned;
   VK_SYSTEM_ALLOCATION_SCOPE_COMMAND : constant unsigned := 0;
   VK_SYSTEM_ALLOCATION_SCOPE_OBJECT : constant unsigned := 1;
   VK_SYSTEM_ALLOCATION_SCOPE_CACHE : constant unsigned := 2;
   VK_SYSTEM_ALLOCATION_SCOPE_DEVICE : constant unsigned := 3;
   VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE : constant unsigned := 4;
   VK_SYSTEM_ALLOCATION_SCOPE_BEGIN_RANGE : constant unsigned := 0;
   VK_SYSTEM_ALLOCATION_SCOPE_END_RANGE : constant unsigned := 4;
   VK_SYSTEM_ALLOCATION_SCOPE_RANGE_SIZE : constant unsigned := 5;
   VK_SYSTEM_ALLOCATION_SCOPE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:682

   subtype VkInternalAllocationType is unsigned;
   VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE : constant unsigned := 0;
   VK_INTERNAL_ALLOCATION_TYPE_BEGIN_RANGE : constant unsigned := 0;
   VK_INTERNAL_ALLOCATION_TYPE_END_RANGE : constant unsigned := 0;
   VK_INTERNAL_ALLOCATION_TYPE_RANGE_SIZE : constant unsigned := 1;
   VK_INTERNAL_ALLOCATION_TYPE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:694

   subtype VkFormat is unsigned;
   VK_FORMAT_UNDEFINED : constant unsigned := 0;
   VK_FORMAT_R4G4_UNORM_PACK8 : constant unsigned := 1;
   VK_FORMAT_R4G4B4A4_UNORM_PACK16 : constant unsigned := 2;
   VK_FORMAT_B4G4R4A4_UNORM_PACK16 : constant unsigned := 3;
   VK_FORMAT_R5G6B5_UNORM_PACK16 : constant unsigned := 4;
   VK_FORMAT_B5G6R5_UNORM_PACK16 : constant unsigned := 5;
   VK_FORMAT_R5G5B5A1_UNORM_PACK16 : constant unsigned := 6;
   VK_FORMAT_B5G5R5A1_UNORM_PACK16 : constant unsigned := 7;
   VK_FORMAT_A1R5G5B5_UNORM_PACK16 : constant unsigned := 8;
   VK_FORMAT_R8_UNORM : constant unsigned := 9;
   VK_FORMAT_R8_SNORM : constant unsigned := 10;
   VK_FORMAT_R8_USCALED : constant unsigned := 11;
   VK_FORMAT_R8_SSCALED : constant unsigned := 12;
   VK_FORMAT_R8_UINT : constant unsigned := 13;
   VK_FORMAT_R8_SINT : constant unsigned := 14;
   VK_FORMAT_R8_SRGB : constant unsigned := 15;
   VK_FORMAT_R8G8_UNORM : constant unsigned := 16;
   VK_FORMAT_R8G8_SNORM : constant unsigned := 17;
   VK_FORMAT_R8G8_USCALED : constant unsigned := 18;
   VK_FORMAT_R8G8_SSCALED : constant unsigned := 19;
   VK_FORMAT_R8G8_UINT : constant unsigned := 20;
   VK_FORMAT_R8G8_SINT : constant unsigned := 21;
   VK_FORMAT_R8G8_SRGB : constant unsigned := 22;
   VK_FORMAT_R8G8B8_UNORM : constant unsigned := 23;
   VK_FORMAT_R8G8B8_SNORM : constant unsigned := 24;
   VK_FORMAT_R8G8B8_USCALED : constant unsigned := 25;
   VK_FORMAT_R8G8B8_SSCALED : constant unsigned := 26;
   VK_FORMAT_R8G8B8_UINT : constant unsigned := 27;
   VK_FORMAT_R8G8B8_SINT : constant unsigned := 28;
   VK_FORMAT_R8G8B8_SRGB : constant unsigned := 29;
   VK_FORMAT_B8G8R8_UNORM : constant unsigned := 30;
   VK_FORMAT_B8G8R8_SNORM : constant unsigned := 31;
   VK_FORMAT_B8G8R8_USCALED : constant unsigned := 32;
   VK_FORMAT_B8G8R8_SSCALED : constant unsigned := 33;
   VK_FORMAT_B8G8R8_UINT : constant unsigned := 34;
   VK_FORMAT_B8G8R8_SINT : constant unsigned := 35;
   VK_FORMAT_B8G8R8_SRGB : constant unsigned := 36;
   VK_FORMAT_R8G8B8A8_UNORM : constant unsigned := 37;
   VK_FORMAT_R8G8B8A8_SNORM : constant unsigned := 38;
   VK_FORMAT_R8G8B8A8_USCALED : constant unsigned := 39;
   VK_FORMAT_R8G8B8A8_SSCALED : constant unsigned := 40;
   VK_FORMAT_R8G8B8A8_UINT : constant unsigned := 41;
   VK_FORMAT_R8G8B8A8_SINT : constant unsigned := 42;
   VK_FORMAT_R8G8B8A8_SRGB : constant unsigned := 43;
   VK_FORMAT_B8G8R8A8_UNORM : constant unsigned := 44;
   VK_FORMAT_B8G8R8A8_SNORM : constant unsigned := 45;
   VK_FORMAT_B8G8R8A8_USCALED : constant unsigned := 46;
   VK_FORMAT_B8G8R8A8_SSCALED : constant unsigned := 47;
   VK_FORMAT_B8G8R8A8_UINT : constant unsigned := 48;
   VK_FORMAT_B8G8R8A8_SINT : constant unsigned := 49;
   VK_FORMAT_B8G8R8A8_SRGB : constant unsigned := 50;
   VK_FORMAT_A8B8G8R8_UNORM_PACK32 : constant unsigned := 51;
   VK_FORMAT_A8B8G8R8_SNORM_PACK32 : constant unsigned := 52;
   VK_FORMAT_A8B8G8R8_USCALED_PACK32 : constant unsigned := 53;
   VK_FORMAT_A8B8G8R8_SSCALED_PACK32 : constant unsigned := 54;
   VK_FORMAT_A8B8G8R8_UINT_PACK32 : constant unsigned := 55;
   VK_FORMAT_A8B8G8R8_SINT_PACK32 : constant unsigned := 56;
   VK_FORMAT_A8B8G8R8_SRGB_PACK32 : constant unsigned := 57;
   VK_FORMAT_A2R10G10B10_UNORM_PACK32 : constant unsigned := 58;
   VK_FORMAT_A2R10G10B10_SNORM_PACK32 : constant unsigned := 59;
   VK_FORMAT_A2R10G10B10_USCALED_PACK32 : constant unsigned := 60;
   VK_FORMAT_A2R10G10B10_SSCALED_PACK32 : constant unsigned := 61;
   VK_FORMAT_A2R10G10B10_UINT_PACK32 : constant unsigned := 62;
   VK_FORMAT_A2R10G10B10_SINT_PACK32 : constant unsigned := 63;
   VK_FORMAT_A2B10G10R10_UNORM_PACK32 : constant unsigned := 64;
   VK_FORMAT_A2B10G10R10_SNORM_PACK32 : constant unsigned := 65;
   VK_FORMAT_A2B10G10R10_USCALED_PACK32 : constant unsigned := 66;
   VK_FORMAT_A2B10G10R10_SSCALED_PACK32 : constant unsigned := 67;
   VK_FORMAT_A2B10G10R10_UINT_PACK32 : constant unsigned := 68;
   VK_FORMAT_A2B10G10R10_SINT_PACK32 : constant unsigned := 69;
   VK_FORMAT_R16_UNORM : constant unsigned := 70;
   VK_FORMAT_R16_SNORM : constant unsigned := 71;
   VK_FORMAT_R16_USCALED : constant unsigned := 72;
   VK_FORMAT_R16_SSCALED : constant unsigned := 73;
   VK_FORMAT_R16_UINT : constant unsigned := 74;
   VK_FORMAT_R16_SINT : constant unsigned := 75;
   VK_FORMAT_R16_SFLOAT : constant unsigned := 76;
   VK_FORMAT_R16G16_UNORM : constant unsigned := 77;
   VK_FORMAT_R16G16_SNORM : constant unsigned := 78;
   VK_FORMAT_R16G16_USCALED : constant unsigned := 79;
   VK_FORMAT_R16G16_SSCALED : constant unsigned := 80;
   VK_FORMAT_R16G16_UINT : constant unsigned := 81;
   VK_FORMAT_R16G16_SINT : constant unsigned := 82;
   VK_FORMAT_R16G16_SFLOAT : constant unsigned := 83;
   VK_FORMAT_R16G16B16_UNORM : constant unsigned := 84;
   VK_FORMAT_R16G16B16_SNORM : constant unsigned := 85;
   VK_FORMAT_R16G16B16_USCALED : constant unsigned := 86;
   VK_FORMAT_R16G16B16_SSCALED : constant unsigned := 87;
   VK_FORMAT_R16G16B16_UINT : constant unsigned := 88;
   VK_FORMAT_R16G16B16_SINT : constant unsigned := 89;
   VK_FORMAT_R16G16B16_SFLOAT : constant unsigned := 90;
   VK_FORMAT_R16G16B16A16_UNORM : constant unsigned := 91;
   VK_FORMAT_R16G16B16A16_SNORM : constant unsigned := 92;
   VK_FORMAT_R16G16B16A16_USCALED : constant unsigned := 93;
   VK_FORMAT_R16G16B16A16_SSCALED : constant unsigned := 94;
   VK_FORMAT_R16G16B16A16_UINT : constant unsigned := 95;
   VK_FORMAT_R16G16B16A16_SINT : constant unsigned := 96;
   VK_FORMAT_R16G16B16A16_SFLOAT : constant unsigned := 97;
   VK_FORMAT_R32_UINT : constant unsigned := 98;
   VK_FORMAT_R32_SINT : constant unsigned := 99;
   VK_FORMAT_R32_SFLOAT : constant unsigned := 100;
   VK_FORMAT_R32G32_UINT : constant unsigned := 101;
   VK_FORMAT_R32G32_SINT : constant unsigned := 102;
   VK_FORMAT_R32G32_SFLOAT : constant unsigned := 103;
   VK_FORMAT_R32G32B32_UINT : constant unsigned := 104;
   VK_FORMAT_R32G32B32_SINT : constant unsigned := 105;
   VK_FORMAT_R32G32B32_SFLOAT : constant unsigned := 106;
   VK_FORMAT_R32G32B32A32_UINT : constant unsigned := 107;
   VK_FORMAT_R32G32B32A32_SINT : constant unsigned := 108;
   VK_FORMAT_R32G32B32A32_SFLOAT : constant unsigned := 109;
   VK_FORMAT_R64_UINT : constant unsigned := 110;
   VK_FORMAT_R64_SINT : constant unsigned := 111;
   VK_FORMAT_R64_SFLOAT : constant unsigned := 112;
   VK_FORMAT_R64G64_UINT : constant unsigned := 113;
   VK_FORMAT_R64G64_SINT : constant unsigned := 114;
   VK_FORMAT_R64G64_SFLOAT : constant unsigned := 115;
   VK_FORMAT_R64G64B64_UINT : constant unsigned := 116;
   VK_FORMAT_R64G64B64_SINT : constant unsigned := 117;
   VK_FORMAT_R64G64B64_SFLOAT : constant unsigned := 118;
   VK_FORMAT_R64G64B64A64_UINT : constant unsigned := 119;
   VK_FORMAT_R64G64B64A64_SINT : constant unsigned := 120;
   VK_FORMAT_R64G64B64A64_SFLOAT : constant unsigned := 121;
   VK_FORMAT_B10G11R11_UFLOAT_PACK32 : constant unsigned := 122;
   VK_FORMAT_E5B9G9R9_UFLOAT_PACK32 : constant unsigned := 123;
   VK_FORMAT_D16_UNORM : constant unsigned := 124;
   VK_FORMAT_X8_D24_UNORM_PACK32 : constant unsigned := 125;
   VK_FORMAT_D32_SFLOAT : constant unsigned := 126;
   VK_FORMAT_S8_UINT : constant unsigned := 127;
   VK_FORMAT_D16_UNORM_S8_UINT : constant unsigned := 128;
   VK_FORMAT_D24_UNORM_S8_UINT : constant unsigned := 129;
   VK_FORMAT_D32_SFLOAT_S8_UINT : constant unsigned := 130;
   VK_FORMAT_BC1_RGB_UNORM_BLOCK : constant unsigned := 131;
   VK_FORMAT_BC1_RGB_SRGB_BLOCK : constant unsigned := 132;
   VK_FORMAT_BC1_RGBA_UNORM_BLOCK : constant unsigned := 133;
   VK_FORMAT_BC1_RGBA_SRGB_BLOCK : constant unsigned := 134;
   VK_FORMAT_BC2_UNORM_BLOCK : constant unsigned := 135;
   VK_FORMAT_BC2_SRGB_BLOCK : constant unsigned := 136;
   VK_FORMAT_BC3_UNORM_BLOCK : constant unsigned := 137;
   VK_FORMAT_BC3_SRGB_BLOCK : constant unsigned := 138;
   VK_FORMAT_BC4_UNORM_BLOCK : constant unsigned := 139;
   VK_FORMAT_BC4_SNORM_BLOCK : constant unsigned := 140;
   VK_FORMAT_BC5_UNORM_BLOCK : constant unsigned := 141;
   VK_FORMAT_BC5_SNORM_BLOCK : constant unsigned := 142;
   VK_FORMAT_BC6H_UFLOAT_BLOCK : constant unsigned := 143;
   VK_FORMAT_BC6H_SFLOAT_BLOCK : constant unsigned := 144;
   VK_FORMAT_BC7_UNORM_BLOCK : constant unsigned := 145;
   VK_FORMAT_BC7_SRGB_BLOCK : constant unsigned := 146;
   VK_FORMAT_ETC2_R8G8B8_UNORM_BLOCK : constant unsigned := 147;
   VK_FORMAT_ETC2_R8G8B8_SRGB_BLOCK : constant unsigned := 148;
   VK_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK : constant unsigned := 149;
   VK_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK : constant unsigned := 150;
   VK_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK : constant unsigned := 151;
   VK_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK : constant unsigned := 152;
   VK_FORMAT_EAC_R11_UNORM_BLOCK : constant unsigned := 153;
   VK_FORMAT_EAC_R11_SNORM_BLOCK : constant unsigned := 154;
   VK_FORMAT_EAC_R11G11_UNORM_BLOCK : constant unsigned := 155;
   VK_FORMAT_EAC_R11G11_SNORM_BLOCK : constant unsigned := 156;
   VK_FORMAT_ASTC_4x4_UNORM_BLOCK : constant unsigned := 157;
   VK_FORMAT_ASTC_4x4_SRGB_BLOCK : constant unsigned := 158;
   VK_FORMAT_ASTC_5x4_UNORM_BLOCK : constant unsigned := 159;
   VK_FORMAT_ASTC_5x4_SRGB_BLOCK : constant unsigned := 160;
   VK_FORMAT_ASTC_5x5_UNORM_BLOCK : constant unsigned := 161;
   VK_FORMAT_ASTC_5x5_SRGB_BLOCK : constant unsigned := 162;
   VK_FORMAT_ASTC_6x5_UNORM_BLOCK : constant unsigned := 163;
   VK_FORMAT_ASTC_6x5_SRGB_BLOCK : constant unsigned := 164;
   VK_FORMAT_ASTC_6x6_UNORM_BLOCK : constant unsigned := 165;
   VK_FORMAT_ASTC_6x6_SRGB_BLOCK : constant unsigned := 166;
   VK_FORMAT_ASTC_8x5_UNORM_BLOCK : constant unsigned := 167;
   VK_FORMAT_ASTC_8x5_SRGB_BLOCK : constant unsigned := 168;
   VK_FORMAT_ASTC_8x6_UNORM_BLOCK : constant unsigned := 169;
   VK_FORMAT_ASTC_8x6_SRGB_BLOCK : constant unsigned := 170;
   VK_FORMAT_ASTC_8x8_UNORM_BLOCK : constant unsigned := 171;
   VK_FORMAT_ASTC_8x8_SRGB_BLOCK : constant unsigned := 172;
   VK_FORMAT_ASTC_10x5_UNORM_BLOCK : constant unsigned := 173;
   VK_FORMAT_ASTC_10x5_SRGB_BLOCK : constant unsigned := 174;
   VK_FORMAT_ASTC_10x6_UNORM_BLOCK : constant unsigned := 175;
   VK_FORMAT_ASTC_10x6_SRGB_BLOCK : constant unsigned := 176;
   VK_FORMAT_ASTC_10x8_UNORM_BLOCK : constant unsigned := 177;
   VK_FORMAT_ASTC_10x8_SRGB_BLOCK : constant unsigned := 178;
   VK_FORMAT_ASTC_10x10_UNORM_BLOCK : constant unsigned := 179;
   VK_FORMAT_ASTC_10x10_SRGB_BLOCK : constant unsigned := 180;
   VK_FORMAT_ASTC_12x10_UNORM_BLOCK : constant unsigned := 181;
   VK_FORMAT_ASTC_12x10_SRGB_BLOCK : constant unsigned := 182;
   VK_FORMAT_ASTC_12x12_UNORM_BLOCK : constant unsigned := 183;
   VK_FORMAT_ASTC_12x12_SRGB_BLOCK : constant unsigned := 184;
   VK_FORMAT_G8B8G8R8_422_UNORM : constant unsigned := 1000156000;
   VK_FORMAT_B8G8R8G8_422_UNORM : constant unsigned := 1000156001;
   VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM : constant unsigned := 1000156002;
   VK_FORMAT_G8_B8R8_2PLANE_420_UNORM : constant unsigned := 1000156003;
   VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM : constant unsigned := 1000156004;
   VK_FORMAT_G8_B8R8_2PLANE_422_UNORM : constant unsigned := 1000156005;
   VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM : constant unsigned := 1000156006;
   VK_FORMAT_R10X6_UNORM_PACK16 : constant unsigned := 1000156007;
   VK_FORMAT_R10X6G10X6_UNORM_2PACK16 : constant unsigned := 1000156008;
   VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16 : constant unsigned := 1000156009;
   VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16 : constant unsigned := 1000156010;
   VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16 : constant unsigned := 1000156011;
   VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16 : constant unsigned := 1000156012;
   VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16 : constant unsigned := 1000156013;
   VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16 : constant unsigned := 1000156014;
   VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16 : constant unsigned := 1000156015;
   VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16 : constant unsigned := 1000156016;
   VK_FORMAT_R12X4_UNORM_PACK16 : constant unsigned := 1000156017;
   VK_FORMAT_R12X4G12X4_UNORM_2PACK16 : constant unsigned := 1000156018;
   VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16 : constant unsigned := 1000156019;
   VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16 : constant unsigned := 1000156020;
   VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16 : constant unsigned := 1000156021;
   VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16 : constant unsigned := 1000156022;
   VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16 : constant unsigned := 1000156023;
   VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16 : constant unsigned := 1000156024;
   VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16 : constant unsigned := 1000156025;
   VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16 : constant unsigned := 1000156026;
   VK_FORMAT_G16B16G16R16_422_UNORM : constant unsigned := 1000156027;
   VK_FORMAT_B16G16R16G16_422_UNORM : constant unsigned := 1000156028;
   VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM : constant unsigned := 1000156029;
   VK_FORMAT_G16_B16R16_2PLANE_420_UNORM : constant unsigned := 1000156030;
   VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM : constant unsigned := 1000156031;
   VK_FORMAT_G16_B16R16_2PLANE_422_UNORM : constant unsigned := 1000156032;
   VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM : constant unsigned := 1000156033;
   VK_FORMAT_PVRTC1_2BPP_UNORM_BLOCK_IMG : constant unsigned := 1000054000;
   VK_FORMAT_PVRTC1_4BPP_UNORM_BLOCK_IMG : constant unsigned := 1000054001;
   VK_FORMAT_PVRTC2_2BPP_UNORM_BLOCK_IMG : constant unsigned := 1000054002;
   VK_FORMAT_PVRTC2_4BPP_UNORM_BLOCK_IMG : constant unsigned := 1000054003;
   VK_FORMAT_PVRTC1_2BPP_SRGB_BLOCK_IMG : constant unsigned := 1000054004;
   VK_FORMAT_PVRTC1_4BPP_SRGB_BLOCK_IMG : constant unsigned := 1000054005;
   VK_FORMAT_PVRTC2_2BPP_SRGB_BLOCK_IMG : constant unsigned := 1000054006;
   VK_FORMAT_PVRTC2_4BPP_SRGB_BLOCK_IMG : constant unsigned := 1000054007;
   VK_FORMAT_ASTC_4x4_SFLOAT_BLOCK_EXT : constant unsigned := 1000066000;
   VK_FORMAT_ASTC_5x4_SFLOAT_BLOCK_EXT : constant unsigned := 1000066001;
   VK_FORMAT_ASTC_5x5_SFLOAT_BLOCK_EXT : constant unsigned := 1000066002;
   VK_FORMAT_ASTC_6x5_SFLOAT_BLOCK_EXT : constant unsigned := 1000066003;
   VK_FORMAT_ASTC_6x6_SFLOAT_BLOCK_EXT : constant unsigned := 1000066004;
   VK_FORMAT_ASTC_8x5_SFLOAT_BLOCK_EXT : constant unsigned := 1000066005;
   VK_FORMAT_ASTC_8x6_SFLOAT_BLOCK_EXT : constant unsigned := 1000066006;
   VK_FORMAT_ASTC_8x8_SFLOAT_BLOCK_EXT : constant unsigned := 1000066007;
   VK_FORMAT_ASTC_10x5_SFLOAT_BLOCK_EXT : constant unsigned := 1000066008;
   VK_FORMAT_ASTC_10x6_SFLOAT_BLOCK_EXT : constant unsigned := 1000066009;
   VK_FORMAT_ASTC_10x8_SFLOAT_BLOCK_EXT : constant unsigned := 1000066010;
   VK_FORMAT_ASTC_10x10_SFLOAT_BLOCK_EXT : constant unsigned := 1000066011;
   VK_FORMAT_ASTC_12x10_SFLOAT_BLOCK_EXT : constant unsigned := 1000066012;
   VK_FORMAT_ASTC_12x12_SFLOAT_BLOCK_EXT : constant unsigned := 1000066013;
   VK_FORMAT_G8B8G8R8_422_UNORM_KHR : constant unsigned := 1000156000;
   VK_FORMAT_B8G8R8G8_422_UNORM_KHR : constant unsigned := 1000156001;
   VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM_KHR : constant unsigned := 1000156002;
   VK_FORMAT_G8_B8R8_2PLANE_420_UNORM_KHR : constant unsigned := 1000156003;
   VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM_KHR : constant unsigned := 1000156004;
   VK_FORMAT_G8_B8R8_2PLANE_422_UNORM_KHR : constant unsigned := 1000156005;
   VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM_KHR : constant unsigned := 1000156006;
   VK_FORMAT_R10X6_UNORM_PACK16_KHR : constant unsigned := 1000156007;
   VK_FORMAT_R10X6G10X6_UNORM_2PACK16_KHR : constant unsigned := 1000156008;
   VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16_KHR : constant unsigned := 1000156009;
   VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16_KHR : constant unsigned := 1000156010;
   VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16_KHR : constant unsigned := 1000156011;
   VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16_KHR : constant unsigned := 1000156012;
   VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16_KHR : constant unsigned := 1000156013;
   VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16_KHR : constant unsigned := 1000156014;
   VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16_KHR : constant unsigned := 1000156015;
   VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16_KHR : constant unsigned := 1000156016;
   VK_FORMAT_R12X4_UNORM_PACK16_KHR : constant unsigned := 1000156017;
   VK_FORMAT_R12X4G12X4_UNORM_2PACK16_KHR : constant unsigned := 1000156018;
   VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16_KHR : constant unsigned := 1000156019;
   VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16_KHR : constant unsigned := 1000156020;
   VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16_KHR : constant unsigned := 1000156021;
   VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16_KHR : constant unsigned := 1000156022;
   VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16_KHR : constant unsigned := 1000156023;
   VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16_KHR : constant unsigned := 1000156024;
   VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16_KHR : constant unsigned := 1000156025;
   VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16_KHR : constant unsigned := 1000156026;
   VK_FORMAT_G16B16G16R16_422_UNORM_KHR : constant unsigned := 1000156027;
   VK_FORMAT_B16G16R16G16_422_UNORM_KHR : constant unsigned := 1000156028;
   VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM_KHR : constant unsigned := 1000156029;
   VK_FORMAT_G16_B16R16_2PLANE_420_UNORM_KHR : constant unsigned := 1000156030;
   VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM_KHR : constant unsigned := 1000156031;
   VK_FORMAT_G16_B16R16_2PLANE_422_UNORM_KHR : constant unsigned := 1000156032;
   VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM_KHR : constant unsigned := 1000156033;
   VK_FORMAT_BEGIN_RANGE : constant unsigned := 0;
   VK_FORMAT_END_RANGE : constant unsigned := 184;
   VK_FORMAT_RANGE_SIZE : constant unsigned := 185;
   VK_FORMAT_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:702

   subtype VkImageType is unsigned;
   VK_IMAGE_TYPE_1D : constant unsigned := 0;
   VK_IMAGE_TYPE_2D : constant unsigned := 1;
   VK_IMAGE_TYPE_3D : constant unsigned := 2;
   VK_IMAGE_TYPE_BEGIN_RANGE : constant unsigned := 0;
   VK_IMAGE_TYPE_END_RANGE : constant unsigned := 2;
   VK_IMAGE_TYPE_RANGE_SIZE : constant unsigned := 3;
   VK_IMAGE_TYPE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:984

   subtype VkImageTiling is unsigned;
   VK_IMAGE_TILING_OPTIMAL : constant unsigned := 0;
   VK_IMAGE_TILING_LINEAR : constant unsigned := 1;
   VK_IMAGE_TILING_DRM_FORMAT_MODIFIER_EXT : constant unsigned := 1000158000;
   VK_IMAGE_TILING_BEGIN_RANGE : constant unsigned := 0;
   VK_IMAGE_TILING_END_RANGE : constant unsigned := 1;
   VK_IMAGE_TILING_RANGE_SIZE : constant unsigned := 2;
   VK_IMAGE_TILING_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:994

   subtype VkPhysicalDeviceType is unsigned;
   VK_PHYSICAL_DEVICE_TYPE_OTHER : constant unsigned := 0;
   VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU : constant unsigned := 1;
   VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU : constant unsigned := 2;
   VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU : constant unsigned := 3;
   VK_PHYSICAL_DEVICE_TYPE_CPU : constant unsigned := 4;
   VK_PHYSICAL_DEVICE_TYPE_BEGIN_RANGE : constant unsigned := 0;
   VK_PHYSICAL_DEVICE_TYPE_END_RANGE : constant unsigned := 4;
   VK_PHYSICAL_DEVICE_TYPE_RANGE_SIZE : constant unsigned := 5;
   VK_PHYSICAL_DEVICE_TYPE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1004

   subtype VkQueryType is unsigned;
   VK_QUERY_TYPE_OCCLUSION : constant unsigned := 0;
   VK_QUERY_TYPE_PIPELINE_STATISTICS : constant unsigned := 1;
   VK_QUERY_TYPE_TIMESTAMP : constant unsigned := 2;
   VK_QUERY_TYPE_TRANSFORM_FEEDBACK_STREAM_EXT : constant unsigned := 1000028004;
   VK_QUERY_TYPE_PERFORMANCE_QUERY_KHR : constant unsigned := 1000116000;
   VK_QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_NV : constant unsigned := 1000165000;
   VK_QUERY_TYPE_PERFORMANCE_QUERY_INTEL : constant unsigned := 1000210000;
   VK_QUERY_TYPE_BEGIN_RANGE : constant unsigned := 0;
   VK_QUERY_TYPE_END_RANGE : constant unsigned := 2;
   VK_QUERY_TYPE_RANGE_SIZE : constant unsigned := 3;
   VK_QUERY_TYPE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1016

   subtype VkSharingMode is unsigned;
   VK_SHARING_MODE_EXCLUSIVE : constant unsigned := 0;
   VK_SHARING_MODE_CONCURRENT : constant unsigned := 1;
   VK_SHARING_MODE_BEGIN_RANGE : constant unsigned := 0;
   VK_SHARING_MODE_END_RANGE : constant unsigned := 1;
   VK_SHARING_MODE_RANGE_SIZE : constant unsigned := 2;
   VK_SHARING_MODE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1030

   subtype VkImageLayout is unsigned;
   VK_IMAGE_LAYOUT_UNDEFINED : constant unsigned := 0;
   VK_IMAGE_LAYOUT_GENERAL : constant unsigned := 1;
   VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL : constant unsigned := 2;
   VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL : constant unsigned := 3;
   VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL : constant unsigned := 4;
   VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL : constant unsigned := 5;
   VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL : constant unsigned := 6;
   VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL : constant unsigned := 7;
   VK_IMAGE_LAYOUT_PREINITIALIZED : constant unsigned := 8;
   VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL : constant unsigned := 1000117000;
   VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL : constant unsigned := 1000117001;
   VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL : constant unsigned := 1000241000;
   VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL : constant unsigned := 1000241001;
   VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL : constant unsigned := 1000241002;
   VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL : constant unsigned := 1000241003;
   VK_IMAGE_LAYOUT_PRESENT_SRC_KHR : constant unsigned := 1000001002;
   VK_IMAGE_LAYOUT_SHARED_PRESENT_KHR : constant unsigned := 1000111000;
   VK_IMAGE_LAYOUT_SHADING_RATE_OPTIMAL_NV : constant unsigned := 1000164003;
   VK_IMAGE_LAYOUT_FRAGMENT_DENSITY_MAP_OPTIMAL_EXT : constant unsigned := 1000218000;
   VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL_KHR : constant unsigned := 1000117000;
   VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL_KHR : constant unsigned := 1000117001;
   VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL_KHR : constant unsigned := 1000241000;
   VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL_KHR : constant unsigned := 1000241001;
   VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL_KHR : constant unsigned := 1000241002;
   VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL_KHR : constant unsigned := 1000241003;
   VK_IMAGE_LAYOUT_BEGIN_RANGE : constant unsigned := 0;
   VK_IMAGE_LAYOUT_END_RANGE : constant unsigned := 8;
   VK_IMAGE_LAYOUT_RANGE_SIZE : constant unsigned := 9;
   VK_IMAGE_LAYOUT_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1039

   subtype VkImageViewType is unsigned;
   VK_IMAGE_VIEW_TYPE_1D : constant unsigned := 0;
   VK_IMAGE_VIEW_TYPE_2D : constant unsigned := 1;
   VK_IMAGE_VIEW_TYPE_3D : constant unsigned := 2;
   VK_IMAGE_VIEW_TYPE_CUBE : constant unsigned := 3;
   VK_IMAGE_VIEW_TYPE_1D_ARRAY : constant unsigned := 4;
   VK_IMAGE_VIEW_TYPE_2D_ARRAY : constant unsigned := 5;
   VK_IMAGE_VIEW_TYPE_CUBE_ARRAY : constant unsigned := 6;
   VK_IMAGE_VIEW_TYPE_BEGIN_RANGE : constant unsigned := 0;
   VK_IMAGE_VIEW_TYPE_END_RANGE : constant unsigned := 6;
   VK_IMAGE_VIEW_TYPE_RANGE_SIZE : constant unsigned := 7;
   VK_IMAGE_VIEW_TYPE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1071

   subtype VkComponentSwizzle is unsigned;
   VK_COMPONENT_SWIZZLE_IDENTITY : constant unsigned := 0;
   VK_COMPONENT_SWIZZLE_ZERO : constant unsigned := 1;
   VK_COMPONENT_SWIZZLE_ONE : constant unsigned := 2;
   VK_COMPONENT_SWIZZLE_R : constant unsigned := 3;
   VK_COMPONENT_SWIZZLE_G : constant unsigned := 4;
   VK_COMPONENT_SWIZZLE_B : constant unsigned := 5;
   VK_COMPONENT_SWIZZLE_A : constant unsigned := 6;
   VK_COMPONENT_SWIZZLE_BEGIN_RANGE : constant unsigned := 0;
   VK_COMPONENT_SWIZZLE_END_RANGE : constant unsigned := 6;
   VK_COMPONENT_SWIZZLE_RANGE_SIZE : constant unsigned := 7;
   VK_COMPONENT_SWIZZLE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1085

   subtype VkVertexInputRate is unsigned;
   VK_VERTEX_INPUT_RATE_VERTEX : constant unsigned := 0;
   VK_VERTEX_INPUT_RATE_INSTANCE : constant unsigned := 1;
   VK_VERTEX_INPUT_RATE_BEGIN_RANGE : constant unsigned := 0;
   VK_VERTEX_INPUT_RATE_END_RANGE : constant unsigned := 1;
   VK_VERTEX_INPUT_RATE_RANGE_SIZE : constant unsigned := 2;
   VK_VERTEX_INPUT_RATE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1099

   subtype VkPrimitiveTopology is unsigned;
   VK_PRIMITIVE_TOPOLOGY_POINT_LIST : constant unsigned := 0;
   VK_PRIMITIVE_TOPOLOGY_LINE_LIST : constant unsigned := 1;
   VK_PRIMITIVE_TOPOLOGY_LINE_STRIP : constant unsigned := 2;
   VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST : constant unsigned := 3;
   VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP : constant unsigned := 4;
   VK_PRIMITIVE_TOPOLOGY_TRIANGLE_FAN : constant unsigned := 5;
   VK_PRIMITIVE_TOPOLOGY_LINE_LIST_WITH_ADJACENCY : constant unsigned := 6;
   VK_PRIMITIVE_TOPOLOGY_LINE_STRIP_WITH_ADJACENCY : constant unsigned := 7;
   VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST_WITH_ADJACENCY : constant unsigned := 8;
   VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP_WITH_ADJACENCY : constant unsigned := 9;
   VK_PRIMITIVE_TOPOLOGY_PATCH_LIST : constant unsigned := 10;
   VK_PRIMITIVE_TOPOLOGY_BEGIN_RANGE : constant unsigned := 0;
   VK_PRIMITIVE_TOPOLOGY_END_RANGE : constant unsigned := 10;
   VK_PRIMITIVE_TOPOLOGY_RANGE_SIZE : constant unsigned := 11;
   VK_PRIMITIVE_TOPOLOGY_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1108

   subtype VkPolygonMode is unsigned;
   VK_POLYGON_MODE_FILL : constant unsigned := 0;
   VK_POLYGON_MODE_LINE : constant unsigned := 1;
   VK_POLYGON_MODE_POINT : constant unsigned := 2;
   VK_POLYGON_MODE_FILL_RECTANGLE_NV : constant unsigned := 1000153000;
   VK_POLYGON_MODE_BEGIN_RANGE : constant unsigned := 0;
   VK_POLYGON_MODE_END_RANGE : constant unsigned := 2;
   VK_POLYGON_MODE_RANGE_SIZE : constant unsigned := 3;
   VK_POLYGON_MODE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1126

   subtype VkFrontFace is unsigned;
   VK_FRONT_FACE_COUNTER_CLOCKWISE : constant unsigned := 0;
   VK_FRONT_FACE_CLOCKWISE : constant unsigned := 1;
   VK_FRONT_FACE_BEGIN_RANGE : constant unsigned := 0;
   VK_FRONT_FACE_END_RANGE : constant unsigned := 1;
   VK_FRONT_FACE_RANGE_SIZE : constant unsigned := 2;
   VK_FRONT_FACE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1137

   subtype VkCompareOp is unsigned;
   VK_COMPARE_OP_NEVER : constant unsigned := 0;
   VK_COMPARE_OP_LESS : constant unsigned := 1;
   VK_COMPARE_OP_EQUAL : constant unsigned := 2;
   VK_COMPARE_OP_LESS_OR_EQUAL : constant unsigned := 3;
   VK_COMPARE_OP_GREATER : constant unsigned := 4;
   VK_COMPARE_OP_NOT_EQUAL : constant unsigned := 5;
   VK_COMPARE_OP_GREATER_OR_EQUAL : constant unsigned := 6;
   VK_COMPARE_OP_ALWAYS : constant unsigned := 7;
   VK_COMPARE_OP_BEGIN_RANGE : constant unsigned := 0;
   VK_COMPARE_OP_END_RANGE : constant unsigned := 7;
   VK_COMPARE_OP_RANGE_SIZE : constant unsigned := 8;
   VK_COMPARE_OP_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1146

   subtype VkStencilOp is unsigned;
   VK_STENCIL_OP_KEEP : constant unsigned := 0;
   VK_STENCIL_OP_ZERO : constant unsigned := 1;
   VK_STENCIL_OP_REPLACE : constant unsigned := 2;
   VK_STENCIL_OP_INCREMENT_AND_CLAMP : constant unsigned := 3;
   VK_STENCIL_OP_DECREMENT_AND_CLAMP : constant unsigned := 4;
   VK_STENCIL_OP_INVERT : constant unsigned := 5;
   VK_STENCIL_OP_INCREMENT_AND_WRAP : constant unsigned := 6;
   VK_STENCIL_OP_DECREMENT_AND_WRAP : constant unsigned := 7;
   VK_STENCIL_OP_BEGIN_RANGE : constant unsigned := 0;
   VK_STENCIL_OP_END_RANGE : constant unsigned := 7;
   VK_STENCIL_OP_RANGE_SIZE : constant unsigned := 8;
   VK_STENCIL_OP_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1161

   subtype VkLogicOp is unsigned;
   VK_LOGIC_OP_CLEAR : constant unsigned := 0;
   VK_LOGIC_OP_AND : constant unsigned := 1;
   VK_LOGIC_OP_AND_REVERSE : constant unsigned := 2;
   VK_LOGIC_OP_COPY : constant unsigned := 3;
   VK_LOGIC_OP_AND_INVERTED : constant unsigned := 4;
   VK_LOGIC_OP_NO_OP : constant unsigned := 5;
   VK_LOGIC_OP_XOR : constant unsigned := 6;
   VK_LOGIC_OP_OR : constant unsigned := 7;
   VK_LOGIC_OP_NOR : constant unsigned := 8;
   VK_LOGIC_OP_EQUIVALENT : constant unsigned := 9;
   VK_LOGIC_OP_INVERT : constant unsigned := 10;
   VK_LOGIC_OP_OR_REVERSE : constant unsigned := 11;
   VK_LOGIC_OP_COPY_INVERTED : constant unsigned := 12;
   VK_LOGIC_OP_OR_INVERTED : constant unsigned := 13;
   VK_LOGIC_OP_NAND : constant unsigned := 14;
   VK_LOGIC_OP_SET : constant unsigned := 15;
   VK_LOGIC_OP_BEGIN_RANGE : constant unsigned := 0;
   VK_LOGIC_OP_END_RANGE : constant unsigned := 15;
   VK_LOGIC_OP_RANGE_SIZE : constant unsigned := 16;
   VK_LOGIC_OP_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1176

   subtype VkBlendFactor is unsigned;
   VK_BLEND_FACTOR_ZERO : constant unsigned := 0;
   VK_BLEND_FACTOR_ONE : constant unsigned := 1;
   VK_BLEND_FACTOR_SRC_COLOR : constant unsigned := 2;
   VK_BLEND_FACTOR_ONE_MINUS_SRC_COLOR : constant unsigned := 3;
   VK_BLEND_FACTOR_DST_COLOR : constant unsigned := 4;
   VK_BLEND_FACTOR_ONE_MINUS_DST_COLOR : constant unsigned := 5;
   VK_BLEND_FACTOR_SRC_ALPHA : constant unsigned := 6;
   VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA : constant unsigned := 7;
   VK_BLEND_FACTOR_DST_ALPHA : constant unsigned := 8;
   VK_BLEND_FACTOR_ONE_MINUS_DST_ALPHA : constant unsigned := 9;
   VK_BLEND_FACTOR_CONSTANT_COLOR : constant unsigned := 10;
   VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR : constant unsigned := 11;
   VK_BLEND_FACTOR_CONSTANT_ALPHA : constant unsigned := 12;
   VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA : constant unsigned := 13;
   VK_BLEND_FACTOR_SRC_ALPHA_SATURATE : constant unsigned := 14;
   VK_BLEND_FACTOR_SRC1_COLOR : constant unsigned := 15;
   VK_BLEND_FACTOR_ONE_MINUS_SRC1_COLOR : constant unsigned := 16;
   VK_BLEND_FACTOR_SRC1_ALPHA : constant unsigned := 17;
   VK_BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA : constant unsigned := 18;
   VK_BLEND_FACTOR_BEGIN_RANGE : constant unsigned := 0;
   VK_BLEND_FACTOR_END_RANGE : constant unsigned := 18;
   VK_BLEND_FACTOR_RANGE_SIZE : constant unsigned := 19;
   VK_BLEND_FACTOR_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1199

   subtype VkBlendOp is unsigned;
   VK_BLEND_OP_ADD : constant unsigned := 0;
   VK_BLEND_OP_SUBTRACT : constant unsigned := 1;
   VK_BLEND_OP_REVERSE_SUBTRACT : constant unsigned := 2;
   VK_BLEND_OP_MIN : constant unsigned := 3;
   VK_BLEND_OP_MAX : constant unsigned := 4;
   VK_BLEND_OP_ZERO_EXT : constant unsigned := 1000148000;
   VK_BLEND_OP_SRC_EXT : constant unsigned := 1000148001;
   VK_BLEND_OP_DST_EXT : constant unsigned := 1000148002;
   VK_BLEND_OP_SRC_OVER_EXT : constant unsigned := 1000148003;
   VK_BLEND_OP_DST_OVER_EXT : constant unsigned := 1000148004;
   VK_BLEND_OP_SRC_IN_EXT : constant unsigned := 1000148005;
   VK_BLEND_OP_DST_IN_EXT : constant unsigned := 1000148006;
   VK_BLEND_OP_SRC_OUT_EXT : constant unsigned := 1000148007;
   VK_BLEND_OP_DST_OUT_EXT : constant unsigned := 1000148008;
   VK_BLEND_OP_SRC_ATOP_EXT : constant unsigned := 1000148009;
   VK_BLEND_OP_DST_ATOP_EXT : constant unsigned := 1000148010;
   VK_BLEND_OP_XOR_EXT : constant unsigned := 1000148011;
   VK_BLEND_OP_MULTIPLY_EXT : constant unsigned := 1000148012;
   VK_BLEND_OP_SCREEN_EXT : constant unsigned := 1000148013;
   VK_BLEND_OP_OVERLAY_EXT : constant unsigned := 1000148014;
   VK_BLEND_OP_DARKEN_EXT : constant unsigned := 1000148015;
   VK_BLEND_OP_LIGHTEN_EXT : constant unsigned := 1000148016;
   VK_BLEND_OP_COLORDODGE_EXT : constant unsigned := 1000148017;
   VK_BLEND_OP_COLORBURN_EXT : constant unsigned := 1000148018;
   VK_BLEND_OP_HARDLIGHT_EXT : constant unsigned := 1000148019;
   VK_BLEND_OP_SOFTLIGHT_EXT : constant unsigned := 1000148020;
   VK_BLEND_OP_DIFFERENCE_EXT : constant unsigned := 1000148021;
   VK_BLEND_OP_EXCLUSION_EXT : constant unsigned := 1000148022;
   VK_BLEND_OP_INVERT_EXT : constant unsigned := 1000148023;
   VK_BLEND_OP_INVERT_RGB_EXT : constant unsigned := 1000148024;
   VK_BLEND_OP_LINEARDODGE_EXT : constant unsigned := 1000148025;
   VK_BLEND_OP_LINEARBURN_EXT : constant unsigned := 1000148026;
   VK_BLEND_OP_VIVIDLIGHT_EXT : constant unsigned := 1000148027;
   VK_BLEND_OP_LINEARLIGHT_EXT : constant unsigned := 1000148028;
   VK_BLEND_OP_PINLIGHT_EXT : constant unsigned := 1000148029;
   VK_BLEND_OP_HARDMIX_EXT : constant unsigned := 1000148030;
   VK_BLEND_OP_HSL_HUE_EXT : constant unsigned := 1000148031;
   VK_BLEND_OP_HSL_SATURATION_EXT : constant unsigned := 1000148032;
   VK_BLEND_OP_HSL_COLOR_EXT : constant unsigned := 1000148033;
   VK_BLEND_OP_HSL_LUMINOSITY_EXT : constant unsigned := 1000148034;
   VK_BLEND_OP_PLUS_EXT : constant unsigned := 1000148035;
   VK_BLEND_OP_PLUS_CLAMPED_EXT : constant unsigned := 1000148036;
   VK_BLEND_OP_PLUS_CLAMPED_ALPHA_EXT : constant unsigned := 1000148037;
   VK_BLEND_OP_PLUS_DARKER_EXT : constant unsigned := 1000148038;
   VK_BLEND_OP_MINUS_EXT : constant unsigned := 1000148039;
   VK_BLEND_OP_MINUS_CLAMPED_EXT : constant unsigned := 1000148040;
   VK_BLEND_OP_CONTRAST_EXT : constant unsigned := 1000148041;
   VK_BLEND_OP_INVERT_OVG_EXT : constant unsigned := 1000148042;
   VK_BLEND_OP_RED_EXT : constant unsigned := 1000148043;
   VK_BLEND_OP_GREEN_EXT : constant unsigned := 1000148044;
   VK_BLEND_OP_BLUE_EXT : constant unsigned := 1000148045;
   VK_BLEND_OP_BEGIN_RANGE : constant unsigned := 0;
   VK_BLEND_OP_END_RANGE : constant unsigned := 4;
   VK_BLEND_OP_RANGE_SIZE : constant unsigned := 5;
   VK_BLEND_OP_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1225

   subtype VkDynamicState is unsigned;
   VK_DYNAMIC_STATE_VIEWPORT : constant unsigned := 0;
   VK_DYNAMIC_STATE_SCISSOR : constant unsigned := 1;
   VK_DYNAMIC_STATE_LINE_WIDTH : constant unsigned := 2;
   VK_DYNAMIC_STATE_DEPTH_BIAS : constant unsigned := 3;
   VK_DYNAMIC_STATE_BLEND_CONSTANTS : constant unsigned := 4;
   VK_DYNAMIC_STATE_DEPTH_BOUNDS : constant unsigned := 5;
   VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK : constant unsigned := 6;
   VK_DYNAMIC_STATE_STENCIL_WRITE_MASK : constant unsigned := 7;
   VK_DYNAMIC_STATE_STENCIL_REFERENCE : constant unsigned := 8;
   VK_DYNAMIC_STATE_VIEWPORT_W_SCALING_NV : constant unsigned := 1000087000;
   VK_DYNAMIC_STATE_DISCARD_RECTANGLE_EXT : constant unsigned := 1000099000;
   VK_DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT : constant unsigned := 1000143000;
   VK_DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV : constant unsigned := 1000164004;
   VK_DYNAMIC_STATE_VIEWPORT_COARSE_SAMPLE_ORDER_NV : constant unsigned := 1000164006;
   VK_DYNAMIC_STATE_EXCLUSIVE_SCISSOR_NV : constant unsigned := 1000205001;
   VK_DYNAMIC_STATE_LINE_STIPPLE_EXT : constant unsigned := 1000259000;
   VK_DYNAMIC_STATE_BEGIN_RANGE : constant unsigned := 0;
   VK_DYNAMIC_STATE_END_RANGE : constant unsigned := 8;
   VK_DYNAMIC_STATE_RANGE_SIZE : constant unsigned := 9;
   VK_DYNAMIC_STATE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1283

   subtype VkFilter is unsigned;
   VK_FILTER_NEAREST : constant unsigned := 0;
   VK_FILTER_LINEAR : constant unsigned := 1;
   VK_FILTER_CUBIC_IMG : constant unsigned := 1000015000;
   VK_FILTER_CUBIC_EXT : constant unsigned := 1000015000;
   VK_FILTER_BEGIN_RANGE : constant unsigned := 0;
   VK_FILTER_END_RANGE : constant unsigned := 1;
   VK_FILTER_RANGE_SIZE : constant unsigned := 2;
   VK_FILTER_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1306

   subtype VkSamplerMipmapMode is unsigned;
   VK_SAMPLER_MIPMAP_MODE_NEAREST : constant unsigned := 0;
   VK_SAMPLER_MIPMAP_MODE_LINEAR : constant unsigned := 1;
   VK_SAMPLER_MIPMAP_MODE_BEGIN_RANGE : constant unsigned := 0;
   VK_SAMPLER_MIPMAP_MODE_END_RANGE : constant unsigned := 1;
   VK_SAMPLER_MIPMAP_MODE_RANGE_SIZE : constant unsigned := 2;
   VK_SAMPLER_MIPMAP_MODE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1317

   subtype VkSamplerAddressMode is unsigned;
   VK_SAMPLER_ADDRESS_MODE_REPEAT : constant unsigned := 0;
   VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT : constant unsigned := 1;
   VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE : constant unsigned := 2;
   VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER : constant unsigned := 3;
   VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE : constant unsigned := 4;
   VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE_KHR : constant unsigned := 4;
   VK_SAMPLER_ADDRESS_MODE_BEGIN_RANGE : constant unsigned := 0;
   VK_SAMPLER_ADDRESS_MODE_END_RANGE : constant unsigned := 3;
   VK_SAMPLER_ADDRESS_MODE_RANGE_SIZE : constant unsigned := 4;
   VK_SAMPLER_ADDRESS_MODE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1326

   subtype VkBorderColor is unsigned;
   VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK : constant unsigned := 0;
   VK_BORDER_COLOR_INT_TRANSPARENT_BLACK : constant unsigned := 1;
   VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK : constant unsigned := 2;
   VK_BORDER_COLOR_INT_OPAQUE_BLACK : constant unsigned := 3;
   VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE : constant unsigned := 4;
   VK_BORDER_COLOR_INT_OPAQUE_WHITE : constant unsigned := 5;
   VK_BORDER_COLOR_BEGIN_RANGE : constant unsigned := 0;
   VK_BORDER_COLOR_END_RANGE : constant unsigned := 5;
   VK_BORDER_COLOR_RANGE_SIZE : constant unsigned := 6;
   VK_BORDER_COLOR_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1339

   subtype VkDescriptorType is unsigned;
   VK_DESCRIPTOR_TYPE_SAMPLER : constant unsigned := 0;
   VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER : constant unsigned := 1;
   VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE : constant unsigned := 2;
   VK_DESCRIPTOR_TYPE_STORAGE_IMAGE : constant unsigned := 3;
   VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER : constant unsigned := 4;
   VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER : constant unsigned := 5;
   VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER : constant unsigned := 6;
   VK_DESCRIPTOR_TYPE_STORAGE_BUFFER : constant unsigned := 7;
   VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC : constant unsigned := 8;
   VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC : constant unsigned := 9;
   VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT : constant unsigned := 10;
   VK_DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK_EXT : constant unsigned := 1000138000;
   VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_NV : constant unsigned := 1000165000;
   VK_DESCRIPTOR_TYPE_BEGIN_RANGE : constant unsigned := 0;
   VK_DESCRIPTOR_TYPE_END_RANGE : constant unsigned := 10;
   VK_DESCRIPTOR_TYPE_RANGE_SIZE : constant unsigned := 11;
   VK_DESCRIPTOR_TYPE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1352

   subtype VkAttachmentLoadOp is unsigned;
   VK_ATTACHMENT_LOAD_OP_LOAD : constant unsigned := 0;
   VK_ATTACHMENT_LOAD_OP_CLEAR : constant unsigned := 1;
   VK_ATTACHMENT_LOAD_OP_DONT_CARE : constant unsigned := 2;
   VK_ATTACHMENT_LOAD_OP_BEGIN_RANGE : constant unsigned := 0;
   VK_ATTACHMENT_LOAD_OP_END_RANGE : constant unsigned := 2;
   VK_ATTACHMENT_LOAD_OP_RANGE_SIZE : constant unsigned := 3;
   VK_ATTACHMENT_LOAD_OP_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1372

   subtype VkAttachmentStoreOp is unsigned;
   VK_ATTACHMENT_STORE_OP_STORE : constant unsigned := 0;
   VK_ATTACHMENT_STORE_OP_DONT_CARE : constant unsigned := 1;
   VK_ATTACHMENT_STORE_OP_BEGIN_RANGE : constant unsigned := 0;
   VK_ATTACHMENT_STORE_OP_END_RANGE : constant unsigned := 1;
   VK_ATTACHMENT_STORE_OP_RANGE_SIZE : constant unsigned := 2;
   VK_ATTACHMENT_STORE_OP_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1382

   subtype VkPipelineBindPoint is unsigned;
   VK_PIPELINE_BIND_POINT_GRAPHICS : constant unsigned := 0;
   VK_PIPELINE_BIND_POINT_COMPUTE : constant unsigned := 1;
   VK_PIPELINE_BIND_POINT_RAY_TRACING_NV : constant unsigned := 1000165000;
   VK_PIPELINE_BIND_POINT_BEGIN_RANGE : constant unsigned := 0;
   VK_PIPELINE_BIND_POINT_END_RANGE : constant unsigned := 1;
   VK_PIPELINE_BIND_POINT_RANGE_SIZE : constant unsigned := 2;
   VK_PIPELINE_BIND_POINT_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1391

   subtype VkCommandBufferLevel is unsigned;
   VK_COMMAND_BUFFER_LEVEL_PRIMARY : constant unsigned := 0;
   VK_COMMAND_BUFFER_LEVEL_SECONDARY : constant unsigned := 1;
   VK_COMMAND_BUFFER_LEVEL_BEGIN_RANGE : constant unsigned := 0;
   VK_COMMAND_BUFFER_LEVEL_END_RANGE : constant unsigned := 1;
   VK_COMMAND_BUFFER_LEVEL_RANGE_SIZE : constant unsigned := 2;
   VK_COMMAND_BUFFER_LEVEL_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1401

   subtype VkIndexType is unsigned;
   VK_INDEX_TYPE_UINT16 : constant unsigned := 0;
   VK_INDEX_TYPE_UINT32 : constant unsigned := 1;
   VK_INDEX_TYPE_NONE_NV : constant unsigned := 1000165000;
   VK_INDEX_TYPE_UINT8_EXT : constant unsigned := 1000265000;
   VK_INDEX_TYPE_BEGIN_RANGE : constant unsigned := 0;
   VK_INDEX_TYPE_END_RANGE : constant unsigned := 1;
   VK_INDEX_TYPE_RANGE_SIZE : constant unsigned := 2;
   VK_INDEX_TYPE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1410

   subtype VkSubpassContents is unsigned;
   VK_SUBPASS_CONTENTS_INLINE : constant unsigned := 0;
   VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS : constant unsigned := 1;
   VK_SUBPASS_CONTENTS_BEGIN_RANGE : constant unsigned := 0;
   VK_SUBPASS_CONTENTS_END_RANGE : constant unsigned := 1;
   VK_SUBPASS_CONTENTS_RANGE_SIZE : constant unsigned := 2;
   VK_SUBPASS_CONTENTS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1421

   subtype VkObjectType is unsigned;
   VK_OBJECT_TYPE_UNKNOWN : constant unsigned := 0;
   VK_OBJECT_TYPE_INSTANCE : constant unsigned := 1;
   VK_OBJECT_TYPE_PHYSICAL_DEVICE : constant unsigned := 2;
   VK_OBJECT_TYPE_DEVICE : constant unsigned := 3;
   VK_OBJECT_TYPE_QUEUE : constant unsigned := 4;
   VK_OBJECT_TYPE_SEMAPHORE : constant unsigned := 5;
   VK_OBJECT_TYPE_COMMAND_BUFFER : constant unsigned := 6;
   VK_OBJECT_TYPE_FENCE : constant unsigned := 7;
   VK_OBJECT_TYPE_DEVICE_MEMORY : constant unsigned := 8;
   VK_OBJECT_TYPE_BUFFER : constant unsigned := 9;
   VK_OBJECT_TYPE_IMAGE : constant unsigned := 10;
   VK_OBJECT_TYPE_EVENT : constant unsigned := 11;
   VK_OBJECT_TYPE_QUERY_POOL : constant unsigned := 12;
   VK_OBJECT_TYPE_BUFFER_VIEW : constant unsigned := 13;
   VK_OBJECT_TYPE_IMAGE_VIEW : constant unsigned := 14;
   VK_OBJECT_TYPE_SHADER_MODULE : constant unsigned := 15;
   VK_OBJECT_TYPE_PIPELINE_CACHE : constant unsigned := 16;
   VK_OBJECT_TYPE_PIPELINE_LAYOUT : constant unsigned := 17;
   VK_OBJECT_TYPE_RENDER_PASS : constant unsigned := 18;
   VK_OBJECT_TYPE_PIPELINE : constant unsigned := 19;
   VK_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT : constant unsigned := 20;
   VK_OBJECT_TYPE_SAMPLER : constant unsigned := 21;
   VK_OBJECT_TYPE_DESCRIPTOR_POOL : constant unsigned := 22;
   VK_OBJECT_TYPE_DESCRIPTOR_SET : constant unsigned := 23;
   VK_OBJECT_TYPE_FRAMEBUFFER : constant unsigned := 24;
   VK_OBJECT_TYPE_COMMAND_POOL : constant unsigned := 25;
   VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION : constant unsigned := 1000156000;
   VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE : constant unsigned := 1000085000;
   VK_OBJECT_TYPE_SURFACE_KHR : constant unsigned := 1000000000;
   VK_OBJECT_TYPE_SWAPCHAIN_KHR : constant unsigned := 1000001000;
   VK_OBJECT_TYPE_DISPLAY_KHR : constant unsigned := 1000002000;
   VK_OBJECT_TYPE_DISPLAY_MODE_KHR : constant unsigned := 1000002001;
   VK_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT : constant unsigned := 1000011000;
   VK_OBJECT_TYPE_OBJECT_TABLE_NVX : constant unsigned := 1000086000;
   VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NVX : constant unsigned := 1000086001;
   VK_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT : constant unsigned := 1000128000;
   VK_OBJECT_TYPE_VALIDATION_CACHE_EXT : constant unsigned := 1000160000;
   VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV : constant unsigned := 1000165000;
   VK_OBJECT_TYPE_PERFORMANCE_CONFIGURATION_INTEL : constant unsigned := 1000210000;
   VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR : constant unsigned := 1000085000;
   VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR : constant unsigned := 1000156000;
   VK_OBJECT_TYPE_BEGIN_RANGE : constant unsigned := 0;
   VK_OBJECT_TYPE_END_RANGE : constant unsigned := 25;
   VK_OBJECT_TYPE_RANGE_SIZE : constant unsigned := 26;
   VK_OBJECT_TYPE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1430

   subtype VkVendorId is unsigned;
   VK_VENDOR_ID_VIV : constant unsigned := 65537;
   VK_VENDOR_ID_VSI : constant unsigned := 65538;
   VK_VENDOR_ID_KAZAN : constant unsigned := 65539;
   VK_VENDOR_ID_BEGIN_RANGE : constant unsigned := 65537;
   VK_VENDOR_ID_END_RANGE : constant unsigned := 65539;
   VK_VENDOR_ID_RANGE_SIZE : constant unsigned := 3;
   VK_VENDOR_ID_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1478

   subtype VkInstanceCreateFlags is VkFlags;  -- vulkan_core.h:1487

   subtype VkFormatFeatureFlagBits is unsigned;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT : constant unsigned := 1;
   VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT : constant unsigned := 2;
   VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT : constant unsigned := 4;
   VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT : constant unsigned := 8;
   VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT : constant unsigned := 16;
   VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT : constant unsigned := 32;
   VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT : constant unsigned := 64;
   VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT : constant unsigned := 128;
   VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT : constant unsigned := 256;
   VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT : constant unsigned := 512;
   VK_FORMAT_FEATURE_BLIT_SRC_BIT : constant unsigned := 1024;
   VK_FORMAT_FEATURE_BLIT_DST_BIT : constant unsigned := 2048;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT : constant unsigned := 4096;
   VK_FORMAT_FEATURE_TRANSFER_SRC_BIT : constant unsigned := 16384;
   VK_FORMAT_FEATURE_TRANSFER_DST_BIT : constant unsigned := 32768;
   VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT : constant unsigned := 131072;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT : constant unsigned := 262144;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT : constant unsigned := 524288;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT : constant unsigned := 1048576;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT : constant unsigned := 2097152;
   VK_FORMAT_FEATURE_DISJOINT_BIT : constant unsigned := 4194304;
   VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT : constant unsigned := 8388608;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT : constant unsigned := 65536;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_IMG : constant unsigned := 8192;
   VK_FORMAT_FEATURE_FRAGMENT_DENSITY_MAP_BIT_EXT : constant unsigned := 16777216;
   VK_FORMAT_FEATURE_TRANSFER_SRC_BIT_KHR : constant unsigned := 16384;
   VK_FORMAT_FEATURE_TRANSFER_DST_BIT_KHR : constant unsigned := 32768;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT : constant unsigned := 65536;
   VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT_KHR : constant unsigned := 131072;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR : constant unsigned := 262144;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR : constant unsigned := 524288;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR : constant unsigned := 1048576;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR : constant unsigned := 2097152;
   VK_FORMAT_FEATURE_DISJOINT_BIT_KHR : constant unsigned := 4194304;
   VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT_KHR : constant unsigned := 8388608;
   VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT : constant unsigned := 8192;
   VK_FORMAT_FEATURE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1489

   subtype VkFormatFeatureFlags is VkFlags;  -- vulkan_core.h:1528

   subtype VkImageUsageFlagBits is unsigned;
   VK_IMAGE_USAGE_TRANSFER_SRC_BIT : constant unsigned := 1;
   VK_IMAGE_USAGE_TRANSFER_DST_BIT : constant unsigned := 2;
   VK_IMAGE_USAGE_SAMPLED_BIT : constant unsigned := 4;
   VK_IMAGE_USAGE_STORAGE_BIT : constant unsigned := 8;
   VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT : constant unsigned := 16;
   VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT : constant unsigned := 32;
   VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT : constant unsigned := 64;
   VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT : constant unsigned := 128;
   VK_IMAGE_USAGE_SHADING_RATE_IMAGE_BIT_NV : constant unsigned := 256;
   VK_IMAGE_USAGE_FRAGMENT_DENSITY_MAP_BIT_EXT : constant unsigned := 512;
   VK_IMAGE_USAGE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1530

   subtype VkImageUsageFlags is VkFlags;  -- vulkan_core.h:1543

   subtype VkImageCreateFlagBits is unsigned;
   VK_IMAGE_CREATE_SPARSE_BINDING_BIT : constant unsigned := 1;
   VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT : constant unsigned := 2;
   VK_IMAGE_CREATE_SPARSE_ALIASED_BIT : constant unsigned := 4;
   VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT : constant unsigned := 8;
   VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT : constant unsigned := 16;
   VK_IMAGE_CREATE_ALIAS_BIT : constant unsigned := 1024;
   VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT : constant unsigned := 64;
   VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT : constant unsigned := 32;
   VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT : constant unsigned := 128;
   VK_IMAGE_CREATE_EXTENDED_USAGE_BIT : constant unsigned := 256;
   VK_IMAGE_CREATE_PROTECTED_BIT : constant unsigned := 2048;
   VK_IMAGE_CREATE_DISJOINT_BIT : constant unsigned := 512;
   VK_IMAGE_CREATE_CORNER_SAMPLED_BIT_NV : constant unsigned := 8192;
   VK_IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT : constant unsigned := 4096;
   VK_IMAGE_CREATE_SUBSAMPLED_BIT_EXT : constant unsigned := 16384;
   VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR : constant unsigned := 64;
   VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT_KHR : constant unsigned := 32;
   VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT_KHR : constant unsigned := 128;
   VK_IMAGE_CREATE_EXTENDED_USAGE_BIT_KHR : constant unsigned := 256;
   VK_IMAGE_CREATE_DISJOINT_BIT_KHR : constant unsigned := 512;
   VK_IMAGE_CREATE_ALIAS_BIT_KHR : constant unsigned := 1024;
   VK_IMAGE_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1545

   subtype VkImageCreateFlags is VkFlags;  -- vulkan_core.h:1569

   subtype VkSampleCountFlagBits is unsigned;
   VK_SAMPLE_COUNT_1_BIT : constant unsigned := 1;
   VK_SAMPLE_COUNT_2_BIT : constant unsigned := 2;
   VK_SAMPLE_COUNT_4_BIT : constant unsigned := 4;
   VK_SAMPLE_COUNT_8_BIT : constant unsigned := 8;
   VK_SAMPLE_COUNT_16_BIT : constant unsigned := 16;
   VK_SAMPLE_COUNT_32_BIT : constant unsigned := 32;
   VK_SAMPLE_COUNT_64_BIT : constant unsigned := 64;
   VK_SAMPLE_COUNT_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1571

   subtype VkSampleCountFlags is VkFlags;  -- vulkan_core.h:1581

   subtype VkQueueFlagBits is unsigned;
   VK_QUEUE_GRAPHICS_BIT : constant unsigned := 1;
   VK_QUEUE_COMPUTE_BIT : constant unsigned := 2;
   VK_QUEUE_TRANSFER_BIT : constant unsigned := 4;
   VK_QUEUE_SPARSE_BINDING_BIT : constant unsigned := 8;
   VK_QUEUE_PROTECTED_BIT : constant unsigned := 16;
   VK_QUEUE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1583

   subtype VkQueueFlags is VkFlags;  -- vulkan_core.h:1591

   subtype VkMemoryPropertyFlagBits is unsigned;
   VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT : constant unsigned := 1;
   VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT : constant unsigned := 2;
   VK_MEMORY_PROPERTY_HOST_COHERENT_BIT : constant unsigned := 4;
   VK_MEMORY_PROPERTY_HOST_CACHED_BIT : constant unsigned := 8;
   VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT : constant unsigned := 16;
   VK_MEMORY_PROPERTY_PROTECTED_BIT : constant unsigned := 32;
   VK_MEMORY_PROPERTY_DEVICE_COHERENT_BIT_AMD : constant unsigned := 64;
   VK_MEMORY_PROPERTY_DEVICE_UNCACHED_BIT_AMD : constant unsigned := 128;
   VK_MEMORY_PROPERTY_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1593

   subtype VkMemoryPropertyFlags is VkFlags;  -- vulkan_core.h:1604

   subtype VkMemoryHeapFlagBits is unsigned;
   VK_MEMORY_HEAP_DEVICE_LOCAL_BIT : constant unsigned := 1;
   VK_MEMORY_HEAP_MULTI_INSTANCE_BIT : constant unsigned := 2;
   VK_MEMORY_HEAP_MULTI_INSTANCE_BIT_KHR : constant unsigned := 2;
   VK_MEMORY_HEAP_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1606

   subtype VkMemoryHeapFlags is VkFlags;  -- vulkan_core.h:1612

   subtype VkDeviceCreateFlags is VkFlags;  -- vulkan_core.h:1613

   subtype VkDeviceQueueCreateFlagBits is unsigned;
   VK_DEVICE_QUEUE_CREATE_PROTECTED_BIT : constant unsigned := 1;
   VK_DEVICE_QUEUE_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1615

   subtype VkDeviceQueueCreateFlags is VkFlags;  -- vulkan_core.h:1619

   subtype VkPipelineStageFlagBits is unsigned;
   VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT : constant unsigned := 1;
   VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT : constant unsigned := 2;
   VK_PIPELINE_STAGE_VERTEX_INPUT_BIT : constant unsigned := 4;
   VK_PIPELINE_STAGE_VERTEX_SHADER_BIT : constant unsigned := 8;
   VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT : constant unsigned := 16;
   VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT : constant unsigned := 32;
   VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT : constant unsigned := 64;
   VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT : constant unsigned := 128;
   VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT : constant unsigned := 256;
   VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT : constant unsigned := 512;
   VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT : constant unsigned := 1024;
   VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT : constant unsigned := 2048;
   VK_PIPELINE_STAGE_TRANSFER_BIT : constant unsigned := 4096;
   VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT : constant unsigned := 8192;
   VK_PIPELINE_STAGE_HOST_BIT : constant unsigned := 16384;
   VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT : constant unsigned := 32768;
   VK_PIPELINE_STAGE_ALL_COMMANDS_BIT : constant unsigned := 65536;
   VK_PIPELINE_STAGE_TRANSFORM_FEEDBACK_BIT_EXT : constant unsigned := 16777216;
   VK_PIPELINE_STAGE_CONDITIONAL_RENDERING_BIT_EXT : constant unsigned := 262144;
   VK_PIPELINE_STAGE_COMMAND_PROCESS_BIT_NVX : constant unsigned := 131072;
   VK_PIPELINE_STAGE_SHADING_RATE_IMAGE_BIT_NV : constant unsigned := 4194304;
   VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_NV : constant unsigned := 2097152;
   VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_NV : constant unsigned := 33554432;
   VK_PIPELINE_STAGE_TASK_SHADER_BIT_NV : constant unsigned := 524288;
   VK_PIPELINE_STAGE_MESH_SHADER_BIT_NV : constant unsigned := 1048576;
   VK_PIPELINE_STAGE_FRAGMENT_DENSITY_PROCESS_BIT_EXT : constant unsigned := 8388608;
   VK_PIPELINE_STAGE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1621

   subtype VkPipelineStageFlags is VkFlags;  -- vulkan_core.h:1650

   subtype VkMemoryMapFlags is VkFlags;  -- vulkan_core.h:1651

   subtype VkImageAspectFlagBits is unsigned;
   VK_IMAGE_ASPECT_COLOR_BIT : constant unsigned := 1;
   VK_IMAGE_ASPECT_DEPTH_BIT : constant unsigned := 2;
   VK_IMAGE_ASPECT_STENCIL_BIT : constant unsigned := 4;
   VK_IMAGE_ASPECT_METADATA_BIT : constant unsigned := 8;
   VK_IMAGE_ASPECT_PLANE_0_BIT : constant unsigned := 16;
   VK_IMAGE_ASPECT_PLANE_1_BIT : constant unsigned := 32;
   VK_IMAGE_ASPECT_PLANE_2_BIT : constant unsigned := 64;
   VK_IMAGE_ASPECT_MEMORY_PLANE_0_BIT_EXT : constant unsigned := 128;
   VK_IMAGE_ASPECT_MEMORY_PLANE_1_BIT_EXT : constant unsigned := 256;
   VK_IMAGE_ASPECT_MEMORY_PLANE_2_BIT_EXT : constant unsigned := 512;
   VK_IMAGE_ASPECT_MEMORY_PLANE_3_BIT_EXT : constant unsigned := 1024;
   VK_IMAGE_ASPECT_PLANE_0_BIT_KHR : constant unsigned := 16;
   VK_IMAGE_ASPECT_PLANE_1_BIT_KHR : constant unsigned := 32;
   VK_IMAGE_ASPECT_PLANE_2_BIT_KHR : constant unsigned := 64;
   VK_IMAGE_ASPECT_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1653

   subtype VkImageAspectFlags is VkFlags;  -- vulkan_core.h:1670

   subtype VkSparseImageFormatFlagBits is unsigned;
   VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT : constant unsigned := 1;
   VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT : constant unsigned := 2;
   VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT : constant unsigned := 4;
   VK_SPARSE_IMAGE_FORMAT_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1672

   subtype VkSparseImageFormatFlags is VkFlags;  -- vulkan_core.h:1678

   subtype VkSparseMemoryBindFlagBits is unsigned;
   VK_SPARSE_MEMORY_BIND_METADATA_BIT : constant unsigned := 1;
   VK_SPARSE_MEMORY_BIND_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1680

   subtype VkSparseMemoryBindFlags is VkFlags;  -- vulkan_core.h:1684

   subtype VkFenceCreateFlagBits is unsigned;
   VK_FENCE_CREATE_SIGNALED_BIT : constant unsigned := 1;
   VK_FENCE_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1686

   subtype VkFenceCreateFlags is VkFlags;  -- vulkan_core.h:1690

   subtype VkSemaphoreCreateFlags is VkFlags;  -- vulkan_core.h:1691

   subtype VkEventCreateFlags is VkFlags;  -- vulkan_core.h:1692

   subtype VkQueryPoolCreateFlags is VkFlags;  -- vulkan_core.h:1693

   subtype VkQueryPipelineStatisticFlagBits is unsigned;
   VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT : constant unsigned := 1;
   VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT : constant unsigned := 2;
   VK_QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT : constant unsigned := 4;
   VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT : constant unsigned := 8;
   VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT : constant unsigned := 16;
   VK_QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT : constant unsigned := 32;
   VK_QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT : constant unsigned := 64;
   VK_QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT : constant unsigned := 128;
   VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT : constant unsigned := 256;
   VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT : constant unsigned := 512;
   VK_QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT : constant unsigned := 1024;
   VK_QUERY_PIPELINE_STATISTIC_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1695

   subtype VkQueryPipelineStatisticFlags is VkFlags;  -- vulkan_core.h:1709

   subtype VkQueryResultFlagBits is unsigned;
   VK_QUERY_RESULT_64_BIT : constant unsigned := 1;
   VK_QUERY_RESULT_WAIT_BIT : constant unsigned := 2;
   VK_QUERY_RESULT_WITH_AVAILABILITY_BIT : constant unsigned := 4;
   VK_QUERY_RESULT_PARTIAL_BIT : constant unsigned := 8;
   VK_QUERY_RESULT_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1711

   subtype VkQueryResultFlags is VkFlags;  -- vulkan_core.h:1718

   subtype VkBufferCreateFlagBits is unsigned;
   VK_BUFFER_CREATE_SPARSE_BINDING_BIT : constant unsigned := 1;
   VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT : constant unsigned := 2;
   VK_BUFFER_CREATE_SPARSE_ALIASED_BIT : constant unsigned := 4;
   VK_BUFFER_CREATE_PROTECTED_BIT : constant unsigned := 8;
   VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT : constant unsigned := 16;
   VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT : constant unsigned := 16;
   VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR : constant unsigned := 16;
   VK_BUFFER_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1720

   subtype VkBufferCreateFlags is VkFlags;  -- vulkan_core.h:1730

   subtype VkBufferUsageFlagBits is unsigned;
   VK_BUFFER_USAGE_TRANSFER_SRC_BIT : constant unsigned := 1;
   VK_BUFFER_USAGE_TRANSFER_DST_BIT : constant unsigned := 2;
   VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT : constant unsigned := 4;
   VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT : constant unsigned := 8;
   VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT : constant unsigned := 16;
   VK_BUFFER_USAGE_STORAGE_BUFFER_BIT : constant unsigned := 32;
   VK_BUFFER_USAGE_INDEX_BUFFER_BIT : constant unsigned := 64;
   VK_BUFFER_USAGE_VERTEX_BUFFER_BIT : constant unsigned := 128;
   VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT : constant unsigned := 256;
   VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT : constant unsigned := 131072;
   VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_BUFFER_BIT_EXT : constant unsigned := 2048;
   VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_COUNTER_BUFFER_BIT_EXT : constant unsigned := 4096;
   VK_BUFFER_USAGE_CONDITIONAL_RENDERING_BIT_EXT : constant unsigned := 512;
   VK_BUFFER_USAGE_RAY_TRACING_BIT_NV : constant unsigned := 1024;
   VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_EXT : constant unsigned := 131072;
   VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_KHR : constant unsigned := 131072;
   VK_BUFFER_USAGE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1732

   subtype VkBufferUsageFlags is VkFlags;  -- vulkan_core.h:1751

   subtype VkBufferViewCreateFlags is VkFlags;  -- vulkan_core.h:1752

   subtype VkImageViewCreateFlagBits is unsigned;
   VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DYNAMIC_BIT_EXT : constant unsigned := 1;
   VK_IMAGE_VIEW_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1754

   subtype VkImageViewCreateFlags is VkFlags;  -- vulkan_core.h:1758

   subtype VkShaderModuleCreateFlagBits is unsigned;
   VK_SHADER_MODULE_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1760

   subtype VkShaderModuleCreateFlags is VkFlags;  -- vulkan_core.h:1763

   subtype VkPipelineCacheCreateFlags is VkFlags;  -- vulkan_core.h:1764

   subtype VkPipelineCreateFlagBits is unsigned;
   VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT : constant unsigned := 1;
   VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT : constant unsigned := 2;
   VK_PIPELINE_CREATE_DERIVATIVE_BIT : constant unsigned := 4;
   VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT : constant unsigned := 8;
   VK_PIPELINE_CREATE_DISPATCH_BASE_BIT : constant unsigned := 16;
   VK_PIPELINE_CREATE_DEFER_COMPILE_BIT_NV : constant unsigned := 32;
   VK_PIPELINE_CREATE_CAPTURE_STATISTICS_BIT_KHR : constant unsigned := 64;
   VK_PIPELINE_CREATE_CAPTURE_INTERNAL_REPRESENTATIONS_BIT_KHR : constant unsigned := 128;
   VK_PIPELINE_CREATE_DISPATCH_BASE : constant unsigned := 16;
   VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHR : constant unsigned := 8;
   VK_PIPELINE_CREATE_DISPATCH_BASE_KHR : constant unsigned := 16;
   VK_PIPELINE_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1766

   subtype VkPipelineCreateFlags is VkFlags;  -- vulkan_core.h:1780

   subtype VkPipelineShaderStageCreateFlagBits is unsigned;
   VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT_EXT : constant unsigned := 1;
   VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT_EXT : constant unsigned := 2;
   VK_PIPELINE_SHADER_STAGE_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1782

   subtype VkPipelineShaderStageCreateFlags is VkFlags;  -- vulkan_core.h:1787

   subtype VkShaderStageFlagBits is unsigned;
   VK_SHADER_STAGE_VERTEX_BIT : constant unsigned := 1;
   VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT : constant unsigned := 2;
   VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT : constant unsigned := 4;
   VK_SHADER_STAGE_GEOMETRY_BIT : constant unsigned := 8;
   VK_SHADER_STAGE_FRAGMENT_BIT : constant unsigned := 16;
   VK_SHADER_STAGE_COMPUTE_BIT : constant unsigned := 32;
   VK_SHADER_STAGE_ALL_GRAPHICS : constant unsigned := 31;
   VK_SHADER_STAGE_ALL : constant unsigned := 2147483647;
   VK_SHADER_STAGE_RAYGEN_BIT_NV : constant unsigned := 256;
   VK_SHADER_STAGE_ANY_HIT_BIT_NV : constant unsigned := 512;
   VK_SHADER_STAGE_CLOSEST_HIT_BIT_NV : constant unsigned := 1024;
   VK_SHADER_STAGE_MISS_BIT_NV : constant unsigned := 2048;
   VK_SHADER_STAGE_INTERSECTION_BIT_NV : constant unsigned := 4096;
   VK_SHADER_STAGE_CALLABLE_BIT_NV : constant unsigned := 8192;
   VK_SHADER_STAGE_TASK_BIT_NV : constant unsigned := 64;
   VK_SHADER_STAGE_MESH_BIT_NV : constant unsigned := 128;
   VK_SHADER_STAGE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1789

   subtype VkPipelineVertexInputStateCreateFlags is VkFlags;  -- vulkan_core.h:1808

   subtype VkPipelineInputAssemblyStateCreateFlags is VkFlags;  -- vulkan_core.h:1809

   subtype VkPipelineTessellationStateCreateFlags is VkFlags;  -- vulkan_core.h:1810

   subtype VkPipelineViewportStateCreateFlags is VkFlags;  -- vulkan_core.h:1811

   subtype VkPipelineRasterizationStateCreateFlags is VkFlags;  -- vulkan_core.h:1812

   subtype VkCullModeFlagBits is unsigned;
   VK_CULL_MODE_NONE : constant unsigned := 0;
   VK_CULL_MODE_FRONT_BIT : constant unsigned := 1;
   VK_CULL_MODE_BACK_BIT : constant unsigned := 2;
   VK_CULL_MODE_FRONT_AND_BACK : constant unsigned := 3;
   VK_CULL_MODE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1814

   subtype VkCullModeFlags is VkFlags;  -- vulkan_core.h:1821

   subtype VkPipelineMultisampleStateCreateFlags is VkFlags;  -- vulkan_core.h:1822

   subtype VkPipelineDepthStencilStateCreateFlags is VkFlags;  -- vulkan_core.h:1823

   subtype VkPipelineColorBlendStateCreateFlags is VkFlags;  -- vulkan_core.h:1824

   subtype VkColorComponentFlagBits is unsigned;
   VK_COLOR_COMPONENT_R_BIT : constant unsigned := 1;
   VK_COLOR_COMPONENT_G_BIT : constant unsigned := 2;
   VK_COLOR_COMPONENT_B_BIT : constant unsigned := 4;
   VK_COLOR_COMPONENT_A_BIT : constant unsigned := 8;
   VK_COLOR_COMPONENT_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1826

   subtype VkColorComponentFlags is VkFlags;  -- vulkan_core.h:1833

   subtype VkPipelineDynamicStateCreateFlags is VkFlags;  -- vulkan_core.h:1834

   subtype VkPipelineLayoutCreateFlags is VkFlags;  -- vulkan_core.h:1835

   subtype VkShaderStageFlags is VkFlags;  -- vulkan_core.h:1836

   subtype VkSamplerCreateFlagBits is unsigned;
   VK_SAMPLER_CREATE_SUBSAMPLED_BIT_EXT : constant unsigned := 1;
   VK_SAMPLER_CREATE_SUBSAMPLED_COARSE_RECONSTRUCTION_BIT_EXT : constant unsigned := 2;
   VK_SAMPLER_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1838

   subtype VkSamplerCreateFlags is VkFlags;  -- vulkan_core.h:1843

   subtype VkDescriptorSetLayoutCreateFlagBits is unsigned;
   VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT : constant unsigned := 2;
   VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR : constant unsigned := 1;
   VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT_EXT : constant unsigned := 2;
   VK_DESCRIPTOR_SET_LAYOUT_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1845

   subtype VkDescriptorSetLayoutCreateFlags is VkFlags;  -- vulkan_core.h:1851

   subtype VkDescriptorPoolCreateFlagBits is unsigned;
   VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT : constant unsigned := 1;
   VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT : constant unsigned := 2;
   VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT : constant unsigned := 2;
   VK_DESCRIPTOR_POOL_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1853

   subtype VkDescriptorPoolCreateFlags is VkFlags;  -- vulkan_core.h:1859

   subtype VkDescriptorPoolResetFlags is VkFlags;  -- vulkan_core.h:1860

   subtype VkFramebufferCreateFlagBits is unsigned;
   VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT : constant unsigned := 1;
   VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT_KHR : constant unsigned := 1;
   VK_FRAMEBUFFER_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1862

   subtype VkFramebufferCreateFlags is VkFlags;  -- vulkan_core.h:1867

   subtype VkRenderPassCreateFlagBits is unsigned;
   VK_RENDER_PASS_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1869

   subtype VkRenderPassCreateFlags is VkFlags;  -- vulkan_core.h:1872

   subtype VkAttachmentDescriptionFlagBits is unsigned;
   VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT : constant unsigned := 1;
   VK_ATTACHMENT_DESCRIPTION_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1874

   subtype VkAttachmentDescriptionFlags is VkFlags;  -- vulkan_core.h:1878

   subtype VkSubpassDescriptionFlagBits is unsigned;
   VK_SUBPASS_DESCRIPTION_PER_VIEW_ATTRIBUTES_BIT_NVX : constant unsigned := 1;
   VK_SUBPASS_DESCRIPTION_PER_VIEW_POSITION_X_ONLY_BIT_NVX : constant unsigned := 2;
   VK_SUBPASS_DESCRIPTION_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1880

   subtype VkSubpassDescriptionFlags is VkFlags;  -- vulkan_core.h:1885

   subtype VkAccessFlagBits is unsigned;
   VK_ACCESS_INDIRECT_COMMAND_READ_BIT : constant unsigned := 1;
   VK_ACCESS_INDEX_READ_BIT : constant unsigned := 2;
   VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT : constant unsigned := 4;
   VK_ACCESS_UNIFORM_READ_BIT : constant unsigned := 8;
   VK_ACCESS_INPUT_ATTACHMENT_READ_BIT : constant unsigned := 16;
   VK_ACCESS_SHADER_READ_BIT : constant unsigned := 32;
   VK_ACCESS_SHADER_WRITE_BIT : constant unsigned := 64;
   VK_ACCESS_COLOR_ATTACHMENT_READ_BIT : constant unsigned := 128;
   VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT : constant unsigned := 256;
   VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT : constant unsigned := 512;
   VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT : constant unsigned := 1024;
   VK_ACCESS_TRANSFER_READ_BIT : constant unsigned := 2048;
   VK_ACCESS_TRANSFER_WRITE_BIT : constant unsigned := 4096;
   VK_ACCESS_HOST_READ_BIT : constant unsigned := 8192;
   VK_ACCESS_HOST_WRITE_BIT : constant unsigned := 16384;
   VK_ACCESS_MEMORY_READ_BIT : constant unsigned := 32768;
   VK_ACCESS_MEMORY_WRITE_BIT : constant unsigned := 65536;
   VK_ACCESS_TRANSFORM_FEEDBACK_WRITE_BIT_EXT : constant unsigned := 33554432;
   VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT : constant unsigned := 67108864;
   VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT : constant unsigned := 134217728;
   VK_ACCESS_CONDITIONAL_RENDERING_READ_BIT_EXT : constant unsigned := 1048576;
   VK_ACCESS_COMMAND_PROCESS_READ_BIT_NVX : constant unsigned := 131072;
   VK_ACCESS_COMMAND_PROCESS_WRITE_BIT_NVX : constant unsigned := 262144;
   VK_ACCESS_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT : constant unsigned := 524288;
   VK_ACCESS_SHADING_RATE_IMAGE_READ_BIT_NV : constant unsigned := 8388608;
   VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_NV : constant unsigned := 2097152;
   VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_NV : constant unsigned := 4194304;
   VK_ACCESS_FRAGMENT_DENSITY_MAP_READ_BIT_EXT : constant unsigned := 16777216;
   VK_ACCESS_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1887

   subtype VkAccessFlags is VkFlags;  -- vulkan_core.h:1918

   subtype VkDependencyFlagBits is unsigned;
   VK_DEPENDENCY_BY_REGION_BIT : constant unsigned := 1;
   VK_DEPENDENCY_DEVICE_GROUP_BIT : constant unsigned := 4;
   VK_DEPENDENCY_VIEW_LOCAL_BIT : constant unsigned := 2;
   VK_DEPENDENCY_VIEW_LOCAL_BIT_KHR : constant unsigned := 2;
   VK_DEPENDENCY_DEVICE_GROUP_BIT_KHR : constant unsigned := 4;
   VK_DEPENDENCY_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1920

   subtype VkDependencyFlags is VkFlags;  -- vulkan_core.h:1928

   subtype VkCommandPoolCreateFlagBits is unsigned;
   VK_COMMAND_POOL_CREATE_TRANSIENT_BIT : constant unsigned := 1;
   VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT : constant unsigned := 2;
   VK_COMMAND_POOL_CREATE_PROTECTED_BIT : constant unsigned := 4;
   VK_COMMAND_POOL_CREATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1930

   subtype VkCommandPoolCreateFlags is VkFlags;  -- vulkan_core.h:1936

   subtype VkCommandPoolResetFlagBits is unsigned;
   VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT : constant unsigned := 1;
   VK_COMMAND_POOL_RESET_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1938

   subtype VkCommandPoolResetFlags is VkFlags;  -- vulkan_core.h:1942

   subtype VkCommandBufferUsageFlagBits is unsigned;
   VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT : constant unsigned := 1;
   VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT : constant unsigned := 2;
   VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT : constant unsigned := 4;
   VK_COMMAND_BUFFER_USAGE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1944

   subtype VkCommandBufferUsageFlags is VkFlags;  -- vulkan_core.h:1950

   subtype VkQueryControlFlagBits is unsigned;
   VK_QUERY_CONTROL_PRECISE_BIT : constant unsigned := 1;
   VK_QUERY_CONTROL_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1952

   subtype VkQueryControlFlags is VkFlags;  -- vulkan_core.h:1956

   subtype VkCommandBufferResetFlagBits is unsigned;
   VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT : constant unsigned := 1;
   VK_COMMAND_BUFFER_RESET_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1958

   subtype VkCommandBufferResetFlags is VkFlags;  -- vulkan_core.h:1962

   subtype VkStencilFaceFlagBits is unsigned;
   VK_STENCIL_FACE_FRONT_BIT : constant unsigned := 1;
   VK_STENCIL_FACE_BACK_BIT : constant unsigned := 2;
   VK_STENCIL_FACE_FRONT_AND_BACK : constant unsigned := 3;
   VK_STENCIL_FRONT_AND_BACK : constant unsigned := 3;
   VK_STENCIL_FACE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:1964

   subtype VkStencilFaceFlags is VkFlags;  -- vulkan_core.h:1971

   type VkApplicationInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:1973
      pNext : System.Address;  -- vulkan_core.h:1974
      pApplicationName : Interfaces.C.Strings.chars_ptr;  -- vulkan_core.h:1975
      applicationVersion : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:1976
      pEngineName : Interfaces.C.Strings.chars_ptr;  -- vulkan_core.h:1977
      engineVersion : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:1978
      apiVersion : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:1979
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:1972

   type VkInstanceCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:1983
      pNext : System.Address;  -- vulkan_core.h:1984
      flags : aliased VkInstanceCreateFlags;  -- vulkan_core.h:1985
      pApplicationInfo : access constant VkApplicationInfo;  -- vulkan_core.h:1986
      enabledLayerCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:1987
      ppEnabledLayerNames : System.Address;  -- vulkan_core.h:1988
      enabledExtensionCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:1989
      ppEnabledExtensionNames : System.Address;  -- vulkan_core.h:1990
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:1982

   type PFN_vkAllocationFunction is access function
        (arg1 : System.Address;
         arg2 : size_t;
         arg3 : size_t;
         arg4 : VkSystemAllocationScope) return System.Address
   with Convention => C;  -- vulkan_core.h:1993

   type PFN_vkReallocationFunction is access function
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : size_t;
         arg4 : size_t;
         arg5 : VkSystemAllocationScope) return System.Address
   with Convention => C;  -- vulkan_core.h:1999

   type PFN_vkFreeFunction is access procedure (arg1 : System.Address; arg2 : System.Address)
   with Convention => C;  -- vulkan_core.h:2006

   type PFN_vkInternalAllocationNotification is access procedure
        (arg1 : System.Address;
         arg2 : size_t;
         arg3 : VkInternalAllocationType;
         arg4 : VkSystemAllocationScope)
   with Convention => C;  -- vulkan_core.h:2010

   type PFN_vkInternalFreeNotification is access procedure
        (arg1 : System.Address;
         arg2 : size_t;
         arg3 : VkInternalAllocationType;
         arg4 : VkSystemAllocationScope)
   with Convention => C;  -- vulkan_core.h:2016

   type VkAllocationCallbacks is record
      pUserData : System.Address;  -- vulkan_core.h:2023
      pfnAllocation : PFN_vkAllocationFunction;  -- vulkan_core.h:2024
      pfnReallocation : PFN_vkReallocationFunction;  -- vulkan_core.h:2025
      pfnFree : PFN_vkFreeFunction;  -- vulkan_core.h:2026
      pfnInternalAllocation : PFN_vkInternalAllocationNotification;  -- vulkan_core.h:2027
      pfnInternalFree : PFN_vkInternalFreeNotification;  -- vulkan_core.h:2028
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2022

   type VkPhysicalDeviceFeatures is record
      robustBufferAccess : aliased VkBool32;  -- vulkan_core.h:2032
      fullDrawIndexUint32 : aliased VkBool32;  -- vulkan_core.h:2033
      imageCubeArray : aliased VkBool32;  -- vulkan_core.h:2034
      independentBlend : aliased VkBool32;  -- vulkan_core.h:2035
      geometryShader : aliased VkBool32;  -- vulkan_core.h:2036
      tessellationShader : aliased VkBool32;  -- vulkan_core.h:2037
      sampleRateShading : aliased VkBool32;  -- vulkan_core.h:2038
      dualSrcBlend : aliased VkBool32;  -- vulkan_core.h:2039
      logicOp : aliased VkBool32;  -- vulkan_core.h:2040
      multiDrawIndirect : aliased VkBool32;  -- vulkan_core.h:2041
      drawIndirectFirstInstance : aliased VkBool32;  -- vulkan_core.h:2042
      depthClamp : aliased VkBool32;  -- vulkan_core.h:2043
      depthBiasClamp : aliased VkBool32;  -- vulkan_core.h:2044
      fillModeNonSolid : aliased VkBool32;  -- vulkan_core.h:2045
      depthBounds : aliased VkBool32;  -- vulkan_core.h:2046
      wideLines : aliased VkBool32;  -- vulkan_core.h:2047
      largePoints : aliased VkBool32;  -- vulkan_core.h:2048
      alphaToOne : aliased VkBool32;  -- vulkan_core.h:2049
      multiViewport : aliased VkBool32;  -- vulkan_core.h:2050
      samplerAnisotropy : aliased VkBool32;  -- vulkan_core.h:2051
      textureCompressionETC2 : aliased VkBool32;  -- vulkan_core.h:2052
      textureCompressionASTC_LDR : aliased VkBool32;  -- vulkan_core.h:2053
      textureCompressionBC : aliased VkBool32;  -- vulkan_core.h:2054
      occlusionQueryPrecise : aliased VkBool32;  -- vulkan_core.h:2055
      pipelineStatisticsQuery : aliased VkBool32;  -- vulkan_core.h:2056
      vertexPipelineStoresAndAtomics : aliased VkBool32;  -- vulkan_core.h:2057
      fragmentStoresAndAtomics : aliased VkBool32;  -- vulkan_core.h:2058
      shaderTessellationAndGeometryPointSize : aliased VkBool32;  -- vulkan_core.h:2059
      shaderImageGatherExtended : aliased VkBool32;  -- vulkan_core.h:2060
      shaderStorageImageExtendedFormats : aliased VkBool32;  -- vulkan_core.h:2061
      shaderStorageImageMultisample : aliased VkBool32;  -- vulkan_core.h:2062
      shaderStorageImageReadWithoutFormat : aliased VkBool32;  -- vulkan_core.h:2063
      shaderStorageImageWriteWithoutFormat : aliased VkBool32;  -- vulkan_core.h:2064
      shaderUniformBufferArrayDynamicIndexing : aliased VkBool32;  -- vulkan_core.h:2065
      shaderSampledImageArrayDynamicIndexing : aliased VkBool32;  -- vulkan_core.h:2066
      shaderStorageBufferArrayDynamicIndexing : aliased VkBool32;  -- vulkan_core.h:2067
      shaderStorageImageArrayDynamicIndexing : aliased VkBool32;  -- vulkan_core.h:2068
      shaderClipDistance : aliased VkBool32;  -- vulkan_core.h:2069
      shaderCullDistance : aliased VkBool32;  -- vulkan_core.h:2070
      shaderFloat64 : aliased VkBool32;  -- vulkan_core.h:2071
      shaderInt64 : aliased VkBool32;  -- vulkan_core.h:2072
      shaderInt16 : aliased VkBool32;  -- vulkan_core.h:2073
      shaderResourceResidency : aliased VkBool32;  -- vulkan_core.h:2074
      shaderResourceMinLod : aliased VkBool32;  -- vulkan_core.h:2075
      sparseBinding : aliased VkBool32;  -- vulkan_core.h:2076
      sparseResidencyBuffer : aliased VkBool32;  -- vulkan_core.h:2077
      sparseResidencyImage2D : aliased VkBool32;  -- vulkan_core.h:2078
      sparseResidencyImage3D : aliased VkBool32;  -- vulkan_core.h:2079
      sparseResidency2Samples : aliased VkBool32;  -- vulkan_core.h:2080
      sparseResidency4Samples : aliased VkBool32;  -- vulkan_core.h:2081
      sparseResidency8Samples : aliased VkBool32;  -- vulkan_core.h:2082
      sparseResidency16Samples : aliased VkBool32;  -- vulkan_core.h:2083
      sparseResidencyAliased : aliased VkBool32;  -- vulkan_core.h:2084
      variableMultisampleRate : aliased VkBool32;  -- vulkan_core.h:2085
      inheritedQueries : aliased VkBool32;  -- vulkan_core.h:2086
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2031

   type VkFormatProperties is record
      linearTilingFeatures : aliased VkFormatFeatureFlags;  -- vulkan_core.h:2090
      optimalTilingFeatures : aliased VkFormatFeatureFlags;  -- vulkan_core.h:2091
      bufferFeatures : aliased VkFormatFeatureFlags;  -- vulkan_core.h:2092
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2089

   type VkExtent3D is record
      width : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2096
      height : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2097
      depth : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2098
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2095

   type VkImageFormatProperties is record
      maxExtent : aliased VkExtent3D;  -- vulkan_core.h:2102
      maxMipLevels : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2103
      maxArrayLayers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2104
      sampleCounts : aliased VkSampleCountFlags;  -- vulkan_core.h:2105
      maxResourceSize : aliased VkDeviceSize;  -- vulkan_core.h:2106
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2101

   type VkPhysicalDeviceLimits_array1331 is array (0 .. 2) of aliased Interfaces.C.unsigned_short;
   type VkPhysicalDeviceLimits_array1333 is array (0 .. 1) of aliased Interfaces.C.unsigned_short;
   type VkPhysicalDeviceLimits_array1334 is array (0 .. 1) of aliased float;
   type VkPhysicalDeviceLimits is record
      maxImageDimension1D : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2110
      maxImageDimension2D : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2111
      maxImageDimension3D : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2112
      maxImageDimensionCube : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2113
      maxImageArrayLayers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2114
      maxTexelBufferElements : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2115
      maxUniformBufferRange : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2116
      maxStorageBufferRange : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2117
      maxPushConstantsSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2118
      maxMemoryAllocationCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2119
      maxSamplerAllocationCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2120
      bufferImageGranularity : aliased VkDeviceSize;  -- vulkan_core.h:2121
      sparseAddressSpaceSize : aliased VkDeviceSize;  -- vulkan_core.h:2122
      maxBoundDescriptorSets : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2123
      maxPerStageDescriptorSamplers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2124
      maxPerStageDescriptorUniformBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2125
      maxPerStageDescriptorStorageBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2126
      maxPerStageDescriptorSampledImages : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2127
      maxPerStageDescriptorStorageImages : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2128
      maxPerStageDescriptorInputAttachments : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2129
      maxPerStageResources : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2130
      maxDescriptorSetSamplers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2131
      maxDescriptorSetUniformBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2132
      maxDescriptorSetUniformBuffersDynamic : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2133
      maxDescriptorSetStorageBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2134
      maxDescriptorSetStorageBuffersDynamic : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2135
      maxDescriptorSetSampledImages : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2136
      maxDescriptorSetStorageImages : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2137
      maxDescriptorSetInputAttachments : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2138
      maxVertexInputAttributes : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2139
      maxVertexInputBindings : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2140
      maxVertexInputAttributeOffset : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2141
      maxVertexInputBindingStride : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2142
      maxVertexOutputComponents : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2143
      maxTessellationGenerationLevel : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2144
      maxTessellationPatchSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2145
      maxTessellationControlPerVertexInputComponents : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2146
      maxTessellationControlPerVertexOutputComponents : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2147
      maxTessellationControlPerPatchOutputComponents : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2148
      maxTessellationControlTotalOutputComponents : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2149
      maxTessellationEvaluationInputComponents : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2150
      maxTessellationEvaluationOutputComponents : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2151
      maxGeometryShaderInvocations : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2152
      maxGeometryInputComponents : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2153
      maxGeometryOutputComponents : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2154
      maxGeometryOutputVertices : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2155
      maxGeometryTotalOutputComponents : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2156
      maxFragmentInputComponents : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2157
      maxFragmentOutputAttachments : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2158
      maxFragmentDualSrcAttachments : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2159
      maxFragmentCombinedOutputResources : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2160
      maxComputeSharedMemorySize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2161
      maxComputeWorkGroupCount : aliased VkPhysicalDeviceLimits_array1331;  -- vulkan_core.h:2162
      maxComputeWorkGroupInvocations : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2163
      maxComputeWorkGroupSize : aliased VkPhysicalDeviceLimits_array1331;  -- vulkan_core.h:2164
      subPixelPrecisionBits : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2165
      subTexelPrecisionBits : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2166
      mipmapPrecisionBits : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2167
      maxDrawIndexedIndexValue : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2168
      maxDrawIndirectCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2169
      maxSamplerLodBias : aliased float;  -- vulkan_core.h:2170
      maxSamplerAnisotropy : aliased float;  -- vulkan_core.h:2171
      maxViewports : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2172
      maxViewportDimensions : aliased VkPhysicalDeviceLimits_array1333;  -- vulkan_core.h:2173
      viewportBoundsRange : aliased VkPhysicalDeviceLimits_array1334;  -- vulkan_core.h:2174
      viewportSubPixelBits : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2175
      minMemoryMapAlignment : aliased size_t;  -- vulkan_core.h:2176
      minTexelBufferOffsetAlignment : aliased VkDeviceSize;  -- vulkan_core.h:2177
      minUniformBufferOffsetAlignment : aliased VkDeviceSize;  -- vulkan_core.h:2178
      minStorageBufferOffsetAlignment : aliased VkDeviceSize;  -- vulkan_core.h:2179
      minTexelOffset : aliased Interfaces.C.short;  -- vulkan_core.h:2180
      maxTexelOffset : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2181
      minTexelGatherOffset : aliased Interfaces.C.short;  -- vulkan_core.h:2182
      maxTexelGatherOffset : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2183
      minInterpolationOffset : aliased float;  -- vulkan_core.h:2184
      maxInterpolationOffset : aliased float;  -- vulkan_core.h:2185
      subPixelInterpolationOffsetBits : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2186
      maxFramebufferWidth : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2187
      maxFramebufferHeight : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2188
      maxFramebufferLayers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2189
      framebufferColorSampleCounts : aliased VkSampleCountFlags;  -- vulkan_core.h:2190
      framebufferDepthSampleCounts : aliased VkSampleCountFlags;  -- vulkan_core.h:2191
      framebufferStencilSampleCounts : aliased VkSampleCountFlags;  -- vulkan_core.h:2192
      framebufferNoAttachmentsSampleCounts : aliased VkSampleCountFlags;  -- vulkan_core.h:2193
      maxColorAttachments : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2194
      sampledImageColorSampleCounts : aliased VkSampleCountFlags;  -- vulkan_core.h:2195
      sampledImageIntegerSampleCounts : aliased VkSampleCountFlags;  -- vulkan_core.h:2196
      sampledImageDepthSampleCounts : aliased VkSampleCountFlags;  -- vulkan_core.h:2197
      sampledImageStencilSampleCounts : aliased VkSampleCountFlags;  -- vulkan_core.h:2198
      storageImageSampleCounts : aliased VkSampleCountFlags;  -- vulkan_core.h:2199
      maxSampleMaskWords : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2200
      timestampComputeAndGraphics : aliased VkBool32;  -- vulkan_core.h:2201
      timestampPeriod : aliased float;  -- vulkan_core.h:2202
      maxClipDistances : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2203
      maxCullDistances : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2204
      maxCombinedClipAndCullDistances : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2205
      discreteQueuePriorities : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2206
      pointSizeRange : aliased VkPhysicalDeviceLimits_array1334;  -- vulkan_core.h:2207
      lineWidthRange : aliased VkPhysicalDeviceLimits_array1334;  -- vulkan_core.h:2208
      pointSizeGranularity : aliased float;  -- vulkan_core.h:2209
      lineWidthGranularity : aliased float;  -- vulkan_core.h:2210
      strictLines : aliased VkBool32;  -- vulkan_core.h:2211
      standardSampleLocations : aliased VkBool32;  -- vulkan_core.h:2212
      optimalBufferCopyOffsetAlignment : aliased VkDeviceSize;  -- vulkan_core.h:2213
      optimalBufferCopyRowPitchAlignment : aliased VkDeviceSize;  -- vulkan_core.h:2214
      nonCoherentAtomSize : aliased VkDeviceSize;  -- vulkan_core.h:2215
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2109

   type VkPhysicalDeviceSparseProperties is record
      residencyStandard2DBlockShape : aliased VkBool32;  -- vulkan_core.h:2219
      residencyStandard2DMultisampleBlockShape : aliased VkBool32;  -- vulkan_core.h:2220
      residencyStandard3DBlockShape : aliased VkBool32;  -- vulkan_core.h:2221
      residencyAlignedMipSize : aliased VkBool32;  -- vulkan_core.h:2222
      residencyNonResidentStrict : aliased VkBool32;  -- vulkan_core.h:2223
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2218

   subtype VkPhysicalDeviceProperties_array1342 is Interfaces.C.char_array (0 .. 255);
   type VkPhysicalDeviceProperties_array1345 is array (0 .. 15) of aliased Interfaces.C.unsigned_char;
   type VkPhysicalDeviceProperties is record
      apiVersion : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2227
      driverVersion : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2228
      vendorID : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2229
      deviceID : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2230
      deviceType : aliased VkPhysicalDeviceType;  -- vulkan_core.h:2231
      deviceName : aliased VkPhysicalDeviceProperties_array1342;  -- vulkan_core.h:2232
      pipelineCacheUUID : aliased VkPhysicalDeviceProperties_array1345;  -- vulkan_core.h:2233
      limits : aliased VkPhysicalDeviceLimits;  -- vulkan_core.h:2234
      sparseProperties : aliased VkPhysicalDeviceSparseProperties;  -- vulkan_core.h:2235
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2226

   type VkQueueFamilyProperties is record
      queueFlags : aliased VkQueueFlags;  -- vulkan_core.h:2239
      queueCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2240
      timestampValidBits : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2241
      minImageTransferGranularity : aliased VkExtent3D;  -- vulkan_core.h:2242
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2238

   type VkMemoryType is record
      propertyFlags : aliased VkMemoryPropertyFlags;  -- vulkan_core.h:2246
      heapIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2247
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2245

   type VkMemoryHeap is record
      size : aliased VkDeviceSize;  -- vulkan_core.h:2251
      flags : aliased VkMemoryHeapFlags;  -- vulkan_core.h:2252
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2250

   type VkPhysicalDeviceMemoryProperties_array1360 is array (0 .. 31) of aliased VkMemoryType;
   type VkPhysicalDeviceMemoryProperties_array1362 is array (0 .. 15) of aliased VkMemoryHeap;
   type VkPhysicalDeviceMemoryProperties is record
      memoryTypeCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2256
      memoryTypes : aliased VkPhysicalDeviceMemoryProperties_array1360;  -- vulkan_core.h:2257
      memoryHeapCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2258
      memoryHeaps : aliased VkPhysicalDeviceMemoryProperties_array1362;  -- vulkan_core.h:2259
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2255

   type PFN_vkVoidFunction is access procedure
   with Convention => C;  -- vulkan_core.h:2262

   type VkDeviceQueueCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2264
      pNext : System.Address;  -- vulkan_core.h:2265
      flags : aliased VkDeviceQueueCreateFlags;  -- vulkan_core.h:2266
      queueFamilyIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2267
      queueCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2268
      pQueuePriorities : access float;  -- vulkan_core.h:2269
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2263

   type VkDeviceCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2273
      pNext : System.Address;  -- vulkan_core.h:2274
      flags : aliased VkDeviceCreateFlags;  -- vulkan_core.h:2275
      queueCreateInfoCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2276
      pQueueCreateInfos : access constant VkDeviceQueueCreateInfo;  -- vulkan_core.h:2277
      enabledLayerCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2278
      ppEnabledLayerNames : System.Address;  -- vulkan_core.h:2279
      enabledExtensionCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2280
      ppEnabledExtensionNames : System.Address;  -- vulkan_core.h:2281
      pEnabledFeatures : access constant VkPhysicalDeviceFeatures;  -- vulkan_core.h:2282
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2272

   subtype VkExtensionProperties_array1342 is Interfaces.C.char_array (0 .. 255);
   type VkExtensionProperties is record
      extensionName : aliased VkExtensionProperties_array1342;  -- vulkan_core.h:2286
      specVersion : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2287
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2285

   subtype VkLayerProperties_array1342 is Interfaces.C.char_array (0 .. 255);
   type VkLayerProperties is record
      layerName : aliased VkLayerProperties_array1342;  -- vulkan_core.h:2291
      specVersion : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2292
      implementationVersion : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2293
      description : aliased VkLayerProperties_array1342;  -- vulkan_core.h:2294
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2290

   type VkSubmitInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2298
      pNext : System.Address;  -- vulkan_core.h:2299
      waitSemaphoreCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2300
      pWaitSemaphores : System.Address;  -- vulkan_core.h:2301
      pWaitDstStageMask : access VkPipelineStageFlags;  -- vulkan_core.h:2302
      commandBufferCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2303
      pCommandBuffers : System.Address;  -- vulkan_core.h:2304
      signalSemaphoreCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2305
      pSignalSemaphores : System.Address;  -- vulkan_core.h:2306
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2297

   type VkMemoryAllocateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2310
      pNext : System.Address;  -- vulkan_core.h:2311
      allocationSize : aliased VkDeviceSize;  -- vulkan_core.h:2312
      memoryTypeIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2313
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2309

   type VkMappedMemoryRange is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2317
      pNext : System.Address;  -- vulkan_core.h:2318
      memory : VkDeviceMemory;  -- vulkan_core.h:2319
      offset : aliased VkDeviceSize;  -- vulkan_core.h:2320
      size : aliased VkDeviceSize;  -- vulkan_core.h:2321
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2316

   type VkMemoryRequirements is record
      size : aliased VkDeviceSize;  -- vulkan_core.h:2325
      alignment : aliased VkDeviceSize;  -- vulkan_core.h:2326
      memoryTypeBits : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2327
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2324

   type VkSparseImageFormatProperties is record
      aspectMask : aliased VkImageAspectFlags;  -- vulkan_core.h:2331
      imageGranularity : aliased VkExtent3D;  -- vulkan_core.h:2332
      flags : aliased VkSparseImageFormatFlags;  -- vulkan_core.h:2333
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2330

   type VkSparseImageMemoryRequirements is record
      formatProperties : aliased VkSparseImageFormatProperties;  -- vulkan_core.h:2337
      imageMipTailFirstLod : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2338
      imageMipTailSize : aliased VkDeviceSize;  -- vulkan_core.h:2339
      imageMipTailOffset : aliased VkDeviceSize;  -- vulkan_core.h:2340
      imageMipTailStride : aliased VkDeviceSize;  -- vulkan_core.h:2341
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2336

   type VkSparseMemoryBind is record
      resourceOffset : aliased VkDeviceSize;  -- vulkan_core.h:2345
      size : aliased VkDeviceSize;  -- vulkan_core.h:2346
      memory : VkDeviceMemory;  -- vulkan_core.h:2347
      memoryOffset : aliased VkDeviceSize;  -- vulkan_core.h:2348
      flags : aliased VkSparseMemoryBindFlags;  -- vulkan_core.h:2349
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2344

   type VkSparseBufferMemoryBindInfo is record
      buffer : VkBuffer;  -- vulkan_core.h:2353
      bindCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2354
      pBinds : access constant VkSparseMemoryBind;  -- vulkan_core.h:2355
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2352

   type VkSparseImageOpaqueMemoryBindInfo is record
      image : VkImage;  -- vulkan_core.h:2359
      bindCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2360
      pBinds : access constant VkSparseMemoryBind;  -- vulkan_core.h:2361
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2358

   type VkImageSubresource is record
      aspectMask : aliased VkImageAspectFlags;  -- vulkan_core.h:2365
      mipLevel : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2366
      arrayLayer : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2367
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2364

   type VkOffset3D is record
      x : aliased Interfaces.C.short;  -- vulkan_core.h:2371
      y : aliased Interfaces.C.short;  -- vulkan_core.h:2372
      z : aliased Interfaces.C.short;  -- vulkan_core.h:2373
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2370

   type VkSparseImageMemoryBind is record
      subresource : aliased VkImageSubresource;  -- vulkan_core.h:2377
      offset : aliased VkOffset3D;  -- vulkan_core.h:2378
      extent : aliased VkExtent3D;  -- vulkan_core.h:2379
      memory : VkDeviceMemory;  -- vulkan_core.h:2380
      memoryOffset : aliased VkDeviceSize;  -- vulkan_core.h:2381
      flags : aliased VkSparseMemoryBindFlags;  -- vulkan_core.h:2382
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2376

   type VkSparseImageMemoryBindInfo is record
      image : VkImage;  -- vulkan_core.h:2386
      bindCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2387
      pBinds : access constant VkSparseImageMemoryBind;  -- vulkan_core.h:2388
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2385

   type VkBindSparseInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2392
      pNext : System.Address;  -- vulkan_core.h:2393
      waitSemaphoreCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2394
      pWaitSemaphores : System.Address;  -- vulkan_core.h:2395
      bufferBindCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2396
      pBufferBinds : access constant VkSparseBufferMemoryBindInfo;  -- vulkan_core.h:2397
      imageOpaqueBindCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2398
      pImageOpaqueBinds : access constant VkSparseImageOpaqueMemoryBindInfo;  -- vulkan_core.h:2399
      imageBindCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2400
      pImageBinds : access constant VkSparseImageMemoryBindInfo;  -- vulkan_core.h:2401
      signalSemaphoreCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2402
      pSignalSemaphores : System.Address;  -- vulkan_core.h:2403
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2391

   type VkFenceCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2407
      pNext : System.Address;  -- vulkan_core.h:2408
      flags : aliased VkFenceCreateFlags;  -- vulkan_core.h:2409
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2406

   type VkSemaphoreCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2413
      pNext : System.Address;  -- vulkan_core.h:2414
      flags : aliased VkSemaphoreCreateFlags;  -- vulkan_core.h:2415
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2412

   type VkEventCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2419
      pNext : System.Address;  -- vulkan_core.h:2420
      flags : aliased VkEventCreateFlags;  -- vulkan_core.h:2421
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2418

   type VkQueryPoolCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2425
      pNext : System.Address;  -- vulkan_core.h:2426
      flags : aliased VkQueryPoolCreateFlags;  -- vulkan_core.h:2427
      queryType : aliased VkQueryType;  -- vulkan_core.h:2428
      queryCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2429
      pipelineStatistics : aliased VkQueryPipelineStatisticFlags;  -- vulkan_core.h:2430
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2424

   type VkBufferCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2434
      pNext : System.Address;  -- vulkan_core.h:2435
      flags : aliased VkBufferCreateFlags;  -- vulkan_core.h:2436
      size : aliased VkDeviceSize;  -- vulkan_core.h:2437
      usage : aliased VkBufferUsageFlags;  -- vulkan_core.h:2438
      sharingMode : aliased VkSharingMode;  -- vulkan_core.h:2439
      queueFamilyIndexCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2440
      pQueueFamilyIndices : access Interfaces.C.unsigned_short;  -- vulkan_core.h:2441
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2433

   type VkBufferViewCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2445
      pNext : System.Address;  -- vulkan_core.h:2446
      flags : aliased VkBufferViewCreateFlags;  -- vulkan_core.h:2447
      buffer : VkBuffer;  -- vulkan_core.h:2448
      format : aliased VkFormat;  -- vulkan_core.h:2449
      offset : aliased VkDeviceSize;  -- vulkan_core.h:2450
      c_range : aliased VkDeviceSize;  -- vulkan_core.h:2451
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2444

   type VkImageCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2455
      pNext : System.Address;  -- vulkan_core.h:2456
      flags : aliased VkImageCreateFlags;  -- vulkan_core.h:2457
      imageType : aliased VkImageType;  -- vulkan_core.h:2458
      format : aliased VkFormat;  -- vulkan_core.h:2459
      extent : aliased VkExtent3D;  -- vulkan_core.h:2460
      mipLevels : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2461
      arrayLayers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2462
      samples : aliased VkSampleCountFlagBits;  -- vulkan_core.h:2463
      tiling : aliased VkImageTiling;  -- vulkan_core.h:2464
      usage : aliased VkImageUsageFlags;  -- vulkan_core.h:2465
      sharingMode : aliased VkSharingMode;  -- vulkan_core.h:2466
      queueFamilyIndexCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2467
      pQueueFamilyIndices : access Interfaces.C.unsigned_short;  -- vulkan_core.h:2468
      initialLayout : aliased VkImageLayout;  -- vulkan_core.h:2469
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2454

   type VkSubresourceLayout is record
      offset : aliased VkDeviceSize;  -- vulkan_core.h:2473
      size : aliased VkDeviceSize;  -- vulkan_core.h:2474
      rowPitch : aliased VkDeviceSize;  -- vulkan_core.h:2475
      arrayPitch : aliased VkDeviceSize;  -- vulkan_core.h:2476
      depthPitch : aliased VkDeviceSize;  -- vulkan_core.h:2477
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2472

   type VkComponentMapping is record
      r : aliased VkComponentSwizzle;  -- vulkan_core.h:2481
      g : aliased VkComponentSwizzle;  -- vulkan_core.h:2482
      b : aliased VkComponentSwizzle;  -- vulkan_core.h:2483
      a : aliased VkComponentSwizzle;  -- vulkan_core.h:2484
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2480

   type VkImageSubresourceRange is record
      aspectMask : aliased VkImageAspectFlags;  -- vulkan_core.h:2488
      baseMipLevel : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2489
      levelCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2490
      baseArrayLayer : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2491
      layerCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2492
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2487

   type VkImageViewCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2496
      pNext : System.Address;  -- vulkan_core.h:2497
      flags : aliased VkImageViewCreateFlags;  -- vulkan_core.h:2498
      image : VkImage;  -- vulkan_core.h:2499
      viewType : aliased VkImageViewType;  -- vulkan_core.h:2500
      format : aliased VkFormat;  -- vulkan_core.h:2501
      components : aliased VkComponentMapping;  -- vulkan_core.h:2502
      subresourceRange : aliased VkImageSubresourceRange;  -- vulkan_core.h:2503
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2495

   type VkShaderModuleCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2507
      pNext : System.Address;  -- vulkan_core.h:2508
      flags : aliased VkShaderModuleCreateFlags;  -- vulkan_core.h:2509
      codeSize : aliased size_t;  -- vulkan_core.h:2510
      pCode : access Interfaces.C.unsigned_short;  -- vulkan_core.h:2511
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2506

   type VkPipelineCacheCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2515
      pNext : System.Address;  -- vulkan_core.h:2516
      flags : aliased VkPipelineCacheCreateFlags;  -- vulkan_core.h:2517
      initialDataSize : aliased size_t;  -- vulkan_core.h:2518
      pInitialData : System.Address;  -- vulkan_core.h:2519
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2514

   type VkSpecializationMapEntry is record
      constantID : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2523
      offset : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2524
      size : aliased size_t;  -- vulkan_core.h:2525
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2522

   type VkSpecializationInfo is record
      mapEntryCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2529
      pMapEntries : access constant VkSpecializationMapEntry;  -- vulkan_core.h:2530
      dataSize : aliased size_t;  -- vulkan_core.h:2531
      pData : System.Address;  -- vulkan_core.h:2532
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2528

   type VkPipelineShaderStageCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2536
      pNext : System.Address;  -- vulkan_core.h:2537
      flags : aliased VkPipelineShaderStageCreateFlags;  -- vulkan_core.h:2538
      stage : aliased VkShaderStageFlagBits;  -- vulkan_core.h:2539
      module : VkShaderModule;  -- vulkan_core.h:2540
      pName : Interfaces.C.Strings.chars_ptr;  -- vulkan_core.h:2541
      pSpecializationInfo : access constant VkSpecializationInfo;  -- vulkan_core.h:2542
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2535

   type VkVertexInputBindingDescription is record
      binding : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2546
      stride : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2547
      inputRate : aliased VkVertexInputRate;  -- vulkan_core.h:2548
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2545

   type VkVertexInputAttributeDescription is record
      location : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2552
      binding : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2553
      format : aliased VkFormat;  -- vulkan_core.h:2554
      offset : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2555
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2551

   type VkPipelineVertexInputStateCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2559
      pNext : System.Address;  -- vulkan_core.h:2560
      flags : aliased VkPipelineVertexInputStateCreateFlags;  -- vulkan_core.h:2561
      vertexBindingDescriptionCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2562
      pVertexBindingDescriptions : access constant VkVertexInputBindingDescription;  -- vulkan_core.h:2563
      vertexAttributeDescriptionCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2564
      pVertexAttributeDescriptions : access constant VkVertexInputAttributeDescription;  -- vulkan_core.h:2565
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2558

   type VkPipelineInputAssemblyStateCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2569
      pNext : System.Address;  -- vulkan_core.h:2570
      flags : aliased VkPipelineInputAssemblyStateCreateFlags;  -- vulkan_core.h:2571
      topology : aliased VkPrimitiveTopology;  -- vulkan_core.h:2572
      primitiveRestartEnable : aliased VkBool32;  -- vulkan_core.h:2573
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2568

   type VkPipelineTessellationStateCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2577
      pNext : System.Address;  -- vulkan_core.h:2578
      flags : aliased VkPipelineTessellationStateCreateFlags;  -- vulkan_core.h:2579
      patchControlPoints : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2580
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2576

   type VkViewport is record
      x : aliased float;  -- vulkan_core.h:2584
      y : aliased float;  -- vulkan_core.h:2585
      width : aliased float;  -- vulkan_core.h:2586
      height : aliased float;  -- vulkan_core.h:2587
      minDepth : aliased float;  -- vulkan_core.h:2588
      maxDepth : aliased float;  -- vulkan_core.h:2589
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2583

   type VkOffset2D is record
      x : aliased Interfaces.C.short;  -- vulkan_core.h:2593
      y : aliased Interfaces.C.short;  -- vulkan_core.h:2594
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2592

   type VkExtent2D is record
      width : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2598
      height : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2599
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2597

   type VkRect2D is record
      offset : aliased VkOffset2D;  -- vulkan_core.h:2603
      extent : aliased VkExtent2D;  -- vulkan_core.h:2604
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2602

   type VkPipelineViewportStateCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2608
      pNext : System.Address;  -- vulkan_core.h:2609
      flags : aliased VkPipelineViewportStateCreateFlags;  -- vulkan_core.h:2610
      viewportCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2611
      pViewports : access constant VkViewport;  -- vulkan_core.h:2612
      scissorCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2613
      pScissors : access constant VkRect2D;  -- vulkan_core.h:2614
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2607

   type VkPipelineRasterizationStateCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2618
      pNext : System.Address;  -- vulkan_core.h:2619
      flags : aliased VkPipelineRasterizationStateCreateFlags;  -- vulkan_core.h:2620
      depthClampEnable : aliased VkBool32;  -- vulkan_core.h:2621
      rasterizerDiscardEnable : aliased VkBool32;  -- vulkan_core.h:2622
      polygonMode : aliased VkPolygonMode;  -- vulkan_core.h:2623
      cullMode : aliased VkCullModeFlags;  -- vulkan_core.h:2624
      frontFace : aliased VkFrontFace;  -- vulkan_core.h:2625
      depthBiasEnable : aliased VkBool32;  -- vulkan_core.h:2626
      depthBiasConstantFactor : aliased float;  -- vulkan_core.h:2627
      depthBiasClamp : aliased float;  -- vulkan_core.h:2628
      depthBiasSlopeFactor : aliased float;  -- vulkan_core.h:2629
      lineWidth : aliased float;  -- vulkan_core.h:2630
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2617

   type VkPipelineMultisampleStateCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2634
      pNext : System.Address;  -- vulkan_core.h:2635
      flags : aliased VkPipelineMultisampleStateCreateFlags;  -- vulkan_core.h:2636
      rasterizationSamples : aliased VkSampleCountFlagBits;  -- vulkan_core.h:2637
      sampleShadingEnable : aliased VkBool32;  -- vulkan_core.h:2638
      minSampleShading : aliased float;  -- vulkan_core.h:2639
      pSampleMask : access VkSampleMask;  -- vulkan_core.h:2640
      alphaToCoverageEnable : aliased VkBool32;  -- vulkan_core.h:2641
      alphaToOneEnable : aliased VkBool32;  -- vulkan_core.h:2642
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2633

   type VkStencilOpState is record
      failOp : aliased VkStencilOp;  -- vulkan_core.h:2646
      passOp : aliased VkStencilOp;  -- vulkan_core.h:2647
      depthFailOp : aliased VkStencilOp;  -- vulkan_core.h:2648
      compareOp : aliased VkCompareOp;  -- vulkan_core.h:2649
      compareMask : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2650
      writeMask : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2651
      reference : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2652
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2645

   type VkPipelineDepthStencilStateCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2656
      pNext : System.Address;  -- vulkan_core.h:2657
      flags : aliased VkPipelineDepthStencilStateCreateFlags;  -- vulkan_core.h:2658
      depthTestEnable : aliased VkBool32;  -- vulkan_core.h:2659
      depthWriteEnable : aliased VkBool32;  -- vulkan_core.h:2660
      depthCompareOp : aliased VkCompareOp;  -- vulkan_core.h:2661
      depthBoundsTestEnable : aliased VkBool32;  -- vulkan_core.h:2662
      stencilTestEnable : aliased VkBool32;  -- vulkan_core.h:2663
      front : aliased VkStencilOpState;  -- vulkan_core.h:2664
      back : aliased VkStencilOpState;  -- vulkan_core.h:2665
      minDepthBounds : aliased float;  -- vulkan_core.h:2666
      maxDepthBounds : aliased float;  -- vulkan_core.h:2667
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2655

   type VkPipelineColorBlendAttachmentState is record
      blendEnable : aliased VkBool32;  -- vulkan_core.h:2671
      srcColorBlendFactor : aliased VkBlendFactor;  -- vulkan_core.h:2672
      dstColorBlendFactor : aliased VkBlendFactor;  -- vulkan_core.h:2673
      colorBlendOp : aliased VkBlendOp;  -- vulkan_core.h:2674
      srcAlphaBlendFactor : aliased VkBlendFactor;  -- vulkan_core.h:2675
      dstAlphaBlendFactor : aliased VkBlendFactor;  -- vulkan_core.h:2676
      alphaBlendOp : aliased VkBlendOp;  -- vulkan_core.h:2677
      colorWriteMask : aliased VkColorComponentFlags;  -- vulkan_core.h:2678
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2670

   type VkPipelineColorBlendStateCreateInfo_array1588 is array (0 .. 3) of aliased float;
   type VkPipelineColorBlendStateCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2682
      pNext : System.Address;  -- vulkan_core.h:2683
      flags : aliased VkPipelineColorBlendStateCreateFlags;  -- vulkan_core.h:2684
      logicOpEnable : aliased VkBool32;  -- vulkan_core.h:2685
      logicOp : aliased VkLogicOp;  -- vulkan_core.h:2686
      attachmentCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2687
      pAttachments : access constant VkPipelineColorBlendAttachmentState;  -- vulkan_core.h:2688
      blendConstants : aliased VkPipelineColorBlendStateCreateInfo_array1588;  -- vulkan_core.h:2689
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2681

   type VkPipelineDynamicStateCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2693
      pNext : System.Address;  -- vulkan_core.h:2694
      flags : aliased VkPipelineDynamicStateCreateFlags;  -- vulkan_core.h:2695
      dynamicStateCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2696
      pDynamicStates : access VkDynamicState;  -- vulkan_core.h:2697
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2692

   type VkGraphicsPipelineCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2701
      pNext : System.Address;  -- vulkan_core.h:2702
      flags : aliased VkPipelineCreateFlags;  -- vulkan_core.h:2703
      stageCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2704
      pStages : access constant VkPipelineShaderStageCreateInfo;  -- vulkan_core.h:2705
      pVertexInputState : access constant VkPipelineVertexInputStateCreateInfo;  -- vulkan_core.h:2706
      pInputAssemblyState : access constant VkPipelineInputAssemblyStateCreateInfo;  -- vulkan_core.h:2707
      pTessellationState : access constant VkPipelineTessellationStateCreateInfo;  -- vulkan_core.h:2708
      pViewportState : access constant VkPipelineViewportStateCreateInfo;  -- vulkan_core.h:2709
      pRasterizationState : access constant VkPipelineRasterizationStateCreateInfo;  -- vulkan_core.h:2710
      pMultisampleState : access constant VkPipelineMultisampleStateCreateInfo;  -- vulkan_core.h:2711
      pDepthStencilState : access constant VkPipelineDepthStencilStateCreateInfo;  -- vulkan_core.h:2712
      pColorBlendState : access constant VkPipelineColorBlendStateCreateInfo;  -- vulkan_core.h:2713
      pDynamicState : access constant VkPipelineDynamicStateCreateInfo;  -- vulkan_core.h:2714
      layout : VkPipelineLayout;  -- vulkan_core.h:2715
      renderPass : VkRenderPass;  -- vulkan_core.h:2716
      subpass : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2717
      basePipelineHandle : VkPipeline;  -- vulkan_core.h:2718
      basePipelineIndex : aliased Interfaces.C.short;  -- vulkan_core.h:2719
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2700

   type VkComputePipelineCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2723
      pNext : System.Address;  -- vulkan_core.h:2724
      flags : aliased VkPipelineCreateFlags;  -- vulkan_core.h:2725
      stage : aliased VkPipelineShaderStageCreateInfo;  -- vulkan_core.h:2726
      layout : VkPipelineLayout;  -- vulkan_core.h:2727
      basePipelineHandle : VkPipeline;  -- vulkan_core.h:2728
      basePipelineIndex : aliased Interfaces.C.short;  -- vulkan_core.h:2729
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2722

   type VkPushConstantRange is record
      stageFlags : aliased VkShaderStageFlags;  -- vulkan_core.h:2733
      offset : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2734
      size : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2735
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2732

   type VkPipelineLayoutCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2739
      pNext : System.Address;  -- vulkan_core.h:2740
      flags : aliased VkPipelineLayoutCreateFlags;  -- vulkan_core.h:2741
      setLayoutCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2742
      pSetLayouts : System.Address;  -- vulkan_core.h:2743
      pushConstantRangeCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2744
      pPushConstantRanges : access constant VkPushConstantRange;  -- vulkan_core.h:2745
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2738

   type VkSamplerCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2749
      pNext : System.Address;  -- vulkan_core.h:2750
      flags : aliased VkSamplerCreateFlags;  -- vulkan_core.h:2751
      magFilter : aliased VkFilter;  -- vulkan_core.h:2752
      minFilter : aliased VkFilter;  -- vulkan_core.h:2753
      mipmapMode : aliased VkSamplerMipmapMode;  -- vulkan_core.h:2754
      addressModeU : aliased VkSamplerAddressMode;  -- vulkan_core.h:2755
      addressModeV : aliased VkSamplerAddressMode;  -- vulkan_core.h:2756
      addressModeW : aliased VkSamplerAddressMode;  -- vulkan_core.h:2757
      mipLodBias : aliased float;  -- vulkan_core.h:2758
      anisotropyEnable : aliased VkBool32;  -- vulkan_core.h:2759
      maxAnisotropy : aliased float;  -- vulkan_core.h:2760
      compareEnable : aliased VkBool32;  -- vulkan_core.h:2761
      compareOp : aliased VkCompareOp;  -- vulkan_core.h:2762
      minLod : aliased float;  -- vulkan_core.h:2763
      maxLod : aliased float;  -- vulkan_core.h:2764
      borderColor : aliased VkBorderColor;  -- vulkan_core.h:2765
      unnormalizedCoordinates : aliased VkBool32;  -- vulkan_core.h:2766
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2748

   type VkDescriptorSetLayoutBinding is record
      binding : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2770
      descriptorType : aliased VkDescriptorType;  -- vulkan_core.h:2771
      descriptorCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2772
      stageFlags : aliased VkShaderStageFlags;  -- vulkan_core.h:2773
      pImmutableSamplers : System.Address;  -- vulkan_core.h:2774
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2769

   type VkDescriptorSetLayoutCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2778
      pNext : System.Address;  -- vulkan_core.h:2779
      flags : aliased VkDescriptorSetLayoutCreateFlags;  -- vulkan_core.h:2780
      bindingCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2781
      pBindings : access constant VkDescriptorSetLayoutBinding;  -- vulkan_core.h:2782
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2777

   type VkDescriptorPoolSize is record
      c_type : aliased VkDescriptorType;  -- vulkan_core.h:2786
      descriptorCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2787
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2785

   type VkDescriptorPoolCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2791
      pNext : System.Address;  -- vulkan_core.h:2792
      flags : aliased VkDescriptorPoolCreateFlags;  -- vulkan_core.h:2793
      maxSets : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2794
      poolSizeCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2795
      pPoolSizes : access constant VkDescriptorPoolSize;  -- vulkan_core.h:2796
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2790

   type VkDescriptorSetAllocateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2800
      pNext : System.Address;  -- vulkan_core.h:2801
      descriptorPool : VkDescriptorPool;  -- vulkan_core.h:2802
      descriptorSetCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2803
      pSetLayouts : System.Address;  -- vulkan_core.h:2804
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2799

   type VkDescriptorImageInfo is record
      sampler : VkSampler;  -- vulkan_core.h:2808
      imageView : VkImageView;  -- vulkan_core.h:2809
      imageLayout : aliased VkImageLayout;  -- vulkan_core.h:2810
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2807

   type VkDescriptorBufferInfo is record
      buffer : VkBuffer;  -- vulkan_core.h:2814
      offset : aliased VkDeviceSize;  -- vulkan_core.h:2815
      c_range : aliased VkDeviceSize;  -- vulkan_core.h:2816
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2813

   type VkWriteDescriptorSet is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2820
      pNext : System.Address;  -- vulkan_core.h:2821
      dstSet : VkDescriptorSet;  -- vulkan_core.h:2822
      dstBinding : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2823
      dstArrayElement : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2824
      descriptorCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2825
      descriptorType : aliased VkDescriptorType;  -- vulkan_core.h:2826
      pImageInfo : access constant VkDescriptorImageInfo;  -- vulkan_core.h:2827
      pBufferInfo : access constant VkDescriptorBufferInfo;  -- vulkan_core.h:2828
      pTexelBufferView : System.Address;  -- vulkan_core.h:2829
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2819

   type VkCopyDescriptorSet is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2833
      pNext : System.Address;  -- vulkan_core.h:2834
      srcSet : VkDescriptorSet;  -- vulkan_core.h:2835
      srcBinding : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2836
      srcArrayElement : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2837
      dstSet : VkDescriptorSet;  -- vulkan_core.h:2838
      dstBinding : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2839
      dstArrayElement : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2840
      descriptorCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2841
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2832

   type VkFramebufferCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2845
      pNext : System.Address;  -- vulkan_core.h:2846
      flags : aliased VkFramebufferCreateFlags;  -- vulkan_core.h:2847
      renderPass : VkRenderPass;  -- vulkan_core.h:2848
      attachmentCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2849
      pAttachments : System.Address;  -- vulkan_core.h:2850
      width : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2851
      height : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2852
      layers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2853
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2844

   type VkAttachmentDescription is record
      flags : aliased VkAttachmentDescriptionFlags;  -- vulkan_core.h:2857
      format : aliased VkFormat;  -- vulkan_core.h:2858
      samples : aliased VkSampleCountFlagBits;  -- vulkan_core.h:2859
      loadOp : aliased VkAttachmentLoadOp;  -- vulkan_core.h:2860
      storeOp : aliased VkAttachmentStoreOp;  -- vulkan_core.h:2861
      stencilLoadOp : aliased VkAttachmentLoadOp;  -- vulkan_core.h:2862
      stencilStoreOp : aliased VkAttachmentStoreOp;  -- vulkan_core.h:2863
      initialLayout : aliased VkImageLayout;  -- vulkan_core.h:2864
      finalLayout : aliased VkImageLayout;  -- vulkan_core.h:2865
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2856

   type VkAttachmentReference is record
      attachment : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2869
      layout : aliased VkImageLayout;  -- vulkan_core.h:2870
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2868

   type VkSubpassDescription is record
      flags : aliased VkSubpassDescriptionFlags;  -- vulkan_core.h:2874
      pipelineBindPoint : aliased VkPipelineBindPoint;  -- vulkan_core.h:2875
      inputAttachmentCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2876
      pInputAttachments : access constant VkAttachmentReference;  -- vulkan_core.h:2877
      colorAttachmentCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2878
      pColorAttachments : access constant VkAttachmentReference;  -- vulkan_core.h:2879
      pResolveAttachments : access constant VkAttachmentReference;  -- vulkan_core.h:2880
      pDepthStencilAttachment : access constant VkAttachmentReference;  -- vulkan_core.h:2881
      preserveAttachmentCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2882
      pPreserveAttachments : access Interfaces.C.unsigned_short;  -- vulkan_core.h:2883
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2873

   type VkSubpassDependency is record
      srcSubpass : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2887
      dstSubpass : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2888
      srcStageMask : aliased VkPipelineStageFlags;  -- vulkan_core.h:2889
      dstStageMask : aliased VkPipelineStageFlags;  -- vulkan_core.h:2890
      srcAccessMask : aliased VkAccessFlags;  -- vulkan_core.h:2891
      dstAccessMask : aliased VkAccessFlags;  -- vulkan_core.h:2892
      dependencyFlags : aliased VkDependencyFlags;  -- vulkan_core.h:2893
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2886

   type VkRenderPassCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2897
      pNext : System.Address;  -- vulkan_core.h:2898
      flags : aliased VkRenderPassCreateFlags;  -- vulkan_core.h:2899
      attachmentCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2900
      pAttachments : access constant VkAttachmentDescription;  -- vulkan_core.h:2901
      subpassCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2902
      pSubpasses : access constant VkSubpassDescription;  -- vulkan_core.h:2903
      dependencyCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2904
      pDependencies : access constant VkSubpassDependency;  -- vulkan_core.h:2905
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2896

   type VkCommandPoolCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2909
      pNext : System.Address;  -- vulkan_core.h:2910
      flags : aliased VkCommandPoolCreateFlags;  -- vulkan_core.h:2911
      queueFamilyIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2912
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2908

   type VkCommandBufferAllocateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2916
      pNext : System.Address;  -- vulkan_core.h:2917
      commandPool : VkCommandPool;  -- vulkan_core.h:2918
      level : aliased VkCommandBufferLevel;  -- vulkan_core.h:2919
      commandBufferCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2920
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2915

   type VkCommandBufferInheritanceInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2924
      pNext : System.Address;  -- vulkan_core.h:2925
      renderPass : VkRenderPass;  -- vulkan_core.h:2926
      subpass : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2927
      framebuffer : VkFramebuffer;  -- vulkan_core.h:2928
      occlusionQueryEnable : aliased VkBool32;  -- vulkan_core.h:2929
      queryFlags : aliased VkQueryControlFlags;  -- vulkan_core.h:2930
      pipelineStatistics : aliased VkQueryPipelineStatisticFlags;  -- vulkan_core.h:2931
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2923

   type VkCommandBufferBeginInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:2935
      pNext : System.Address;  -- vulkan_core.h:2936
      flags : aliased VkCommandBufferUsageFlags;  -- vulkan_core.h:2937
      pInheritanceInfo : access constant VkCommandBufferInheritanceInfo;  -- vulkan_core.h:2938
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2934

   type VkBufferCopy is record
      srcOffset : aliased VkDeviceSize;  -- vulkan_core.h:2942
      dstOffset : aliased VkDeviceSize;  -- vulkan_core.h:2943
      size : aliased VkDeviceSize;  -- vulkan_core.h:2944
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2941

   type VkImageSubresourceLayers is record
      aspectMask : aliased VkImageAspectFlags;  -- vulkan_core.h:2948
      mipLevel : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2949
      baseArrayLayer : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2950
      layerCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2951
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2947

   type VkImageCopy is record
      srcSubresource : aliased VkImageSubresourceLayers;  -- vulkan_core.h:2955
      srcOffset : aliased VkOffset3D;  -- vulkan_core.h:2956
      dstSubresource : aliased VkImageSubresourceLayers;  -- vulkan_core.h:2957
      dstOffset : aliased VkOffset3D;  -- vulkan_core.h:2958
      extent : aliased VkExtent3D;  -- vulkan_core.h:2959
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2954

   type VkImageBlit_array1777 is array (0 .. 1) of aliased VkOffset3D;
   type VkImageBlit is record
      srcSubresource : aliased VkImageSubresourceLayers;  -- vulkan_core.h:2963
      srcOffsets : aliased VkImageBlit_array1777;  -- vulkan_core.h:2964
      dstSubresource : aliased VkImageSubresourceLayers;  -- vulkan_core.h:2965
      dstOffsets : aliased VkImageBlit_array1777;  -- vulkan_core.h:2966
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2962

   type VkBufferImageCopy is record
      bufferOffset : aliased VkDeviceSize;  -- vulkan_core.h:2970
      bufferRowLength : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2971
      bufferImageHeight : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2972
      imageSubresource : aliased VkImageSubresourceLayers;  -- vulkan_core.h:2973
      imageOffset : aliased VkOffset3D;  -- vulkan_core.h:2974
      imageExtent : aliased VkExtent3D;  -- vulkan_core.h:2975
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2969

   type VkClearColorValue_array1588 is array (0 .. 3) of aliased float;
   type VkClearColorValue_array1785 is array (0 .. 3) of aliased Interfaces.C.short;
   type VkClearColorValue_array1787 is array (0 .. 3) of aliased Interfaces.C.unsigned_short;
   type VkClearColorValue (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            float32 : aliased VkClearColorValue_array1588;  -- vulkan_core.h:2979
         when 1 =>
            int32 : aliased VkClearColorValue_array1785;  -- vulkan_core.h:2980
         when others =>
            uint32 : aliased VkClearColorValue_array1787;  -- vulkan_core.h:2981
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- vulkan_core.h:2978

   type VkClearDepthStencilValue is record
      depth : aliased float;  -- vulkan_core.h:2985
      stencil : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2986
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2984

   type VkClearValue (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            color : aliased VkClearColorValue;  -- vulkan_core.h:2990
         when others =>
            depthStencil : aliased VkClearDepthStencilValue;  -- vulkan_core.h:2991
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- vulkan_core.h:2989

   type VkClearAttachment is record
      aspectMask : aliased VkImageAspectFlags;  -- vulkan_core.h:2995
      colorAttachment : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:2996
      clearValue : aliased VkClearValue;  -- vulkan_core.h:2997
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:2994

   type VkClearRect is record
      rect : aliased VkRect2D;  -- vulkan_core.h:3001
      baseArrayLayer : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3002
      layerCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3003
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:3000

   type VkImageResolve is record
      srcSubresource : aliased VkImageSubresourceLayers;  -- vulkan_core.h:3007
      srcOffset : aliased VkOffset3D;  -- vulkan_core.h:3008
      dstSubresource : aliased VkImageSubresourceLayers;  -- vulkan_core.h:3009
      dstOffset : aliased VkOffset3D;  -- vulkan_core.h:3010
      extent : aliased VkExtent3D;  -- vulkan_core.h:3011
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:3006

   type VkMemoryBarrier is record
      sType : aliased VkStructureType;  -- vulkan_core.h:3015
      pNext : System.Address;  -- vulkan_core.h:3016
      srcAccessMask : aliased VkAccessFlags;  -- vulkan_core.h:3017
      dstAccessMask : aliased VkAccessFlags;  -- vulkan_core.h:3018
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:3014

   type VkBufferMemoryBarrier is record
      sType : aliased VkStructureType;  -- vulkan_core.h:3022
      pNext : System.Address;  -- vulkan_core.h:3023
      srcAccessMask : aliased VkAccessFlags;  -- vulkan_core.h:3024
      dstAccessMask : aliased VkAccessFlags;  -- vulkan_core.h:3025
      srcQueueFamilyIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3026
      dstQueueFamilyIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3027
      buffer : VkBuffer;  -- vulkan_core.h:3028
      offset : aliased VkDeviceSize;  -- vulkan_core.h:3029
      size : aliased VkDeviceSize;  -- vulkan_core.h:3030
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:3021

   type VkImageMemoryBarrier is record
      sType : aliased VkStructureType;  -- vulkan_core.h:3034
      pNext : System.Address;  -- vulkan_core.h:3035
      srcAccessMask : aliased VkAccessFlags;  -- vulkan_core.h:3036
      dstAccessMask : aliased VkAccessFlags;  -- vulkan_core.h:3037
      oldLayout : aliased VkImageLayout;  -- vulkan_core.h:3038
      newLayout : aliased VkImageLayout;  -- vulkan_core.h:3039
      srcQueueFamilyIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3040
      dstQueueFamilyIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3041
      image : VkImage;  -- vulkan_core.h:3042
      subresourceRange : aliased VkImageSubresourceRange;  -- vulkan_core.h:3043
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:3033

   type VkRenderPassBeginInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:3047
      pNext : System.Address;  -- vulkan_core.h:3048
      renderPass : VkRenderPass;  -- vulkan_core.h:3049
      framebuffer : VkFramebuffer;  -- vulkan_core.h:3050
      renderArea : aliased VkRect2D;  -- vulkan_core.h:3051
      clearValueCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3052
      pClearValues : access constant VkClearValue;  -- vulkan_core.h:3053
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:3046

   type VkDispatchIndirectCommand is record
      x : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3057
      y : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3058
      z : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3059
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:3056

   type VkDrawIndexedIndirectCommand is record
      indexCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3063
      instanceCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3064
      firstIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3065
      vertexOffset : aliased Interfaces.C.short;  -- vulkan_core.h:3066
      firstInstance : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3067
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:3062

   type VkDrawIndirectCommand is record
      vertexCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3071
      instanceCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3072
      firstVertex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3073
      firstInstance : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:3074
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:3070

   type VkBaseOutStructure;
   type VkBaseOutStructure is record
      sType : aliased VkStructureType;  -- vulkan_core.h:3078
      pNext : access VkBaseOutStructure;  -- vulkan_core.h:3079
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:3077

   type VkBaseInStructure;
   type VkBaseInStructure is record
      sType : aliased VkStructureType;  -- vulkan_core.h:3083
      pNext : access constant VkBaseInStructure;  -- vulkan_core.h:3084
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:3082

   type PFN_vkCreateInstance is access function
        (arg1 : access constant VkInstanceCreateInfo;
         arg2 : access constant VkAllocationCallbacks;
         arg3 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3087

   type PFN_vkDestroyInstance is access procedure (arg1 : VkInstance; arg2 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3088

   type PFN_vkEnumeratePhysicalDevices is access function
        (arg1 : VkInstance;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3089

   type PFN_vkGetPhysicalDeviceFeatures is access procedure (arg1 : VkPhysicalDevice; arg2 : access VkPhysicalDeviceFeatures)
   with Convention => C;  -- vulkan_core.h:3090

   type PFN_vkGetPhysicalDeviceFormatProperties is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : VkFormat;
         arg3 : access VkFormatProperties)
   with Convention => C;  -- vulkan_core.h:3091

   type PFN_vkGetPhysicalDeviceImageFormatProperties is access function
        (arg1 : VkPhysicalDevice;
         arg2 : VkFormat;
         arg3 : VkImageType;
         arg4 : VkImageTiling;
         arg5 : VkImageUsageFlags;
         arg6 : VkImageCreateFlags;
         arg7 : access VkImageFormatProperties) return VkResult
   with Convention => C;  -- vulkan_core.h:3092

   type PFN_vkGetPhysicalDeviceProperties is access procedure (arg1 : VkPhysicalDevice; arg2 : access VkPhysicalDeviceProperties)
   with Convention => C;  -- vulkan_core.h:3093

   type PFN_vkGetPhysicalDeviceQueueFamilyProperties is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkQueueFamilyProperties)
   with Convention => C;  -- vulkan_core.h:3094

   type PFN_vkGetPhysicalDeviceMemoryProperties is access procedure (arg1 : VkPhysicalDevice; arg2 : access VkPhysicalDeviceMemoryProperties)
   with Convention => C;  -- vulkan_core.h:3095

   type PFN_vkGetInstanceProcAddr is access function (arg1 : VkInstance; arg2 : Interfaces.C.Strings.chars_ptr) return PFN_vkVoidFunction
   with Convention => C;  -- vulkan_core.h:3096

   type PFN_vkGetDeviceProcAddr is access function (arg1 : VkDevice; arg2 : Interfaces.C.Strings.chars_ptr) return PFN_vkVoidFunction
   with Convention => C;  -- vulkan_core.h:3097

   type PFN_vkCreateDevice is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkDeviceCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3098

   type PFN_vkDestroyDevice is access procedure (arg1 : VkDevice; arg2 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3099

   type PFN_vkEnumerateInstanceExtensionProperties is access function
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkExtensionProperties) return VkResult
   with Convention => C;  -- vulkan_core.h:3100

   type PFN_vkEnumerateDeviceExtensionProperties is access function
        (arg1 : VkPhysicalDevice;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkExtensionProperties) return VkResult
   with Convention => C;  -- vulkan_core.h:3101

   type PFN_vkEnumerateInstanceLayerProperties is access function (arg1 : access Interfaces.C.unsigned_short; arg2 : access VkLayerProperties) return VkResult
   with Convention => C;  -- vulkan_core.h:3102

   type PFN_vkEnumerateDeviceLayerProperties is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkLayerProperties) return VkResult
   with Convention => C;  -- vulkan_core.h:3103

   type PFN_vkGetDeviceQueue is access procedure
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : System.Address)
   with Convention => C;  -- vulkan_core.h:3104

   type PFN_vkQueueSubmit is access function
        (arg1 : VkQueue;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkSubmitInfo;
         arg4 : VkFence) return VkResult
   with Convention => C;  -- vulkan_core.h:3105

   type PFN_vkQueueWaitIdle is access function (arg1 : VkQueue) return VkResult
   with Convention => C;  -- vulkan_core.h:3106

   type PFN_vkDeviceWaitIdle is access function (arg1 : VkDevice) return VkResult
   with Convention => C;  -- vulkan_core.h:3107

   type PFN_vkAllocateMemory is access function
        (arg1 : VkDevice;
         arg2 : access constant VkMemoryAllocateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3108

   type PFN_vkFreeMemory is access procedure
        (arg1 : VkDevice;
         arg2 : VkDeviceMemory;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3109

   type PFN_vkMapMemory is access function
        (arg1 : VkDevice;
         arg2 : VkDeviceMemory;
         arg3 : VkDeviceSize;
         arg4 : VkDeviceSize;
         arg5 : VkMemoryMapFlags;
         arg6 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3110

   type PFN_vkUnmapMemory is access procedure (arg1 : VkDevice; arg2 : VkDeviceMemory)
   with Convention => C;  -- vulkan_core.h:3111

   type PFN_vkFlushMappedMemoryRanges is access function
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkMappedMemoryRange) return VkResult
   with Convention => C;  -- vulkan_core.h:3112

   type PFN_vkInvalidateMappedMemoryRanges is access function
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkMappedMemoryRange) return VkResult
   with Convention => C;  -- vulkan_core.h:3113

   type PFN_vkGetDeviceMemoryCommitment is access procedure
        (arg1 : VkDevice;
         arg2 : VkDeviceMemory;
         arg3 : access VkDeviceSize)
   with Convention => C;  -- vulkan_core.h:3114

   type PFN_vkBindBufferMemory is access function
        (arg1 : VkDevice;
         arg2 : VkBuffer;
         arg3 : VkDeviceMemory;
         arg4 : VkDeviceSize) return VkResult
   with Convention => C;  -- vulkan_core.h:3115

   type PFN_vkBindImageMemory is access function
        (arg1 : VkDevice;
         arg2 : VkImage;
         arg3 : VkDeviceMemory;
         arg4 : VkDeviceSize) return VkResult
   with Convention => C;  -- vulkan_core.h:3116

   type PFN_vkGetBufferMemoryRequirements is access procedure
        (arg1 : VkDevice;
         arg2 : VkBuffer;
         arg3 : access VkMemoryRequirements)
   with Convention => C;  -- vulkan_core.h:3117

   type PFN_vkGetImageMemoryRequirements is access procedure
        (arg1 : VkDevice;
         arg2 : VkImage;
         arg3 : access VkMemoryRequirements)
   with Convention => C;  -- vulkan_core.h:3118

   type PFN_vkGetImageSparseMemoryRequirements is access procedure
        (arg1 : VkDevice;
         arg2 : VkImage;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkSparseImageMemoryRequirements)
   with Convention => C;  -- vulkan_core.h:3119

   type PFN_vkGetPhysicalDeviceSparseImageFormatProperties is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : VkFormat;
         arg3 : VkImageType;
         arg4 : VkSampleCountFlagBits;
         arg5 : VkImageUsageFlags;
         arg6 : VkImageTiling;
         arg7 : access Interfaces.C.unsigned_short;
         arg8 : access VkSparseImageFormatProperties)
   with Convention => C;  -- vulkan_core.h:3120

   type PFN_vkQueueBindSparse is access function
        (arg1 : VkQueue;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkBindSparseInfo;
         arg4 : VkFence) return VkResult
   with Convention => C;  -- vulkan_core.h:3121

   type PFN_vkCreateFence is access function
        (arg1 : VkDevice;
         arg2 : access constant VkFenceCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3122

   type PFN_vkDestroyFence is access procedure
        (arg1 : VkDevice;
         arg2 : VkFence;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3123

   type PFN_vkResetFences is access function
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3124

   type PFN_vkGetFenceStatus is access function (arg1 : VkDevice; arg2 : VkFence) return VkResult
   with Convention => C;  -- vulkan_core.h:3125

   type PFN_vkWaitForFences is access function
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : System.Address;
         arg4 : VkBool32;
         arg5 : Interfaces.C.unsigned_long) return VkResult
   with Convention => C;  -- vulkan_core.h:3126

   type PFN_vkCreateSemaphore is access function
        (arg1 : VkDevice;
         arg2 : access constant VkSemaphoreCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3127

   type PFN_vkDestroySemaphore is access procedure
        (arg1 : VkDevice;
         arg2 : VkSemaphore;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3128

   type PFN_vkCreateEvent is access function
        (arg1 : VkDevice;
         arg2 : access constant VkEventCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3129

   type PFN_vkDestroyEvent is access procedure
        (arg1 : VkDevice;
         arg2 : VkEvent;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3130

   type PFN_vkGetEventStatus is access function (arg1 : VkDevice; arg2 : VkEvent) return VkResult
   with Convention => C;  -- vulkan_core.h:3131

   type PFN_vkSetEvent is access function (arg1 : VkDevice; arg2 : VkEvent) return VkResult
   with Convention => C;  -- vulkan_core.h:3132

   type PFN_vkResetEvent is access function (arg1 : VkDevice; arg2 : VkEvent) return VkResult
   with Convention => C;  -- vulkan_core.h:3133

   type PFN_vkCreateQueryPool is access function
        (arg1 : VkDevice;
         arg2 : access constant VkQueryPoolCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3134

   type PFN_vkDestroyQueryPool is access procedure
        (arg1 : VkDevice;
         arg2 : VkQueryPool;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3135

   type PFN_vkGetQueryPoolResults is access function
        (arg1 : VkDevice;
         arg2 : VkQueryPool;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : size_t;
         arg6 : System.Address;
         arg7 : VkDeviceSize;
         arg8 : VkQueryResultFlags) return VkResult
   with Convention => C;  -- vulkan_core.h:3136

   type PFN_vkCreateBuffer is access function
        (arg1 : VkDevice;
         arg2 : access constant VkBufferCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3137

   type PFN_vkDestroyBuffer is access procedure
        (arg1 : VkDevice;
         arg2 : VkBuffer;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3138

   type PFN_vkCreateBufferView is access function
        (arg1 : VkDevice;
         arg2 : access constant VkBufferViewCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3139

   type PFN_vkDestroyBufferView is access procedure
        (arg1 : VkDevice;
         arg2 : VkBufferView;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3140

   type PFN_vkCreateImage is access function
        (arg1 : VkDevice;
         arg2 : access constant VkImageCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3141

   type PFN_vkDestroyImage is access procedure
        (arg1 : VkDevice;
         arg2 : VkImage;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3142

   type PFN_vkGetImageSubresourceLayout is access procedure
        (arg1 : VkDevice;
         arg2 : VkImage;
         arg3 : access constant VkImageSubresource;
         arg4 : access VkSubresourceLayout)
   with Convention => C;  -- vulkan_core.h:3143

   type PFN_vkCreateImageView is access function
        (arg1 : VkDevice;
         arg2 : access constant VkImageViewCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3144

   type PFN_vkDestroyImageView is access procedure
        (arg1 : VkDevice;
         arg2 : VkImageView;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3145

   type PFN_vkCreateShaderModule is access function
        (arg1 : VkDevice;
         arg2 : access constant VkShaderModuleCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3146

   type PFN_vkDestroyShaderModule is access procedure
        (arg1 : VkDevice;
         arg2 : VkShaderModule;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3147

   type PFN_vkCreatePipelineCache is access function
        (arg1 : VkDevice;
         arg2 : access constant VkPipelineCacheCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3148

   type PFN_vkDestroyPipelineCache is access procedure
        (arg1 : VkDevice;
         arg2 : VkPipelineCache;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3149

   type PFN_vkGetPipelineCacheData is access function
        (arg1 : VkDevice;
         arg2 : VkPipelineCache;
         arg3 : access size_t;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3150

   type PFN_vkMergePipelineCaches is access function
        (arg1 : VkDevice;
         arg2 : VkPipelineCache;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3151

   type PFN_vkCreateGraphicsPipelines is access function
        (arg1 : VkDevice;
         arg2 : VkPipelineCache;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : access constant VkGraphicsPipelineCreateInfo;
         arg5 : access constant VkAllocationCallbacks;
         arg6 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3152

   type PFN_vkCreateComputePipelines is access function
        (arg1 : VkDevice;
         arg2 : VkPipelineCache;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : access constant VkComputePipelineCreateInfo;
         arg5 : access constant VkAllocationCallbacks;
         arg6 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3153

   type PFN_vkDestroyPipeline is access procedure
        (arg1 : VkDevice;
         arg2 : VkPipeline;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3154

   type PFN_vkCreatePipelineLayout is access function
        (arg1 : VkDevice;
         arg2 : access constant VkPipelineLayoutCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3155

   type PFN_vkDestroyPipelineLayout is access procedure
        (arg1 : VkDevice;
         arg2 : VkPipelineLayout;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3156

   type PFN_vkCreateSampler is access function
        (arg1 : VkDevice;
         arg2 : access constant VkSamplerCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3157

   type PFN_vkDestroySampler is access procedure
        (arg1 : VkDevice;
         arg2 : VkSampler;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3158

   type PFN_vkCreateDescriptorSetLayout is access function
        (arg1 : VkDevice;
         arg2 : access constant VkDescriptorSetLayoutCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3159

   type PFN_vkDestroyDescriptorSetLayout is access procedure
        (arg1 : VkDevice;
         arg2 : VkDescriptorSetLayout;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3160

   type PFN_vkCreateDescriptorPool is access function
        (arg1 : VkDevice;
         arg2 : access constant VkDescriptorPoolCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3161

   type PFN_vkDestroyDescriptorPool is access procedure
        (arg1 : VkDevice;
         arg2 : VkDescriptorPool;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3162

   type PFN_vkResetDescriptorPool is access function
        (arg1 : VkDevice;
         arg2 : VkDescriptorPool;
         arg3 : VkDescriptorPoolResetFlags) return VkResult
   with Convention => C;  -- vulkan_core.h:3163

   type PFN_vkAllocateDescriptorSets is access function
        (arg1 : VkDevice;
         arg2 : access constant VkDescriptorSetAllocateInfo;
         arg3 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3164

   type PFN_vkFreeDescriptorSets is access function
        (arg1 : VkDevice;
         arg2 : VkDescriptorPool;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3165

   type PFN_vkUpdateDescriptorSets is access procedure
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkWriteDescriptorSet;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : access constant VkCopyDescriptorSet)
   with Convention => C;  -- vulkan_core.h:3166

   type PFN_vkCreateFramebuffer is access function
        (arg1 : VkDevice;
         arg2 : access constant VkFramebufferCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3167

   type PFN_vkDestroyFramebuffer is access procedure
        (arg1 : VkDevice;
         arg2 : VkFramebuffer;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3168

   type PFN_vkCreateRenderPass is access function
        (arg1 : VkDevice;
         arg2 : access constant VkRenderPassCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3169

   type PFN_vkDestroyRenderPass is access procedure
        (arg1 : VkDevice;
         arg2 : VkRenderPass;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3170

   type PFN_vkGetRenderAreaGranularity is access procedure
        (arg1 : VkDevice;
         arg2 : VkRenderPass;
         arg3 : access VkExtent2D)
   with Convention => C;  -- vulkan_core.h:3171

   type PFN_vkCreateCommandPool is access function
        (arg1 : VkDevice;
         arg2 : access constant VkCommandPoolCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3172

   type PFN_vkDestroyCommandPool is access procedure
        (arg1 : VkDevice;
         arg2 : VkCommandPool;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:3173

   type PFN_vkResetCommandPool is access function
        (arg1 : VkDevice;
         arg2 : VkCommandPool;
         arg3 : VkCommandPoolResetFlags) return VkResult
   with Convention => C;  -- vulkan_core.h:3174

   type PFN_vkAllocateCommandBuffers is access function
        (arg1 : VkDevice;
         arg2 : access constant VkCommandBufferAllocateInfo;
         arg3 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:3175

   type PFN_vkFreeCommandBuffers is access procedure
        (arg1 : VkDevice;
         arg2 : VkCommandPool;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : System.Address)
   with Convention => C;  -- vulkan_core.h:3176

   type PFN_vkBeginCommandBuffer is access function (arg1 : VkCommandBuffer; arg2 : access constant VkCommandBufferBeginInfo) return VkResult
   with Convention => C;  -- vulkan_core.h:3177

   type PFN_vkEndCommandBuffer is access function (arg1 : VkCommandBuffer) return VkResult
   with Convention => C;  -- vulkan_core.h:3178

   type PFN_vkResetCommandBuffer is access function (arg1 : VkCommandBuffer; arg2 : VkCommandBufferResetFlags) return VkResult
   with Convention => C;  -- vulkan_core.h:3179

   type PFN_vkCmdBindPipeline is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkPipelineBindPoint;
         arg3 : VkPipeline)
   with Convention => C;  -- vulkan_core.h:3180

   type PFN_vkCmdSetViewport is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : access constant VkViewport)
   with Convention => C;  -- vulkan_core.h:3181

   type PFN_vkCmdSetScissor is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : access constant VkRect2D)
   with Convention => C;  -- vulkan_core.h:3182

   type PFN_vkCmdSetLineWidth is access procedure (arg1 : VkCommandBuffer; arg2 : float)
   with Convention => C;  -- vulkan_core.h:3183

   type PFN_vkCmdSetDepthBias is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : float;
         arg3 : float;
         arg4 : float)
   with Convention => C;  -- vulkan_core.h:3184

   type PFN_vkCmdSetBlendConstants is access procedure (arg1 : VkCommandBuffer; arg2 : access float)
   with Convention => C;  -- vulkan_core.h:3185

   type PFN_vkCmdSetDepthBounds is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : float;
         arg3 : float)
   with Convention => C;  -- vulkan_core.h:3186

   type PFN_vkCmdSetStencilCompareMask is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkStencilFaceFlags;
         arg3 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3187

   type PFN_vkCmdSetStencilWriteMask is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkStencilFaceFlags;
         arg3 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3188

   type PFN_vkCmdSetStencilReference is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkStencilFaceFlags;
         arg3 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3189

   type PFN_vkCmdBindDescriptorSets is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkPipelineBindPoint;
         arg3 : VkPipelineLayout;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : Interfaces.C.unsigned_short;
         arg6 : System.Address;
         arg7 : Interfaces.C.unsigned_short;
         arg8 : access Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3190

   type PFN_vkCmdBindIndexBuffer is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : VkIndexType)
   with Convention => C;  -- vulkan_core.h:3191

   type PFN_vkCmdBindVertexBuffers is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : System.Address;
         arg5 : access VkDeviceSize)
   with Convention => C;  -- vulkan_core.h:3192

   type PFN_vkCmdDraw is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3193

   type PFN_vkCmdDrawIndexed is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : Interfaces.C.short;
         arg6 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3194

   type PFN_vkCmdDrawIndirect is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3195

   type PFN_vkCmdDrawIndexedIndirect is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3196

   type PFN_vkCmdDispatch is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3197

   type PFN_vkCmdDispatchIndirect is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize)
   with Convention => C;  -- vulkan_core.h:3198

   type PFN_vkCmdCopyBuffer is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkBuffer;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : access constant VkBufferCopy)
   with Convention => C;  -- vulkan_core.h:3199

   type PFN_vkCmdCopyImage is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkImage;
         arg3 : VkImageLayout;
         arg4 : VkImage;
         arg5 : VkImageLayout;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : access constant VkImageCopy)
   with Convention => C;  -- vulkan_core.h:3200

   type PFN_vkCmdBlitImage is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkImage;
         arg3 : VkImageLayout;
         arg4 : VkImage;
         arg5 : VkImageLayout;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : access constant VkImageBlit;
         arg8 : VkFilter)
   with Convention => C;  -- vulkan_core.h:3201

   type PFN_vkCmdCopyBufferToImage is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkImage;
         arg4 : VkImageLayout;
         arg5 : Interfaces.C.unsigned_short;
         arg6 : access constant VkBufferImageCopy)
   with Convention => C;  -- vulkan_core.h:3202

   type PFN_vkCmdCopyImageToBuffer is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkImage;
         arg3 : VkImageLayout;
         arg4 : VkBuffer;
         arg5 : Interfaces.C.unsigned_short;
         arg6 : access constant VkBufferImageCopy)
   with Convention => C;  -- vulkan_core.h:3203

   type PFN_vkCmdUpdateBuffer is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : VkDeviceSize;
         arg5 : System.Address)
   with Convention => C;  -- vulkan_core.h:3204

   type PFN_vkCmdFillBuffer is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : VkDeviceSize;
         arg5 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3205

   type PFN_vkCmdClearColorImage is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkImage;
         arg3 : VkImageLayout;
         arg4 : access constant VkClearColorValue;
         arg5 : Interfaces.C.unsigned_short;
         arg6 : access constant VkImageSubresourceRange)
   with Convention => C;  -- vulkan_core.h:3206

   type PFN_vkCmdClearDepthStencilImage is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkImage;
         arg3 : VkImageLayout;
         arg4 : access constant VkClearDepthStencilValue;
         arg5 : Interfaces.C.unsigned_short;
         arg6 : access constant VkImageSubresourceRange)
   with Convention => C;  -- vulkan_core.h:3207

   type PFN_vkCmdClearAttachments is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkClearAttachment;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : access constant VkClearRect)
   with Convention => C;  -- vulkan_core.h:3208

   type PFN_vkCmdResolveImage is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkImage;
         arg3 : VkImageLayout;
         arg4 : VkImage;
         arg5 : VkImageLayout;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : access constant VkImageResolve)
   with Convention => C;  -- vulkan_core.h:3209

   type PFN_vkCmdSetEvent is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkEvent;
         arg3 : VkPipelineStageFlags)
   with Convention => C;  -- vulkan_core.h:3210

   type PFN_vkCmdResetEvent is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkEvent;
         arg3 : VkPipelineStageFlags)
   with Convention => C;  -- vulkan_core.h:3211

   type PFN_vkCmdWaitEvents is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : System.Address;
         arg4 : VkPipelineStageFlags;
         arg5 : VkPipelineStageFlags;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : access constant VkMemoryBarrier;
         arg8 : Interfaces.C.unsigned_short;
         arg9 : access constant VkBufferMemoryBarrier;
         arg10 : Interfaces.C.unsigned_short;
         arg11 : access constant VkImageMemoryBarrier)
   with Convention => C;  -- vulkan_core.h:3212

   type PFN_vkCmdPipelineBarrier is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkPipelineStageFlags;
         arg3 : VkPipelineStageFlags;
         arg4 : VkDependencyFlags;
         arg5 : Interfaces.C.unsigned_short;
         arg6 : access constant VkMemoryBarrier;
         arg7 : Interfaces.C.unsigned_short;
         arg8 : access constant VkBufferMemoryBarrier;
         arg9 : Interfaces.C.unsigned_short;
         arg10 : access constant VkImageMemoryBarrier)
   with Convention => C;  -- vulkan_core.h:3213

   type PFN_vkCmdBeginQuery is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkQueryPool;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : VkQueryControlFlags)
   with Convention => C;  -- vulkan_core.h:3214

   type PFN_vkCmdEndQuery is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkQueryPool;
         arg3 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3215

   type PFN_vkCmdResetQueryPool is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkQueryPool;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3216

   type PFN_vkCmdWriteTimestamp is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkPipelineStageFlagBits;
         arg3 : VkQueryPool;
         arg4 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:3217

   type PFN_vkCmdCopyQueryPoolResults is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkQueryPool;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : VkBuffer;
         arg6 : VkDeviceSize;
         arg7 : VkDeviceSize;
         arg8 : VkQueryResultFlags)
   with Convention => C;  -- vulkan_core.h:3218

   type PFN_vkCmdPushConstants is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkPipelineLayout;
         arg3 : VkShaderStageFlags;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : Interfaces.C.unsigned_short;
         arg6 : System.Address)
   with Convention => C;  -- vulkan_core.h:3219

   type PFN_vkCmdBeginRenderPass is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : access constant VkRenderPassBeginInfo;
         arg3 : VkSubpassContents)
   with Convention => C;  -- vulkan_core.h:3220

   type PFN_vkCmdNextSubpass is access procedure (arg1 : VkCommandBuffer; arg2 : VkSubpassContents)
   with Convention => C;  -- vulkan_core.h:3221

   type PFN_vkCmdEndRenderPass is access procedure (arg1 : VkCommandBuffer)
   with Convention => C;  -- vulkan_core.h:3222

   type PFN_vkCmdExecuteCommands is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : System.Address)
   with Convention => C;  -- vulkan_core.h:3223

   function vkCreateInstance
     (pCreateInfo : access constant VkInstanceCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pInstance : System.Address) return VkResult  -- vulkan_core.h:3226
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateInstance";

   procedure vkDestroyInstance (instance : VkInstance; pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3231
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyInstance";

   function vkEnumeratePhysicalDevices
     (instance : VkInstance;
      pPhysicalDeviceCount : access Interfaces.C.unsigned_short;
      pPhysicalDevices : System.Address) return VkResult  -- vulkan_core.h:3235
   with Import => True, 
        Convention => C, 
        External_Name => "vkEnumeratePhysicalDevices";

   procedure vkGetPhysicalDeviceFeatures (physicalDevice : VkPhysicalDevice; pFeatures : access VkPhysicalDeviceFeatures)  -- vulkan_core.h:3240
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceFeatures";

   procedure vkGetPhysicalDeviceFormatProperties
     (physicalDevice : VkPhysicalDevice;
      format : VkFormat;
      pFormatProperties : access VkFormatProperties)  -- vulkan_core.h:3244
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceFormatProperties";

   function vkGetPhysicalDeviceImageFormatProperties
     (physicalDevice : VkPhysicalDevice;
      format : VkFormat;
      c_type : VkImageType;
      tiling : VkImageTiling;
      usage : VkImageUsageFlags;
      flags : VkImageCreateFlags;
      pImageFormatProperties : access VkImageFormatProperties) return VkResult  -- vulkan_core.h:3249
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceImageFormatProperties";

   procedure vkGetPhysicalDeviceProperties (physicalDevice : VkPhysicalDevice; pProperties : access VkPhysicalDeviceProperties)  -- vulkan_core.h:3258
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceProperties";

   procedure vkGetPhysicalDeviceQueueFamilyProperties
     (physicalDevice : VkPhysicalDevice;
      pQueueFamilyPropertyCount : access Interfaces.C.unsigned_short;
      pQueueFamilyProperties : access VkQueueFamilyProperties)  -- vulkan_core.h:3262
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceQueueFamilyProperties";

   procedure vkGetPhysicalDeviceMemoryProperties (physicalDevice : VkPhysicalDevice; pMemoryProperties : access VkPhysicalDeviceMemoryProperties)  -- vulkan_core.h:3267
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceMemoryProperties";

   function vkGetInstanceProcAddr (instance : VkInstance; pName : Interfaces.C.Strings.chars_ptr) return PFN_vkVoidFunction  -- vulkan_core.h:3271
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetInstanceProcAddr";

   function vkGetDeviceProcAddr (device : VkDevice; pName : Interfaces.C.Strings.chars_ptr) return PFN_vkVoidFunction  -- vulkan_core.h:3275
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDeviceProcAddr";

   function vkCreateDevice
     (physicalDevice : VkPhysicalDevice;
      pCreateInfo : access constant VkDeviceCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pDevice : System.Address) return VkResult  -- vulkan_core.h:3279
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateDevice";

   procedure vkDestroyDevice (device : VkDevice; pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3285
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyDevice";

   function vkEnumerateInstanceExtensionProperties
     (pLayerName : Interfaces.C.Strings.chars_ptr;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkExtensionProperties) return VkResult  -- vulkan_core.h:3289
   with Import => True, 
        Convention => C, 
        External_Name => "vkEnumerateInstanceExtensionProperties";

   function vkEnumerateDeviceExtensionProperties
     (physicalDevice : VkPhysicalDevice;
      pLayerName : Interfaces.C.Strings.chars_ptr;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkExtensionProperties) return VkResult  -- vulkan_core.h:3294
   with Import => True, 
        Convention => C, 
        External_Name => "vkEnumerateDeviceExtensionProperties";

   function vkEnumerateInstanceLayerProperties (pPropertyCount : access Interfaces.C.unsigned_short; pProperties : access VkLayerProperties) return VkResult  -- vulkan_core.h:3300
   with Import => True, 
        Convention => C, 
        External_Name => "vkEnumerateInstanceLayerProperties";

   function vkEnumerateDeviceLayerProperties
     (physicalDevice : VkPhysicalDevice;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkLayerProperties) return VkResult  -- vulkan_core.h:3304
   with Import => True, 
        Convention => C, 
        External_Name => "vkEnumerateDeviceLayerProperties";

   procedure vkGetDeviceQueue
     (device : VkDevice;
      queueFamilyIndex : Interfaces.C.unsigned_short;
      queueIndex : Interfaces.C.unsigned_short;
      pQueue : System.Address)  -- vulkan_core.h:3309
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDeviceQueue";

   function vkQueueSubmit
     (queue : VkQueue;
      submitCount : Interfaces.C.unsigned_short;
      pSubmits : access constant VkSubmitInfo;
      fence : VkFence) return VkResult  -- vulkan_core.h:3315
   with Import => True, 
        Convention => C, 
        External_Name => "vkQueueSubmit";

   function vkQueueWaitIdle (queue : VkQueue) return VkResult  -- vulkan_core.h:3321
   with Import => True, 
        Convention => C, 
        External_Name => "vkQueueWaitIdle";

   function vkDeviceWaitIdle (device : VkDevice) return VkResult  -- vulkan_core.h:3324
   with Import => True, 
        Convention => C, 
        External_Name => "vkDeviceWaitIdle";

   function vkAllocateMemory
     (device : VkDevice;
      pAllocateInfo : access constant VkMemoryAllocateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pMemory : System.Address) return VkResult  -- vulkan_core.h:3327
   with Import => True, 
        Convention => C, 
        External_Name => "vkAllocateMemory";

   procedure vkFreeMemory
     (device : VkDevice;
      memory : VkDeviceMemory;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3333
   with Import => True, 
        Convention => C, 
        External_Name => "vkFreeMemory";

   function vkMapMemory
     (device : VkDevice;
      memory : VkDeviceMemory;
      offset : VkDeviceSize;
      size : VkDeviceSize;
      flags : VkMemoryMapFlags;
      ppData : System.Address) return VkResult  -- vulkan_core.h:3338
   with Import => True, 
        Convention => C, 
        External_Name => "vkMapMemory";

   procedure vkUnmapMemory (device : VkDevice; memory : VkDeviceMemory)  -- vulkan_core.h:3346
   with Import => True, 
        Convention => C, 
        External_Name => "vkUnmapMemory";

   function vkFlushMappedMemoryRanges
     (device : VkDevice;
      memoryRangeCount : Interfaces.C.unsigned_short;
      pMemoryRanges : access constant VkMappedMemoryRange) return VkResult  -- vulkan_core.h:3350
   with Import => True, 
        Convention => C, 
        External_Name => "vkFlushMappedMemoryRanges";

   function vkInvalidateMappedMemoryRanges
     (device : VkDevice;
      memoryRangeCount : Interfaces.C.unsigned_short;
      pMemoryRanges : access constant VkMappedMemoryRange) return VkResult  -- vulkan_core.h:3355
   with Import => True, 
        Convention => C, 
        External_Name => "vkInvalidateMappedMemoryRanges";

   procedure vkGetDeviceMemoryCommitment
     (device : VkDevice;
      memory : VkDeviceMemory;
      pCommittedMemoryInBytes : access VkDeviceSize)  -- vulkan_core.h:3360
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDeviceMemoryCommitment";

   function vkBindBufferMemory
     (device : VkDevice;
      buffer : VkBuffer;
      memory : VkDeviceMemory;
      memoryOffset : VkDeviceSize) return VkResult  -- vulkan_core.h:3365
   with Import => True, 
        Convention => C, 
        External_Name => "vkBindBufferMemory";

   function vkBindImageMemory
     (device : VkDevice;
      image : VkImage;
      memory : VkDeviceMemory;
      memoryOffset : VkDeviceSize) return VkResult  -- vulkan_core.h:3371
   with Import => True, 
        Convention => C, 
        External_Name => "vkBindImageMemory";

   procedure vkGetBufferMemoryRequirements
     (device : VkDevice;
      buffer : VkBuffer;
      pMemoryRequirements : access VkMemoryRequirements)  -- vulkan_core.h:3377
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetBufferMemoryRequirements";

   procedure vkGetImageMemoryRequirements
     (device : VkDevice;
      image : VkImage;
      pMemoryRequirements : access VkMemoryRequirements)  -- vulkan_core.h:3382
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetImageMemoryRequirements";

   procedure vkGetImageSparseMemoryRequirements
     (device : VkDevice;
      image : VkImage;
      pSparseMemoryRequirementCount : access Interfaces.C.unsigned_short;
      pSparseMemoryRequirements : access VkSparseImageMemoryRequirements)  -- vulkan_core.h:3387
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetImageSparseMemoryRequirements";

   procedure vkGetPhysicalDeviceSparseImageFormatProperties
     (physicalDevice : VkPhysicalDevice;
      format : VkFormat;
      c_type : VkImageType;
      samples : VkSampleCountFlagBits;
      usage : VkImageUsageFlags;
      tiling : VkImageTiling;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkSparseImageFormatProperties)  -- vulkan_core.h:3393
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceSparseImageFormatProperties";

   function vkQueueBindSparse
     (queue : VkQueue;
      bindInfoCount : Interfaces.C.unsigned_short;
      pBindInfo : access constant VkBindSparseInfo;
      fence : VkFence) return VkResult  -- vulkan_core.h:3403
   with Import => True, 
        Convention => C, 
        External_Name => "vkQueueBindSparse";

   function vkCreateFence
     (device : VkDevice;
      pCreateInfo : access constant VkFenceCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pFence : System.Address) return VkResult  -- vulkan_core.h:3409
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateFence";

   procedure vkDestroyFence
     (device : VkDevice;
      fence : VkFence;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3415
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyFence";

   function vkResetFences
     (device : VkDevice;
      fenceCount : Interfaces.C.unsigned_short;
      pFences : System.Address) return VkResult  -- vulkan_core.h:3420
   with Import => True, 
        Convention => C, 
        External_Name => "vkResetFences";

   function vkGetFenceStatus (device : VkDevice; fence : VkFence) return VkResult  -- vulkan_core.h:3425
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetFenceStatus";

   function vkWaitForFences
     (device : VkDevice;
      fenceCount : Interfaces.C.unsigned_short;
      pFences : System.Address;
      waitAll : VkBool32;
      timeout : Interfaces.C.unsigned_long) return VkResult  -- vulkan_core.h:3429
   with Import => True, 
        Convention => C, 
        External_Name => "vkWaitForFences";

   function vkCreateSemaphore
     (device : VkDevice;
      pCreateInfo : access constant VkSemaphoreCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pSemaphore : System.Address) return VkResult  -- vulkan_core.h:3436
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateSemaphore";

   procedure vkDestroySemaphore
     (device : VkDevice;
      semaphore : VkSemaphore;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3442
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroySemaphore";

   function vkCreateEvent
     (device : VkDevice;
      pCreateInfo : access constant VkEventCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pEvent : System.Address) return VkResult  -- vulkan_core.h:3447
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateEvent";

   procedure vkDestroyEvent
     (device : VkDevice;
      event : VkEvent;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3453
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyEvent";

   function vkGetEventStatus (device : VkDevice; event : VkEvent) return VkResult  -- vulkan_core.h:3458
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetEventStatus";

   function vkSetEvent (device : VkDevice; event : VkEvent) return VkResult  -- vulkan_core.h:3462
   with Import => True, 
        Convention => C, 
        External_Name => "vkSetEvent";

   function vkResetEvent (device : VkDevice; event : VkEvent) return VkResult  -- vulkan_core.h:3466
   with Import => True, 
        Convention => C, 
        External_Name => "vkResetEvent";

   function vkCreateQueryPool
     (device : VkDevice;
      pCreateInfo : access constant VkQueryPoolCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pQueryPool : System.Address) return VkResult  -- vulkan_core.h:3470
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateQueryPool";

   procedure vkDestroyQueryPool
     (device : VkDevice;
      queryPool : VkQueryPool;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3476
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyQueryPool";

   function vkGetQueryPoolResults
     (device : VkDevice;
      queryPool : VkQueryPool;
      firstQuery : Interfaces.C.unsigned_short;
      queryCount : Interfaces.C.unsigned_short;
      dataSize : size_t;
      pData : System.Address;
      stride : VkDeviceSize;
      flags : VkQueryResultFlags) return VkResult  -- vulkan_core.h:3481
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetQueryPoolResults";

   function vkCreateBuffer
     (device : VkDevice;
      pCreateInfo : access constant VkBufferCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pBuffer : System.Address) return VkResult  -- vulkan_core.h:3491
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateBuffer";

   procedure vkDestroyBuffer
     (device : VkDevice;
      buffer : VkBuffer;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3497
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyBuffer";

   function vkCreateBufferView
     (device : VkDevice;
      pCreateInfo : access constant VkBufferViewCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pView : System.Address) return VkResult  -- vulkan_core.h:3502
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateBufferView";

   procedure vkDestroyBufferView
     (device : VkDevice;
      bufferView : VkBufferView;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3508
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyBufferView";

   function vkCreateImage
     (device : VkDevice;
      pCreateInfo : access constant VkImageCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pImage : System.Address) return VkResult  -- vulkan_core.h:3513
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateImage";

   procedure vkDestroyImage
     (device : VkDevice;
      image : VkImage;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3519
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyImage";

   procedure vkGetImageSubresourceLayout
     (device : VkDevice;
      image : VkImage;
      pSubresource : access constant VkImageSubresource;
      pLayout : access VkSubresourceLayout)  -- vulkan_core.h:3524
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetImageSubresourceLayout";

   function vkCreateImageView
     (device : VkDevice;
      pCreateInfo : access constant VkImageViewCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pView : System.Address) return VkResult  -- vulkan_core.h:3530
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateImageView";

   procedure vkDestroyImageView
     (device : VkDevice;
      imageView : VkImageView;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3536
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyImageView";

   function vkCreateShaderModule
     (device : VkDevice;
      pCreateInfo : access constant VkShaderModuleCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pShaderModule : System.Address) return VkResult  -- vulkan_core.h:3541
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateShaderModule";

   procedure vkDestroyShaderModule
     (device : VkDevice;
      shaderModule : VkShaderModule;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3547
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyShaderModule";

   function vkCreatePipelineCache
     (device : VkDevice;
      pCreateInfo : access constant VkPipelineCacheCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pPipelineCache : System.Address) return VkResult  -- vulkan_core.h:3552
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreatePipelineCache";

   procedure vkDestroyPipelineCache
     (device : VkDevice;
      pipelineCache : VkPipelineCache;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3558
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyPipelineCache";

   function vkGetPipelineCacheData
     (device : VkDevice;
      pipelineCache : VkPipelineCache;
      pDataSize : access size_t;
      pData : System.Address) return VkResult  -- vulkan_core.h:3563
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPipelineCacheData";

   function vkMergePipelineCaches
     (device : VkDevice;
      dstCache : VkPipelineCache;
      srcCacheCount : Interfaces.C.unsigned_short;
      pSrcCaches : System.Address) return VkResult  -- vulkan_core.h:3569
   with Import => True, 
        Convention => C, 
        External_Name => "vkMergePipelineCaches";

   function vkCreateGraphicsPipelines
     (device : VkDevice;
      pipelineCache : VkPipelineCache;
      createInfoCount : Interfaces.C.unsigned_short;
      pCreateInfos : access constant VkGraphicsPipelineCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pPipelines : System.Address) return VkResult  -- vulkan_core.h:3575
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateGraphicsPipelines";

   function vkCreateComputePipelines
     (device : VkDevice;
      pipelineCache : VkPipelineCache;
      createInfoCount : Interfaces.C.unsigned_short;
      pCreateInfos : access constant VkComputePipelineCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pPipelines : System.Address) return VkResult  -- vulkan_core.h:3583
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateComputePipelines";

   procedure vkDestroyPipeline
     (device : VkDevice;
      pipeline : VkPipeline;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3591
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyPipeline";

   function vkCreatePipelineLayout
     (device : VkDevice;
      pCreateInfo : access constant VkPipelineLayoutCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pPipelineLayout : System.Address) return VkResult  -- vulkan_core.h:3596
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreatePipelineLayout";

   procedure vkDestroyPipelineLayout
     (device : VkDevice;
      pipelineLayout : VkPipelineLayout;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3602
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyPipelineLayout";

   function vkCreateSampler
     (device : VkDevice;
      pCreateInfo : access constant VkSamplerCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pSampler : System.Address) return VkResult  -- vulkan_core.h:3607
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateSampler";

   procedure vkDestroySampler
     (device : VkDevice;
      sampler : VkSampler;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3613
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroySampler";

   function vkCreateDescriptorSetLayout
     (device : VkDevice;
      pCreateInfo : access constant VkDescriptorSetLayoutCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pSetLayout : System.Address) return VkResult  -- vulkan_core.h:3618
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateDescriptorSetLayout";

   procedure vkDestroyDescriptorSetLayout
     (device : VkDevice;
      descriptorSetLayout : VkDescriptorSetLayout;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3624
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyDescriptorSetLayout";

   function vkCreateDescriptorPool
     (device : VkDevice;
      pCreateInfo : access constant VkDescriptorPoolCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pDescriptorPool : System.Address) return VkResult  -- vulkan_core.h:3629
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateDescriptorPool";

   procedure vkDestroyDescriptorPool
     (device : VkDevice;
      descriptorPool : VkDescriptorPool;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3635
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyDescriptorPool";

   function vkResetDescriptorPool
     (device : VkDevice;
      descriptorPool : VkDescriptorPool;
      flags : VkDescriptorPoolResetFlags) return VkResult  -- vulkan_core.h:3640
   with Import => True, 
        Convention => C, 
        External_Name => "vkResetDescriptorPool";

   function vkAllocateDescriptorSets
     (device : VkDevice;
      pAllocateInfo : access constant VkDescriptorSetAllocateInfo;
      pDescriptorSets : System.Address) return VkResult  -- vulkan_core.h:3645
   with Import => True, 
        Convention => C, 
        External_Name => "vkAllocateDescriptorSets";

   function vkFreeDescriptorSets
     (device : VkDevice;
      descriptorPool : VkDescriptorPool;
      descriptorSetCount : Interfaces.C.unsigned_short;
      pDescriptorSets : System.Address) return VkResult  -- vulkan_core.h:3650
   with Import => True, 
        Convention => C, 
        External_Name => "vkFreeDescriptorSets";

   procedure vkUpdateDescriptorSets
     (device : VkDevice;
      descriptorWriteCount : Interfaces.C.unsigned_short;
      pDescriptorWrites : access constant VkWriteDescriptorSet;
      descriptorCopyCount : Interfaces.C.unsigned_short;
      pDescriptorCopies : access constant VkCopyDescriptorSet)  -- vulkan_core.h:3656
   with Import => True, 
        Convention => C, 
        External_Name => "vkUpdateDescriptorSets";

   function vkCreateFramebuffer
     (device : VkDevice;
      pCreateInfo : access constant VkFramebufferCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pFramebuffer : System.Address) return VkResult  -- vulkan_core.h:3663
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateFramebuffer";

   procedure vkDestroyFramebuffer
     (device : VkDevice;
      framebuffer : VkFramebuffer;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3669
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyFramebuffer";

   function vkCreateRenderPass
     (device : VkDevice;
      pCreateInfo : access constant VkRenderPassCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pRenderPass : System.Address) return VkResult  -- vulkan_core.h:3674
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateRenderPass";

   procedure vkDestroyRenderPass
     (device : VkDevice;
      renderPass : VkRenderPass;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3680
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyRenderPass";

   procedure vkGetRenderAreaGranularity
     (device : VkDevice;
      renderPass : VkRenderPass;
      pGranularity : access VkExtent2D)  -- vulkan_core.h:3685
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetRenderAreaGranularity";

   function vkCreateCommandPool
     (device : VkDevice;
      pCreateInfo : access constant VkCommandPoolCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pCommandPool : System.Address) return VkResult  -- vulkan_core.h:3690
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateCommandPool";

   procedure vkDestroyCommandPool
     (device : VkDevice;
      commandPool : VkCommandPool;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:3696
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyCommandPool";

   function vkResetCommandPool
     (device : VkDevice;
      commandPool : VkCommandPool;
      flags : VkCommandPoolResetFlags) return VkResult  -- vulkan_core.h:3701
   with Import => True, 
        Convention => C, 
        External_Name => "vkResetCommandPool";

   function vkAllocateCommandBuffers
     (device : VkDevice;
      pAllocateInfo : access constant VkCommandBufferAllocateInfo;
      pCommandBuffers : System.Address) return VkResult  -- vulkan_core.h:3706
   with Import => True, 
        Convention => C, 
        External_Name => "vkAllocateCommandBuffers";

   procedure vkFreeCommandBuffers
     (device : VkDevice;
      commandPool : VkCommandPool;
      commandBufferCount : Interfaces.C.unsigned_short;
      pCommandBuffers : System.Address)  -- vulkan_core.h:3711
   with Import => True, 
        Convention => C, 
        External_Name => "vkFreeCommandBuffers";

   function vkBeginCommandBuffer (commandBuffer : VkCommandBuffer; pBeginInfo : access constant VkCommandBufferBeginInfo) return VkResult  -- vulkan_core.h:3717
   with Import => True, 
        Convention => C, 
        External_Name => "vkBeginCommandBuffer";

   function vkEndCommandBuffer (commandBuffer : VkCommandBuffer) return VkResult  -- vulkan_core.h:3721
   with Import => True, 
        Convention => C, 
        External_Name => "vkEndCommandBuffer";

   function vkResetCommandBuffer (commandBuffer : VkCommandBuffer; flags : VkCommandBufferResetFlags) return VkResult  -- vulkan_core.h:3724
   with Import => True, 
        Convention => C, 
        External_Name => "vkResetCommandBuffer";

   procedure vkCmdBindPipeline
     (commandBuffer : VkCommandBuffer;
      pipelineBindPoint : VkPipelineBindPoint;
      pipeline : VkPipeline)  -- vulkan_core.h:3728
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBindPipeline";

   procedure vkCmdSetViewport
     (commandBuffer : VkCommandBuffer;
      firstViewport : Interfaces.C.unsigned_short;
      viewportCount : Interfaces.C.unsigned_short;
      pViewports : access constant VkViewport)  -- vulkan_core.h:3733
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetViewport";

   procedure vkCmdSetScissor
     (commandBuffer : VkCommandBuffer;
      firstScissor : Interfaces.C.unsigned_short;
      scissorCount : Interfaces.C.unsigned_short;
      pScissors : access constant VkRect2D)  -- vulkan_core.h:3739
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetScissor";

   procedure vkCmdSetLineWidth (commandBuffer : VkCommandBuffer; lineWidth : float)  -- vulkan_core.h:3745
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetLineWidth";

   procedure vkCmdSetDepthBias
     (commandBuffer : VkCommandBuffer;
      depthBiasConstantFactor : float;
      depthBiasClamp : float;
      depthBiasSlopeFactor : float)  -- vulkan_core.h:3749
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetDepthBias";

   procedure vkCmdSetBlendConstants (commandBuffer : VkCommandBuffer; blendConstants : access float)  -- vulkan_core.h:3755
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetBlendConstants";

   procedure vkCmdSetDepthBounds
     (commandBuffer : VkCommandBuffer;
      minDepthBounds : float;
      maxDepthBounds : float)  -- vulkan_core.h:3759
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetDepthBounds";

   procedure vkCmdSetStencilCompareMask
     (commandBuffer : VkCommandBuffer;
      faceMask : VkStencilFaceFlags;
      compareMask : Interfaces.C.unsigned_short)  -- vulkan_core.h:3764
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetStencilCompareMask";

   procedure vkCmdSetStencilWriteMask
     (commandBuffer : VkCommandBuffer;
      faceMask : VkStencilFaceFlags;
      writeMask : Interfaces.C.unsigned_short)  -- vulkan_core.h:3769
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetStencilWriteMask";

   procedure vkCmdSetStencilReference
     (commandBuffer : VkCommandBuffer;
      faceMask : VkStencilFaceFlags;
      reference : Interfaces.C.unsigned_short)  -- vulkan_core.h:3774
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetStencilReference";

   procedure vkCmdBindDescriptorSets
     (commandBuffer : VkCommandBuffer;
      pipelineBindPoint : VkPipelineBindPoint;
      layout : VkPipelineLayout;
      firstSet : Interfaces.C.unsigned_short;
      descriptorSetCount : Interfaces.C.unsigned_short;
      pDescriptorSets : System.Address;
      dynamicOffsetCount : Interfaces.C.unsigned_short;
      pDynamicOffsets : access Interfaces.C.unsigned_short)  -- vulkan_core.h:3779
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBindDescriptorSets";

   procedure vkCmdBindIndexBuffer
     (commandBuffer : VkCommandBuffer;
      buffer : VkBuffer;
      offset : VkDeviceSize;
      indexType : VkIndexType)  -- vulkan_core.h:3789
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBindIndexBuffer";

   procedure vkCmdBindVertexBuffers
     (commandBuffer : VkCommandBuffer;
      firstBinding : Interfaces.C.unsigned_short;
      bindingCount : Interfaces.C.unsigned_short;
      pBuffers : System.Address;
      pOffsets : access VkDeviceSize)  -- vulkan_core.h:3795
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBindVertexBuffers";

   procedure vkCmdDraw
     (commandBuffer : VkCommandBuffer;
      vertexCount : Interfaces.C.unsigned_short;
      instanceCount : Interfaces.C.unsigned_short;
      firstVertex : Interfaces.C.unsigned_short;
      firstInstance : Interfaces.C.unsigned_short)  -- vulkan_core.h:3802
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDraw";

   procedure vkCmdDrawIndexed
     (commandBuffer : VkCommandBuffer;
      indexCount : Interfaces.C.unsigned_short;
      instanceCount : Interfaces.C.unsigned_short;
      firstIndex : Interfaces.C.unsigned_short;
      vertexOffset : Interfaces.C.short;
      firstInstance : Interfaces.C.unsigned_short)  -- vulkan_core.h:3809
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawIndexed";

   procedure vkCmdDrawIndirect
     (commandBuffer : VkCommandBuffer;
      buffer : VkBuffer;
      offset : VkDeviceSize;
      drawCount : Interfaces.C.unsigned_short;
      stride : Interfaces.C.unsigned_short)  -- vulkan_core.h:3817
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawIndirect";

   procedure vkCmdDrawIndexedIndirect
     (commandBuffer : VkCommandBuffer;
      buffer : VkBuffer;
      offset : VkDeviceSize;
      drawCount : Interfaces.C.unsigned_short;
      stride : Interfaces.C.unsigned_short)  -- vulkan_core.h:3824
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawIndexedIndirect";

   procedure vkCmdDispatch
     (commandBuffer : VkCommandBuffer;
      groupCountX : Interfaces.C.unsigned_short;
      groupCountY : Interfaces.C.unsigned_short;
      groupCountZ : Interfaces.C.unsigned_short)  -- vulkan_core.h:3831
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDispatch";

   procedure vkCmdDispatchIndirect
     (commandBuffer : VkCommandBuffer;
      buffer : VkBuffer;
      offset : VkDeviceSize)  -- vulkan_core.h:3837
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDispatchIndirect";

   procedure vkCmdCopyBuffer
     (commandBuffer : VkCommandBuffer;
      srcBuffer : VkBuffer;
      dstBuffer : VkBuffer;
      regionCount : Interfaces.C.unsigned_short;
      pRegions : access constant VkBufferCopy)  -- vulkan_core.h:3842
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdCopyBuffer";

   procedure vkCmdCopyImage
     (commandBuffer : VkCommandBuffer;
      srcImage : VkImage;
      srcImageLayout : VkImageLayout;
      dstImage : VkImage;
      dstImageLayout : VkImageLayout;
      regionCount : Interfaces.C.unsigned_short;
      pRegions : access constant VkImageCopy)  -- vulkan_core.h:3849
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdCopyImage";

   procedure vkCmdBlitImage
     (commandBuffer : VkCommandBuffer;
      srcImage : VkImage;
      srcImageLayout : VkImageLayout;
      dstImage : VkImage;
      dstImageLayout : VkImageLayout;
      regionCount : Interfaces.C.unsigned_short;
      pRegions : access constant VkImageBlit;
      filter : VkFilter)  -- vulkan_core.h:3858
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBlitImage";

   procedure vkCmdCopyBufferToImage
     (commandBuffer : VkCommandBuffer;
      srcBuffer : VkBuffer;
      dstImage : VkImage;
      dstImageLayout : VkImageLayout;
      regionCount : Interfaces.C.unsigned_short;
      pRegions : access constant VkBufferImageCopy)  -- vulkan_core.h:3868
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdCopyBufferToImage";

   procedure vkCmdCopyImageToBuffer
     (commandBuffer : VkCommandBuffer;
      srcImage : VkImage;
      srcImageLayout : VkImageLayout;
      dstBuffer : VkBuffer;
      regionCount : Interfaces.C.unsigned_short;
      pRegions : access constant VkBufferImageCopy)  -- vulkan_core.h:3876
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdCopyImageToBuffer";

   procedure vkCmdUpdateBuffer
     (commandBuffer : VkCommandBuffer;
      dstBuffer : VkBuffer;
      dstOffset : VkDeviceSize;
      dataSize : VkDeviceSize;
      pData : System.Address)  -- vulkan_core.h:3884
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdUpdateBuffer";

   procedure vkCmdFillBuffer
     (commandBuffer : VkCommandBuffer;
      dstBuffer : VkBuffer;
      dstOffset : VkDeviceSize;
      size : VkDeviceSize;
      data : Interfaces.C.unsigned_short)  -- vulkan_core.h:3891
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdFillBuffer";

   procedure vkCmdClearColorImage
     (commandBuffer : VkCommandBuffer;
      image : VkImage;
      imageLayout : VkImageLayout;
      pColor : access constant VkClearColorValue;
      rangeCount : Interfaces.C.unsigned_short;
      pRanges : access constant VkImageSubresourceRange)  -- vulkan_core.h:3898
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdClearColorImage";

   procedure vkCmdClearDepthStencilImage
     (commandBuffer : VkCommandBuffer;
      image : VkImage;
      imageLayout : VkImageLayout;
      pDepthStencil : access constant VkClearDepthStencilValue;
      rangeCount : Interfaces.C.unsigned_short;
      pRanges : access constant VkImageSubresourceRange)  -- vulkan_core.h:3906
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdClearDepthStencilImage";

   procedure vkCmdClearAttachments
     (commandBuffer : VkCommandBuffer;
      attachmentCount : Interfaces.C.unsigned_short;
      pAttachments : access constant VkClearAttachment;
      rectCount : Interfaces.C.unsigned_short;
      pRects : access constant VkClearRect)  -- vulkan_core.h:3914
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdClearAttachments";

   procedure vkCmdResolveImage
     (commandBuffer : VkCommandBuffer;
      srcImage : VkImage;
      srcImageLayout : VkImageLayout;
      dstImage : VkImage;
      dstImageLayout : VkImageLayout;
      regionCount : Interfaces.C.unsigned_short;
      pRegions : access constant VkImageResolve)  -- vulkan_core.h:3921
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdResolveImage";

   procedure vkCmdSetEvent
     (commandBuffer : VkCommandBuffer;
      event : VkEvent;
      stageMask : VkPipelineStageFlags)  -- vulkan_core.h:3930
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetEvent";

   procedure vkCmdResetEvent
     (commandBuffer : VkCommandBuffer;
      event : VkEvent;
      stageMask : VkPipelineStageFlags)  -- vulkan_core.h:3935
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdResetEvent";

   procedure vkCmdWaitEvents
     (commandBuffer : VkCommandBuffer;
      eventCount : Interfaces.C.unsigned_short;
      pEvents : System.Address;
      srcStageMask : VkPipelineStageFlags;
      dstStageMask : VkPipelineStageFlags;
      memoryBarrierCount : Interfaces.C.unsigned_short;
      pMemoryBarriers : access constant VkMemoryBarrier;
      bufferMemoryBarrierCount : Interfaces.C.unsigned_short;
      pBufferMemoryBarriers : access constant VkBufferMemoryBarrier;
      imageMemoryBarrierCount : Interfaces.C.unsigned_short;
      pImageMemoryBarriers : access constant VkImageMemoryBarrier)  -- vulkan_core.h:3940
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdWaitEvents";

   procedure vkCmdPipelineBarrier
     (commandBuffer : VkCommandBuffer;
      srcStageMask : VkPipelineStageFlags;
      dstStageMask : VkPipelineStageFlags;
      dependencyFlags : VkDependencyFlags;
      memoryBarrierCount : Interfaces.C.unsigned_short;
      pMemoryBarriers : access constant VkMemoryBarrier;
      bufferMemoryBarrierCount : Interfaces.C.unsigned_short;
      pBufferMemoryBarriers : access constant VkBufferMemoryBarrier;
      imageMemoryBarrierCount : Interfaces.C.unsigned_short;
      pImageMemoryBarriers : access constant VkImageMemoryBarrier)  -- vulkan_core.h:3953
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdPipelineBarrier";

   procedure vkCmdBeginQuery
     (commandBuffer : VkCommandBuffer;
      queryPool : VkQueryPool;
      query : Interfaces.C.unsigned_short;
      flags : VkQueryControlFlags)  -- vulkan_core.h:3965
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBeginQuery";

   procedure vkCmdEndQuery
     (commandBuffer : VkCommandBuffer;
      queryPool : VkQueryPool;
      query : Interfaces.C.unsigned_short)  -- vulkan_core.h:3971
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdEndQuery";

   procedure vkCmdResetQueryPool
     (commandBuffer : VkCommandBuffer;
      queryPool : VkQueryPool;
      firstQuery : Interfaces.C.unsigned_short;
      queryCount : Interfaces.C.unsigned_short)  -- vulkan_core.h:3976
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdResetQueryPool";

   procedure vkCmdWriteTimestamp
     (commandBuffer : VkCommandBuffer;
      pipelineStage : VkPipelineStageFlagBits;
      queryPool : VkQueryPool;
      query : Interfaces.C.unsigned_short)  -- vulkan_core.h:3982
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdWriteTimestamp";

   procedure vkCmdCopyQueryPoolResults
     (commandBuffer : VkCommandBuffer;
      queryPool : VkQueryPool;
      firstQuery : Interfaces.C.unsigned_short;
      queryCount : Interfaces.C.unsigned_short;
      dstBuffer : VkBuffer;
      dstOffset : VkDeviceSize;
      stride : VkDeviceSize;
      flags : VkQueryResultFlags)  -- vulkan_core.h:3988
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdCopyQueryPoolResults";

   procedure vkCmdPushConstants
     (commandBuffer : VkCommandBuffer;
      layout : VkPipelineLayout;
      stageFlags : VkShaderStageFlags;
      offset : Interfaces.C.unsigned_short;
      size : Interfaces.C.unsigned_short;
      pValues : System.Address)  -- vulkan_core.h:3998
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdPushConstants";

   procedure vkCmdBeginRenderPass
     (commandBuffer : VkCommandBuffer;
      pRenderPassBegin : access constant VkRenderPassBeginInfo;
      contents : VkSubpassContents)  -- vulkan_core.h:4006
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBeginRenderPass";

   procedure vkCmdNextSubpass (commandBuffer : VkCommandBuffer; contents : VkSubpassContents)  -- vulkan_core.h:4011
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdNextSubpass";

   procedure vkCmdEndRenderPass (commandBuffer : VkCommandBuffer)  -- vulkan_core.h:4015
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdEndRenderPass";

   procedure vkCmdExecuteCommands
     (commandBuffer : VkCommandBuffer;
      commandBufferCount : Interfaces.C.unsigned_short;
      pCommandBuffers : System.Address)  -- vulkan_core.h:4018
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdExecuteCommands";

  -- Vulkan 1.1 version number
   type VkSamplerYcbcrConversion_T is null record;   -- incomplete struct

   type VkSamplerYcbcrConversion is access all VkSamplerYcbcrConversion_T;  -- vulkan_core.h:4029

   type VkDescriptorUpdateTemplate_T is null record;   -- incomplete struct

   type VkDescriptorUpdateTemplate is access all VkDescriptorUpdateTemplate_T;  -- vulkan_core.h:4030

   subtype VkPointClippingBehavior is unsigned;
   VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES : constant unsigned := 0;
   VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY : constant unsigned := 1;
   VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES_KHR : constant unsigned := 0;
   VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY_KHR : constant unsigned := 1;
   VK_POINT_CLIPPING_BEHAVIOR_BEGIN_RANGE : constant unsigned := 0;
   VK_POINT_CLIPPING_BEHAVIOR_END_RANGE : constant unsigned := 1;
   VK_POINT_CLIPPING_BEHAVIOR_RANGE_SIZE : constant unsigned := 2;
   VK_POINT_CLIPPING_BEHAVIOR_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4035

   subtype VkTessellationDomainOrigin is unsigned;
   VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT : constant unsigned := 0;
   VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT : constant unsigned := 1;
   VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT_KHR : constant unsigned := 0;
   VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT_KHR : constant unsigned := 1;
   VK_TESSELLATION_DOMAIN_ORIGIN_BEGIN_RANGE : constant unsigned := 0;
   VK_TESSELLATION_DOMAIN_ORIGIN_END_RANGE : constant unsigned := 1;
   VK_TESSELLATION_DOMAIN_ORIGIN_RANGE_SIZE : constant unsigned := 2;
   VK_TESSELLATION_DOMAIN_ORIGIN_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4046

   subtype VkSamplerYcbcrModelConversion is unsigned;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY : constant unsigned := 0;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY : constant unsigned := 1;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709 : constant unsigned := 2;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601 : constant unsigned := 3;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020 : constant unsigned := 4;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY_KHR : constant unsigned := 0;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY_KHR : constant unsigned := 1;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709_KHR : constant unsigned := 2;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601_KHR : constant unsigned := 3;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020_KHR : constant unsigned := 4;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_BEGIN_RANGE : constant unsigned := 0;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_END_RANGE : constant unsigned := 4;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_RANGE_SIZE : constant unsigned := 5;
   VK_SAMPLER_YCBCR_MODEL_CONVERSION_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4057

   subtype VkSamplerYcbcrRange is unsigned;
   VK_SAMPLER_YCBCR_RANGE_ITU_FULL : constant unsigned := 0;
   VK_SAMPLER_YCBCR_RANGE_ITU_NARROW : constant unsigned := 1;
   VK_SAMPLER_YCBCR_RANGE_ITU_FULL_KHR : constant unsigned := 0;
   VK_SAMPLER_YCBCR_RANGE_ITU_NARROW_KHR : constant unsigned := 1;
   VK_SAMPLER_YCBCR_RANGE_BEGIN_RANGE : constant unsigned := 0;
   VK_SAMPLER_YCBCR_RANGE_END_RANGE : constant unsigned := 1;
   VK_SAMPLER_YCBCR_RANGE_RANGE_SIZE : constant unsigned := 2;
   VK_SAMPLER_YCBCR_RANGE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4074

   subtype VkChromaLocation is unsigned;
   VK_CHROMA_LOCATION_COSITED_EVEN : constant unsigned := 0;
   VK_CHROMA_LOCATION_MIDPOINT : constant unsigned := 1;
   VK_CHROMA_LOCATION_COSITED_EVEN_KHR : constant unsigned := 0;
   VK_CHROMA_LOCATION_MIDPOINT_KHR : constant unsigned := 1;
   VK_CHROMA_LOCATION_BEGIN_RANGE : constant unsigned := 0;
   VK_CHROMA_LOCATION_END_RANGE : constant unsigned := 1;
   VK_CHROMA_LOCATION_RANGE_SIZE : constant unsigned := 2;
   VK_CHROMA_LOCATION_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4085

   subtype VkDescriptorUpdateTemplateType is unsigned;
   VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET : constant unsigned := 0;
   VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR : constant unsigned := 1;
   VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET_KHR : constant unsigned := 0;
   VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_BEGIN_RANGE : constant unsigned := 0;
   VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_END_RANGE : constant unsigned := 0;
   VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_RANGE_SIZE : constant unsigned := 1;
   VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4096

   subtype VkSubgroupFeatureFlagBits is unsigned;
   VK_SUBGROUP_FEATURE_BASIC_BIT : constant unsigned := 1;
   VK_SUBGROUP_FEATURE_VOTE_BIT : constant unsigned := 2;
   VK_SUBGROUP_FEATURE_ARITHMETIC_BIT : constant unsigned := 4;
   VK_SUBGROUP_FEATURE_BALLOT_BIT : constant unsigned := 8;
   VK_SUBGROUP_FEATURE_SHUFFLE_BIT : constant unsigned := 16;
   VK_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT : constant unsigned := 32;
   VK_SUBGROUP_FEATURE_CLUSTERED_BIT : constant unsigned := 64;
   VK_SUBGROUP_FEATURE_QUAD_BIT : constant unsigned := 128;
   VK_SUBGROUP_FEATURE_PARTITIONED_BIT_NV : constant unsigned := 256;
   VK_SUBGROUP_FEATURE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4106

   subtype VkSubgroupFeatureFlags is VkFlags;  -- vulkan_core.h:4118

   subtype VkPeerMemoryFeatureFlagBits is unsigned;
   VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT : constant unsigned := 1;
   VK_PEER_MEMORY_FEATURE_COPY_DST_BIT : constant unsigned := 2;
   VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT : constant unsigned := 4;
   VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT : constant unsigned := 8;
   VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT_KHR : constant unsigned := 1;
   VK_PEER_MEMORY_FEATURE_COPY_DST_BIT_KHR : constant unsigned := 2;
   VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT_KHR : constant unsigned := 4;
   VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT_KHR : constant unsigned := 8;
   VK_PEER_MEMORY_FEATURE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4120

   subtype VkPeerMemoryFeatureFlags is VkFlags;  -- vulkan_core.h:4131

   subtype VkMemoryAllocateFlagBits is unsigned;
   VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT : constant unsigned := 1;
   VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT : constant unsigned := 2;
   VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT : constant unsigned := 4;
   VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT_KHR : constant unsigned := 1;
   VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT_KHR : constant unsigned := 2;
   VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR : constant unsigned := 4;
   VK_MEMORY_ALLOCATE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4133

   subtype VkMemoryAllocateFlags is VkFlags;  -- vulkan_core.h:4142

   subtype VkCommandPoolTrimFlags is VkFlags;  -- vulkan_core.h:4143

   subtype VkDescriptorUpdateTemplateCreateFlags is VkFlags;  -- vulkan_core.h:4144

   subtype VkExternalMemoryHandleTypeFlagBits is unsigned;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT : constant unsigned := 1;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT : constant unsigned := 2;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT : constant unsigned := 4;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT : constant unsigned := 8;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT : constant unsigned := 16;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT : constant unsigned := 32;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT : constant unsigned := 64;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT : constant unsigned := 512;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID : constant unsigned := 1024;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_ALLOCATION_BIT_EXT : constant unsigned := 128;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_MAPPED_FOREIGN_MEMORY_BIT_EXT : constant unsigned := 256;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT_KHR : constant unsigned := 1;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR : constant unsigned := 2;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR : constant unsigned := 4;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT_KHR : constant unsigned := 8;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT_KHR : constant unsigned := 16;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT_KHR : constant unsigned := 32;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT_KHR : constant unsigned := 64;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4146

   subtype VkExternalMemoryHandleTypeFlags is VkFlags;  -- vulkan_core.h:4167

   subtype VkExternalMemoryFeatureFlagBits is unsigned;
   VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT : constant unsigned := 1;
   VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT : constant unsigned := 2;
   VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT : constant unsigned := 4;
   VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_KHR : constant unsigned := 1;
   VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_KHR : constant unsigned := 2;
   VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_KHR : constant unsigned := 4;
   VK_EXTERNAL_MEMORY_FEATURE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4169

   subtype VkExternalMemoryFeatureFlags is VkFlags;  -- vulkan_core.h:4178

   subtype VkExternalFenceHandleTypeFlagBits is unsigned;
   VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT : constant unsigned := 1;
   VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT : constant unsigned := 2;
   VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT : constant unsigned := 4;
   VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT : constant unsigned := 8;
   VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR : constant unsigned := 1;
   VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR : constant unsigned := 2;
   VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR : constant unsigned := 4;
   VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT_KHR : constant unsigned := 8;
   VK_EXTERNAL_FENCE_HANDLE_TYPE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4180

   subtype VkExternalFenceHandleTypeFlags is VkFlags;  -- vulkan_core.h:4191

   subtype VkExternalFenceFeatureFlagBits is unsigned;
   VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT : constant unsigned := 1;
   VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT : constant unsigned := 2;
   VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT_KHR : constant unsigned := 1;
   VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT_KHR : constant unsigned := 2;
   VK_EXTERNAL_FENCE_FEATURE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4193

   subtype VkExternalFenceFeatureFlags is VkFlags;  -- vulkan_core.h:4200

   subtype VkFenceImportFlagBits is unsigned;
   VK_FENCE_IMPORT_TEMPORARY_BIT : constant unsigned := 1;
   VK_FENCE_IMPORT_TEMPORARY_BIT_KHR : constant unsigned := 1;
   VK_FENCE_IMPORT_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4202

   subtype VkFenceImportFlags is VkFlags;  -- vulkan_core.h:4207

   subtype VkSemaphoreImportFlagBits is unsigned;
   VK_SEMAPHORE_IMPORT_TEMPORARY_BIT : constant unsigned := 1;
   VK_SEMAPHORE_IMPORT_TEMPORARY_BIT_KHR : constant unsigned := 1;
   VK_SEMAPHORE_IMPORT_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4209

   subtype VkSemaphoreImportFlags is VkFlags;  -- vulkan_core.h:4214

   subtype VkExternalSemaphoreHandleTypeFlagBits is unsigned;
   VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT : constant unsigned := 1;
   VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT : constant unsigned := 2;
   VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT : constant unsigned := 4;
   VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT : constant unsigned := 8;
   VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT : constant unsigned := 16;
   VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR : constant unsigned := 1;
   VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR : constant unsigned := 2;
   VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR : constant unsigned := 4;
   VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT_KHR : constant unsigned := 8;
   VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT_KHR : constant unsigned := 16;
   VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4216

   subtype VkExternalSemaphoreHandleTypeFlags is VkFlags;  -- vulkan_core.h:4229

   subtype VkExternalSemaphoreFeatureFlagBits is unsigned;
   VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT : constant unsigned := 1;
   VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT : constant unsigned := 2;
   VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT_KHR : constant unsigned := 1;
   VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT_KHR : constant unsigned := 2;
   VK_EXTERNAL_SEMAPHORE_FEATURE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4231

   subtype VkExternalSemaphoreFeatureFlags is VkFlags;  -- vulkan_core.h:4238

   type VkPhysicalDeviceSubgroupProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4240
      pNext : System.Address;  -- vulkan_core.h:4241
      subgroupSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4242
      supportedStages : aliased VkShaderStageFlags;  -- vulkan_core.h:4243
      supportedOperations : aliased VkSubgroupFeatureFlags;  -- vulkan_core.h:4244
      quadOperationsInAllStages : aliased VkBool32;  -- vulkan_core.h:4245
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4239

   type VkBindBufferMemoryInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4249
      pNext : System.Address;  -- vulkan_core.h:4250
      buffer : VkBuffer;  -- vulkan_core.h:4251
      memory : VkDeviceMemory;  -- vulkan_core.h:4252
      memoryOffset : aliased VkDeviceSize;  -- vulkan_core.h:4253
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4248

   type VkBindImageMemoryInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4257
      pNext : System.Address;  -- vulkan_core.h:4258
      image : VkImage;  -- vulkan_core.h:4259
      memory : VkDeviceMemory;  -- vulkan_core.h:4260
      memoryOffset : aliased VkDeviceSize;  -- vulkan_core.h:4261
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4256

   type VkPhysicalDevice16BitStorageFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4265
      pNext : System.Address;  -- vulkan_core.h:4266
      storageBuffer16BitAccess : aliased VkBool32;  -- vulkan_core.h:4267
      uniformAndStorageBuffer16BitAccess : aliased VkBool32;  -- vulkan_core.h:4268
      storagePushConstant16 : aliased VkBool32;  -- vulkan_core.h:4269
      storageInputOutput16 : aliased VkBool32;  -- vulkan_core.h:4270
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4264

   type VkMemoryDedicatedRequirements is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4274
      pNext : System.Address;  -- vulkan_core.h:4275
      prefersDedicatedAllocation : aliased VkBool32;  -- vulkan_core.h:4276
      requiresDedicatedAllocation : aliased VkBool32;  -- vulkan_core.h:4277
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4273

   type VkMemoryDedicatedAllocateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4281
      pNext : System.Address;  -- vulkan_core.h:4282
      image : VkImage;  -- vulkan_core.h:4283
      buffer : VkBuffer;  -- vulkan_core.h:4284
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4280

   type VkMemoryAllocateFlagsInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4288
      pNext : System.Address;  -- vulkan_core.h:4289
      flags : aliased VkMemoryAllocateFlags;  -- vulkan_core.h:4290
      deviceMask : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4291
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4287

   type VkDeviceGroupRenderPassBeginInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4295
      pNext : System.Address;  -- vulkan_core.h:4296
      deviceMask : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4297
      deviceRenderAreaCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4298
      pDeviceRenderAreas : access constant VkRect2D;  -- vulkan_core.h:4299
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4294

   type VkDeviceGroupCommandBufferBeginInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4303
      pNext : System.Address;  -- vulkan_core.h:4304
      deviceMask : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4305
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4302

   type VkDeviceGroupSubmitInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4309
      pNext : System.Address;  -- vulkan_core.h:4310
      waitSemaphoreCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4311
      pWaitSemaphoreDeviceIndices : access Interfaces.C.unsigned_short;  -- vulkan_core.h:4312
      commandBufferCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4313
      pCommandBufferDeviceMasks : access Interfaces.C.unsigned_short;  -- vulkan_core.h:4314
      signalSemaphoreCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4315
      pSignalSemaphoreDeviceIndices : access Interfaces.C.unsigned_short;  -- vulkan_core.h:4316
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4308

   type VkDeviceGroupBindSparseInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4320
      pNext : System.Address;  -- vulkan_core.h:4321
      resourceDeviceIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4322
      memoryDeviceIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4323
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4319

   type VkBindBufferMemoryDeviceGroupInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4327
      pNext : System.Address;  -- vulkan_core.h:4328
      deviceIndexCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4329
      pDeviceIndices : access Interfaces.C.unsigned_short;  -- vulkan_core.h:4330
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4326

   type VkBindImageMemoryDeviceGroupInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4334
      pNext : System.Address;  -- vulkan_core.h:4335
      deviceIndexCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4336
      pDeviceIndices : access Interfaces.C.unsigned_short;  -- vulkan_core.h:4337
      splitInstanceBindRegionCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4338
      pSplitInstanceBindRegions : access constant VkRect2D;  -- vulkan_core.h:4339
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4333

   type VkPhysicalDeviceGroupProperties_array2893 is array (0 .. 31) of VkPhysicalDevice;
   type VkPhysicalDeviceGroupProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4343
      pNext : System.Address;  -- vulkan_core.h:4344
      physicalDeviceCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4345
      physicalDevices : VkPhysicalDeviceGroupProperties_array2893;  -- vulkan_core.h:4346
      subsetAllocation : aliased VkBool32;  -- vulkan_core.h:4347
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4342

   type VkDeviceGroupDeviceCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4351
      pNext : System.Address;  -- vulkan_core.h:4352
      physicalDeviceCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4353
      pPhysicalDevices : System.Address;  -- vulkan_core.h:4354
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4350

   type VkBufferMemoryRequirementsInfo2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4358
      pNext : System.Address;  -- vulkan_core.h:4359
      buffer : VkBuffer;  -- vulkan_core.h:4360
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4357

   type VkImageMemoryRequirementsInfo2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4364
      pNext : System.Address;  -- vulkan_core.h:4365
      image : VkImage;  -- vulkan_core.h:4366
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4363

   type VkImageSparseMemoryRequirementsInfo2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4370
      pNext : System.Address;  -- vulkan_core.h:4371
      image : VkImage;  -- vulkan_core.h:4372
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4369

   type VkMemoryRequirements2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4376
      pNext : System.Address;  -- vulkan_core.h:4377
      memoryRequirements : aliased VkMemoryRequirements;  -- vulkan_core.h:4378
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4375

   subtype VkMemoryRequirements2KHR is VkMemoryRequirements2;  -- vulkan_core.h:4381

   type VkSparseImageMemoryRequirements2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4384
      pNext : System.Address;  -- vulkan_core.h:4385
      memoryRequirements : aliased VkSparseImageMemoryRequirements;  -- vulkan_core.h:4386
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4383

   type VkPhysicalDeviceFeatures2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4390
      pNext : System.Address;  -- vulkan_core.h:4391
      features : aliased VkPhysicalDeviceFeatures;  -- vulkan_core.h:4392
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4389

   type VkPhysicalDeviceProperties2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4396
      pNext : System.Address;  -- vulkan_core.h:4397
      properties : aliased VkPhysicalDeviceProperties;  -- vulkan_core.h:4398
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4395

   type VkFormatProperties2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4402
      pNext : System.Address;  -- vulkan_core.h:4403
      formatProperties : aliased VkFormatProperties;  -- vulkan_core.h:4404
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4401

   type VkImageFormatProperties2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4408
      pNext : System.Address;  -- vulkan_core.h:4409
      imageFormatProperties : aliased VkImageFormatProperties;  -- vulkan_core.h:4410
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4407

   type VkPhysicalDeviceImageFormatInfo2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4414
      pNext : System.Address;  -- vulkan_core.h:4415
      format : aliased VkFormat;  -- vulkan_core.h:4416
      c_type : aliased VkImageType;  -- vulkan_core.h:4417
      tiling : aliased VkImageTiling;  -- vulkan_core.h:4418
      usage : aliased VkImageUsageFlags;  -- vulkan_core.h:4419
      flags : aliased VkImageCreateFlags;  -- vulkan_core.h:4420
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4413

   type VkQueueFamilyProperties2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4424
      pNext : System.Address;  -- vulkan_core.h:4425
      queueFamilyProperties : aliased VkQueueFamilyProperties;  -- vulkan_core.h:4426
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4423

   type VkPhysicalDeviceMemoryProperties2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4430
      pNext : System.Address;  -- vulkan_core.h:4431
      memoryProperties : aliased VkPhysicalDeviceMemoryProperties;  -- vulkan_core.h:4432
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4429

   type VkSparseImageFormatProperties2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4436
      pNext : System.Address;  -- vulkan_core.h:4437
      properties : aliased VkSparseImageFormatProperties;  -- vulkan_core.h:4438
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4435

   type VkPhysicalDeviceSparseImageFormatInfo2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4442
      pNext : System.Address;  -- vulkan_core.h:4443
      format : aliased VkFormat;  -- vulkan_core.h:4444
      c_type : aliased VkImageType;  -- vulkan_core.h:4445
      samples : aliased VkSampleCountFlagBits;  -- vulkan_core.h:4446
      usage : aliased VkImageUsageFlags;  -- vulkan_core.h:4447
      tiling : aliased VkImageTiling;  -- vulkan_core.h:4448
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4441

   type VkPhysicalDevicePointClippingProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4452
      pNext : System.Address;  -- vulkan_core.h:4453
      pointClippingBehavior : aliased VkPointClippingBehavior;  -- vulkan_core.h:4454
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4451

   type VkInputAttachmentAspectReference is record
      subpass : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4458
      inputAttachmentIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4459
      aspectMask : aliased VkImageAspectFlags;  -- vulkan_core.h:4460
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4457

   type VkRenderPassInputAttachmentAspectCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4464
      pNext : System.Address;  -- vulkan_core.h:4465
      aspectReferenceCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4466
      pAspectReferences : access constant VkInputAttachmentAspectReference;  -- vulkan_core.h:4467
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4463

   type VkImageViewUsageCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4471
      pNext : System.Address;  -- vulkan_core.h:4472
      usage : aliased VkImageUsageFlags;  -- vulkan_core.h:4473
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4470

   type VkPipelineTessellationDomainOriginStateCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4477
      pNext : System.Address;  -- vulkan_core.h:4478
      domainOrigin : aliased VkTessellationDomainOrigin;  -- vulkan_core.h:4479
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4476

   type VkRenderPassMultiviewCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4483
      pNext : System.Address;  -- vulkan_core.h:4484
      subpassCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4485
      pViewMasks : access Interfaces.C.unsigned_short;  -- vulkan_core.h:4486
      dependencyCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4487
      pViewOffsets : access Interfaces.C.short;  -- vulkan_core.h:4488
      correlationMaskCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4489
      pCorrelationMasks : access Interfaces.C.unsigned_short;  -- vulkan_core.h:4490
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4482

   type VkPhysicalDeviceMultiviewFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4494
      pNext : System.Address;  -- vulkan_core.h:4495
      multiview : aliased VkBool32;  -- vulkan_core.h:4496
      multiviewGeometryShader : aliased VkBool32;  -- vulkan_core.h:4497
      multiviewTessellationShader : aliased VkBool32;  -- vulkan_core.h:4498
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4493

   type VkPhysicalDeviceMultiviewProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4502
      pNext : System.Address;  -- vulkan_core.h:4503
      maxMultiviewViewCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4504
      maxMultiviewInstanceIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4505
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4501

   type VkPhysicalDeviceVariablePointersFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4509
      pNext : System.Address;  -- vulkan_core.h:4510
      variablePointersStorageBuffer : aliased VkBool32;  -- vulkan_core.h:4511
      variablePointers : aliased VkBool32;  -- vulkan_core.h:4512
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4508

   subtype VkPhysicalDeviceVariablePointerFeatures is VkPhysicalDeviceVariablePointersFeatures;  -- vulkan_core.h:4515

   type VkPhysicalDeviceProtectedMemoryFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4518
      pNext : System.Address;  -- vulkan_core.h:4519
      protectedMemory : aliased VkBool32;  -- vulkan_core.h:4520
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4517

   type VkPhysicalDeviceProtectedMemoryProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4524
      pNext : System.Address;  -- vulkan_core.h:4525
      protectedNoFault : aliased VkBool32;  -- vulkan_core.h:4526
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4523

   type VkDeviceQueueInfo2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4530
      pNext : System.Address;  -- vulkan_core.h:4531
      flags : aliased VkDeviceQueueCreateFlags;  -- vulkan_core.h:4532
      queueFamilyIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4533
      queueIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4534
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4529

   type VkProtectedSubmitInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4538
      pNext : System.Address;  -- vulkan_core.h:4539
      protectedSubmit : aliased VkBool32;  -- vulkan_core.h:4540
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4537

   type VkSamplerYcbcrConversionCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4544
      pNext : System.Address;  -- vulkan_core.h:4545
      format : aliased VkFormat;  -- vulkan_core.h:4546
      ycbcrModel : aliased VkSamplerYcbcrModelConversion;  -- vulkan_core.h:4547
      ycbcrRange : aliased VkSamplerYcbcrRange;  -- vulkan_core.h:4548
      components : aliased VkComponentMapping;  -- vulkan_core.h:4549
      xChromaOffset : aliased VkChromaLocation;  -- vulkan_core.h:4550
      yChromaOffset : aliased VkChromaLocation;  -- vulkan_core.h:4551
      chromaFilter : aliased VkFilter;  -- vulkan_core.h:4552
      forceExplicitReconstruction : aliased VkBool32;  -- vulkan_core.h:4553
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4543

   type VkSamplerYcbcrConversionInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4557
      pNext : System.Address;  -- vulkan_core.h:4558
      conversion : VkSamplerYcbcrConversion;  -- vulkan_core.h:4559
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4556

   type VkBindImagePlaneMemoryInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4563
      pNext : System.Address;  -- vulkan_core.h:4564
      planeAspect : aliased VkImageAspectFlagBits;  -- vulkan_core.h:4565
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4562

   type VkImagePlaneMemoryRequirementsInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4569
      pNext : System.Address;  -- vulkan_core.h:4570
      planeAspect : aliased VkImageAspectFlagBits;  -- vulkan_core.h:4571
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4568

   type VkPhysicalDeviceSamplerYcbcrConversionFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4575
      pNext : System.Address;  -- vulkan_core.h:4576
      samplerYcbcrConversion : aliased VkBool32;  -- vulkan_core.h:4577
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4574

   type VkSamplerYcbcrConversionImageFormatProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4581
      pNext : System.Address;  -- vulkan_core.h:4582
      combinedImageSamplerDescriptorCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4583
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4580

   type VkDescriptorUpdateTemplateEntry is record
      dstBinding : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4587
      dstArrayElement : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4588
      descriptorCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4589
      descriptorType : aliased VkDescriptorType;  -- vulkan_core.h:4590
      offset : aliased size_t;  -- vulkan_core.h:4591
      stride : aliased size_t;  -- vulkan_core.h:4592
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4586

   type VkDescriptorUpdateTemplateCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4596
      pNext : System.Address;  -- vulkan_core.h:4597
      flags : aliased VkDescriptorUpdateTemplateCreateFlags;  -- vulkan_core.h:4598
      descriptorUpdateEntryCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4599
      pDescriptorUpdateEntries : access constant VkDescriptorUpdateTemplateEntry;  -- vulkan_core.h:4600
      templateType : aliased VkDescriptorUpdateTemplateType;  -- vulkan_core.h:4601
      descriptorSetLayout : VkDescriptorSetLayout;  -- vulkan_core.h:4602
      pipelineBindPoint : aliased VkPipelineBindPoint;  -- vulkan_core.h:4603
      pipelineLayout : VkPipelineLayout;  -- vulkan_core.h:4604
      set : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4605
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4595

   type VkExternalMemoryProperties is record
      externalMemoryFeatures : aliased VkExternalMemoryFeatureFlags;  -- vulkan_core.h:4609
      exportFromImportedHandleTypes : aliased VkExternalMemoryHandleTypeFlags;  -- vulkan_core.h:4610
      compatibleHandleTypes : aliased VkExternalMemoryHandleTypeFlags;  -- vulkan_core.h:4611
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4608

   type VkPhysicalDeviceExternalImageFormatInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4615
      pNext : System.Address;  -- vulkan_core.h:4616
      handleType : aliased VkExternalMemoryHandleTypeFlagBits;  -- vulkan_core.h:4617
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4614

   type VkExternalImageFormatProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4621
      pNext : System.Address;  -- vulkan_core.h:4622
      externalMemoryProperties : aliased VkExternalMemoryProperties;  -- vulkan_core.h:4623
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4620

   type VkPhysicalDeviceExternalBufferInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4627
      pNext : System.Address;  -- vulkan_core.h:4628
      flags : aliased VkBufferCreateFlags;  -- vulkan_core.h:4629
      usage : aliased VkBufferUsageFlags;  -- vulkan_core.h:4630
      handleType : aliased VkExternalMemoryHandleTypeFlagBits;  -- vulkan_core.h:4631
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4626

   type VkExternalBufferProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4635
      pNext : System.Address;  -- vulkan_core.h:4636
      externalMemoryProperties : aliased VkExternalMemoryProperties;  -- vulkan_core.h:4637
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4634

   type VkPhysicalDeviceIDProperties_array1345 is array (0 .. 15) of aliased Interfaces.C.unsigned_char;
   type VkPhysicalDeviceIDProperties_array3040 is array (0 .. 7) of aliased Interfaces.C.unsigned_char;
   type VkPhysicalDeviceIDProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4641
      pNext : System.Address;  -- vulkan_core.h:4642
      deviceUUID : aliased VkPhysicalDeviceIDProperties_array1345;  -- vulkan_core.h:4643
      driverUUID : aliased VkPhysicalDeviceIDProperties_array1345;  -- vulkan_core.h:4644
      deviceLUID : aliased VkPhysicalDeviceIDProperties_array3040;  -- vulkan_core.h:4645
      deviceNodeMask : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4646
      deviceLUIDValid : aliased VkBool32;  -- vulkan_core.h:4647
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4640

   type VkExternalMemoryImageCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4651
      pNext : System.Address;  -- vulkan_core.h:4652
      handleTypes : aliased VkExternalMemoryHandleTypeFlags;  -- vulkan_core.h:4653
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4650

   type VkExternalMemoryBufferCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4657
      pNext : System.Address;  -- vulkan_core.h:4658
      handleTypes : aliased VkExternalMemoryHandleTypeFlags;  -- vulkan_core.h:4659
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4656

   type VkExportMemoryAllocateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4663
      pNext : System.Address;  -- vulkan_core.h:4664
      handleTypes : aliased VkExternalMemoryHandleTypeFlags;  -- vulkan_core.h:4665
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4662

   type VkPhysicalDeviceExternalFenceInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4669
      pNext : System.Address;  -- vulkan_core.h:4670
      handleType : aliased VkExternalFenceHandleTypeFlagBits;  -- vulkan_core.h:4671
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4668

   type VkExternalFenceProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4675
      pNext : System.Address;  -- vulkan_core.h:4676
      exportFromImportedHandleTypes : aliased VkExternalFenceHandleTypeFlags;  -- vulkan_core.h:4677
      compatibleHandleTypes : aliased VkExternalFenceHandleTypeFlags;  -- vulkan_core.h:4678
      externalFenceFeatures : aliased VkExternalFenceFeatureFlags;  -- vulkan_core.h:4679
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4674

   type VkExportFenceCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4683
      pNext : System.Address;  -- vulkan_core.h:4684
      handleTypes : aliased VkExternalFenceHandleTypeFlags;  -- vulkan_core.h:4685
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4682

   type VkExportSemaphoreCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4689
      pNext : System.Address;  -- vulkan_core.h:4690
      handleTypes : aliased VkExternalSemaphoreHandleTypeFlags;  -- vulkan_core.h:4691
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4688

   type VkPhysicalDeviceExternalSemaphoreInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4695
      pNext : System.Address;  -- vulkan_core.h:4696
      handleType : aliased VkExternalSemaphoreHandleTypeFlagBits;  -- vulkan_core.h:4697
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4694

   type VkExternalSemaphoreProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4701
      pNext : System.Address;  -- vulkan_core.h:4702
      exportFromImportedHandleTypes : aliased VkExternalSemaphoreHandleTypeFlags;  -- vulkan_core.h:4703
      compatibleHandleTypes : aliased VkExternalSemaphoreHandleTypeFlags;  -- vulkan_core.h:4704
      externalSemaphoreFeatures : aliased VkExternalSemaphoreFeatureFlags;  -- vulkan_core.h:4705
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4700

   type VkPhysicalDeviceMaintenance3Properties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4709
      pNext : System.Address;  -- vulkan_core.h:4710
      maxPerSetDescriptors : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:4711
      maxMemoryAllocationSize : aliased VkDeviceSize;  -- vulkan_core.h:4712
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4708

   type VkDescriptorSetLayoutSupport is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4716
      pNext : System.Address;  -- vulkan_core.h:4717
      supported : aliased VkBool32;  -- vulkan_core.h:4718
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4715

   type VkPhysicalDeviceShaderDrawParametersFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:4722
      pNext : System.Address;  -- vulkan_core.h:4723
      shaderDrawParameters : aliased VkBool32;  -- vulkan_core.h:4724
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:4721

   subtype VkPhysicalDeviceShaderDrawParameterFeatures is VkPhysicalDeviceShaderDrawParametersFeatures;  -- vulkan_core.h:4727

   type PFN_vkEnumerateInstanceVersion is access function (arg1 : access Interfaces.C.unsigned_short) return VkResult
   with Convention => C;  -- vulkan_core.h:4729

   type PFN_vkBindBufferMemory2 is access function
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkBindBufferMemoryInfo) return VkResult
   with Convention => C;  -- vulkan_core.h:4730

   type PFN_vkBindImageMemory2 is access function
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkBindImageMemoryInfo) return VkResult
   with Convention => C;  -- vulkan_core.h:4731

   type PFN_vkGetDeviceGroupPeerMemoryFeatures is access procedure
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : access VkPeerMemoryFeatureFlags)
   with Convention => C;  -- vulkan_core.h:4732

   type PFN_vkCmdSetDeviceMask is access procedure (arg1 : VkCommandBuffer; arg2 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:4733

   type PFN_vkCmdDispatchBase is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : Interfaces.C.unsigned_short;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:4734

   type PFN_vkEnumeratePhysicalDeviceGroups is access function
        (arg1 : VkInstance;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkPhysicalDeviceGroupProperties) return VkResult
   with Convention => C;  -- vulkan_core.h:4735

   type PFN_vkGetImageMemoryRequirements2 is access procedure
        (arg1 : VkDevice;
         arg2 : access constant VkImageMemoryRequirementsInfo2;
         arg3 : access VkMemoryRequirements2)
   with Convention => C;  -- vulkan_core.h:4736

   type PFN_vkGetBufferMemoryRequirements2 is access procedure
        (arg1 : VkDevice;
         arg2 : access constant VkBufferMemoryRequirementsInfo2;
         arg3 : access VkMemoryRequirements2)
   with Convention => C;  -- vulkan_core.h:4737

   type PFN_vkGetImageSparseMemoryRequirements2 is access procedure
        (arg1 : VkDevice;
         arg2 : access constant VkImageSparseMemoryRequirementsInfo2;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkSparseImageMemoryRequirements2)
   with Convention => C;  -- vulkan_core.h:4738

   type PFN_vkGetPhysicalDeviceFeatures2 is access procedure (arg1 : VkPhysicalDevice; arg2 : access VkPhysicalDeviceFeatures2)
   with Convention => C;  -- vulkan_core.h:4739

   type PFN_vkGetPhysicalDeviceProperties2 is access procedure (arg1 : VkPhysicalDevice; arg2 : access VkPhysicalDeviceProperties2)
   with Convention => C;  -- vulkan_core.h:4740

   type PFN_vkGetPhysicalDeviceFormatProperties2 is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : VkFormat;
         arg3 : access VkFormatProperties2)
   with Convention => C;  -- vulkan_core.h:4741

   type PFN_vkGetPhysicalDeviceImageFormatProperties2 is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkPhysicalDeviceImageFormatInfo2;
         arg3 : access VkImageFormatProperties2) return VkResult
   with Convention => C;  -- vulkan_core.h:4742

   type PFN_vkGetPhysicalDeviceQueueFamilyProperties2 is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkQueueFamilyProperties2)
   with Convention => C;  -- vulkan_core.h:4743

   type PFN_vkGetPhysicalDeviceMemoryProperties2 is access procedure (arg1 : VkPhysicalDevice; arg2 : access VkPhysicalDeviceMemoryProperties2)
   with Convention => C;  -- vulkan_core.h:4744

   type PFN_vkGetPhysicalDeviceSparseImageFormatProperties2 is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkPhysicalDeviceSparseImageFormatInfo2;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkSparseImageFormatProperties2)
   with Convention => C;  -- vulkan_core.h:4745

   type PFN_vkTrimCommandPool is access procedure
        (arg1 : VkDevice;
         arg2 : VkCommandPool;
         arg3 : VkCommandPoolTrimFlags)
   with Convention => C;  -- vulkan_core.h:4746

   type PFN_vkGetDeviceQueue2 is access procedure
        (arg1 : VkDevice;
         arg2 : access constant VkDeviceQueueInfo2;
         arg3 : System.Address)
   with Convention => C;  -- vulkan_core.h:4747

   type PFN_vkCreateSamplerYcbcrConversion is access function
        (arg1 : VkDevice;
         arg2 : access constant VkSamplerYcbcrConversionCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:4748

   type PFN_vkDestroySamplerYcbcrConversion is access procedure
        (arg1 : VkDevice;
         arg2 : VkSamplerYcbcrConversion;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:4749

   type PFN_vkCreateDescriptorUpdateTemplate is access function
        (arg1 : VkDevice;
         arg2 : access constant VkDescriptorUpdateTemplateCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:4750

   type PFN_vkDestroyDescriptorUpdateTemplate is access procedure
        (arg1 : VkDevice;
         arg2 : VkDescriptorUpdateTemplate;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:4751

   type PFN_vkUpdateDescriptorSetWithTemplate is access procedure
        (arg1 : VkDevice;
         arg2 : VkDescriptorSet;
         arg3 : VkDescriptorUpdateTemplate;
         arg4 : System.Address)
   with Convention => C;  -- vulkan_core.h:4752

   type PFN_vkGetPhysicalDeviceExternalBufferProperties is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkPhysicalDeviceExternalBufferInfo;
         arg3 : access VkExternalBufferProperties)
   with Convention => C;  -- vulkan_core.h:4753

   type PFN_vkGetPhysicalDeviceExternalFenceProperties is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkPhysicalDeviceExternalFenceInfo;
         arg3 : access VkExternalFenceProperties)
   with Convention => C;  -- vulkan_core.h:4754

   type PFN_vkGetPhysicalDeviceExternalSemaphoreProperties is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkPhysicalDeviceExternalSemaphoreInfo;
         arg3 : access VkExternalSemaphoreProperties)
   with Convention => C;  -- vulkan_core.h:4755

   type PFN_vkGetDescriptorSetLayoutSupport is access procedure
        (arg1 : VkDevice;
         arg2 : access constant VkDescriptorSetLayoutCreateInfo;
         arg3 : access VkDescriptorSetLayoutSupport)
   with Convention => C;  -- vulkan_core.h:4756

   function vkEnumerateInstanceVersion (pApiVersion : access Interfaces.C.unsigned_short) return VkResult  -- vulkan_core.h:4759
   with Import => True, 
        Convention => C, 
        External_Name => "vkEnumerateInstanceVersion";

   function vkBindBufferMemory2
     (device : VkDevice;
      bindInfoCount : Interfaces.C.unsigned_short;
      pBindInfos : access constant VkBindBufferMemoryInfo) return VkResult  -- vulkan_core.h:4762
   with Import => True, 
        Convention => C, 
        External_Name => "vkBindBufferMemory2";

   function vkBindImageMemory2
     (device : VkDevice;
      bindInfoCount : Interfaces.C.unsigned_short;
      pBindInfos : access constant VkBindImageMemoryInfo) return VkResult  -- vulkan_core.h:4767
   with Import => True, 
        Convention => C, 
        External_Name => "vkBindImageMemory2";

   procedure vkGetDeviceGroupPeerMemoryFeatures
     (device : VkDevice;
      heapIndex : Interfaces.C.unsigned_short;
      localDeviceIndex : Interfaces.C.unsigned_short;
      remoteDeviceIndex : Interfaces.C.unsigned_short;
      pPeerMemoryFeatures : access VkPeerMemoryFeatureFlags)  -- vulkan_core.h:4772
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDeviceGroupPeerMemoryFeatures";

   procedure vkCmdSetDeviceMask (commandBuffer : VkCommandBuffer; deviceMask : Interfaces.C.unsigned_short)  -- vulkan_core.h:4779
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetDeviceMask";

   procedure vkCmdDispatchBase
     (commandBuffer : VkCommandBuffer;
      baseGroupX : Interfaces.C.unsigned_short;
      baseGroupY : Interfaces.C.unsigned_short;
      baseGroupZ : Interfaces.C.unsigned_short;
      groupCountX : Interfaces.C.unsigned_short;
      groupCountY : Interfaces.C.unsigned_short;
      groupCountZ : Interfaces.C.unsigned_short)  -- vulkan_core.h:4783
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDispatchBase";

   function vkEnumeratePhysicalDeviceGroups
     (instance : VkInstance;
      pPhysicalDeviceGroupCount : access Interfaces.C.unsigned_short;
      pPhysicalDeviceGroupProperties : access VkPhysicalDeviceGroupProperties) return VkResult  -- vulkan_core.h:4792
   with Import => True, 
        Convention => C, 
        External_Name => "vkEnumeratePhysicalDeviceGroups";

   procedure vkGetImageMemoryRequirements2
     (device : VkDevice;
      pInfo : access constant VkImageMemoryRequirementsInfo2;
      pMemoryRequirements : access VkMemoryRequirements2)  -- vulkan_core.h:4797
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetImageMemoryRequirements2";

   procedure vkGetBufferMemoryRequirements2
     (device : VkDevice;
      pInfo : access constant VkBufferMemoryRequirementsInfo2;
      pMemoryRequirements : access VkMemoryRequirements2)  -- vulkan_core.h:4802
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetBufferMemoryRequirements2";

   procedure vkGetImageSparseMemoryRequirements2
     (device : VkDevice;
      pInfo : access constant VkImageSparseMemoryRequirementsInfo2;
      pSparseMemoryRequirementCount : access Interfaces.C.unsigned_short;
      pSparseMemoryRequirements : access VkSparseImageMemoryRequirements2)  -- vulkan_core.h:4807
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetImageSparseMemoryRequirements2";

   procedure vkGetPhysicalDeviceFeatures2 (physicalDevice : VkPhysicalDevice; pFeatures : access VkPhysicalDeviceFeatures2)  -- vulkan_core.h:4813
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceFeatures2";

   procedure vkGetPhysicalDeviceProperties2 (physicalDevice : VkPhysicalDevice; pProperties : access VkPhysicalDeviceProperties2)  -- vulkan_core.h:4817
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceProperties2";

   procedure vkGetPhysicalDeviceFormatProperties2
     (physicalDevice : VkPhysicalDevice;
      format : VkFormat;
      pFormatProperties : access VkFormatProperties2)  -- vulkan_core.h:4821
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceFormatProperties2";

   function vkGetPhysicalDeviceImageFormatProperties2
     (physicalDevice : VkPhysicalDevice;
      pImageFormatInfo : access constant VkPhysicalDeviceImageFormatInfo2;
      pImageFormatProperties : access VkImageFormatProperties2) return VkResult  -- vulkan_core.h:4826
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceImageFormatProperties2";

   procedure vkGetPhysicalDeviceQueueFamilyProperties2
     (physicalDevice : VkPhysicalDevice;
      pQueueFamilyPropertyCount : access Interfaces.C.unsigned_short;
      pQueueFamilyProperties : access VkQueueFamilyProperties2)  -- vulkan_core.h:4831
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceQueueFamilyProperties2";

   procedure vkGetPhysicalDeviceMemoryProperties2 (physicalDevice : VkPhysicalDevice; pMemoryProperties : access VkPhysicalDeviceMemoryProperties2)  -- vulkan_core.h:4836
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceMemoryProperties2";

   procedure vkGetPhysicalDeviceSparseImageFormatProperties2
     (physicalDevice : VkPhysicalDevice;
      pFormatInfo : access constant VkPhysicalDeviceSparseImageFormatInfo2;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkSparseImageFormatProperties2)  -- vulkan_core.h:4840
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceSparseImageFormatProperties2";

   procedure vkTrimCommandPool
     (device : VkDevice;
      commandPool : VkCommandPool;
      flags : VkCommandPoolTrimFlags)  -- vulkan_core.h:4846
   with Import => True, 
        Convention => C, 
        External_Name => "vkTrimCommandPool";

   procedure vkGetDeviceQueue2
     (device : VkDevice;
      pQueueInfo : access constant VkDeviceQueueInfo2;
      pQueue : System.Address)  -- vulkan_core.h:4851
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDeviceQueue2";

   function vkCreateSamplerYcbcrConversion
     (device : VkDevice;
      pCreateInfo : access constant VkSamplerYcbcrConversionCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pYcbcrConversion : System.Address) return VkResult  -- vulkan_core.h:4856
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateSamplerYcbcrConversion";

   procedure vkDestroySamplerYcbcrConversion
     (device : VkDevice;
      ycbcrConversion : VkSamplerYcbcrConversion;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:4862
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroySamplerYcbcrConversion";

   function vkCreateDescriptorUpdateTemplate
     (device : VkDevice;
      pCreateInfo : access constant VkDescriptorUpdateTemplateCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pDescriptorUpdateTemplate : System.Address) return VkResult  -- vulkan_core.h:4867
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateDescriptorUpdateTemplate";

   procedure vkDestroyDescriptorUpdateTemplate
     (device : VkDevice;
      descriptorUpdateTemplate : VkDescriptorUpdateTemplate;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:4873
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyDescriptorUpdateTemplate";

   procedure vkUpdateDescriptorSetWithTemplate
     (device : VkDevice;
      descriptorSet : VkDescriptorSet;
      descriptorUpdateTemplate : VkDescriptorUpdateTemplate;
      pData : System.Address)  -- vulkan_core.h:4878
   with Import => True, 
        Convention => C, 
        External_Name => "vkUpdateDescriptorSetWithTemplate";

   procedure vkGetPhysicalDeviceExternalBufferProperties
     (physicalDevice : VkPhysicalDevice;
      pExternalBufferInfo : access constant VkPhysicalDeviceExternalBufferInfo;
      pExternalBufferProperties : access VkExternalBufferProperties)  -- vulkan_core.h:4884
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceExternalBufferProperties";

   procedure vkGetPhysicalDeviceExternalFenceProperties
     (physicalDevice : VkPhysicalDevice;
      pExternalFenceInfo : access constant VkPhysicalDeviceExternalFenceInfo;
      pExternalFenceProperties : access VkExternalFenceProperties)  -- vulkan_core.h:4889
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceExternalFenceProperties";

   procedure vkGetPhysicalDeviceExternalSemaphoreProperties
     (physicalDevice : VkPhysicalDevice;
      pExternalSemaphoreInfo : access constant VkPhysicalDeviceExternalSemaphoreInfo;
      pExternalSemaphoreProperties : access VkExternalSemaphoreProperties)  -- vulkan_core.h:4894
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceExternalSemaphoreProperties";

   procedure vkGetDescriptorSetLayoutSupport
     (device : VkDevice;
      pCreateInfo : access constant VkDescriptorSetLayoutCreateInfo;
      pSupport : access VkDescriptorSetLayoutSupport)  -- vulkan_core.h:4899
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDescriptorSetLayoutSupport";

  -- Vulkan 1.2 version number
   subtype VkDeviceAddress is Interfaces.C.unsigned_long;  -- vulkan_core.h:4910

   subtype VkDriverId is unsigned;
   VK_DRIVER_ID_AMD_PROPRIETARY : constant unsigned := 1;
   VK_DRIVER_ID_AMD_OPEN_SOURCE : constant unsigned := 2;
   VK_DRIVER_ID_MESA_RADV : constant unsigned := 3;
   VK_DRIVER_ID_NVIDIA_PROPRIETARY : constant unsigned := 4;
   VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS : constant unsigned := 5;
   VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA : constant unsigned := 6;
   VK_DRIVER_ID_IMAGINATION_PROPRIETARY : constant unsigned := 7;
   VK_DRIVER_ID_QUALCOMM_PROPRIETARY : constant unsigned := 8;
   VK_DRIVER_ID_ARM_PROPRIETARY : constant unsigned := 9;
   VK_DRIVER_ID_GOOGLE_SWIFTSHADER : constant unsigned := 10;
   VK_DRIVER_ID_GGP_PROPRIETARY : constant unsigned := 11;
   VK_DRIVER_ID_BROADCOM_PROPRIETARY : constant unsigned := 12;
   VK_DRIVER_ID_AMD_PROPRIETARY_KHR : constant unsigned := 1;
   VK_DRIVER_ID_AMD_OPEN_SOURCE_KHR : constant unsigned := 2;
   VK_DRIVER_ID_MESA_RADV_KHR : constant unsigned := 3;
   VK_DRIVER_ID_NVIDIA_PROPRIETARY_KHR : constant unsigned := 4;
   VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS_KHR : constant unsigned := 5;
   VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA_KHR : constant unsigned := 6;
   VK_DRIVER_ID_IMAGINATION_PROPRIETARY_KHR : constant unsigned := 7;
   VK_DRIVER_ID_QUALCOMM_PROPRIETARY_KHR : constant unsigned := 8;
   VK_DRIVER_ID_ARM_PROPRIETARY_KHR : constant unsigned := 9;
   VK_DRIVER_ID_GOOGLE_SWIFTSHADER_KHR : constant unsigned := 10;
   VK_DRIVER_ID_GGP_PROPRIETARY_KHR : constant unsigned := 11;
   VK_DRIVER_ID_BROADCOM_PROPRIETARY_KHR : constant unsigned := 12;
   VK_DRIVER_ID_BEGIN_RANGE : constant unsigned := 1;
   VK_DRIVER_ID_END_RANGE : constant unsigned := 12;
   VK_DRIVER_ID_RANGE_SIZE : constant unsigned := 12;
   VK_DRIVER_ID_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4914

   subtype VkShaderFloatControlsIndependence is unsigned;
   VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY : constant unsigned := 0;
   VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL : constant unsigned := 1;
   VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE : constant unsigned := 2;
   VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY_KHR : constant unsigned := 0;
   VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL_KHR : constant unsigned := 1;
   VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE_KHR : constant unsigned := 2;
   VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_BEGIN_RANGE : constant unsigned := 0;
   VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_END_RANGE : constant unsigned := 2;
   VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_RANGE_SIZE : constant unsigned := 3;
   VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4945

   subtype VkSamplerReductionMode is unsigned;
   VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE : constant unsigned := 0;
   VK_SAMPLER_REDUCTION_MODE_MIN : constant unsigned := 1;
   VK_SAMPLER_REDUCTION_MODE_MAX : constant unsigned := 2;
   VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE_EXT : constant unsigned := 0;
   VK_SAMPLER_REDUCTION_MODE_MIN_EXT : constant unsigned := 1;
   VK_SAMPLER_REDUCTION_MODE_MAX_EXT : constant unsigned := 2;
   VK_SAMPLER_REDUCTION_MODE_BEGIN_RANGE : constant unsigned := 0;
   VK_SAMPLER_REDUCTION_MODE_END_RANGE : constant unsigned := 2;
   VK_SAMPLER_REDUCTION_MODE_RANGE_SIZE : constant unsigned := 3;
   VK_SAMPLER_REDUCTION_MODE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4958

   subtype VkSemaphoreType is unsigned;
   VK_SEMAPHORE_TYPE_BINARY : constant unsigned := 0;
   VK_SEMAPHORE_TYPE_TIMELINE : constant unsigned := 1;
   VK_SEMAPHORE_TYPE_BINARY_KHR : constant unsigned := 0;
   VK_SEMAPHORE_TYPE_TIMELINE_KHR : constant unsigned := 1;
   VK_SEMAPHORE_TYPE_BEGIN_RANGE : constant unsigned := 0;
   VK_SEMAPHORE_TYPE_END_RANGE : constant unsigned := 1;
   VK_SEMAPHORE_TYPE_RANGE_SIZE : constant unsigned := 2;
   VK_SEMAPHORE_TYPE_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4971

   subtype VkResolveModeFlagBits is unsigned;
   VK_RESOLVE_MODE_NONE : constant unsigned := 0;
   VK_RESOLVE_MODE_SAMPLE_ZERO_BIT : constant unsigned := 1;
   VK_RESOLVE_MODE_AVERAGE_BIT : constant unsigned := 2;
   VK_RESOLVE_MODE_MIN_BIT : constant unsigned := 4;
   VK_RESOLVE_MODE_MAX_BIT : constant unsigned := 8;
   VK_RESOLVE_MODE_NONE_KHR : constant unsigned := 0;
   VK_RESOLVE_MODE_SAMPLE_ZERO_BIT_KHR : constant unsigned := 1;
   VK_RESOLVE_MODE_AVERAGE_BIT_KHR : constant unsigned := 2;
   VK_RESOLVE_MODE_MIN_BIT_KHR : constant unsigned := 4;
   VK_RESOLVE_MODE_MAX_BIT_KHR : constant unsigned := 8;
   VK_RESOLVE_MODE_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4982

   subtype VkResolveModeFlags is VkFlags;  -- vulkan_core.h:4995

   subtype VkDescriptorBindingFlagBits is unsigned;
   VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT : constant unsigned := 1;
   VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT : constant unsigned := 2;
   VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT : constant unsigned := 4;
   VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT : constant unsigned := 8;
   VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT_EXT : constant unsigned := 1;
   VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT_EXT : constant unsigned := 2;
   VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT_EXT : constant unsigned := 4;
   VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT_EXT : constant unsigned := 8;
   VK_DESCRIPTOR_BINDING_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:4997

   subtype VkDescriptorBindingFlags is VkFlags;  -- vulkan_core.h:5008

   subtype VkSemaphoreWaitFlagBits is unsigned;
   VK_SEMAPHORE_WAIT_ANY_BIT : constant unsigned := 1;
   VK_SEMAPHORE_WAIT_ANY_BIT_KHR : constant unsigned := 1;
   VK_SEMAPHORE_WAIT_FLAG_BITS_MAX_ENUM : constant unsigned := 2147483647;  -- vulkan_core.h:5010

   subtype VkSemaphoreWaitFlags is VkFlags;  -- vulkan_core.h:5015

   type VkPhysicalDeviceVulkan11Features is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5017
      pNext : System.Address;  -- vulkan_core.h:5018
      storageBuffer16BitAccess : aliased VkBool32;  -- vulkan_core.h:5019
      uniformAndStorageBuffer16BitAccess : aliased VkBool32;  -- vulkan_core.h:5020
      storagePushConstant16 : aliased VkBool32;  -- vulkan_core.h:5021
      storageInputOutput16 : aliased VkBool32;  -- vulkan_core.h:5022
      multiview : aliased VkBool32;  -- vulkan_core.h:5023
      multiviewGeometryShader : aliased VkBool32;  -- vulkan_core.h:5024
      multiviewTessellationShader : aliased VkBool32;  -- vulkan_core.h:5025
      variablePointersStorageBuffer : aliased VkBool32;  -- vulkan_core.h:5026
      variablePointers : aliased VkBool32;  -- vulkan_core.h:5027
      protectedMemory : aliased VkBool32;  -- vulkan_core.h:5028
      samplerYcbcrConversion : aliased VkBool32;  -- vulkan_core.h:5029
      shaderDrawParameters : aliased VkBool32;  -- vulkan_core.h:5030
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5016

   type VkPhysicalDeviceVulkan11Properties_array1345 is array (0 .. 15) of aliased Interfaces.C.unsigned_char;
   type VkPhysicalDeviceVulkan11Properties_array3040 is array (0 .. 7) of aliased Interfaces.C.unsigned_char;
   type VkPhysicalDeviceVulkan11Properties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5034
      pNext : System.Address;  -- vulkan_core.h:5035
      deviceUUID : aliased VkPhysicalDeviceVulkan11Properties_array1345;  -- vulkan_core.h:5036
      driverUUID : aliased VkPhysicalDeviceVulkan11Properties_array1345;  -- vulkan_core.h:5037
      deviceLUID : aliased VkPhysicalDeviceVulkan11Properties_array3040;  -- vulkan_core.h:5038
      deviceNodeMask : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5039
      deviceLUIDValid : aliased VkBool32;  -- vulkan_core.h:5040
      subgroupSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5041
      subgroupSupportedStages : aliased VkShaderStageFlags;  -- vulkan_core.h:5042
      subgroupSupportedOperations : aliased VkSubgroupFeatureFlags;  -- vulkan_core.h:5043
      subgroupQuadOperationsInAllStages : aliased VkBool32;  -- vulkan_core.h:5044
      pointClippingBehavior : aliased VkPointClippingBehavior;  -- vulkan_core.h:5045
      maxMultiviewViewCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5046
      maxMultiviewInstanceIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5047
      protectedNoFault : aliased VkBool32;  -- vulkan_core.h:5048
      maxPerSetDescriptors : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5049
      maxMemoryAllocationSize : aliased VkDeviceSize;  -- vulkan_core.h:5050
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5033

   type VkPhysicalDeviceVulkan12Features is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5054
      pNext : System.Address;  -- vulkan_core.h:5055
      samplerMirrorClampToEdge : aliased VkBool32;  -- vulkan_core.h:5056
      drawIndirectCount : aliased VkBool32;  -- vulkan_core.h:5057
      storageBuffer8BitAccess : aliased VkBool32;  -- vulkan_core.h:5058
      uniformAndStorageBuffer8BitAccess : aliased VkBool32;  -- vulkan_core.h:5059
      storagePushConstant8 : aliased VkBool32;  -- vulkan_core.h:5060
      shaderBufferInt64Atomics : aliased VkBool32;  -- vulkan_core.h:5061
      shaderSharedInt64Atomics : aliased VkBool32;  -- vulkan_core.h:5062
      shaderFloat16 : aliased VkBool32;  -- vulkan_core.h:5063
      shaderInt8 : aliased VkBool32;  -- vulkan_core.h:5064
      descriptorIndexing : aliased VkBool32;  -- vulkan_core.h:5065
      shaderInputAttachmentArrayDynamicIndexing : aliased VkBool32;  -- vulkan_core.h:5066
      shaderUniformTexelBufferArrayDynamicIndexing : aliased VkBool32;  -- vulkan_core.h:5067
      shaderStorageTexelBufferArrayDynamicIndexing : aliased VkBool32;  -- vulkan_core.h:5068
      shaderUniformBufferArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5069
      shaderSampledImageArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5070
      shaderStorageBufferArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5071
      shaderStorageImageArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5072
      shaderInputAttachmentArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5073
      shaderUniformTexelBufferArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5074
      shaderStorageTexelBufferArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5075
      descriptorBindingUniformBufferUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5076
      descriptorBindingSampledImageUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5077
      descriptorBindingStorageImageUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5078
      descriptorBindingStorageBufferUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5079
      descriptorBindingUniformTexelBufferUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5080
      descriptorBindingStorageTexelBufferUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5081
      descriptorBindingUpdateUnusedWhilePending : aliased VkBool32;  -- vulkan_core.h:5082
      descriptorBindingPartiallyBound : aliased VkBool32;  -- vulkan_core.h:5083
      descriptorBindingVariableDescriptorCount : aliased VkBool32;  -- vulkan_core.h:5084
      runtimeDescriptorArray : aliased VkBool32;  -- vulkan_core.h:5085
      samplerFilterMinmax : aliased VkBool32;  -- vulkan_core.h:5086
      scalarBlockLayout : aliased VkBool32;  -- vulkan_core.h:5087
      imagelessFramebuffer : aliased VkBool32;  -- vulkan_core.h:5088
      uniformBufferStandardLayout : aliased VkBool32;  -- vulkan_core.h:5089
      shaderSubgroupExtendedTypes : aliased VkBool32;  -- vulkan_core.h:5090
      separateDepthStencilLayouts : aliased VkBool32;  -- vulkan_core.h:5091
      hostQueryReset : aliased VkBool32;  -- vulkan_core.h:5092
      timelineSemaphore : aliased VkBool32;  -- vulkan_core.h:5093
      bufferDeviceAddress : aliased VkBool32;  -- vulkan_core.h:5094
      bufferDeviceAddressCaptureReplay : aliased VkBool32;  -- vulkan_core.h:5095
      bufferDeviceAddressMultiDevice : aliased VkBool32;  -- vulkan_core.h:5096
      vulkanMemoryModel : aliased VkBool32;  -- vulkan_core.h:5097
      vulkanMemoryModelDeviceScope : aliased VkBool32;  -- vulkan_core.h:5098
      vulkanMemoryModelAvailabilityVisibilityChains : aliased VkBool32;  -- vulkan_core.h:5099
      shaderOutputViewportIndex : aliased VkBool32;  -- vulkan_core.h:5100
      shaderOutputLayer : aliased VkBool32;  -- vulkan_core.h:5101
      subgroupBroadcastDynamicId : aliased VkBool32;  -- vulkan_core.h:5102
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5053

   type VkConformanceVersion is record
      major : aliased Interfaces.C.unsigned_char;  -- vulkan_core.h:5106
      minor : aliased Interfaces.C.unsigned_char;  -- vulkan_core.h:5107
      subminor : aliased Interfaces.C.unsigned_char;  -- vulkan_core.h:5108
      patch : aliased Interfaces.C.unsigned_char;  -- vulkan_core.h:5109
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5105

   subtype VkPhysicalDeviceVulkan12Properties_array1342 is Interfaces.C.char_array (0 .. 255);
   type VkPhysicalDeviceVulkan12Properties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5113
      pNext : System.Address;  -- vulkan_core.h:5114
      driverID : aliased VkDriverId;  -- vulkan_core.h:5115
      driverName : aliased VkPhysicalDeviceVulkan12Properties_array1342;  -- vulkan_core.h:5116
      driverInfo : aliased VkPhysicalDeviceVulkan12Properties_array1342;  -- vulkan_core.h:5117
      conformanceVersion : aliased VkConformanceVersion;  -- vulkan_core.h:5118
      denormBehaviorIndependence : aliased VkShaderFloatControlsIndependence;  -- vulkan_core.h:5119
      roundingModeIndependence : aliased VkShaderFloatControlsIndependence;  -- vulkan_core.h:5120
      shaderSignedZeroInfNanPreserveFloat16 : aliased VkBool32;  -- vulkan_core.h:5121
      shaderSignedZeroInfNanPreserveFloat32 : aliased VkBool32;  -- vulkan_core.h:5122
      shaderSignedZeroInfNanPreserveFloat64 : aliased VkBool32;  -- vulkan_core.h:5123
      shaderDenormPreserveFloat16 : aliased VkBool32;  -- vulkan_core.h:5124
      shaderDenormPreserveFloat32 : aliased VkBool32;  -- vulkan_core.h:5125
      shaderDenormPreserveFloat64 : aliased VkBool32;  -- vulkan_core.h:5126
      shaderDenormFlushToZeroFloat16 : aliased VkBool32;  -- vulkan_core.h:5127
      shaderDenormFlushToZeroFloat32 : aliased VkBool32;  -- vulkan_core.h:5128
      shaderDenormFlushToZeroFloat64 : aliased VkBool32;  -- vulkan_core.h:5129
      shaderRoundingModeRTEFloat16 : aliased VkBool32;  -- vulkan_core.h:5130
      shaderRoundingModeRTEFloat32 : aliased VkBool32;  -- vulkan_core.h:5131
      shaderRoundingModeRTEFloat64 : aliased VkBool32;  -- vulkan_core.h:5132
      shaderRoundingModeRTZFloat16 : aliased VkBool32;  -- vulkan_core.h:5133
      shaderRoundingModeRTZFloat32 : aliased VkBool32;  -- vulkan_core.h:5134
      shaderRoundingModeRTZFloat64 : aliased VkBool32;  -- vulkan_core.h:5135
      maxUpdateAfterBindDescriptorsInAllPools : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5136
      shaderUniformBufferArrayNonUniformIndexingNative : aliased VkBool32;  -- vulkan_core.h:5137
      shaderSampledImageArrayNonUniformIndexingNative : aliased VkBool32;  -- vulkan_core.h:5138
      shaderStorageBufferArrayNonUniformIndexingNative : aliased VkBool32;  -- vulkan_core.h:5139
      shaderStorageImageArrayNonUniformIndexingNative : aliased VkBool32;  -- vulkan_core.h:5140
      shaderInputAttachmentArrayNonUniformIndexingNative : aliased VkBool32;  -- vulkan_core.h:5141
      robustBufferAccessUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5142
      quadDivergentImplicitLod : aliased VkBool32;  -- vulkan_core.h:5143
      maxPerStageDescriptorUpdateAfterBindSamplers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5144
      maxPerStageDescriptorUpdateAfterBindUniformBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5145
      maxPerStageDescriptorUpdateAfterBindStorageBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5146
      maxPerStageDescriptorUpdateAfterBindSampledImages : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5147
      maxPerStageDescriptorUpdateAfterBindStorageImages : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5148
      maxPerStageDescriptorUpdateAfterBindInputAttachments : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5149
      maxPerStageUpdateAfterBindResources : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5150
      maxDescriptorSetUpdateAfterBindSamplers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5151
      maxDescriptorSetUpdateAfterBindUniformBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5152
      maxDescriptorSetUpdateAfterBindUniformBuffersDynamic : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5153
      maxDescriptorSetUpdateAfterBindStorageBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5154
      maxDescriptorSetUpdateAfterBindStorageBuffersDynamic : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5155
      maxDescriptorSetUpdateAfterBindSampledImages : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5156
      maxDescriptorSetUpdateAfterBindStorageImages : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5157
      maxDescriptorSetUpdateAfterBindInputAttachments : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5158
      supportedDepthResolveModes : aliased VkResolveModeFlags;  -- vulkan_core.h:5159
      supportedStencilResolveModes : aliased VkResolveModeFlags;  -- vulkan_core.h:5160
      independentResolveNone : aliased VkBool32;  -- vulkan_core.h:5161
      independentResolve : aliased VkBool32;  -- vulkan_core.h:5162
      filterMinmaxSingleComponentFormats : aliased VkBool32;  -- vulkan_core.h:5163
      filterMinmaxImageComponentMapping : aliased VkBool32;  -- vulkan_core.h:5164
      maxTimelineSemaphoreValueDifference : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:5165
      framebufferIntegerColorSampleCounts : aliased VkSampleCountFlags;  -- vulkan_core.h:5166
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5112

   type VkImageFormatListCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5170
      pNext : System.Address;  -- vulkan_core.h:5171
      viewFormatCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5172
      pViewFormats : access VkFormat;  -- vulkan_core.h:5173
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5169

   type VkAttachmentDescription2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5177
      pNext : System.Address;  -- vulkan_core.h:5178
      flags : aliased VkAttachmentDescriptionFlags;  -- vulkan_core.h:5179
      format : aliased VkFormat;  -- vulkan_core.h:5180
      samples : aliased VkSampleCountFlagBits;  -- vulkan_core.h:5181
      loadOp : aliased VkAttachmentLoadOp;  -- vulkan_core.h:5182
      storeOp : aliased VkAttachmentStoreOp;  -- vulkan_core.h:5183
      stencilLoadOp : aliased VkAttachmentLoadOp;  -- vulkan_core.h:5184
      stencilStoreOp : aliased VkAttachmentStoreOp;  -- vulkan_core.h:5185
      initialLayout : aliased VkImageLayout;  -- vulkan_core.h:5186
      finalLayout : aliased VkImageLayout;  -- vulkan_core.h:5187
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5176

   type VkAttachmentReference2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5191
      pNext : System.Address;  -- vulkan_core.h:5192
      attachment : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5193
      layout : aliased VkImageLayout;  -- vulkan_core.h:5194
      aspectMask : aliased VkImageAspectFlags;  -- vulkan_core.h:5195
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5190

   type VkSubpassDescription2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5199
      pNext : System.Address;  -- vulkan_core.h:5200
      flags : aliased VkSubpassDescriptionFlags;  -- vulkan_core.h:5201
      pipelineBindPoint : aliased VkPipelineBindPoint;  -- vulkan_core.h:5202
      viewMask : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5203
      inputAttachmentCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5204
      pInputAttachments : access constant VkAttachmentReference2;  -- vulkan_core.h:5205
      colorAttachmentCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5206
      pColorAttachments : access constant VkAttachmentReference2;  -- vulkan_core.h:5207
      pResolveAttachments : access constant VkAttachmentReference2;  -- vulkan_core.h:5208
      pDepthStencilAttachment : access constant VkAttachmentReference2;  -- vulkan_core.h:5209
      preserveAttachmentCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5210
      pPreserveAttachments : access Interfaces.C.unsigned_short;  -- vulkan_core.h:5211
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5198

   type VkSubpassDependency2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5215
      pNext : System.Address;  -- vulkan_core.h:5216
      srcSubpass : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5217
      dstSubpass : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5218
      srcStageMask : aliased VkPipelineStageFlags;  -- vulkan_core.h:5219
      dstStageMask : aliased VkPipelineStageFlags;  -- vulkan_core.h:5220
      srcAccessMask : aliased VkAccessFlags;  -- vulkan_core.h:5221
      dstAccessMask : aliased VkAccessFlags;  -- vulkan_core.h:5222
      dependencyFlags : aliased VkDependencyFlags;  -- vulkan_core.h:5223
      viewOffset : aliased Interfaces.C.short;  -- vulkan_core.h:5224
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5214

   type VkRenderPassCreateInfo2 is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5228
      pNext : System.Address;  -- vulkan_core.h:5229
      flags : aliased VkRenderPassCreateFlags;  -- vulkan_core.h:5230
      attachmentCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5231
      pAttachments : access constant VkAttachmentDescription2;  -- vulkan_core.h:5232
      subpassCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5233
      pSubpasses : access constant VkSubpassDescription2;  -- vulkan_core.h:5234
      dependencyCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5235
      pDependencies : access constant VkSubpassDependency2;  -- vulkan_core.h:5236
      correlatedViewMaskCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5237
      pCorrelatedViewMasks : access Interfaces.C.unsigned_short;  -- vulkan_core.h:5238
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5227

   type VkSubpassBeginInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5242
      pNext : System.Address;  -- vulkan_core.h:5243
      contents : aliased VkSubpassContents;  -- vulkan_core.h:5244
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5241

   type VkSubpassEndInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5248
      pNext : System.Address;  -- vulkan_core.h:5249
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5247

   type VkPhysicalDevice8BitStorageFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5253
      pNext : System.Address;  -- vulkan_core.h:5254
      storageBuffer8BitAccess : aliased VkBool32;  -- vulkan_core.h:5255
      uniformAndStorageBuffer8BitAccess : aliased VkBool32;  -- vulkan_core.h:5256
      storagePushConstant8 : aliased VkBool32;  -- vulkan_core.h:5257
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5252

   subtype VkPhysicalDeviceDriverProperties_array1342 is Interfaces.C.char_array (0 .. 255);
   type VkPhysicalDeviceDriverProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5261
      pNext : System.Address;  -- vulkan_core.h:5262
      driverID : aliased VkDriverId;  -- vulkan_core.h:5263
      driverName : aliased VkPhysicalDeviceDriverProperties_array1342;  -- vulkan_core.h:5264
      driverInfo : aliased VkPhysicalDeviceDriverProperties_array1342;  -- vulkan_core.h:5265
      conformanceVersion : aliased VkConformanceVersion;  -- vulkan_core.h:5266
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5260

   type VkPhysicalDeviceShaderAtomicInt64Features is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5270
      pNext : System.Address;  -- vulkan_core.h:5271
      shaderBufferInt64Atomics : aliased VkBool32;  -- vulkan_core.h:5272
      shaderSharedInt64Atomics : aliased VkBool32;  -- vulkan_core.h:5273
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5269

   type VkPhysicalDeviceShaderFloat16Int8Features is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5277
      pNext : System.Address;  -- vulkan_core.h:5278
      shaderFloat16 : aliased VkBool32;  -- vulkan_core.h:5279
      shaderInt8 : aliased VkBool32;  -- vulkan_core.h:5280
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5276

   type VkPhysicalDeviceFloatControlsProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5284
      pNext : System.Address;  -- vulkan_core.h:5285
      denormBehaviorIndependence : aliased VkShaderFloatControlsIndependence;  -- vulkan_core.h:5286
      roundingModeIndependence : aliased VkShaderFloatControlsIndependence;  -- vulkan_core.h:5287
      shaderSignedZeroInfNanPreserveFloat16 : aliased VkBool32;  -- vulkan_core.h:5288
      shaderSignedZeroInfNanPreserveFloat32 : aliased VkBool32;  -- vulkan_core.h:5289
      shaderSignedZeroInfNanPreserveFloat64 : aliased VkBool32;  -- vulkan_core.h:5290
      shaderDenormPreserveFloat16 : aliased VkBool32;  -- vulkan_core.h:5291
      shaderDenormPreserveFloat32 : aliased VkBool32;  -- vulkan_core.h:5292
      shaderDenormPreserveFloat64 : aliased VkBool32;  -- vulkan_core.h:5293
      shaderDenormFlushToZeroFloat16 : aliased VkBool32;  -- vulkan_core.h:5294
      shaderDenormFlushToZeroFloat32 : aliased VkBool32;  -- vulkan_core.h:5295
      shaderDenormFlushToZeroFloat64 : aliased VkBool32;  -- vulkan_core.h:5296
      shaderRoundingModeRTEFloat16 : aliased VkBool32;  -- vulkan_core.h:5297
      shaderRoundingModeRTEFloat32 : aliased VkBool32;  -- vulkan_core.h:5298
      shaderRoundingModeRTEFloat64 : aliased VkBool32;  -- vulkan_core.h:5299
      shaderRoundingModeRTZFloat16 : aliased VkBool32;  -- vulkan_core.h:5300
      shaderRoundingModeRTZFloat32 : aliased VkBool32;  -- vulkan_core.h:5301
      shaderRoundingModeRTZFloat64 : aliased VkBool32;  -- vulkan_core.h:5302
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5283

   type VkDescriptorSetLayoutBindingFlagsCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5306
      pNext : System.Address;  -- vulkan_core.h:5307
      bindingCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5308
      pBindingFlags : access VkDescriptorBindingFlags;  -- vulkan_core.h:5309
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5305

   type VkPhysicalDeviceDescriptorIndexingFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5313
      pNext : System.Address;  -- vulkan_core.h:5314
      shaderInputAttachmentArrayDynamicIndexing : aliased VkBool32;  -- vulkan_core.h:5315
      shaderUniformTexelBufferArrayDynamicIndexing : aliased VkBool32;  -- vulkan_core.h:5316
      shaderStorageTexelBufferArrayDynamicIndexing : aliased VkBool32;  -- vulkan_core.h:5317
      shaderUniformBufferArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5318
      shaderSampledImageArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5319
      shaderStorageBufferArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5320
      shaderStorageImageArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5321
      shaderInputAttachmentArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5322
      shaderUniformTexelBufferArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5323
      shaderStorageTexelBufferArrayNonUniformIndexing : aliased VkBool32;  -- vulkan_core.h:5324
      descriptorBindingUniformBufferUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5325
      descriptorBindingSampledImageUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5326
      descriptorBindingStorageImageUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5327
      descriptorBindingStorageBufferUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5328
      descriptorBindingUniformTexelBufferUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5329
      descriptorBindingStorageTexelBufferUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5330
      descriptorBindingUpdateUnusedWhilePending : aliased VkBool32;  -- vulkan_core.h:5331
      descriptorBindingPartiallyBound : aliased VkBool32;  -- vulkan_core.h:5332
      descriptorBindingVariableDescriptorCount : aliased VkBool32;  -- vulkan_core.h:5333
      runtimeDescriptorArray : aliased VkBool32;  -- vulkan_core.h:5334
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5312

   type VkPhysicalDeviceDescriptorIndexingProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5338
      pNext : System.Address;  -- vulkan_core.h:5339
      maxUpdateAfterBindDescriptorsInAllPools : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5340
      shaderUniformBufferArrayNonUniformIndexingNative : aliased VkBool32;  -- vulkan_core.h:5341
      shaderSampledImageArrayNonUniformIndexingNative : aliased VkBool32;  -- vulkan_core.h:5342
      shaderStorageBufferArrayNonUniformIndexingNative : aliased VkBool32;  -- vulkan_core.h:5343
      shaderStorageImageArrayNonUniformIndexingNative : aliased VkBool32;  -- vulkan_core.h:5344
      shaderInputAttachmentArrayNonUniformIndexingNative : aliased VkBool32;  -- vulkan_core.h:5345
      robustBufferAccessUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:5346
      quadDivergentImplicitLod : aliased VkBool32;  -- vulkan_core.h:5347
      maxPerStageDescriptorUpdateAfterBindSamplers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5348
      maxPerStageDescriptorUpdateAfterBindUniformBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5349
      maxPerStageDescriptorUpdateAfterBindStorageBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5350
      maxPerStageDescriptorUpdateAfterBindSampledImages : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5351
      maxPerStageDescriptorUpdateAfterBindStorageImages : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5352
      maxPerStageDescriptorUpdateAfterBindInputAttachments : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5353
      maxPerStageUpdateAfterBindResources : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5354
      maxDescriptorSetUpdateAfterBindSamplers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5355
      maxDescriptorSetUpdateAfterBindUniformBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5356
      maxDescriptorSetUpdateAfterBindUniformBuffersDynamic : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5357
      maxDescriptorSetUpdateAfterBindStorageBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5358
      maxDescriptorSetUpdateAfterBindStorageBuffersDynamic : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5359
      maxDescriptorSetUpdateAfterBindSampledImages : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5360
      maxDescriptorSetUpdateAfterBindStorageImages : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5361
      maxDescriptorSetUpdateAfterBindInputAttachments : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5362
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5337

   type VkDescriptorSetVariableDescriptorCountAllocateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5366
      pNext : System.Address;  -- vulkan_core.h:5367
      descriptorSetCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5368
      pDescriptorCounts : access Interfaces.C.unsigned_short;  -- vulkan_core.h:5369
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5365

   type VkDescriptorSetVariableDescriptorCountLayoutSupport is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5373
      pNext : System.Address;  -- vulkan_core.h:5374
      maxVariableDescriptorCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5375
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5372

   type VkSubpassDescriptionDepthStencilResolve is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5379
      pNext : System.Address;  -- vulkan_core.h:5380
      depthResolveMode : aliased VkResolveModeFlagBits;  -- vulkan_core.h:5381
      stencilResolveMode : aliased VkResolveModeFlagBits;  -- vulkan_core.h:5382
      pDepthStencilResolveAttachment : access constant VkAttachmentReference2;  -- vulkan_core.h:5383
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5378

   type VkPhysicalDeviceDepthStencilResolveProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5387
      pNext : System.Address;  -- vulkan_core.h:5388
      supportedDepthResolveModes : aliased VkResolveModeFlags;  -- vulkan_core.h:5389
      supportedStencilResolveModes : aliased VkResolveModeFlags;  -- vulkan_core.h:5390
      independentResolveNone : aliased VkBool32;  -- vulkan_core.h:5391
      independentResolve : aliased VkBool32;  -- vulkan_core.h:5392
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5386

   type VkPhysicalDeviceScalarBlockLayoutFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5396
      pNext : System.Address;  -- vulkan_core.h:5397
      scalarBlockLayout : aliased VkBool32;  -- vulkan_core.h:5398
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5395

   type VkImageStencilUsageCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5402
      pNext : System.Address;  -- vulkan_core.h:5403
      stencilUsage : aliased VkImageUsageFlags;  -- vulkan_core.h:5404
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5401

   type VkSamplerReductionModeCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5408
      pNext : System.Address;  -- vulkan_core.h:5409
      reductionMode : aliased VkSamplerReductionMode;  -- vulkan_core.h:5410
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5407

   type VkPhysicalDeviceSamplerFilterMinmaxProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5414
      pNext : System.Address;  -- vulkan_core.h:5415
      filterMinmaxSingleComponentFormats : aliased VkBool32;  -- vulkan_core.h:5416
      filterMinmaxImageComponentMapping : aliased VkBool32;  -- vulkan_core.h:5417
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5413

   type VkPhysicalDeviceVulkanMemoryModelFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5421
      pNext : System.Address;  -- vulkan_core.h:5422
      vulkanMemoryModel : aliased VkBool32;  -- vulkan_core.h:5423
      vulkanMemoryModelDeviceScope : aliased VkBool32;  -- vulkan_core.h:5424
      vulkanMemoryModelAvailabilityVisibilityChains : aliased VkBool32;  -- vulkan_core.h:5425
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5420

   type VkPhysicalDeviceImagelessFramebufferFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5429
      pNext : System.Address;  -- vulkan_core.h:5430
      imagelessFramebuffer : aliased VkBool32;  -- vulkan_core.h:5431
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5428

   type VkFramebufferAttachmentImageInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5435
      pNext : System.Address;  -- vulkan_core.h:5436
      flags : aliased VkImageCreateFlags;  -- vulkan_core.h:5437
      usage : aliased VkImageUsageFlags;  -- vulkan_core.h:5438
      width : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5439
      height : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5440
      layerCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5441
      viewFormatCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5442
      pViewFormats : access VkFormat;  -- vulkan_core.h:5443
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5434

   type VkFramebufferAttachmentsCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5447
      pNext : System.Address;  -- vulkan_core.h:5448
      attachmentImageInfoCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5449
      pAttachmentImageInfos : access constant VkFramebufferAttachmentImageInfo;  -- vulkan_core.h:5450
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5446

   type VkRenderPassAttachmentBeginInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5454
      pNext : System.Address;  -- vulkan_core.h:5455
      attachmentCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5456
      pAttachments : System.Address;  -- vulkan_core.h:5457
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5453

   type VkPhysicalDeviceUniformBufferStandardLayoutFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5461
      pNext : System.Address;  -- vulkan_core.h:5462
      uniformBufferStandardLayout : aliased VkBool32;  -- vulkan_core.h:5463
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5460

   type VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5467
      pNext : System.Address;  -- vulkan_core.h:5468
      shaderSubgroupExtendedTypes : aliased VkBool32;  -- vulkan_core.h:5469
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5466

   type VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5473
      pNext : System.Address;  -- vulkan_core.h:5474
      separateDepthStencilLayouts : aliased VkBool32;  -- vulkan_core.h:5475
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5472

   type VkAttachmentReferenceStencilLayout is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5479
      pNext : System.Address;  -- vulkan_core.h:5480
      stencilLayout : aliased VkImageLayout;  -- vulkan_core.h:5481
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5478

   type VkAttachmentDescriptionStencilLayout is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5485
      pNext : System.Address;  -- vulkan_core.h:5486
      stencilInitialLayout : aliased VkImageLayout;  -- vulkan_core.h:5487
      stencilFinalLayout : aliased VkImageLayout;  -- vulkan_core.h:5488
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5484

   type VkPhysicalDeviceHostQueryResetFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5492
      pNext : System.Address;  -- vulkan_core.h:5493
      hostQueryReset : aliased VkBool32;  -- vulkan_core.h:5494
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5491

   type VkPhysicalDeviceTimelineSemaphoreFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5498
      pNext : System.Address;  -- vulkan_core.h:5499
      timelineSemaphore : aliased VkBool32;  -- vulkan_core.h:5500
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5497

   type VkPhysicalDeviceTimelineSemaphoreProperties is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5504
      pNext : System.Address;  -- vulkan_core.h:5505
      maxTimelineSemaphoreValueDifference : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:5506
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5503

   type VkSemaphoreTypeCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5510
      pNext : System.Address;  -- vulkan_core.h:5511
      semaphoreType : aliased VkSemaphoreType;  -- vulkan_core.h:5512
      initialValue : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:5513
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5509

   type VkTimelineSemaphoreSubmitInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5517
      pNext : System.Address;  -- vulkan_core.h:5518
      waitSemaphoreValueCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5519
      pWaitSemaphoreValues : access Interfaces.C.unsigned_long;  -- vulkan_core.h:5520
      signalSemaphoreValueCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5521
      pSignalSemaphoreValues : access Interfaces.C.unsigned_long;  -- vulkan_core.h:5522
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5516

   type VkSemaphoreWaitInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5526
      pNext : System.Address;  -- vulkan_core.h:5527
      flags : aliased VkSemaphoreWaitFlags;  -- vulkan_core.h:5528
      semaphoreCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5529
      pSemaphores : System.Address;  -- vulkan_core.h:5530
      pValues : access Interfaces.C.unsigned_long;  -- vulkan_core.h:5531
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5525

   type VkSemaphoreSignalInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5535
      pNext : System.Address;  -- vulkan_core.h:5536
      semaphore : VkSemaphore;  -- vulkan_core.h:5537
      value : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:5538
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5534

   type VkPhysicalDeviceBufferDeviceAddressFeatures is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5542
      pNext : System.Address;  -- vulkan_core.h:5543
      bufferDeviceAddress : aliased VkBool32;  -- vulkan_core.h:5544
      bufferDeviceAddressCaptureReplay : aliased VkBool32;  -- vulkan_core.h:5545
      bufferDeviceAddressMultiDevice : aliased VkBool32;  -- vulkan_core.h:5546
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5541

   type VkBufferDeviceAddressInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5550
      pNext : System.Address;  -- vulkan_core.h:5551
      buffer : VkBuffer;  -- vulkan_core.h:5552
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5549

   type VkBufferOpaqueCaptureAddressCreateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5556
      pNext : System.Address;  -- vulkan_core.h:5557
      opaqueCaptureAddress : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:5558
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5555

   type VkMemoryOpaqueCaptureAddressAllocateInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5562
      pNext : System.Address;  -- vulkan_core.h:5563
      opaqueCaptureAddress : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:5564
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5561

   type VkDeviceMemoryOpaqueCaptureAddressInfo is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5568
      pNext : System.Address;  -- vulkan_core.h:5569
      memory : VkDeviceMemory;  -- vulkan_core.h:5570
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5567

   type PFN_vkCmdDrawIndirectCount is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : VkBuffer;
         arg5 : VkDeviceSize;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:5573

   type PFN_vkCmdDrawIndexedIndirectCount is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : VkBuffer;
         arg5 : VkDeviceSize;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:5574

   type PFN_vkCreateRenderPass2 is access function
        (arg1 : VkDevice;
         arg2 : access constant VkRenderPassCreateInfo2;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:5575

   type PFN_vkCmdBeginRenderPass2 is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : access constant VkRenderPassBeginInfo;
         arg3 : access constant VkSubpassBeginInfo)
   with Convention => C;  -- vulkan_core.h:5576

   type PFN_vkCmdNextSubpass2 is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : access constant VkSubpassBeginInfo;
         arg3 : access constant VkSubpassEndInfo)
   with Convention => C;  -- vulkan_core.h:5577

   type PFN_vkCmdEndRenderPass2 is access procedure (arg1 : VkCommandBuffer; arg2 : access constant VkSubpassEndInfo)
   with Convention => C;  -- vulkan_core.h:5578

   type PFN_vkResetQueryPool is access procedure
        (arg1 : VkDevice;
         arg2 : VkQueryPool;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:5579

   type PFN_vkGetSemaphoreCounterValue is access function
        (arg1 : VkDevice;
         arg2 : VkSemaphore;
         arg3 : access Interfaces.C.unsigned_long) return VkResult
   with Convention => C;  -- vulkan_core.h:5580

   type PFN_vkWaitSemaphores is access function
        (arg1 : VkDevice;
         arg2 : access constant VkSemaphoreWaitInfo;
         arg3 : Interfaces.C.unsigned_long) return VkResult
   with Convention => C;  -- vulkan_core.h:5581

   type PFN_vkSignalSemaphore is access function (arg1 : VkDevice; arg2 : access constant VkSemaphoreSignalInfo) return VkResult
   with Convention => C;  -- vulkan_core.h:5582

   type PFN_vkGetBufferDeviceAddress is access function (arg1 : VkDevice; arg2 : access constant VkBufferDeviceAddressInfo) return VkDeviceAddress
   with Convention => C;  -- vulkan_core.h:5583

   type PFN_vkGetBufferOpaqueCaptureAddress is access function (arg1 : VkDevice; arg2 : access constant VkBufferDeviceAddressInfo) return Interfaces.C.unsigned_long
   with Convention => C;  -- vulkan_core.h:5584

   type PFN_vkGetDeviceMemoryOpaqueCaptureAddress is access function (arg1 : VkDevice; arg2 : access constant VkDeviceMemoryOpaqueCaptureAddressInfo) return Interfaces.C.unsigned_long
   with Convention => C;  -- vulkan_core.h:5585

   procedure vkCmdDrawIndirectCount
     (commandBuffer : VkCommandBuffer;
      buffer : VkBuffer;
      offset : VkDeviceSize;
      countBuffer : VkBuffer;
      countBufferOffset : VkDeviceSize;
      maxDrawCount : Interfaces.C.unsigned_short;
      stride : Interfaces.C.unsigned_short)  -- vulkan_core.h:5588
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawIndirectCount";

   procedure vkCmdDrawIndexedIndirectCount
     (commandBuffer : VkCommandBuffer;
      buffer : VkBuffer;
      offset : VkDeviceSize;
      countBuffer : VkBuffer;
      countBufferOffset : VkDeviceSize;
      maxDrawCount : Interfaces.C.unsigned_short;
      stride : Interfaces.C.unsigned_short)  -- vulkan_core.h:5597
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawIndexedIndirectCount";

   function vkCreateRenderPass2
     (device : VkDevice;
      pCreateInfo : access constant VkRenderPassCreateInfo2;
      pAllocator : access constant VkAllocationCallbacks;
      pRenderPass : System.Address) return VkResult  -- vulkan_core.h:5606
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateRenderPass2";

   procedure vkCmdBeginRenderPass2
     (commandBuffer : VkCommandBuffer;
      pRenderPassBegin : access constant VkRenderPassBeginInfo;
      pSubpassBeginInfo : access constant VkSubpassBeginInfo)  -- vulkan_core.h:5612
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBeginRenderPass2";

   procedure vkCmdNextSubpass2
     (commandBuffer : VkCommandBuffer;
      pSubpassBeginInfo : access constant VkSubpassBeginInfo;
      pSubpassEndInfo : access constant VkSubpassEndInfo)  -- vulkan_core.h:5617
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdNextSubpass2";

   procedure vkCmdEndRenderPass2 (commandBuffer : VkCommandBuffer; pSubpassEndInfo : access constant VkSubpassEndInfo)  -- vulkan_core.h:5622
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdEndRenderPass2";

   procedure vkResetQueryPool
     (device : VkDevice;
      queryPool : VkQueryPool;
      firstQuery : Interfaces.C.unsigned_short;
      queryCount : Interfaces.C.unsigned_short)  -- vulkan_core.h:5626
   with Import => True, 
        Convention => C, 
        External_Name => "vkResetQueryPool";

   function vkGetSemaphoreCounterValue
     (device : VkDevice;
      semaphore : VkSemaphore;
      pValue : access Interfaces.C.unsigned_long) return VkResult  -- vulkan_core.h:5632
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetSemaphoreCounterValue";

   function vkWaitSemaphores
     (device : VkDevice;
      pWaitInfo : access constant VkSemaphoreWaitInfo;
      timeout : Interfaces.C.unsigned_long) return VkResult  -- vulkan_core.h:5637
   with Import => True, 
        Convention => C, 
        External_Name => "vkWaitSemaphores";

   function vkSignalSemaphore (device : VkDevice; pSignalInfo : access constant VkSemaphoreSignalInfo) return VkResult  -- vulkan_core.h:5642
   with Import => True, 
        Convention => C, 
        External_Name => "vkSignalSemaphore";

   function vkGetBufferDeviceAddress (device : VkDevice; pInfo : access constant VkBufferDeviceAddressInfo) return VkDeviceAddress  -- vulkan_core.h:5646
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetBufferDeviceAddress";

   function vkGetBufferOpaqueCaptureAddress (device : VkDevice; pInfo : access constant VkBufferDeviceAddressInfo) return Interfaces.C.unsigned_long  -- vulkan_core.h:5650
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetBufferOpaqueCaptureAddress";

   function vkGetDeviceMemoryOpaqueCaptureAddress (device : VkDevice; pInfo : access constant VkDeviceMemoryOpaqueCaptureAddressInfo) return Interfaces.C.unsigned_long  -- vulkan_core.h:5654
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDeviceMemoryOpaqueCaptureAddress";

   type VkSurfaceKHR_T is null record;   -- incomplete struct

   type VkSurfaceKHR is access all VkSurfaceKHR_T;  -- vulkan_core.h:5661

   subtype VkColorSpaceKHR is unsigned;
   VK_COLOR_SPACE_SRGB_NONLINEAR_KHR : constant unsigned := 0;
   VK_COLOR_SPACE_DISPLAY_P3_NONLINEAR_EXT : constant unsigned := 1000104001;
   VK_COLOR_SPACE_EXTENDED_SRGB_LINEAR_EXT : constant unsigned := 1000104002;
   VK_COLOR_SPACE_DISPLAY_P3_LINEAR_EXT : constant unsigned := 1000104003;
   VK_COLOR_SPACE_DCI_P3_NONLINEAR_EXT : constant unsigned := 1000104004;
   VK_COLOR_SPACE_BT709_LINEAR_EXT : constant unsigned := 1000104005;
   VK_COLOR_SPACE_BT709_NONLINEAR_EXT : constant unsigned := 1000104006;
   VK_COLOR_SPACE_BT2020_LINEAR_EXT : constant unsigned := 1000104007;
   VK_COLOR_SPACE_HDR10_ST2084_EXT : constant unsigned := 1000104008;
   VK_COLOR_SPACE_DOLBYVISION_EXT : constant unsigned := 1000104009;
   VK_COLOR_SPACE_HDR10_HLG_EXT : constant unsigned := 1000104010;
   VK_COLOR_SPACE_ADOBERGB_LINEAR_EXT : constant unsigned := 1000104011;
   VK_COLOR_SPACE_ADOBERGB_NONLINEAR_EXT : constant unsigned := 1000104012;
   VK_COLOR_SPACE_PASS_THROUGH_EXT : constant unsigned := 1000104013;
   VK_COLOR_SPACE_EXTENDED_SRGB_NONLINEAR_EXT : constant unsigned := 1000104014;
   VK_COLOR_SPACE_DISPLAY_NATIVE_AMD : constant unsigned := 1000213000;
   VK_COLORSPACE_SRGB_NONLINEAR_KHR : constant unsigned := 0;
   VK_COLOR_SPACE_DCI_P3_LINEAR_EXT : constant unsigned := 1000104003;
   VK_COLOR_SPACE_BEGIN_RANGE_KHR : constant unsigned := 0;
   VK_COLOR_SPACE_END_RANGE_KHR : constant unsigned := 0;
   VK_COLOR_SPACE_RANGE_SIZE_KHR : constant unsigned := 1;
   VK_COLOR_SPACE_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:5665

   subtype VkPresentModeKHR is unsigned;
   VK_PRESENT_MODE_IMMEDIATE_KHR : constant unsigned := 0;
   VK_PRESENT_MODE_MAILBOX_KHR : constant unsigned := 1;
   VK_PRESENT_MODE_FIFO_KHR : constant unsigned := 2;
   VK_PRESENT_MODE_FIFO_RELAXED_KHR : constant unsigned := 3;
   VK_PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR : constant unsigned := 1000111000;
   VK_PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR : constant unsigned := 1000111001;
   VK_PRESENT_MODE_BEGIN_RANGE_KHR : constant unsigned := 0;
   VK_PRESENT_MODE_END_RANGE_KHR : constant unsigned := 3;
   VK_PRESENT_MODE_RANGE_SIZE_KHR : constant unsigned := 4;
   VK_PRESENT_MODE_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:5690

   subtype VkSurfaceTransformFlagBitsKHR is unsigned;
   VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR : constant unsigned := 1;
   VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR : constant unsigned := 2;
   VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR : constant unsigned := 4;
   VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR : constant unsigned := 8;
   VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR : constant unsigned := 16;
   VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR : constant unsigned := 32;
   VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR : constant unsigned := 64;
   VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR : constant unsigned := 128;
   VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR : constant unsigned := 256;
   VK_SURFACE_TRANSFORM_FLAG_BITS_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:5703

   subtype VkSurfaceTransformFlagsKHR is VkFlags;  -- vulkan_core.h:5715

   subtype VkCompositeAlphaFlagBitsKHR is unsigned;
   VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR : constant unsigned := 1;
   VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR : constant unsigned := 2;
   VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR : constant unsigned := 4;
   VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR : constant unsigned := 8;
   VK_COMPOSITE_ALPHA_FLAG_BITS_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:5717

   subtype VkCompositeAlphaFlagsKHR is VkFlags;  -- vulkan_core.h:5724

   type VkSurfaceCapabilitiesKHR is record
      minImageCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5726
      maxImageCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5727
      currentExtent : aliased VkExtent2D;  -- vulkan_core.h:5728
      minImageExtent : aliased VkExtent2D;  -- vulkan_core.h:5729
      maxImageExtent : aliased VkExtent2D;  -- vulkan_core.h:5730
      maxImageArrayLayers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5731
      supportedTransforms : aliased VkSurfaceTransformFlagsKHR;  -- vulkan_core.h:5732
      currentTransform : aliased VkSurfaceTransformFlagBitsKHR;  -- vulkan_core.h:5733
      supportedCompositeAlpha : aliased VkCompositeAlphaFlagsKHR;  -- vulkan_core.h:5734
      supportedUsageFlags : aliased VkImageUsageFlags;  -- vulkan_core.h:5735
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5725

   type VkSurfaceFormatKHR is record
      format : aliased VkFormat;  -- vulkan_core.h:5739
      colorSpace : aliased VkColorSpaceKHR;  -- vulkan_core.h:5740
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5738

   type PFN_vkDestroySurfaceKHR is access procedure
        (arg1 : VkInstance;
         arg2 : VkSurfaceKHR;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:5743

   type PFN_vkGetPhysicalDeviceSurfaceSupportKHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : VkSurfaceKHR;
         arg4 : access VkBool32) return VkResult
   with Convention => C;  -- vulkan_core.h:5744

   type PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : VkSurfaceKHR;
         arg3 : access VkSurfaceCapabilitiesKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:5745

   type PFN_vkGetPhysicalDeviceSurfaceFormatsKHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : VkSurfaceKHR;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkSurfaceFormatKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:5746

   type PFN_vkGetPhysicalDeviceSurfacePresentModesKHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : VkSurfaceKHR;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkPresentModeKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:5747

   procedure vkDestroySurfaceKHR
     (instance : VkInstance;
      surface : VkSurfaceKHR;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:5750
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroySurfaceKHR";

   function vkGetPhysicalDeviceSurfaceSupportKHR
     (physicalDevice : VkPhysicalDevice;
      queueFamilyIndex : Interfaces.C.unsigned_short;
      surface : VkSurfaceKHR;
      pSupported : access VkBool32) return VkResult  -- vulkan_core.h:5755
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceSurfaceSupportKHR";

   function vkGetPhysicalDeviceSurfaceCapabilitiesKHR
     (physicalDevice : VkPhysicalDevice;
      surface : VkSurfaceKHR;
      pSurfaceCapabilities : access VkSurfaceCapabilitiesKHR) return VkResult  -- vulkan_core.h:5761
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceSurfaceCapabilitiesKHR";

   function vkGetPhysicalDeviceSurfaceFormatsKHR
     (physicalDevice : VkPhysicalDevice;
      surface : VkSurfaceKHR;
      pSurfaceFormatCount : access Interfaces.C.unsigned_short;
      pSurfaceFormats : access VkSurfaceFormatKHR) return VkResult  -- vulkan_core.h:5766
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceSurfaceFormatsKHR";

   function vkGetPhysicalDeviceSurfacePresentModesKHR
     (physicalDevice : VkPhysicalDevice;
      surface : VkSurfaceKHR;
      pPresentModeCount : access Interfaces.C.unsigned_short;
      pPresentModes : access VkPresentModeKHR) return VkResult  -- vulkan_core.h:5772
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceSurfacePresentModesKHR";

   type VkSwapchainKHR_T is null record;   -- incomplete struct

   type VkSwapchainKHR is access all VkSwapchainKHR_T;  -- vulkan_core.h:5781

   subtype VkSwapchainCreateFlagBitsKHR is unsigned;
   VK_SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR : constant unsigned := 1;
   VK_SWAPCHAIN_CREATE_PROTECTED_BIT_KHR : constant unsigned := 2;
   VK_SWAPCHAIN_CREATE_MUTABLE_FORMAT_BIT_KHR : constant unsigned := 4;
   VK_SWAPCHAIN_CREATE_FLAG_BITS_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:5785

   subtype VkSwapchainCreateFlagsKHR is VkFlags;  -- vulkan_core.h:5791

   subtype VkDeviceGroupPresentModeFlagBitsKHR is unsigned;
   VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR : constant unsigned := 1;
   VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR : constant unsigned := 2;
   VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR : constant unsigned := 4;
   VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR : constant unsigned := 8;
   VK_DEVICE_GROUP_PRESENT_MODE_FLAG_BITS_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:5793

   subtype VkDeviceGroupPresentModeFlagsKHR is VkFlags;  -- vulkan_core.h:5800

   type VkSwapchainCreateInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5802
      pNext : System.Address;  -- vulkan_core.h:5803
      flags : aliased VkSwapchainCreateFlagsKHR;  -- vulkan_core.h:5804
      surface : VkSurfaceKHR;  -- vulkan_core.h:5805
      minImageCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5806
      imageFormat : aliased VkFormat;  -- vulkan_core.h:5807
      imageColorSpace : aliased VkColorSpaceKHR;  -- vulkan_core.h:5808
      imageExtent : aliased VkExtent2D;  -- vulkan_core.h:5809
      imageArrayLayers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5810
      imageUsage : aliased VkImageUsageFlags;  -- vulkan_core.h:5811
      imageSharingMode : aliased VkSharingMode;  -- vulkan_core.h:5812
      queueFamilyIndexCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5813
      pQueueFamilyIndices : access Interfaces.C.unsigned_short;  -- vulkan_core.h:5814
      preTransform : aliased VkSurfaceTransformFlagBitsKHR;  -- vulkan_core.h:5815
      compositeAlpha : aliased VkCompositeAlphaFlagBitsKHR;  -- vulkan_core.h:5816
      presentMode : aliased VkPresentModeKHR;  -- vulkan_core.h:5817
      clipped : aliased VkBool32;  -- vulkan_core.h:5818
      oldSwapchain : VkSwapchainKHR;  -- vulkan_core.h:5819
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5801

   type VkPresentInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5823
      pNext : System.Address;  -- vulkan_core.h:5824
      waitSemaphoreCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5825
      pWaitSemaphores : System.Address;  -- vulkan_core.h:5826
      swapchainCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5827
      pSwapchains : System.Address;  -- vulkan_core.h:5828
      pImageIndices : access Interfaces.C.unsigned_short;  -- vulkan_core.h:5829
      pResults : access VkResult;  -- vulkan_core.h:5830
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5822

   type VkImageSwapchainCreateInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5834
      pNext : System.Address;  -- vulkan_core.h:5835
      swapchain : VkSwapchainKHR;  -- vulkan_core.h:5836
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5833

   type VkBindImageMemorySwapchainInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5840
      pNext : System.Address;  -- vulkan_core.h:5841
      swapchain : VkSwapchainKHR;  -- vulkan_core.h:5842
      imageIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5843
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5839

   type VkAcquireNextImageInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5847
      pNext : System.Address;  -- vulkan_core.h:5848
      swapchain : VkSwapchainKHR;  -- vulkan_core.h:5849
      timeout : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:5850
      semaphore : VkSemaphore;  -- vulkan_core.h:5851
      fence : VkFence;  -- vulkan_core.h:5852
      deviceMask : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5853
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5846

   type VkDeviceGroupPresentCapabilitiesKHR_array3688 is array (0 .. 31) of aliased Interfaces.C.unsigned_short;
   type VkDeviceGroupPresentCapabilitiesKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5857
      pNext : System.Address;  -- vulkan_core.h:5858
      presentMask : aliased VkDeviceGroupPresentCapabilitiesKHR_array3688;  -- vulkan_core.h:5859
      modes : aliased VkDeviceGroupPresentModeFlagsKHR;  -- vulkan_core.h:5860
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5856

   type VkDeviceGroupPresentInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5864
      pNext : System.Address;  -- vulkan_core.h:5865
      swapchainCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5866
      pDeviceMasks : access Interfaces.C.unsigned_short;  -- vulkan_core.h:5867
      mode : aliased VkDeviceGroupPresentModeFlagBitsKHR;  -- vulkan_core.h:5868
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5863

   type VkDeviceGroupSwapchainCreateInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5872
      pNext : System.Address;  -- vulkan_core.h:5873
      modes : aliased VkDeviceGroupPresentModeFlagsKHR;  -- vulkan_core.h:5874
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5871

   type PFN_vkCreateSwapchainKHR is access function
        (arg1 : VkDevice;
         arg2 : access constant VkSwapchainCreateInfoKHR;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:5877

   type PFN_vkDestroySwapchainKHR is access procedure
        (arg1 : VkDevice;
         arg2 : VkSwapchainKHR;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:5878

   type PFN_vkGetSwapchainImagesKHR is access function
        (arg1 : VkDevice;
         arg2 : VkSwapchainKHR;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:5879

   type PFN_vkAcquireNextImageKHR is access function
        (arg1 : VkDevice;
         arg2 : VkSwapchainKHR;
         arg3 : Interfaces.C.unsigned_long;
         arg4 : VkSemaphore;
         arg5 : VkFence;
         arg6 : access Interfaces.C.unsigned_short) return VkResult
   with Convention => C;  -- vulkan_core.h:5880

   type PFN_vkQueuePresentKHR is access function (arg1 : VkQueue; arg2 : access constant VkPresentInfoKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:5881

   type PFN_vkGetDeviceGroupPresentCapabilitiesKHR is access function (arg1 : VkDevice; arg2 : access VkDeviceGroupPresentCapabilitiesKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:5882

   type PFN_vkGetDeviceGroupSurfacePresentModesKHR is access function
        (arg1 : VkDevice;
         arg2 : VkSurfaceKHR;
         arg3 : access VkDeviceGroupPresentModeFlagsKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:5883

   type PFN_vkGetPhysicalDevicePresentRectanglesKHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : VkSurfaceKHR;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkRect2D) return VkResult
   with Convention => C;  -- vulkan_core.h:5884

   type PFN_vkAcquireNextImage2KHR is access function
        (arg1 : VkDevice;
         arg2 : access constant VkAcquireNextImageInfoKHR;
         arg3 : access Interfaces.C.unsigned_short) return VkResult
   with Convention => C;  -- vulkan_core.h:5885

   function vkCreateSwapchainKHR
     (device : VkDevice;
      pCreateInfo : access constant VkSwapchainCreateInfoKHR;
      pAllocator : access constant VkAllocationCallbacks;
      pSwapchain : System.Address) return VkResult  -- vulkan_core.h:5888
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateSwapchainKHR";

   procedure vkDestroySwapchainKHR
     (device : VkDevice;
      swapchain : VkSwapchainKHR;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:5894
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroySwapchainKHR";

   function vkGetSwapchainImagesKHR
     (device : VkDevice;
      swapchain : VkSwapchainKHR;
      pSwapchainImageCount : access Interfaces.C.unsigned_short;
      pSwapchainImages : System.Address) return VkResult  -- vulkan_core.h:5899
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetSwapchainImagesKHR";

   function vkAcquireNextImageKHR
     (device : VkDevice;
      swapchain : VkSwapchainKHR;
      timeout : Interfaces.C.unsigned_long;
      semaphore : VkSemaphore;
      fence : VkFence;
      pImageIndex : access Interfaces.C.unsigned_short) return VkResult  -- vulkan_core.h:5905
   with Import => True, 
        Convention => C, 
        External_Name => "vkAcquireNextImageKHR";

   function vkQueuePresentKHR (queue : VkQueue; pPresentInfo : access constant VkPresentInfoKHR) return VkResult  -- vulkan_core.h:5913
   with Import => True, 
        Convention => C, 
        External_Name => "vkQueuePresentKHR";

   function vkGetDeviceGroupPresentCapabilitiesKHR (device : VkDevice; pDeviceGroupPresentCapabilities : access VkDeviceGroupPresentCapabilitiesKHR) return VkResult  -- vulkan_core.h:5917
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDeviceGroupPresentCapabilitiesKHR";

   function vkGetDeviceGroupSurfacePresentModesKHR
     (device : VkDevice;
      surface : VkSurfaceKHR;
      pModes : access VkDeviceGroupPresentModeFlagsKHR) return VkResult  -- vulkan_core.h:5921
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDeviceGroupSurfacePresentModesKHR";

   function vkGetPhysicalDevicePresentRectanglesKHR
     (physicalDevice : VkPhysicalDevice;
      surface : VkSurfaceKHR;
      pRectCount : access Interfaces.C.unsigned_short;
      pRects : access VkRect2D) return VkResult  -- vulkan_core.h:5926
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDevicePresentRectanglesKHR";

   function vkAcquireNextImage2KHR
     (device : VkDevice;
      pAcquireInfo : access constant VkAcquireNextImageInfoKHR;
      pImageIndex : access Interfaces.C.unsigned_short) return VkResult  -- vulkan_core.h:5932
   with Import => True, 
        Convention => C, 
        External_Name => "vkAcquireNextImage2KHR";

   type VkDisplayKHR_T is null record;   -- incomplete struct

   type VkDisplayKHR is access all VkDisplayKHR_T;  -- vulkan_core.h:5940

   type VkDisplayModeKHR_T is null record;   -- incomplete struct

   type VkDisplayModeKHR is access all VkDisplayModeKHR_T;  -- vulkan_core.h:5941

   subtype VkDisplayPlaneAlphaFlagBitsKHR is unsigned;
   VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR : constant unsigned := 1;
   VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR : constant unsigned := 2;
   VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR : constant unsigned := 4;
   VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR : constant unsigned := 8;
   VK_DISPLAY_PLANE_ALPHA_FLAG_BITS_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:5945

   subtype VkDisplayPlaneAlphaFlagsKHR is VkFlags;  -- vulkan_core.h:5952

   subtype VkDisplayModeCreateFlagsKHR is VkFlags;  -- vulkan_core.h:5953

   subtype VkDisplaySurfaceCreateFlagsKHR is VkFlags;  -- vulkan_core.h:5954

   type VkDisplayPropertiesKHR is record
      display : VkDisplayKHR;  -- vulkan_core.h:5956
      displayName : Interfaces.C.Strings.chars_ptr;  -- vulkan_core.h:5957
      physicalDimensions : aliased VkExtent2D;  -- vulkan_core.h:5958
      physicalResolution : aliased VkExtent2D;  -- vulkan_core.h:5959
      supportedTransforms : aliased VkSurfaceTransformFlagsKHR;  -- vulkan_core.h:5960
      planeReorderPossible : aliased VkBool32;  -- vulkan_core.h:5961
      persistentContent : aliased VkBool32;  -- vulkan_core.h:5962
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5955

   type VkDisplayModeParametersKHR is record
      visibleRegion : aliased VkExtent2D;  -- vulkan_core.h:5966
      refreshRate : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5967
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5965

   type VkDisplayModePropertiesKHR is record
      displayMode : VkDisplayModeKHR;  -- vulkan_core.h:5971
      parameters : aliased VkDisplayModeParametersKHR;  -- vulkan_core.h:5972
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5970

   type VkDisplayModeCreateInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:5976
      pNext : System.Address;  -- vulkan_core.h:5977
      flags : aliased VkDisplayModeCreateFlagsKHR;  -- vulkan_core.h:5978
      parameters : aliased VkDisplayModeParametersKHR;  -- vulkan_core.h:5979
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5975

   type VkDisplayPlaneCapabilitiesKHR is record
      supportedAlpha : aliased VkDisplayPlaneAlphaFlagsKHR;  -- vulkan_core.h:5983
      minSrcPosition : aliased VkOffset2D;  -- vulkan_core.h:5984
      maxSrcPosition : aliased VkOffset2D;  -- vulkan_core.h:5985
      minSrcExtent : aliased VkExtent2D;  -- vulkan_core.h:5986
      maxSrcExtent : aliased VkExtent2D;  -- vulkan_core.h:5987
      minDstPosition : aliased VkOffset2D;  -- vulkan_core.h:5988
      maxDstPosition : aliased VkOffset2D;  -- vulkan_core.h:5989
      minDstExtent : aliased VkExtent2D;  -- vulkan_core.h:5990
      maxDstExtent : aliased VkExtent2D;  -- vulkan_core.h:5991
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5982

   type VkDisplayPlanePropertiesKHR is record
      currentDisplay : VkDisplayKHR;  -- vulkan_core.h:5995
      currentStackIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:5996
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5994

   type VkDisplaySurfaceCreateInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6000
      pNext : System.Address;  -- vulkan_core.h:6001
      flags : aliased VkDisplaySurfaceCreateFlagsKHR;  -- vulkan_core.h:6002
      displayMode : VkDisplayModeKHR;  -- vulkan_core.h:6003
      planeIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:6004
      planeStackIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:6005
      transform : aliased VkSurfaceTransformFlagBitsKHR;  -- vulkan_core.h:6006
      globalAlpha : aliased float;  -- vulkan_core.h:6007
      alphaMode : aliased VkDisplayPlaneAlphaFlagBitsKHR;  -- vulkan_core.h:6008
      imageExtent : aliased VkExtent2D;  -- vulkan_core.h:6009
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:5999

   type PFN_vkGetPhysicalDeviceDisplayPropertiesKHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkDisplayPropertiesKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6012

   type PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkDisplayPlanePropertiesKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6013

   type PFN_vkGetDisplayPlaneSupportedDisplaysKHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:6014

   type PFN_vkGetDisplayModePropertiesKHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : VkDisplayKHR;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkDisplayModePropertiesKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6015

   type PFN_vkCreateDisplayModeKHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : VkDisplayKHR;
         arg3 : access constant VkDisplayModeCreateInfoKHR;
         arg4 : access constant VkAllocationCallbacks;
         arg5 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:6016

   type PFN_vkGetDisplayPlaneCapabilitiesKHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : VkDisplayModeKHR;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : access VkDisplayPlaneCapabilitiesKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6017

   type PFN_vkCreateDisplayPlaneSurfaceKHR is access function
        (arg1 : VkInstance;
         arg2 : access constant VkDisplaySurfaceCreateInfoKHR;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:6018

   function vkGetPhysicalDeviceDisplayPropertiesKHR
     (physicalDevice : VkPhysicalDevice;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkDisplayPropertiesKHR) return VkResult  -- vulkan_core.h:6021
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceDisplayPropertiesKHR";

   function vkGetPhysicalDeviceDisplayPlanePropertiesKHR
     (physicalDevice : VkPhysicalDevice;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkDisplayPlanePropertiesKHR) return VkResult  -- vulkan_core.h:6026
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceDisplayPlanePropertiesKHR";

   function vkGetDisplayPlaneSupportedDisplaysKHR
     (physicalDevice : VkPhysicalDevice;
      planeIndex : Interfaces.C.unsigned_short;
      pDisplayCount : access Interfaces.C.unsigned_short;
      pDisplays : System.Address) return VkResult  -- vulkan_core.h:6031
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDisplayPlaneSupportedDisplaysKHR";

   function vkGetDisplayModePropertiesKHR
     (physicalDevice : VkPhysicalDevice;
      display : VkDisplayKHR;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkDisplayModePropertiesKHR) return VkResult  -- vulkan_core.h:6037
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDisplayModePropertiesKHR";

   function vkCreateDisplayModeKHR
     (physicalDevice : VkPhysicalDevice;
      display : VkDisplayKHR;
      pCreateInfo : access constant VkDisplayModeCreateInfoKHR;
      pAllocator : access constant VkAllocationCallbacks;
      pMode : System.Address) return VkResult  -- vulkan_core.h:6043
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateDisplayModeKHR";

   function vkGetDisplayPlaneCapabilitiesKHR
     (physicalDevice : VkPhysicalDevice;
      mode : VkDisplayModeKHR;
      planeIndex : Interfaces.C.unsigned_short;
      pCapabilities : access VkDisplayPlaneCapabilitiesKHR) return VkResult  -- vulkan_core.h:6050
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDisplayPlaneCapabilitiesKHR";

   function vkCreateDisplayPlaneSurfaceKHR
     (instance : VkInstance;
      pCreateInfo : access constant VkDisplaySurfaceCreateInfoKHR;
      pAllocator : access constant VkAllocationCallbacks;
      pSurface : System.Address) return VkResult  -- vulkan_core.h:6056
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateDisplayPlaneSurfaceKHR";

   type VkDisplayPresentInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6068
      pNext : System.Address;  -- vulkan_core.h:6069
      srcRect : aliased VkRect2D;  -- vulkan_core.h:6070
      dstRect : aliased VkRect2D;  -- vulkan_core.h:6071
      persistent : aliased VkBool32;  -- vulkan_core.h:6072
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6067

   type PFN_vkCreateSharedSwapchainsKHR is access function
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkSwapchainCreateInfoKHR;
         arg4 : access constant VkAllocationCallbacks;
         arg5 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:6075

   function vkCreateSharedSwapchainsKHR
     (device : VkDevice;
      swapchainCount : Interfaces.C.unsigned_short;
      pCreateInfos : access constant VkSwapchainCreateInfoKHR;
      pAllocator : access constant VkAllocationCallbacks;
      pSwapchains : System.Address) return VkResult  -- vulkan_core.h:6078
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateSharedSwapchainsKHR";

   subtype VkRenderPassMultiviewCreateInfoKHR is VkRenderPassMultiviewCreateInfo;  -- vulkan_core.h:6095

   subtype VkPhysicalDeviceMultiviewFeaturesKHR is VkPhysicalDeviceMultiviewFeatures;  -- vulkan_core.h:6097

   subtype VkPhysicalDeviceMultiviewPropertiesKHR is VkPhysicalDeviceMultiviewProperties;  -- vulkan_core.h:6099

   subtype VkPhysicalDeviceFeatures2KHR is VkPhysicalDeviceFeatures2;  -- vulkan_core.h:6106

   subtype VkPhysicalDeviceProperties2KHR is VkPhysicalDeviceProperties2;  -- vulkan_core.h:6108

   subtype VkFormatProperties2KHR is VkFormatProperties2;  -- vulkan_core.h:6110

   subtype VkImageFormatProperties2KHR is VkImageFormatProperties2;  -- vulkan_core.h:6112

   subtype VkPhysicalDeviceImageFormatInfo2KHR is VkPhysicalDeviceImageFormatInfo2;  -- vulkan_core.h:6114

   subtype VkQueueFamilyProperties2KHR is VkQueueFamilyProperties2;  -- vulkan_core.h:6116

   subtype VkPhysicalDeviceMemoryProperties2KHR is VkPhysicalDeviceMemoryProperties2;  -- vulkan_core.h:6118

   subtype VkSparseImageFormatProperties2KHR is VkSparseImageFormatProperties2;  -- vulkan_core.h:6120

   subtype VkPhysicalDeviceSparseImageFormatInfo2KHR is VkPhysicalDeviceSparseImageFormatInfo2;  -- vulkan_core.h:6122

   type PFN_vkGetPhysicalDeviceFeatures2KHR is access procedure (arg1 : VkPhysicalDevice; arg2 : access VkPhysicalDeviceFeatures2)
   with Convention => C;  -- vulkan_core.h:6124

   type PFN_vkGetPhysicalDeviceProperties2KHR is access procedure (arg1 : VkPhysicalDevice; arg2 : access VkPhysicalDeviceProperties2)
   with Convention => C;  -- vulkan_core.h:6125

   type PFN_vkGetPhysicalDeviceFormatProperties2KHR is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : VkFormat;
         arg3 : access VkFormatProperties2)
   with Convention => C;  -- vulkan_core.h:6126

   type PFN_vkGetPhysicalDeviceImageFormatProperties2KHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkPhysicalDeviceImageFormatInfo2;
         arg3 : access VkImageFormatProperties2) return VkResult
   with Convention => C;  -- vulkan_core.h:6127

   type PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkQueueFamilyProperties2)
   with Convention => C;  -- vulkan_core.h:6128

   type PFN_vkGetPhysicalDeviceMemoryProperties2KHR is access procedure (arg1 : VkPhysicalDevice; arg2 : access VkPhysicalDeviceMemoryProperties2)
   with Convention => C;  -- vulkan_core.h:6129

   type PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkPhysicalDeviceSparseImageFormatInfo2;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkSparseImageFormatProperties2)
   with Convention => C;  -- vulkan_core.h:6130

   procedure vkGetPhysicalDeviceFeatures2KHR (physicalDevice : VkPhysicalDevice; pFeatures : access VkPhysicalDeviceFeatures2)  -- vulkan_core.h:6133
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceFeatures2KHR";

   procedure vkGetPhysicalDeviceProperties2KHR (physicalDevice : VkPhysicalDevice; pProperties : access VkPhysicalDeviceProperties2)  -- vulkan_core.h:6137
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceProperties2KHR";

   procedure vkGetPhysicalDeviceFormatProperties2KHR
     (physicalDevice : VkPhysicalDevice;
      format : VkFormat;
      pFormatProperties : access VkFormatProperties2)  -- vulkan_core.h:6141
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceFormatProperties2KHR";

   function vkGetPhysicalDeviceImageFormatProperties2KHR
     (physicalDevice : VkPhysicalDevice;
      pImageFormatInfo : access constant VkPhysicalDeviceImageFormatInfo2;
      pImageFormatProperties : access VkImageFormatProperties2) return VkResult  -- vulkan_core.h:6146
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceImageFormatProperties2KHR";

   procedure vkGetPhysicalDeviceQueueFamilyProperties2KHR
     (physicalDevice : VkPhysicalDevice;
      pQueueFamilyPropertyCount : access Interfaces.C.unsigned_short;
      pQueueFamilyProperties : access VkQueueFamilyProperties2)  -- vulkan_core.h:6151
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceQueueFamilyProperties2KHR";

   procedure vkGetPhysicalDeviceMemoryProperties2KHR (physicalDevice : VkPhysicalDevice; pMemoryProperties : access VkPhysicalDeviceMemoryProperties2)  -- vulkan_core.h:6156
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceMemoryProperties2KHR";

   procedure vkGetPhysicalDeviceSparseImageFormatProperties2KHR
     (physicalDevice : VkPhysicalDevice;
      pFormatInfo : access constant VkPhysicalDeviceSparseImageFormatInfo2;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkSparseImageFormatProperties2)  -- vulkan_core.h:6160
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceSparseImageFormatProperties2KHR";

   subtype VkPeerMemoryFeatureFlagsKHR is VkPeerMemoryFeatureFlags;  -- vulkan_core.h:6171

   subtype VkPeerMemoryFeatureFlagBitsKHR is VkPeerMemoryFeatureFlagBits;  -- vulkan_core.h:6173

   subtype VkMemoryAllocateFlagsKHR is VkMemoryAllocateFlags;  -- vulkan_core.h:6175

   subtype VkMemoryAllocateFlagBitsKHR is VkMemoryAllocateFlagBits;  -- vulkan_core.h:6177

   subtype VkMemoryAllocateFlagsInfoKHR is VkMemoryAllocateFlagsInfo;  -- vulkan_core.h:6179

   subtype VkDeviceGroupRenderPassBeginInfoKHR is VkDeviceGroupRenderPassBeginInfo;  -- vulkan_core.h:6181

   subtype VkDeviceGroupCommandBufferBeginInfoKHR is VkDeviceGroupCommandBufferBeginInfo;  -- vulkan_core.h:6183

   subtype VkDeviceGroupSubmitInfoKHR is VkDeviceGroupSubmitInfo;  -- vulkan_core.h:6185

   subtype VkDeviceGroupBindSparseInfoKHR is VkDeviceGroupBindSparseInfo;  -- vulkan_core.h:6187

   subtype VkBindBufferMemoryDeviceGroupInfoKHR is VkBindBufferMemoryDeviceGroupInfo;  -- vulkan_core.h:6189

   subtype VkBindImageMemoryDeviceGroupInfoKHR is VkBindImageMemoryDeviceGroupInfo;  -- vulkan_core.h:6191

   type PFN_vkGetDeviceGroupPeerMemoryFeaturesKHR is access procedure
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : access VkPeerMemoryFeatureFlags)
   with Convention => C;  -- vulkan_core.h:6193

   type PFN_vkCmdSetDeviceMaskKHR is access procedure (arg1 : VkCommandBuffer; arg2 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:6194

   type PFN_vkCmdDispatchBaseKHR is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : Interfaces.C.unsigned_short;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:6195

   procedure vkGetDeviceGroupPeerMemoryFeaturesKHR
     (device : VkDevice;
      heapIndex : Interfaces.C.unsigned_short;
      localDeviceIndex : Interfaces.C.unsigned_short;
      remoteDeviceIndex : Interfaces.C.unsigned_short;
      pPeerMemoryFeatures : access VkPeerMemoryFeatureFlags)  -- vulkan_core.h:6198
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDeviceGroupPeerMemoryFeaturesKHR";

   procedure vkCmdSetDeviceMaskKHR (commandBuffer : VkCommandBuffer; deviceMask : Interfaces.C.unsigned_short)  -- vulkan_core.h:6205
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetDeviceMaskKHR";

   procedure vkCmdDispatchBaseKHR
     (commandBuffer : VkCommandBuffer;
      baseGroupX : Interfaces.C.unsigned_short;
      baseGroupY : Interfaces.C.unsigned_short;
      baseGroupZ : Interfaces.C.unsigned_short;
      groupCountX : Interfaces.C.unsigned_short;
      groupCountY : Interfaces.C.unsigned_short;
      groupCountZ : Interfaces.C.unsigned_short)  -- vulkan_core.h:6209
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDispatchBaseKHR";

   subtype VkCommandPoolTrimFlagsKHR is VkCommandPoolTrimFlags;  -- vulkan_core.h:6228

   type PFN_vkTrimCommandPoolKHR is access procedure
        (arg1 : VkDevice;
         arg2 : VkCommandPool;
         arg3 : VkCommandPoolTrimFlags)
   with Convention => C;  -- vulkan_core.h:6230

   procedure vkTrimCommandPoolKHR
     (device : VkDevice;
      commandPool : VkCommandPool;
      flags : VkCommandPoolTrimFlags)  -- vulkan_core.h:6233
   with Import => True, 
        Convention => C, 
        External_Name => "vkTrimCommandPoolKHR";

   subtype VkPhysicalDeviceGroupPropertiesKHR is VkPhysicalDeviceGroupProperties;  -- vulkan_core.h:6244

   subtype VkDeviceGroupDeviceCreateInfoKHR is VkDeviceGroupDeviceCreateInfo;  -- vulkan_core.h:6246

   type PFN_vkEnumeratePhysicalDeviceGroupsKHR is access function
        (arg1 : VkInstance;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkPhysicalDeviceGroupProperties) return VkResult
   with Convention => C;  -- vulkan_core.h:6248

   function vkEnumeratePhysicalDeviceGroupsKHR
     (instance : VkInstance;
      pPhysicalDeviceGroupCount : access Interfaces.C.unsigned_short;
      pPhysicalDeviceGroupProperties : access VkPhysicalDeviceGroupProperties) return VkResult  -- vulkan_core.h:6251
   with Import => True, 
        Convention => C, 
        External_Name => "vkEnumeratePhysicalDeviceGroupsKHR";

   subtype VkExternalMemoryHandleTypeFlagsKHR is VkExternalMemoryHandleTypeFlags;  -- vulkan_core.h:6262

   subtype VkExternalMemoryHandleTypeFlagBitsKHR is VkExternalMemoryHandleTypeFlagBits;  -- vulkan_core.h:6264

   subtype VkExternalMemoryFeatureFlagsKHR is VkExternalMemoryFeatureFlags;  -- vulkan_core.h:6266

   subtype VkExternalMemoryFeatureFlagBitsKHR is VkExternalMemoryFeatureFlagBits;  -- vulkan_core.h:6268

   subtype VkExternalMemoryPropertiesKHR is VkExternalMemoryProperties;  -- vulkan_core.h:6270

   subtype VkPhysicalDeviceExternalImageFormatInfoKHR is VkPhysicalDeviceExternalImageFormatInfo;  -- vulkan_core.h:6272

   subtype VkExternalImageFormatPropertiesKHR is VkExternalImageFormatProperties;  -- vulkan_core.h:6274

   subtype VkPhysicalDeviceExternalBufferInfoKHR is VkPhysicalDeviceExternalBufferInfo;  -- vulkan_core.h:6276

   subtype VkExternalBufferPropertiesKHR is VkExternalBufferProperties;  -- vulkan_core.h:6278

   subtype VkPhysicalDeviceIDPropertiesKHR is VkPhysicalDeviceIDProperties;  -- vulkan_core.h:6280

   type PFN_vkGetPhysicalDeviceExternalBufferPropertiesKHR is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkPhysicalDeviceExternalBufferInfo;
         arg3 : access VkExternalBufferProperties)
   with Convention => C;  -- vulkan_core.h:6282

   procedure vkGetPhysicalDeviceExternalBufferPropertiesKHR
     (physicalDevice : VkPhysicalDevice;
      pExternalBufferInfo : access constant VkPhysicalDeviceExternalBufferInfo;
      pExternalBufferProperties : access VkExternalBufferProperties)  -- vulkan_core.h:6285
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceExternalBufferPropertiesKHR";

   subtype VkExternalMemoryImageCreateInfoKHR is VkExternalMemoryImageCreateInfo;  -- vulkan_core.h:6296

   subtype VkExternalMemoryBufferCreateInfoKHR is VkExternalMemoryBufferCreateInfo;  -- vulkan_core.h:6298

   subtype VkExportMemoryAllocateInfoKHR is VkExportMemoryAllocateInfo;  -- vulkan_core.h:6300

   type VkImportMemoryFdInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6308
      pNext : System.Address;  -- vulkan_core.h:6309
      handleType : aliased VkExternalMemoryHandleTypeFlagBits;  -- vulkan_core.h:6310
      fd : aliased int;  -- vulkan_core.h:6311
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6307

   type VkMemoryFdPropertiesKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6315
      pNext : System.Address;  -- vulkan_core.h:6316
      memoryTypeBits : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:6317
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6314

   type VkMemoryGetFdInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6321
      pNext : System.Address;  -- vulkan_core.h:6322
      memory : VkDeviceMemory;  -- vulkan_core.h:6323
      handleType : aliased VkExternalMemoryHandleTypeFlagBits;  -- vulkan_core.h:6324
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6320

   type PFN_vkGetMemoryFdKHR is access function
        (arg1 : VkDevice;
         arg2 : access constant VkMemoryGetFdInfoKHR;
         arg3 : access int) return VkResult
   with Convention => C;  -- vulkan_core.h:6327

   type PFN_vkGetMemoryFdPropertiesKHR is access function
        (arg1 : VkDevice;
         arg2 : VkExternalMemoryHandleTypeFlagBits;
         arg3 : int;
         arg4 : access VkMemoryFdPropertiesKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6328

   function vkGetMemoryFdKHR
     (device : VkDevice;
      pGetFdInfo : access constant VkMemoryGetFdInfoKHR;
      pFd : access int) return VkResult  -- vulkan_core.h:6331
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetMemoryFdKHR";

   function vkGetMemoryFdPropertiesKHR
     (device : VkDevice;
      handleType : VkExternalMemoryHandleTypeFlagBits;
      fd : int;
      pMemoryFdProperties : access VkMemoryFdPropertiesKHR) return VkResult  -- vulkan_core.h:6336
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetMemoryFdPropertiesKHR";

   subtype VkExternalSemaphoreHandleTypeFlagsKHR is VkExternalSemaphoreHandleTypeFlags;  -- vulkan_core.h:6347

   subtype VkExternalSemaphoreHandleTypeFlagBitsKHR is VkExternalSemaphoreHandleTypeFlagBits;  -- vulkan_core.h:6349

   subtype VkExternalSemaphoreFeatureFlagsKHR is VkExternalSemaphoreFeatureFlags;  -- vulkan_core.h:6351

   subtype VkExternalSemaphoreFeatureFlagBitsKHR is VkExternalSemaphoreFeatureFlagBits;  -- vulkan_core.h:6353

   subtype VkPhysicalDeviceExternalSemaphoreInfoKHR is VkPhysicalDeviceExternalSemaphoreInfo;  -- vulkan_core.h:6355

   subtype VkExternalSemaphorePropertiesKHR is VkExternalSemaphoreProperties;  -- vulkan_core.h:6357

   type PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkPhysicalDeviceExternalSemaphoreInfo;
         arg3 : access VkExternalSemaphoreProperties)
   with Convention => C;  -- vulkan_core.h:6359

   procedure vkGetPhysicalDeviceExternalSemaphorePropertiesKHR
     (physicalDevice : VkPhysicalDevice;
      pExternalSemaphoreInfo : access constant VkPhysicalDeviceExternalSemaphoreInfo;
      pExternalSemaphoreProperties : access VkExternalSemaphoreProperties)  -- vulkan_core.h:6362
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceExternalSemaphorePropertiesKHR";

   subtype VkSemaphoreImportFlagsKHR is VkSemaphoreImportFlags;  -- vulkan_core.h:6372

   subtype VkSemaphoreImportFlagBitsKHR is VkSemaphoreImportFlagBits;  -- vulkan_core.h:6374

   subtype VkExportSemaphoreCreateInfoKHR is VkExportSemaphoreCreateInfo;  -- vulkan_core.h:6376

   type VkImportSemaphoreFdInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6384
      pNext : System.Address;  -- vulkan_core.h:6385
      semaphore : VkSemaphore;  -- vulkan_core.h:6386
      flags : aliased VkSemaphoreImportFlags;  -- vulkan_core.h:6387
      handleType : aliased VkExternalSemaphoreHandleTypeFlagBits;  -- vulkan_core.h:6388
      fd : aliased int;  -- vulkan_core.h:6389
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6383

   type VkSemaphoreGetFdInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6393
      pNext : System.Address;  -- vulkan_core.h:6394
      semaphore : VkSemaphore;  -- vulkan_core.h:6395
      handleType : aliased VkExternalSemaphoreHandleTypeFlagBits;  -- vulkan_core.h:6396
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6392

   type PFN_vkImportSemaphoreFdKHR is access function (arg1 : VkDevice; arg2 : access constant VkImportSemaphoreFdInfoKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6399

   type PFN_vkGetSemaphoreFdKHR is access function
        (arg1 : VkDevice;
         arg2 : access constant VkSemaphoreGetFdInfoKHR;
         arg3 : access int) return VkResult
   with Convention => C;  -- vulkan_core.h:6400

   function vkImportSemaphoreFdKHR (device : VkDevice; pImportSemaphoreFdInfo : access constant VkImportSemaphoreFdInfoKHR) return VkResult  -- vulkan_core.h:6403
   with Import => True, 
        Convention => C, 
        External_Name => "vkImportSemaphoreFdKHR";

   function vkGetSemaphoreFdKHR
     (device : VkDevice;
      pGetFdInfo : access constant VkSemaphoreGetFdInfoKHR;
      pFd : access int) return VkResult  -- vulkan_core.h:6407
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetSemaphoreFdKHR";

   type VkPhysicalDevicePushDescriptorPropertiesKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6418
      pNext : System.Address;  -- vulkan_core.h:6419
      maxPushDescriptors : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:6420
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6417

   type PFN_vkCmdPushDescriptorSetKHR is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkPipelineBindPoint;
         arg3 : VkPipelineLayout;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : Interfaces.C.unsigned_short;
         arg6 : access constant VkWriteDescriptorSet)
   with Convention => C;  -- vulkan_core.h:6423

   type PFN_vkCmdPushDescriptorSetWithTemplateKHR is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkDescriptorUpdateTemplate;
         arg3 : VkPipelineLayout;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : System.Address)
   with Convention => C;  -- vulkan_core.h:6424

   procedure vkCmdPushDescriptorSetKHR
     (commandBuffer : VkCommandBuffer;
      pipelineBindPoint : VkPipelineBindPoint;
      layout : VkPipelineLayout;
      set : Interfaces.C.unsigned_short;
      descriptorWriteCount : Interfaces.C.unsigned_short;
      pDescriptorWrites : access constant VkWriteDescriptorSet)  -- vulkan_core.h:6427
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdPushDescriptorSetKHR";

   procedure vkCmdPushDescriptorSetWithTemplateKHR
     (commandBuffer : VkCommandBuffer;
      descriptorUpdateTemplate : VkDescriptorUpdateTemplate;
      layout : VkPipelineLayout;
      set : Interfaces.C.unsigned_short;
      pData : System.Address)  -- vulkan_core.h:6435
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdPushDescriptorSetWithTemplateKHR";

   subtype VkPhysicalDeviceShaderFloat16Int8FeaturesKHR is VkPhysicalDeviceShaderFloat16Int8Features;  -- vulkan_core.h:6447

   subtype VkPhysicalDeviceFloat16Int8FeaturesKHR is VkPhysicalDeviceShaderFloat16Int8Features;  -- vulkan_core.h:6449

   subtype VkPhysicalDevice16BitStorageFeaturesKHR is VkPhysicalDevice16BitStorageFeatures;  -- vulkan_core.h:6456

   type VkRectLayerKHR is record
      offset : aliased VkOffset2D;  -- vulkan_core.h:6464
      extent : aliased VkExtent2D;  -- vulkan_core.h:6465
      layer : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:6466
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6463

   type VkPresentRegionKHR is record
      rectangleCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:6470
      pRectangles : access constant VkRectLayerKHR;  -- vulkan_core.h:6471
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6469

   type VkPresentRegionsKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6475
      pNext : System.Address;  -- vulkan_core.h:6476
      swapchainCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:6477
      pRegions : access constant VkPresentRegionKHR;  -- vulkan_core.h:6478
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6474

   subtype VkDescriptorUpdateTemplateKHR is VkDescriptorUpdateTemplate;  -- vulkan_core.h:6484

   subtype VkDescriptorUpdateTemplateTypeKHR is VkDescriptorUpdateTemplateType;  -- vulkan_core.h:6488

   subtype VkDescriptorUpdateTemplateCreateFlagsKHR is VkDescriptorUpdateTemplateCreateFlags;  -- vulkan_core.h:6490

   subtype VkDescriptorUpdateTemplateEntryKHR is VkDescriptorUpdateTemplateEntry;  -- vulkan_core.h:6492

   subtype VkDescriptorUpdateTemplateCreateInfoKHR is VkDescriptorUpdateTemplateCreateInfo;  -- vulkan_core.h:6494

   type PFN_vkCreateDescriptorUpdateTemplateKHR is access function
        (arg1 : VkDevice;
         arg2 : access constant VkDescriptorUpdateTemplateCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:6496

   type PFN_vkDestroyDescriptorUpdateTemplateKHR is access procedure
        (arg1 : VkDevice;
         arg2 : VkDescriptorUpdateTemplate;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:6497

   type PFN_vkUpdateDescriptorSetWithTemplateKHR is access procedure
        (arg1 : VkDevice;
         arg2 : VkDescriptorSet;
         arg3 : VkDescriptorUpdateTemplate;
         arg4 : System.Address)
   with Convention => C;  -- vulkan_core.h:6498

   function vkCreateDescriptorUpdateTemplateKHR
     (device : VkDevice;
      pCreateInfo : access constant VkDescriptorUpdateTemplateCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pDescriptorUpdateTemplate : System.Address) return VkResult  -- vulkan_core.h:6501
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateDescriptorUpdateTemplateKHR";

   procedure vkDestroyDescriptorUpdateTemplateKHR
     (device : VkDevice;
      descriptorUpdateTemplate : VkDescriptorUpdateTemplate;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:6507
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyDescriptorUpdateTemplateKHR";

   procedure vkUpdateDescriptorSetWithTemplateKHR
     (device : VkDevice;
      descriptorSet : VkDescriptorSet;
      descriptorUpdateTemplate : VkDescriptorUpdateTemplate;
      pData : System.Address)  -- vulkan_core.h:6512
   with Import => True, 
        Convention => C, 
        External_Name => "vkUpdateDescriptorSetWithTemplateKHR";

   subtype VkPhysicalDeviceImagelessFramebufferFeaturesKHR is VkPhysicalDeviceImagelessFramebufferFeatures;  -- vulkan_core.h:6523

   subtype VkFramebufferAttachmentsCreateInfoKHR is VkFramebufferAttachmentsCreateInfo;  -- vulkan_core.h:6525

   subtype VkFramebufferAttachmentImageInfoKHR is VkFramebufferAttachmentImageInfo;  -- vulkan_core.h:6527

   subtype VkRenderPassAttachmentBeginInfoKHR is VkRenderPassAttachmentBeginInfo;  -- vulkan_core.h:6529

   subtype VkRenderPassCreateInfo2KHR is VkRenderPassCreateInfo2;  -- vulkan_core.h:6536

   subtype VkAttachmentDescription2KHR is VkAttachmentDescription2;  -- vulkan_core.h:6538

   subtype VkAttachmentReference2KHR is VkAttachmentReference2;  -- vulkan_core.h:6540

   subtype VkSubpassDescription2KHR is VkSubpassDescription2;  -- vulkan_core.h:6542

   subtype VkSubpassDependency2KHR is VkSubpassDependency2;  -- vulkan_core.h:6544

   subtype VkSubpassBeginInfoKHR is VkSubpassBeginInfo;  -- vulkan_core.h:6546

   subtype VkSubpassEndInfoKHR is VkSubpassEndInfo;  -- vulkan_core.h:6548

   type PFN_vkCreateRenderPass2KHR is access function
        (arg1 : VkDevice;
         arg2 : access constant VkRenderPassCreateInfo2;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:6550

   type PFN_vkCmdBeginRenderPass2KHR is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : access constant VkRenderPassBeginInfo;
         arg3 : access constant VkSubpassBeginInfo)
   with Convention => C;  -- vulkan_core.h:6551

   type PFN_vkCmdNextSubpass2KHR is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : access constant VkSubpassBeginInfo;
         arg3 : access constant VkSubpassEndInfo)
   with Convention => C;  -- vulkan_core.h:6552

   type PFN_vkCmdEndRenderPass2KHR is access procedure (arg1 : VkCommandBuffer; arg2 : access constant VkSubpassEndInfo)
   with Convention => C;  -- vulkan_core.h:6553

   function vkCreateRenderPass2KHR
     (device : VkDevice;
      pCreateInfo : access constant VkRenderPassCreateInfo2;
      pAllocator : access constant VkAllocationCallbacks;
      pRenderPass : System.Address) return VkResult  -- vulkan_core.h:6556
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateRenderPass2KHR";

   procedure vkCmdBeginRenderPass2KHR
     (commandBuffer : VkCommandBuffer;
      pRenderPassBegin : access constant VkRenderPassBeginInfo;
      pSubpassBeginInfo : access constant VkSubpassBeginInfo)  -- vulkan_core.h:6562
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBeginRenderPass2KHR";

   procedure vkCmdNextSubpass2KHR
     (commandBuffer : VkCommandBuffer;
      pSubpassBeginInfo : access constant VkSubpassBeginInfo;
      pSubpassEndInfo : access constant VkSubpassEndInfo)  -- vulkan_core.h:6567
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdNextSubpass2KHR";

   procedure vkCmdEndRenderPass2KHR (commandBuffer : VkCommandBuffer; pSubpassEndInfo : access constant VkSubpassEndInfo)  -- vulkan_core.h:6572
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdEndRenderPass2KHR";

   type VkSharedPresentSurfaceCapabilitiesKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6582
      pNext : System.Address;  -- vulkan_core.h:6583
      sharedPresentSupportedUsageFlags : aliased VkImageUsageFlags;  -- vulkan_core.h:6584
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6581

   type PFN_vkGetSwapchainStatusKHR is access function (arg1 : VkDevice; arg2 : VkSwapchainKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6587

   function vkGetSwapchainStatusKHR (device : VkDevice; swapchain : VkSwapchainKHR) return VkResult  -- vulkan_core.h:6590
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetSwapchainStatusKHR";

   subtype VkExternalFenceHandleTypeFlagsKHR is VkExternalFenceHandleTypeFlags;  -- vulkan_core.h:6599

   subtype VkExternalFenceHandleTypeFlagBitsKHR is VkExternalFenceHandleTypeFlagBits;  -- vulkan_core.h:6601

   subtype VkExternalFenceFeatureFlagsKHR is VkExternalFenceFeatureFlags;  -- vulkan_core.h:6603

   subtype VkExternalFenceFeatureFlagBitsKHR is VkExternalFenceFeatureFlagBits;  -- vulkan_core.h:6605

   subtype VkPhysicalDeviceExternalFenceInfoKHR is VkPhysicalDeviceExternalFenceInfo;  -- vulkan_core.h:6607

   subtype VkExternalFencePropertiesKHR is VkExternalFenceProperties;  -- vulkan_core.h:6609

   type PFN_vkGetPhysicalDeviceExternalFencePropertiesKHR is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkPhysicalDeviceExternalFenceInfo;
         arg3 : access VkExternalFenceProperties)
   with Convention => C;  -- vulkan_core.h:6611

   procedure vkGetPhysicalDeviceExternalFencePropertiesKHR
     (physicalDevice : VkPhysicalDevice;
      pExternalFenceInfo : access constant VkPhysicalDeviceExternalFenceInfo;
      pExternalFenceProperties : access VkExternalFenceProperties)  -- vulkan_core.h:6614
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceExternalFencePropertiesKHR";

   subtype VkFenceImportFlagsKHR is VkFenceImportFlags;  -- vulkan_core.h:6624

   subtype VkFenceImportFlagBitsKHR is VkFenceImportFlagBits;  -- vulkan_core.h:6626

   subtype VkExportFenceCreateInfoKHR is VkExportFenceCreateInfo;  -- vulkan_core.h:6628

   type VkImportFenceFdInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6636
      pNext : System.Address;  -- vulkan_core.h:6637
      fence : VkFence;  -- vulkan_core.h:6638
      flags : aliased VkFenceImportFlags;  -- vulkan_core.h:6639
      handleType : aliased VkExternalFenceHandleTypeFlagBits;  -- vulkan_core.h:6640
      fd : aliased int;  -- vulkan_core.h:6641
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6635

   type VkFenceGetFdInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6645
      pNext : System.Address;  -- vulkan_core.h:6646
      fence : VkFence;  -- vulkan_core.h:6647
      handleType : aliased VkExternalFenceHandleTypeFlagBits;  -- vulkan_core.h:6648
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6644

   type PFN_vkImportFenceFdKHR is access function (arg1 : VkDevice; arg2 : access constant VkImportFenceFdInfoKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6651

   type PFN_vkGetFenceFdKHR is access function
        (arg1 : VkDevice;
         arg2 : access constant VkFenceGetFdInfoKHR;
         arg3 : access int) return VkResult
   with Convention => C;  -- vulkan_core.h:6652

   function vkImportFenceFdKHR (device : VkDevice; pImportFenceFdInfo : access constant VkImportFenceFdInfoKHR) return VkResult  -- vulkan_core.h:6655
   with Import => True, 
        Convention => C, 
        External_Name => "vkImportFenceFdKHR";

   function vkGetFenceFdKHR
     (device : VkDevice;
      pGetFdInfo : access constant VkFenceGetFdInfoKHR;
      pFd : access int) return VkResult  -- vulkan_core.h:6659
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetFenceFdKHR";

   subtype VkPerformanceCounterUnitKHR is unsigned;
   VK_PERFORMANCE_COUNTER_UNIT_GENERIC_KHR : constant unsigned := 0;
   VK_PERFORMANCE_COUNTER_UNIT_PERCENTAGE_KHR : constant unsigned := 1;
   VK_PERFORMANCE_COUNTER_UNIT_NANOSECONDS_KHR : constant unsigned := 2;
   VK_PERFORMANCE_COUNTER_UNIT_BYTES_KHR : constant unsigned := 3;
   VK_PERFORMANCE_COUNTER_UNIT_BYTES_PER_SECOND_KHR : constant unsigned := 4;
   VK_PERFORMANCE_COUNTER_UNIT_KELVIN_KHR : constant unsigned := 5;
   VK_PERFORMANCE_COUNTER_UNIT_WATTS_KHR : constant unsigned := 6;
   VK_PERFORMANCE_COUNTER_UNIT_VOLTS_KHR : constant unsigned := 7;
   VK_PERFORMANCE_COUNTER_UNIT_AMPS_KHR : constant unsigned := 8;
   VK_PERFORMANCE_COUNTER_UNIT_HERTZ_KHR : constant unsigned := 9;
   VK_PERFORMANCE_COUNTER_UNIT_CYCLES_KHR : constant unsigned := 10;
   VK_PERFORMANCE_COUNTER_UNIT_BEGIN_RANGE_KHR : constant unsigned := 0;
   VK_PERFORMANCE_COUNTER_UNIT_END_RANGE_KHR : constant unsigned := 10;
   VK_PERFORMANCE_COUNTER_UNIT_RANGE_SIZE_KHR : constant unsigned := 11;
   VK_PERFORMANCE_COUNTER_UNIT_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:6670

   subtype VkPerformanceCounterScopeKHR is unsigned;
   VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR : constant unsigned := 0;
   VK_PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR : constant unsigned := 1;
   VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR : constant unsigned := 2;
   VK_QUERY_SCOPE_COMMAND_BUFFER_KHR : constant unsigned := 0;
   VK_QUERY_SCOPE_RENDER_PASS_KHR : constant unsigned := 1;
   VK_QUERY_SCOPE_COMMAND_KHR : constant unsigned := 2;
   VK_PERFORMANCE_COUNTER_SCOPE_BEGIN_RANGE_KHR : constant unsigned := 0;
   VK_PERFORMANCE_COUNTER_SCOPE_END_RANGE_KHR : constant unsigned := 2;
   VK_PERFORMANCE_COUNTER_SCOPE_RANGE_SIZE_KHR : constant unsigned := 3;
   VK_PERFORMANCE_COUNTER_SCOPE_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:6688

   subtype VkPerformanceCounterStorageKHR is unsigned;
   VK_PERFORMANCE_COUNTER_STORAGE_INT32_KHR : constant unsigned := 0;
   VK_PERFORMANCE_COUNTER_STORAGE_INT64_KHR : constant unsigned := 1;
   VK_PERFORMANCE_COUNTER_STORAGE_UINT32_KHR : constant unsigned := 2;
   VK_PERFORMANCE_COUNTER_STORAGE_UINT64_KHR : constant unsigned := 3;
   VK_PERFORMANCE_COUNTER_STORAGE_FLOAT32_KHR : constant unsigned := 4;
   VK_PERFORMANCE_COUNTER_STORAGE_FLOAT64_KHR : constant unsigned := 5;
   VK_PERFORMANCE_COUNTER_STORAGE_BEGIN_RANGE_KHR : constant unsigned := 0;
   VK_PERFORMANCE_COUNTER_STORAGE_END_RANGE_KHR : constant unsigned := 5;
   VK_PERFORMANCE_COUNTER_STORAGE_RANGE_SIZE_KHR : constant unsigned := 6;
   VK_PERFORMANCE_COUNTER_STORAGE_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:6701

   subtype VkPerformanceCounterDescriptionFlagBitsKHR is unsigned;
   VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_KHR : constant unsigned := 1;
   VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_KHR : constant unsigned := 2;
   VK_PERFORMANCE_COUNTER_DESCRIPTION_FLAG_BITS_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:6714

   subtype VkPerformanceCounterDescriptionFlagsKHR is VkFlags;  -- vulkan_core.h:6719

   subtype VkAcquireProfilingLockFlagBitsKHR is unsigned;
   VK_ACQUIRE_PROFILING_LOCK_FLAG_BITS_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:6721

   subtype VkAcquireProfilingLockFlagsKHR is VkFlags;  -- vulkan_core.h:6724

   type VkPhysicalDevicePerformanceQueryFeaturesKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6726
      pNext : System.Address;  -- vulkan_core.h:6727
      performanceCounterQueryPools : aliased VkBool32;  -- vulkan_core.h:6728
      performanceCounterMultipleQueryPools : aliased VkBool32;  -- vulkan_core.h:6729
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6725

   type VkPhysicalDevicePerformanceQueryPropertiesKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6733
      pNext : System.Address;  -- vulkan_core.h:6734
      allowCommandBufferQueryCopies : aliased VkBool32;  -- vulkan_core.h:6735
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6732

   type VkPerformanceCounterKHR_array1345 is array (0 .. 15) of aliased Interfaces.C.unsigned_char;
   type VkPerformanceCounterKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6739
      pNext : System.Address;  -- vulkan_core.h:6740
      unit : aliased VkPerformanceCounterUnitKHR;  -- vulkan_core.h:6741
      scope : aliased VkPerformanceCounterScopeKHR;  -- vulkan_core.h:6742
      storage : aliased VkPerformanceCounterStorageKHR;  -- vulkan_core.h:6743
      uuid : aliased VkPerformanceCounterKHR_array1345;  -- vulkan_core.h:6744
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6738

   subtype VkPerformanceCounterDescriptionKHR_array1342 is Interfaces.C.char_array (0 .. 255);
   type VkPerformanceCounterDescriptionKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6748
      pNext : System.Address;  -- vulkan_core.h:6749
      flags : aliased VkPerformanceCounterDescriptionFlagsKHR;  -- vulkan_core.h:6750
      name : aliased VkPerformanceCounterDescriptionKHR_array1342;  -- vulkan_core.h:6751
      category : aliased VkPerformanceCounterDescriptionKHR_array1342;  -- vulkan_core.h:6752
      description : aliased VkPerformanceCounterDescriptionKHR_array1342;  -- vulkan_core.h:6753
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6747

   type VkQueryPoolPerformanceCreateInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6757
      pNext : System.Address;  -- vulkan_core.h:6758
      queueFamilyIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:6759
      counterIndexCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:6760
      pCounterIndices : access Interfaces.C.unsigned_short;  -- vulkan_core.h:6761
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6756

   type VkPerformanceCounterResultKHR (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            int32 : aliased Interfaces.C.short;  -- vulkan_core.h:6765
         when 1 =>
            int64 : aliased Interfaces.C.long;  -- vulkan_core.h:6766
         when 2 =>
            uint32 : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:6767
         when 3 =>
            uint64 : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:6768
         when 4 =>
            float32 : aliased float;  -- vulkan_core.h:6769
         when others =>
            float64 : aliased double;  -- vulkan_core.h:6770
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- vulkan_core.h:6764

   type VkAcquireProfilingLockInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6774
      pNext : System.Address;  -- vulkan_core.h:6775
      flags : aliased VkAcquireProfilingLockFlagsKHR;  -- vulkan_core.h:6776
      timeout : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:6777
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6773

   type VkPerformanceQuerySubmitInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6781
      pNext : System.Address;  -- vulkan_core.h:6782
      counterPassIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:6783
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6780

   type PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkPerformanceCounterKHR;
         arg5 : access VkPerformanceCounterDescriptionKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6786

   type PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkQueryPoolPerformanceCreateInfoKHR;
         arg3 : access Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:6787

   type PFN_vkAcquireProfilingLockKHR is access function (arg1 : VkDevice; arg2 : access constant VkAcquireProfilingLockInfoKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6788

   type PFN_vkReleaseProfilingLockKHR is access procedure (arg1 : VkDevice)
   with Convention => C;  -- vulkan_core.h:6789

   function vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR
     (physicalDevice : VkPhysicalDevice;
      queueFamilyIndex : Interfaces.C.unsigned_short;
      pCounterCount : access Interfaces.C.unsigned_short;
      pCounters : access VkPerformanceCounterKHR;
      pCounterDescriptions : access VkPerformanceCounterDescriptionKHR) return VkResult  -- vulkan_core.h:6792
   with Import => True, 
        Convention => C, 
        External_Name => "vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR";

   procedure vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR
     (physicalDevice : VkPhysicalDevice;
      pPerformanceQueryCreateInfo : access constant VkQueryPoolPerformanceCreateInfoKHR;
      pNumPasses : access Interfaces.C.unsigned_short)  -- vulkan_core.h:6799
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR";

   function vkAcquireProfilingLockKHR (device : VkDevice; pInfo : access constant VkAcquireProfilingLockInfoKHR) return VkResult  -- vulkan_core.h:6804
   with Import => True, 
        Convention => C, 
        External_Name => "vkAcquireProfilingLockKHR";

   procedure vkReleaseProfilingLockKHR (device : VkDevice)  -- vulkan_core.h:6808
   with Import => True, 
        Convention => C, 
        External_Name => "vkReleaseProfilingLockKHR";

   subtype VkPointClippingBehaviorKHR is VkPointClippingBehavior;  -- vulkan_core.h:6816

   subtype VkTessellationDomainOriginKHR is VkTessellationDomainOrigin;  -- vulkan_core.h:6818

   subtype VkPhysicalDevicePointClippingPropertiesKHR is VkPhysicalDevicePointClippingProperties;  -- vulkan_core.h:6820

   subtype VkRenderPassInputAttachmentAspectCreateInfoKHR is VkRenderPassInputAttachmentAspectCreateInfo;  -- vulkan_core.h:6822

   subtype VkInputAttachmentAspectReferenceKHR is VkInputAttachmentAspectReference;  -- vulkan_core.h:6824

   subtype VkImageViewUsageCreateInfoKHR is VkImageViewUsageCreateInfo;  -- vulkan_core.h:6826

   subtype VkPipelineTessellationDomainOriginStateCreateInfoKHR is VkPipelineTessellationDomainOriginStateCreateInfo;  -- vulkan_core.h:6828

   type VkPhysicalDeviceSurfaceInfo2KHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6836
      pNext : System.Address;  -- vulkan_core.h:6837
      surface : VkSurfaceKHR;  -- vulkan_core.h:6838
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6835

   type VkSurfaceCapabilities2KHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6842
      pNext : System.Address;  -- vulkan_core.h:6843
      surfaceCapabilities : aliased VkSurfaceCapabilitiesKHR;  -- vulkan_core.h:6844
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6841

   type VkSurfaceFormat2KHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6848
      pNext : System.Address;  -- vulkan_core.h:6849
      surfaceFormat : aliased VkSurfaceFormatKHR;  -- vulkan_core.h:6850
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6847

   type PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkPhysicalDeviceSurfaceInfo2KHR;
         arg3 : access VkSurfaceCapabilities2KHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6853

   type PFN_vkGetPhysicalDeviceSurfaceFormats2KHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkPhysicalDeviceSurfaceInfo2KHR;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkSurfaceFormat2KHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6854

   function vkGetPhysicalDeviceSurfaceCapabilities2KHR
     (physicalDevice : VkPhysicalDevice;
      pSurfaceInfo : access constant VkPhysicalDeviceSurfaceInfo2KHR;
      pSurfaceCapabilities : access VkSurfaceCapabilities2KHR) return VkResult  -- vulkan_core.h:6857
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceSurfaceCapabilities2KHR";

   function vkGetPhysicalDeviceSurfaceFormats2KHR
     (physicalDevice : VkPhysicalDevice;
      pSurfaceInfo : access constant VkPhysicalDeviceSurfaceInfo2KHR;
      pSurfaceFormatCount : access Interfaces.C.unsigned_short;
      pSurfaceFormats : access VkSurfaceFormat2KHR) return VkResult  -- vulkan_core.h:6862
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceSurfaceFormats2KHR";

   subtype VkPhysicalDeviceVariablePointerFeaturesKHR is VkPhysicalDeviceVariablePointersFeatures;  -- vulkan_core.h:6873

   subtype VkPhysicalDeviceVariablePointersFeaturesKHR is VkPhysicalDeviceVariablePointersFeatures;  -- vulkan_core.h:6875

   type VkDisplayProperties2KHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6883
      pNext : System.Address;  -- vulkan_core.h:6884
      displayProperties : aliased VkDisplayPropertiesKHR;  -- vulkan_core.h:6885
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6882

   type VkDisplayPlaneProperties2KHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6889
      pNext : System.Address;  -- vulkan_core.h:6890
      displayPlaneProperties : aliased VkDisplayPlanePropertiesKHR;  -- vulkan_core.h:6891
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6888

   type VkDisplayModeProperties2KHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6895
      pNext : System.Address;  -- vulkan_core.h:6896
      displayModeProperties : aliased VkDisplayModePropertiesKHR;  -- vulkan_core.h:6897
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6894

   type VkDisplayPlaneInfo2KHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6901
      pNext : System.Address;  -- vulkan_core.h:6902
      mode : VkDisplayModeKHR;  -- vulkan_core.h:6903
      planeIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:6904
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6900

   type VkDisplayPlaneCapabilities2KHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:6908
      pNext : System.Address;  -- vulkan_core.h:6909
      capabilities : aliased VkDisplayPlaneCapabilitiesKHR;  -- vulkan_core.h:6910
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:6907

   type PFN_vkGetPhysicalDeviceDisplayProperties2KHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkDisplayProperties2KHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6913

   type PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkDisplayPlaneProperties2KHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6914

   type PFN_vkGetDisplayModeProperties2KHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : VkDisplayKHR;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkDisplayModeProperties2KHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6915

   type PFN_vkGetDisplayPlaneCapabilities2KHR is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access constant VkDisplayPlaneInfo2KHR;
         arg3 : access VkDisplayPlaneCapabilities2KHR) return VkResult
   with Convention => C;  -- vulkan_core.h:6916

   function vkGetPhysicalDeviceDisplayProperties2KHR
     (physicalDevice : VkPhysicalDevice;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkDisplayProperties2KHR) return VkResult  -- vulkan_core.h:6919
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceDisplayProperties2KHR";

   function vkGetPhysicalDeviceDisplayPlaneProperties2KHR
     (physicalDevice : VkPhysicalDevice;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkDisplayPlaneProperties2KHR) return VkResult  -- vulkan_core.h:6924
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceDisplayPlaneProperties2KHR";

   function vkGetDisplayModeProperties2KHR
     (physicalDevice : VkPhysicalDevice;
      display : VkDisplayKHR;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkDisplayModeProperties2KHR) return VkResult  -- vulkan_core.h:6929
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDisplayModeProperties2KHR";

   function vkGetDisplayPlaneCapabilities2KHR
     (physicalDevice : VkPhysicalDevice;
      pDisplayPlaneInfo : access constant VkDisplayPlaneInfo2KHR;
      pCapabilities : access VkDisplayPlaneCapabilities2KHR) return VkResult  -- vulkan_core.h:6935
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDisplayPlaneCapabilities2KHR";

   subtype VkMemoryDedicatedRequirementsKHR is VkMemoryDedicatedRequirements;  -- vulkan_core.h:6945

   subtype VkMemoryDedicatedAllocateInfoKHR is VkMemoryDedicatedAllocateInfo;  -- vulkan_core.h:6947

   subtype VkBufferMemoryRequirementsInfo2KHR is VkBufferMemoryRequirementsInfo2;  -- vulkan_core.h:6964

   subtype VkImageMemoryRequirementsInfo2KHR is VkImageMemoryRequirementsInfo2;  -- vulkan_core.h:6966

   subtype VkImageSparseMemoryRequirementsInfo2KHR is VkImageSparseMemoryRequirementsInfo2;  -- vulkan_core.h:6968

   subtype VkSparseImageMemoryRequirements2KHR is VkSparseImageMemoryRequirements2;  -- vulkan_core.h:6970

   type PFN_vkGetImageMemoryRequirements2KHR is access procedure
        (arg1 : VkDevice;
         arg2 : access constant VkImageMemoryRequirementsInfo2;
         arg3 : access VkMemoryRequirements2)
   with Convention => C;  -- vulkan_core.h:6972

   type PFN_vkGetBufferMemoryRequirements2KHR is access procedure
        (arg1 : VkDevice;
         arg2 : access constant VkBufferMemoryRequirementsInfo2;
         arg3 : access VkMemoryRequirements2)
   with Convention => C;  -- vulkan_core.h:6973

   type PFN_vkGetImageSparseMemoryRequirements2KHR is access procedure
        (arg1 : VkDevice;
         arg2 : access constant VkImageSparseMemoryRequirementsInfo2;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkSparseImageMemoryRequirements2)
   with Convention => C;  -- vulkan_core.h:6974

   procedure vkGetImageMemoryRequirements2KHR
     (device : VkDevice;
      pInfo : access constant VkImageMemoryRequirementsInfo2;
      pMemoryRequirements : access VkMemoryRequirements2)  -- vulkan_core.h:6977
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetImageMemoryRequirements2KHR";

   procedure vkGetBufferMemoryRequirements2KHR
     (device : VkDevice;
      pInfo : access constant VkBufferMemoryRequirementsInfo2;
      pMemoryRequirements : access VkMemoryRequirements2)  -- vulkan_core.h:6982
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetBufferMemoryRequirements2KHR";

   procedure vkGetImageSparseMemoryRequirements2KHR
     (device : VkDevice;
      pInfo : access constant VkImageSparseMemoryRequirementsInfo2;
      pSparseMemoryRequirementCount : access Interfaces.C.unsigned_short;
      pSparseMemoryRequirements : access VkSparseImageMemoryRequirements2)  -- vulkan_core.h:6987
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetImageSparseMemoryRequirements2KHR";

   subtype VkImageFormatListCreateInfoKHR is VkImageFormatListCreateInfo;  -- vulkan_core.h:6998

   subtype VkSamplerYcbcrConversionKHR is VkSamplerYcbcrConversion;  -- vulkan_core.h:7003

   subtype VkSamplerYcbcrModelConversionKHR is VkSamplerYcbcrModelConversion;  -- vulkan_core.h:7007

   subtype VkSamplerYcbcrRangeKHR is VkSamplerYcbcrRange;  -- vulkan_core.h:7009

   subtype VkChromaLocationKHR is VkChromaLocation;  -- vulkan_core.h:7011

   subtype VkSamplerYcbcrConversionCreateInfoKHR is VkSamplerYcbcrConversionCreateInfo;  -- vulkan_core.h:7013

   subtype VkSamplerYcbcrConversionInfoKHR is VkSamplerYcbcrConversionInfo;  -- vulkan_core.h:7015

   subtype VkBindImagePlaneMemoryInfoKHR is VkBindImagePlaneMemoryInfo;  -- vulkan_core.h:7017

   subtype VkImagePlaneMemoryRequirementsInfoKHR is VkImagePlaneMemoryRequirementsInfo;  -- vulkan_core.h:7019

   subtype VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR is VkPhysicalDeviceSamplerYcbcrConversionFeatures;  -- vulkan_core.h:7021

   subtype VkSamplerYcbcrConversionImageFormatPropertiesKHR is VkSamplerYcbcrConversionImageFormatProperties;  -- vulkan_core.h:7023

   type PFN_vkCreateSamplerYcbcrConversionKHR is access function
        (arg1 : VkDevice;
         arg2 : access constant VkSamplerYcbcrConversionCreateInfo;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:7025

   type PFN_vkDestroySamplerYcbcrConversionKHR is access procedure
        (arg1 : VkDevice;
         arg2 : VkSamplerYcbcrConversion;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:7026

   function vkCreateSamplerYcbcrConversionKHR
     (device : VkDevice;
      pCreateInfo : access constant VkSamplerYcbcrConversionCreateInfo;
      pAllocator : access constant VkAllocationCallbacks;
      pYcbcrConversion : System.Address) return VkResult  -- vulkan_core.h:7029
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateSamplerYcbcrConversionKHR";

   procedure vkDestroySamplerYcbcrConversionKHR
     (device : VkDevice;
      ycbcrConversion : VkSamplerYcbcrConversion;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:7035
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroySamplerYcbcrConversionKHR";

   subtype VkBindBufferMemoryInfoKHR is VkBindBufferMemoryInfo;  -- vulkan_core.h:7045

   subtype VkBindImageMemoryInfoKHR is VkBindImageMemoryInfo;  -- vulkan_core.h:7047

   type PFN_vkBindBufferMemory2KHR is access function
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkBindBufferMemoryInfo) return VkResult
   with Convention => C;  -- vulkan_core.h:7049

   type PFN_vkBindImageMemory2KHR is access function
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkBindImageMemoryInfo) return VkResult
   with Convention => C;  -- vulkan_core.h:7050

   function vkBindBufferMemory2KHR
     (device : VkDevice;
      bindInfoCount : Interfaces.C.unsigned_short;
      pBindInfos : access constant VkBindBufferMemoryInfo) return VkResult  -- vulkan_core.h:7053
   with Import => True, 
        Convention => C, 
        External_Name => "vkBindBufferMemory2KHR";

   function vkBindImageMemory2KHR
     (device : VkDevice;
      bindInfoCount : Interfaces.C.unsigned_short;
      pBindInfos : access constant VkBindImageMemoryInfo) return VkResult  -- vulkan_core.h:7058
   with Import => True, 
        Convention => C, 
        External_Name => "vkBindImageMemory2KHR";

   subtype VkPhysicalDeviceMaintenance3PropertiesKHR is VkPhysicalDeviceMaintenance3Properties;  -- vulkan_core.h:7068

   subtype VkDescriptorSetLayoutSupportKHR is VkDescriptorSetLayoutSupport;  -- vulkan_core.h:7070

   type PFN_vkGetDescriptorSetLayoutSupportKHR is access procedure
        (arg1 : VkDevice;
         arg2 : access constant VkDescriptorSetLayoutCreateInfo;
         arg3 : access VkDescriptorSetLayoutSupport)
   with Convention => C;  -- vulkan_core.h:7072

   procedure vkGetDescriptorSetLayoutSupportKHR
     (device : VkDevice;
      pCreateInfo : access constant VkDescriptorSetLayoutCreateInfo;
      pSupport : access VkDescriptorSetLayoutSupport)  -- vulkan_core.h:7075
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDescriptorSetLayoutSupportKHR";

   type PFN_vkCmdDrawIndirectCountKHR is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : VkBuffer;
         arg5 : VkDeviceSize;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:7085

   type PFN_vkCmdDrawIndexedIndirectCountKHR is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : VkBuffer;
         arg5 : VkDeviceSize;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:7086

   procedure vkCmdDrawIndirectCountKHR
     (commandBuffer : VkCommandBuffer;
      buffer : VkBuffer;
      offset : VkDeviceSize;
      countBuffer : VkBuffer;
      countBufferOffset : VkDeviceSize;
      maxDrawCount : Interfaces.C.unsigned_short;
      stride : Interfaces.C.unsigned_short)  -- vulkan_core.h:7089
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawIndirectCountKHR";

   procedure vkCmdDrawIndexedIndirectCountKHR
     (commandBuffer : VkCommandBuffer;
      buffer : VkBuffer;
      offset : VkDeviceSize;
      countBuffer : VkBuffer;
      countBufferOffset : VkDeviceSize;
      maxDrawCount : Interfaces.C.unsigned_short;
      stride : Interfaces.C.unsigned_short)  -- vulkan_core.h:7098
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawIndexedIndirectCountKHR";

   subtype VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR is VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures;  -- vulkan_core.h:7112

   subtype VkPhysicalDevice8BitStorageFeaturesKHR is VkPhysicalDevice8BitStorageFeatures;  -- vulkan_core.h:7119

   subtype VkPhysicalDeviceShaderAtomicInt64FeaturesKHR is VkPhysicalDeviceShaderAtomicInt64Features;  -- vulkan_core.h:7126

   type VkPhysicalDeviceShaderClockFeaturesKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7134
      pNext : System.Address;  -- vulkan_core.h:7135
      shaderSubgroupClock : aliased VkBool32;  -- vulkan_core.h:7136
      shaderDeviceClock : aliased VkBool32;  -- vulkan_core.h:7137
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7133

   subtype VkDriverIdKHR is VkDriverId;  -- vulkan_core.h:7147

   subtype VkConformanceVersionKHR is VkConformanceVersion;  -- vulkan_core.h:7149

   subtype VkPhysicalDeviceDriverPropertiesKHR is VkPhysicalDeviceDriverProperties;  -- vulkan_core.h:7151

   subtype VkShaderFloatControlsIndependenceKHR is VkShaderFloatControlsIndependence;  -- vulkan_core.h:7158

   subtype VkPhysicalDeviceFloatControlsPropertiesKHR is VkPhysicalDeviceFloatControlsProperties;  -- vulkan_core.h:7160

   subtype VkResolveModeFlagBitsKHR is VkResolveModeFlagBits;  -- vulkan_core.h:7167

   subtype VkResolveModeFlagsKHR is VkResolveModeFlags;  -- vulkan_core.h:7169

   subtype VkSubpassDescriptionDepthStencilResolveKHR is VkSubpassDescriptionDepthStencilResolve;  -- vulkan_core.h:7171

   subtype VkPhysicalDeviceDepthStencilResolvePropertiesKHR is VkPhysicalDeviceDepthStencilResolveProperties;  -- vulkan_core.h:7173

   subtype VkSemaphoreTypeKHR is VkSemaphoreType;  -- vulkan_core.h:7185

   subtype VkSemaphoreWaitFlagBitsKHR is VkSemaphoreWaitFlagBits;  -- vulkan_core.h:7187

   subtype VkSemaphoreWaitFlagsKHR is VkSemaphoreWaitFlags;  -- vulkan_core.h:7189

   subtype VkPhysicalDeviceTimelineSemaphoreFeaturesKHR is VkPhysicalDeviceTimelineSemaphoreFeatures;  -- vulkan_core.h:7191

   subtype VkPhysicalDeviceTimelineSemaphorePropertiesKHR is VkPhysicalDeviceTimelineSemaphoreProperties;  -- vulkan_core.h:7193

   subtype VkSemaphoreTypeCreateInfoKHR is VkSemaphoreTypeCreateInfo;  -- vulkan_core.h:7195

   subtype VkTimelineSemaphoreSubmitInfoKHR is VkTimelineSemaphoreSubmitInfo;  -- vulkan_core.h:7197

   subtype VkSemaphoreWaitInfoKHR is VkSemaphoreWaitInfo;  -- vulkan_core.h:7199

   subtype VkSemaphoreSignalInfoKHR is VkSemaphoreSignalInfo;  -- vulkan_core.h:7201

   type PFN_vkGetSemaphoreCounterValueKHR is access function
        (arg1 : VkDevice;
         arg2 : VkSemaphore;
         arg3 : access Interfaces.C.unsigned_long) return VkResult
   with Convention => C;  -- vulkan_core.h:7203

   type PFN_vkWaitSemaphoresKHR is access function
        (arg1 : VkDevice;
         arg2 : access constant VkSemaphoreWaitInfo;
         arg3 : Interfaces.C.unsigned_long) return VkResult
   with Convention => C;  -- vulkan_core.h:7204

   type PFN_vkSignalSemaphoreKHR is access function (arg1 : VkDevice; arg2 : access constant VkSemaphoreSignalInfo) return VkResult
   with Convention => C;  -- vulkan_core.h:7205

   function vkGetSemaphoreCounterValueKHR
     (device : VkDevice;
      semaphore : VkSemaphore;
      pValue : access Interfaces.C.unsigned_long) return VkResult  -- vulkan_core.h:7208
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetSemaphoreCounterValueKHR";

   function vkWaitSemaphoresKHR
     (device : VkDevice;
      pWaitInfo : access constant VkSemaphoreWaitInfo;
      timeout : Interfaces.C.unsigned_long) return VkResult  -- vulkan_core.h:7213
   with Import => True, 
        Convention => C, 
        External_Name => "vkWaitSemaphoresKHR";

   function vkSignalSemaphoreKHR (device : VkDevice; pSignalInfo : access constant VkSemaphoreSignalInfo) return VkResult  -- vulkan_core.h:7218
   with Import => True, 
        Convention => C, 
        External_Name => "vkSignalSemaphoreKHR";

   subtype VkPhysicalDeviceVulkanMemoryModelFeaturesKHR is VkPhysicalDeviceVulkanMemoryModelFeatures;  -- vulkan_core.h:7227

   type VkSurfaceProtectedCapabilitiesKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7240
      pNext : System.Address;  -- vulkan_core.h:7241
      supportsProtected : aliased VkBool32;  -- vulkan_core.h:7242
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7239

   subtype VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR is VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures;  -- vulkan_core.h:7250

   subtype VkAttachmentReferenceStencilLayoutKHR is VkAttachmentReferenceStencilLayout;  -- vulkan_core.h:7252

   subtype VkAttachmentDescriptionStencilLayoutKHR is VkAttachmentDescriptionStencilLayout;  -- vulkan_core.h:7254

   subtype VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR is VkPhysicalDeviceUniformBufferStandardLayoutFeatures;  -- vulkan_core.h:7261

   subtype VkPhysicalDeviceBufferDeviceAddressFeaturesKHR is VkPhysicalDeviceBufferDeviceAddressFeatures;  -- vulkan_core.h:7268

   subtype VkBufferDeviceAddressInfoKHR is VkBufferDeviceAddressInfo;  -- vulkan_core.h:7270

   subtype VkBufferOpaqueCaptureAddressCreateInfoKHR is VkBufferOpaqueCaptureAddressCreateInfo;  -- vulkan_core.h:7272

   subtype VkMemoryOpaqueCaptureAddressAllocateInfoKHR is VkMemoryOpaqueCaptureAddressAllocateInfo;  -- vulkan_core.h:7274

   subtype VkDeviceMemoryOpaqueCaptureAddressInfoKHR is VkDeviceMemoryOpaqueCaptureAddressInfo;  -- vulkan_core.h:7276

   type PFN_vkGetBufferDeviceAddressKHR is access function (arg1 : VkDevice; arg2 : access constant VkBufferDeviceAddressInfo) return VkDeviceAddress
   with Convention => C;  -- vulkan_core.h:7278

   type PFN_vkGetBufferOpaqueCaptureAddressKHR is access function (arg1 : VkDevice; arg2 : access constant VkBufferDeviceAddressInfo) return Interfaces.C.unsigned_long
   with Convention => C;  -- vulkan_core.h:7279

   type PFN_vkGetDeviceMemoryOpaqueCaptureAddressKHR is access function (arg1 : VkDevice; arg2 : access constant VkDeviceMemoryOpaqueCaptureAddressInfo) return Interfaces.C.unsigned_long
   with Convention => C;  -- vulkan_core.h:7280

   function vkGetBufferDeviceAddressKHR (device : VkDevice; pInfo : access constant VkBufferDeviceAddressInfo) return VkDeviceAddress  -- vulkan_core.h:7283
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetBufferDeviceAddressKHR";

   function vkGetBufferOpaqueCaptureAddressKHR (device : VkDevice; pInfo : access constant VkBufferDeviceAddressInfo) return Interfaces.C.unsigned_long  -- vulkan_core.h:7287
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetBufferOpaqueCaptureAddressKHR";

   function vkGetDeviceMemoryOpaqueCaptureAddressKHR (device : VkDevice; pInfo : access constant VkDeviceMemoryOpaqueCaptureAddressInfo) return Interfaces.C.unsigned_long  -- vulkan_core.h:7291
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetDeviceMemoryOpaqueCaptureAddressKHR";

   subtype VkPipelineExecutableStatisticFormatKHR is unsigned;
   VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR : constant unsigned := 0;
   VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR : constant unsigned := 1;
   VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR : constant unsigned := 2;
   VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR : constant unsigned := 3;
   VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BEGIN_RANGE_KHR : constant unsigned := 0;
   VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_END_RANGE_KHR : constant unsigned := 3;
   VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_RANGE_SIZE_KHR : constant unsigned := 4;
   VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_MAX_ENUM_KHR : constant unsigned := 2147483647;  -- vulkan_core.h:7301

   type VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7312
      pNext : System.Address;  -- vulkan_core.h:7313
      pipelineExecutableInfo : aliased VkBool32;  -- vulkan_core.h:7314
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7311

   type VkPipelineInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7318
      pNext : System.Address;  -- vulkan_core.h:7319
      pipeline : VkPipeline;  -- vulkan_core.h:7320
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7317

   subtype VkPipelineExecutablePropertiesKHR_array1342 is Interfaces.C.char_array (0 .. 255);
   type VkPipelineExecutablePropertiesKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7324
      pNext : System.Address;  -- vulkan_core.h:7325
      stages : aliased VkShaderStageFlags;  -- vulkan_core.h:7326
      name : aliased VkPipelineExecutablePropertiesKHR_array1342;  -- vulkan_core.h:7327
      description : aliased VkPipelineExecutablePropertiesKHR_array1342;  -- vulkan_core.h:7328
      subgroupSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7329
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7323

   type VkPipelineExecutableInfoKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7333
      pNext : System.Address;  -- vulkan_core.h:7334
      pipeline : VkPipeline;  -- vulkan_core.h:7335
      executableIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7336
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7332

   type VkPipelineExecutableStatisticValueKHR (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            b32 : aliased VkBool32;  -- vulkan_core.h:7340
         when 1 =>
            i64 : aliased Interfaces.C.long;  -- vulkan_core.h:7341
         when 2 =>
            u64 : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:7342
         when others =>
            f64 : aliased double;  -- vulkan_core.h:7343
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- vulkan_core.h:7339

   subtype VkPipelineExecutableStatisticKHR_array1342 is Interfaces.C.char_array (0 .. 255);
   type VkPipelineExecutableStatisticKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7347
      pNext : System.Address;  -- vulkan_core.h:7348
      name : aliased VkPipelineExecutableStatisticKHR_array1342;  -- vulkan_core.h:7349
      description : aliased VkPipelineExecutableStatisticKHR_array1342;  -- vulkan_core.h:7350
      format : aliased VkPipelineExecutableStatisticFormatKHR;  -- vulkan_core.h:7351
      value : aliased VkPipelineExecutableStatisticValueKHR;  -- vulkan_core.h:7352
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7346

   subtype VkPipelineExecutableInternalRepresentationKHR_array1342 is Interfaces.C.char_array (0 .. 255);
   type VkPipelineExecutableInternalRepresentationKHR is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7356
      pNext : System.Address;  -- vulkan_core.h:7357
      name : aliased VkPipelineExecutableInternalRepresentationKHR_array1342;  -- vulkan_core.h:7358
      description : aliased VkPipelineExecutableInternalRepresentationKHR_array1342;  -- vulkan_core.h:7359
      isText : aliased VkBool32;  -- vulkan_core.h:7360
      dataSize : aliased size_t;  -- vulkan_core.h:7361
      pData : System.Address;  -- vulkan_core.h:7362
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7355

   type PFN_vkGetPipelineExecutablePropertiesKHR is access function
        (arg1 : VkDevice;
         arg2 : access constant VkPipelineInfoKHR;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkPipelineExecutablePropertiesKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:7365

   type PFN_vkGetPipelineExecutableStatisticsKHR is access function
        (arg1 : VkDevice;
         arg2 : access constant VkPipelineExecutableInfoKHR;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkPipelineExecutableStatisticKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:7366

   type PFN_vkGetPipelineExecutableInternalRepresentationsKHR is access function
        (arg1 : VkDevice;
         arg2 : access constant VkPipelineExecutableInfoKHR;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkPipelineExecutableInternalRepresentationKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:7367

   function vkGetPipelineExecutablePropertiesKHR
     (device : VkDevice;
      pPipelineInfo : access constant VkPipelineInfoKHR;
      pExecutableCount : access Interfaces.C.unsigned_short;
      pProperties : access VkPipelineExecutablePropertiesKHR) return VkResult  -- vulkan_core.h:7370
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPipelineExecutablePropertiesKHR";

   function vkGetPipelineExecutableStatisticsKHR
     (device : VkDevice;
      pExecutableInfo : access constant VkPipelineExecutableInfoKHR;
      pStatisticCount : access Interfaces.C.unsigned_short;
      pStatistics : access VkPipelineExecutableStatisticKHR) return VkResult  -- vulkan_core.h:7376
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPipelineExecutableStatisticsKHR";

   function vkGetPipelineExecutableInternalRepresentationsKHR
     (device : VkDevice;
      pExecutableInfo : access constant VkPipelineExecutableInfoKHR;
      pInternalRepresentationCount : access Interfaces.C.unsigned_short;
      pInternalRepresentations : access VkPipelineExecutableInternalRepresentationKHR) return VkResult  -- vulkan_core.h:7382
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPipelineExecutableInternalRepresentationsKHR";

   type VkDebugReportCallbackEXT_T is null record;   -- incomplete struct

   type VkDebugReportCallbackEXT is access all VkDebugReportCallbackEXT_T;  -- vulkan_core.h:7391

   subtype VkDebugReportObjectTypeEXT is unsigned;
   VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT : constant unsigned := 0;
   VK_DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT : constant unsigned := 1;
   VK_DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT : constant unsigned := 2;
   VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT : constant unsigned := 3;
   VK_DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT : constant unsigned := 4;
   VK_DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT : constant unsigned := 5;
   VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT : constant unsigned := 6;
   VK_DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT : constant unsigned := 7;
   VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT : constant unsigned := 8;
   VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT : constant unsigned := 9;
   VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT : constant unsigned := 10;
   VK_DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT : constant unsigned := 11;
   VK_DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT : constant unsigned := 12;
   VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT : constant unsigned := 13;
   VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT : constant unsigned := 14;
   VK_DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT : constant unsigned := 15;
   VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT : constant unsigned := 16;
   VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT : constant unsigned := 17;
   VK_DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT : constant unsigned := 18;
   VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT : constant unsigned := 19;
   VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT : constant unsigned := 20;
   VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT : constant unsigned := 21;
   VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT : constant unsigned := 22;
   VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT : constant unsigned := 23;
   VK_DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT : constant unsigned := 24;
   VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT : constant unsigned := 25;
   VK_DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT : constant unsigned := 26;
   VK_DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT : constant unsigned := 27;
   VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT : constant unsigned := 28;
   VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT : constant unsigned := 29;
   VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT : constant unsigned := 30;
   VK_DEBUG_REPORT_OBJECT_TYPE_OBJECT_TABLE_NVX_EXT : constant unsigned := 31;
   VK_DEBUG_REPORT_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NVX_EXT : constant unsigned := 32;
   VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT : constant unsigned := 33;
   VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT : constant unsigned := 1000156000;
   VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT : constant unsigned := 1000085000;
   VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV_EXT : constant unsigned := 1000165000;
   VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT : constant unsigned := 28;
   VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT : constant unsigned := 33;
   VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR_EXT : constant unsigned := 1000085000;
   VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR_EXT : constant unsigned := 1000156000;
   VK_DEBUG_REPORT_OBJECT_TYPE_BEGIN_RANGE_EXT : constant unsigned := 0;
   VK_DEBUG_REPORT_OBJECT_TYPE_END_RANGE_EXT : constant unsigned := 33;
   VK_DEBUG_REPORT_OBJECT_TYPE_RANGE_SIZE_EXT : constant unsigned := 34;
   VK_DEBUG_REPORT_OBJECT_TYPE_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:7395

   subtype VkDebugReportFlagBitsEXT is unsigned;
   VK_DEBUG_REPORT_INFORMATION_BIT_EXT : constant unsigned := 1;
   VK_DEBUG_REPORT_WARNING_BIT_EXT : constant unsigned := 2;
   VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT : constant unsigned := 4;
   VK_DEBUG_REPORT_ERROR_BIT_EXT : constant unsigned := 8;
   VK_DEBUG_REPORT_DEBUG_BIT_EXT : constant unsigned := 16;
   VK_DEBUG_REPORT_FLAG_BITS_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:7443

   subtype VkDebugReportFlagsEXT is VkFlags;  -- vulkan_core.h:7451

   type PFN_vkDebugReportCallbackEXT is access function
        (arg1 : VkDebugReportFlagsEXT;
         arg2 : VkDebugReportObjectTypeEXT;
         arg3 : Interfaces.C.unsigned_long;
         arg4 : size_t;
         arg5 : Interfaces.C.short;
         arg6 : Interfaces.C.Strings.chars_ptr;
         arg7 : Interfaces.C.Strings.chars_ptr;
         arg8 : System.Address) return VkBool32
   with Convention => C;  -- vulkan_core.h:7452

   type VkDebugReportCallbackCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7463
      pNext : System.Address;  -- vulkan_core.h:7464
      flags : aliased VkDebugReportFlagsEXT;  -- vulkan_core.h:7465
      pfnCallback : PFN_vkDebugReportCallbackEXT;  -- vulkan_core.h:7466
      pUserData : System.Address;  -- vulkan_core.h:7467
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7462

   type PFN_vkCreateDebugReportCallbackEXT is access function
        (arg1 : VkInstance;
         arg2 : access constant VkDebugReportCallbackCreateInfoEXT;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:7470

   type PFN_vkDestroyDebugReportCallbackEXT is access procedure
        (arg1 : VkInstance;
         arg2 : VkDebugReportCallbackEXT;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:7471

   type PFN_vkDebugReportMessageEXT is access procedure
        (arg1 : VkInstance;
         arg2 : VkDebugReportFlagsEXT;
         arg3 : VkDebugReportObjectTypeEXT;
         arg4 : Interfaces.C.unsigned_long;
         arg5 : size_t;
         arg6 : Interfaces.C.short;
         arg7 : Interfaces.C.Strings.chars_ptr;
         arg8 : Interfaces.C.Strings.chars_ptr)
   with Convention => C;  -- vulkan_core.h:7472

   function vkCreateDebugReportCallbackEXT
     (instance : VkInstance;
      pCreateInfo : access constant VkDebugReportCallbackCreateInfoEXT;
      pAllocator : access constant VkAllocationCallbacks;
      pCallback : System.Address) return VkResult  -- vulkan_core.h:7475
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateDebugReportCallbackEXT";

   procedure vkDestroyDebugReportCallbackEXT
     (instance : VkInstance;
      callback : VkDebugReportCallbackEXT;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:7481
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyDebugReportCallbackEXT";

   procedure vkDebugReportMessageEXT
     (instance : VkInstance;
      flags : VkDebugReportFlagsEXT;
      objectType : VkDebugReportObjectTypeEXT;
      object : Interfaces.C.unsigned_long;
      location : size_t;
      messageCode : Interfaces.C.short;
      pLayerPrefix : Interfaces.C.Strings.chars_ptr;
      pMessage : Interfaces.C.Strings.chars_ptr)  -- vulkan_core.h:7486
   with Import => True, 
        Convention => C, 
        External_Name => "vkDebugReportMessageEXT";

   subtype VkRasterizationOrderAMD is unsigned;
   VK_RASTERIZATION_ORDER_STRICT_AMD : constant unsigned := 0;
   VK_RASTERIZATION_ORDER_RELAXED_AMD : constant unsigned := 1;
   VK_RASTERIZATION_ORDER_BEGIN_RANGE_AMD : constant unsigned := 0;
   VK_RASTERIZATION_ORDER_END_RANGE_AMD : constant unsigned := 1;
   VK_RASTERIZATION_ORDER_RANGE_SIZE_AMD : constant unsigned := 2;
   VK_RASTERIZATION_ORDER_MAX_ENUM_AMD : constant unsigned := 2147483647;  -- vulkan_core.h:7517

   type VkPipelineRasterizationStateRasterizationOrderAMD is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7526
      pNext : System.Address;  -- vulkan_core.h:7527
      rasterizationOrder : aliased VkRasterizationOrderAMD;  -- vulkan_core.h:7528
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7525

   type VkDebugMarkerObjectNameInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7547
      pNext : System.Address;  -- vulkan_core.h:7548
      objectType : aliased VkDebugReportObjectTypeEXT;  -- vulkan_core.h:7549
      object : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:7550
      pObjectName : Interfaces.C.Strings.chars_ptr;  -- vulkan_core.h:7551
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7546

   type VkDebugMarkerObjectTagInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7555
      pNext : System.Address;  -- vulkan_core.h:7556
      objectType : aliased VkDebugReportObjectTypeEXT;  -- vulkan_core.h:7557
      object : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:7558
      tagName : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:7559
      tagSize : aliased size_t;  -- vulkan_core.h:7560
      pTag : System.Address;  -- vulkan_core.h:7561
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7554

   type VkDebugMarkerMarkerInfoEXT_array1588 is array (0 .. 3) of aliased float;
   type VkDebugMarkerMarkerInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7565
      pNext : System.Address;  -- vulkan_core.h:7566
      pMarkerName : Interfaces.C.Strings.chars_ptr;  -- vulkan_core.h:7567
      color : aliased VkDebugMarkerMarkerInfoEXT_array1588;  -- vulkan_core.h:7568
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7564

   type PFN_vkDebugMarkerSetObjectTagEXT is access function (arg1 : VkDevice; arg2 : access constant VkDebugMarkerObjectTagInfoEXT) return VkResult
   with Convention => C;  -- vulkan_core.h:7571

   type PFN_vkDebugMarkerSetObjectNameEXT is access function (arg1 : VkDevice; arg2 : access constant VkDebugMarkerObjectNameInfoEXT) return VkResult
   with Convention => C;  -- vulkan_core.h:7572

   type PFN_vkCmdDebugMarkerBeginEXT is access procedure (arg1 : VkCommandBuffer; arg2 : access constant VkDebugMarkerMarkerInfoEXT)
   with Convention => C;  -- vulkan_core.h:7573

   type PFN_vkCmdDebugMarkerEndEXT is access procedure (arg1 : VkCommandBuffer)
   with Convention => C;  -- vulkan_core.h:7574

   type PFN_vkCmdDebugMarkerInsertEXT is access procedure (arg1 : VkCommandBuffer; arg2 : access constant VkDebugMarkerMarkerInfoEXT)
   with Convention => C;  -- vulkan_core.h:7575

   function vkDebugMarkerSetObjectTagEXT (device : VkDevice; pTagInfo : access constant VkDebugMarkerObjectTagInfoEXT) return VkResult  -- vulkan_core.h:7578
   with Import => True, 
        Convention => C, 
        External_Name => "vkDebugMarkerSetObjectTagEXT";

   function vkDebugMarkerSetObjectNameEXT (device : VkDevice; pNameInfo : access constant VkDebugMarkerObjectNameInfoEXT) return VkResult  -- vulkan_core.h:7582
   with Import => True, 
        Convention => C, 
        External_Name => "vkDebugMarkerSetObjectNameEXT";

   procedure vkCmdDebugMarkerBeginEXT (commandBuffer : VkCommandBuffer; pMarkerInfo : access constant VkDebugMarkerMarkerInfoEXT)  -- vulkan_core.h:7586
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDebugMarkerBeginEXT";

   procedure vkCmdDebugMarkerEndEXT (commandBuffer : VkCommandBuffer)  -- vulkan_core.h:7590
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDebugMarkerEndEXT";

   procedure vkCmdDebugMarkerInsertEXT (commandBuffer : VkCommandBuffer; pMarkerInfo : access constant VkDebugMarkerMarkerInfoEXT)  -- vulkan_core.h:7593
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDebugMarkerInsertEXT";

   type VkDedicatedAllocationImageCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7608
      pNext : System.Address;  -- vulkan_core.h:7609
      dedicatedAllocation : aliased VkBool32;  -- vulkan_core.h:7610
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7607

   type VkDedicatedAllocationBufferCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7614
      pNext : System.Address;  -- vulkan_core.h:7615
      dedicatedAllocation : aliased VkBool32;  -- vulkan_core.h:7616
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7613

   type VkDedicatedAllocationMemoryAllocateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7620
      pNext : System.Address;  -- vulkan_core.h:7621
      image : VkImage;  -- vulkan_core.h:7622
      buffer : VkBuffer;  -- vulkan_core.h:7623
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7619

   subtype VkPipelineRasterizationStateStreamCreateFlagsEXT is VkFlags;  -- vulkan_core.h:7631

   type VkPhysicalDeviceTransformFeedbackFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7633
      pNext : System.Address;  -- vulkan_core.h:7634
      transformFeedback : aliased VkBool32;  -- vulkan_core.h:7635
      geometryStreams : aliased VkBool32;  -- vulkan_core.h:7636
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7632

   type VkPhysicalDeviceTransformFeedbackPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7640
      pNext : System.Address;  -- vulkan_core.h:7641
      maxTransformFeedbackStreams : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7642
      maxTransformFeedbackBuffers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7643
      maxTransformFeedbackBufferSize : aliased VkDeviceSize;  -- vulkan_core.h:7644
      maxTransformFeedbackStreamDataSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7645
      maxTransformFeedbackBufferDataSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7646
      maxTransformFeedbackBufferDataStride : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7647
      transformFeedbackQueries : aliased VkBool32;  -- vulkan_core.h:7648
      transformFeedbackStreamsLinesTriangles : aliased VkBool32;  -- vulkan_core.h:7649
      transformFeedbackRasterizationStreamSelect : aliased VkBool32;  -- vulkan_core.h:7650
      transformFeedbackDraw : aliased VkBool32;  -- vulkan_core.h:7651
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7639

   type VkPipelineRasterizationStateStreamCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7655
      pNext : System.Address;  -- vulkan_core.h:7656
      flags : aliased VkPipelineRasterizationStateStreamCreateFlagsEXT;  -- vulkan_core.h:7657
      rasterizationStream : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7658
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7654

   type PFN_vkCmdBindTransformFeedbackBuffersEXT is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : System.Address;
         arg5 : access VkDeviceSize;
         arg6 : access VkDeviceSize)
   with Convention => C;  -- vulkan_core.h:7661

   type PFN_vkCmdBeginTransformFeedbackEXT is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : System.Address;
         arg5 : access VkDeviceSize)
   with Convention => C;  -- vulkan_core.h:7662

   type PFN_vkCmdEndTransformFeedbackEXT is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : System.Address;
         arg5 : access VkDeviceSize)
   with Convention => C;  -- vulkan_core.h:7663

   type PFN_vkCmdBeginQueryIndexedEXT is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkQueryPool;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : VkQueryControlFlags;
         arg5 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:7664

   type PFN_vkCmdEndQueryIndexedEXT is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkQueryPool;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:7665

   type PFN_vkCmdDrawIndirectByteCountEXT is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : VkBuffer;
         arg5 : VkDeviceSize;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:7666

   procedure vkCmdBindTransformFeedbackBuffersEXT
     (commandBuffer : VkCommandBuffer;
      firstBinding : Interfaces.C.unsigned_short;
      bindingCount : Interfaces.C.unsigned_short;
      pBuffers : System.Address;
      pOffsets : access VkDeviceSize;
      pSizes : access VkDeviceSize)  -- vulkan_core.h:7669
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBindTransformFeedbackBuffersEXT";

   procedure vkCmdBeginTransformFeedbackEXT
     (commandBuffer : VkCommandBuffer;
      firstCounterBuffer : Interfaces.C.unsigned_short;
      counterBufferCount : Interfaces.C.unsigned_short;
      pCounterBuffers : System.Address;
      pCounterBufferOffsets : access VkDeviceSize)  -- vulkan_core.h:7677
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBeginTransformFeedbackEXT";

   procedure vkCmdEndTransformFeedbackEXT
     (commandBuffer : VkCommandBuffer;
      firstCounterBuffer : Interfaces.C.unsigned_short;
      counterBufferCount : Interfaces.C.unsigned_short;
      pCounterBuffers : System.Address;
      pCounterBufferOffsets : access VkDeviceSize)  -- vulkan_core.h:7684
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdEndTransformFeedbackEXT";

   procedure vkCmdBeginQueryIndexedEXT
     (commandBuffer : VkCommandBuffer;
      queryPool : VkQueryPool;
      query : Interfaces.C.unsigned_short;
      flags : VkQueryControlFlags;
      index : Interfaces.C.unsigned_short)  -- vulkan_core.h:7691
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBeginQueryIndexedEXT";

   procedure vkCmdEndQueryIndexedEXT
     (commandBuffer : VkCommandBuffer;
      queryPool : VkQueryPool;
      query : Interfaces.C.unsigned_short;
      index : Interfaces.C.unsigned_short)  -- vulkan_core.h:7698
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdEndQueryIndexedEXT";

   procedure vkCmdDrawIndirectByteCountEXT
     (commandBuffer : VkCommandBuffer;
      instanceCount : Interfaces.C.unsigned_short;
      firstInstance : Interfaces.C.unsigned_short;
      counterBuffer : VkBuffer;
      counterBufferOffset : VkDeviceSize;
      counterOffset : Interfaces.C.unsigned_short;
      vertexStride : Interfaces.C.unsigned_short)  -- vulkan_core.h:7704
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawIndirectByteCountEXT";

   type VkImageViewHandleInfoNVX is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7719
      pNext : System.Address;  -- vulkan_core.h:7720
      imageView : VkImageView;  -- vulkan_core.h:7721
      descriptorType : aliased VkDescriptorType;  -- vulkan_core.h:7722
      sampler : VkSampler;  -- vulkan_core.h:7723
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7718

   type PFN_vkGetImageViewHandleNVX is access function (arg1 : VkDevice; arg2 : access constant VkImageViewHandleInfoNVX) return Interfaces.C.unsigned_short
   with Convention => C;  -- vulkan_core.h:7726

   function vkGetImageViewHandleNVX (device : VkDevice; pInfo : access constant VkImageViewHandleInfoNVX) return Interfaces.C.unsigned_short  -- vulkan_core.h:7729
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetImageViewHandleNVX";

   type PFN_vkCmdDrawIndirectCountAMD is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : VkBuffer;
         arg5 : VkDeviceSize;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:7738

   type PFN_vkCmdDrawIndexedIndirectCountAMD is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : VkBuffer;
         arg5 : VkDeviceSize;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:7739

   procedure vkCmdDrawIndirectCountAMD
     (commandBuffer : VkCommandBuffer;
      buffer : VkBuffer;
      offset : VkDeviceSize;
      countBuffer : VkBuffer;
      countBufferOffset : VkDeviceSize;
      maxDrawCount : Interfaces.C.unsigned_short;
      stride : Interfaces.C.unsigned_short)  -- vulkan_core.h:7742
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawIndirectCountAMD";

   procedure vkCmdDrawIndexedIndirectCountAMD
     (commandBuffer : VkCommandBuffer;
      buffer : VkBuffer;
      offset : VkDeviceSize;
      countBuffer : VkBuffer;
      countBufferOffset : VkDeviceSize;
      maxDrawCount : Interfaces.C.unsigned_short;
      stride : Interfaces.C.unsigned_short)  -- vulkan_core.h:7751
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawIndexedIndirectCountAMD";

   type VkTextureLODGatherFormatPropertiesAMD is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7781
      pNext : System.Address;  -- vulkan_core.h:7782
      supportsTextureGatherLODBiasAMD : aliased VkBool32;  -- vulkan_core.h:7783
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7780

   subtype VkShaderInfoTypeAMD is unsigned;
   VK_SHADER_INFO_TYPE_STATISTICS_AMD : constant unsigned := 0;
   VK_SHADER_INFO_TYPE_BINARY_AMD : constant unsigned := 1;
   VK_SHADER_INFO_TYPE_DISASSEMBLY_AMD : constant unsigned := 2;
   VK_SHADER_INFO_TYPE_BEGIN_RANGE_AMD : constant unsigned := 0;
   VK_SHADER_INFO_TYPE_END_RANGE_AMD : constant unsigned := 2;
   VK_SHADER_INFO_TYPE_RANGE_SIZE_AMD : constant unsigned := 3;
   VK_SHADER_INFO_TYPE_MAX_ENUM_AMD : constant unsigned := 2147483647;  -- vulkan_core.h:7792

   type VkShaderResourceUsageAMD is record
      numUsedVgprs : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7802
      numUsedSgprs : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7803
      ldsSizePerLocalWorkGroup : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7804
      ldsUsageSizeInBytes : aliased size_t;  -- vulkan_core.h:7805
      scratchMemUsageInBytes : aliased size_t;  -- vulkan_core.h:7806
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7801

   type VkShaderStatisticsInfoAMD_array1331 is array (0 .. 2) of aliased Interfaces.C.unsigned_short;
   type VkShaderStatisticsInfoAMD is record
      shaderStageMask : aliased VkShaderStageFlags;  -- vulkan_core.h:7810
      resourceUsage : aliased VkShaderResourceUsageAMD;  -- vulkan_core.h:7811
      numPhysicalVgprs : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7812
      numPhysicalSgprs : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7813
      numAvailableVgprs : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7814
      numAvailableSgprs : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7815
      computeWorkGroupSize : aliased VkShaderStatisticsInfoAMD_array1331;  -- vulkan_core.h:7816
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7809

   type PFN_vkGetShaderInfoAMD is access function
        (arg1 : VkDevice;
         arg2 : VkPipeline;
         arg3 : VkShaderStageFlagBits;
         arg4 : VkShaderInfoTypeAMD;
         arg5 : access size_t;
         arg6 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:7819

   function vkGetShaderInfoAMD
     (device : VkDevice;
      pipeline : VkPipeline;
      shaderStage : VkShaderStageFlagBits;
      infoType : VkShaderInfoTypeAMD;
      pInfoSize : access size_t;
      pInfo : System.Address) return VkResult  -- vulkan_core.h:7822
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetShaderInfoAMD";

   type VkPhysicalDeviceCornerSampledImageFeaturesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7841
      pNext : System.Address;  -- vulkan_core.h:7842
      cornerSampledImage : aliased VkBool32;  -- vulkan_core.h:7843
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7840

   subtype VkExternalMemoryHandleTypeFlagBitsNV is unsigned;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV : constant unsigned := 1;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV : constant unsigned := 2;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV : constant unsigned := 4;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV : constant unsigned := 8;
   VK_EXTERNAL_MEMORY_HANDLE_TYPE_FLAG_BITS_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:7857

   subtype VkExternalMemoryHandleTypeFlagsNV is VkFlags;  -- vulkan_core.h:7864

   subtype VkExternalMemoryFeatureFlagBitsNV is unsigned;
   VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV : constant unsigned := 1;
   VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV : constant unsigned := 2;
   VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV : constant unsigned := 4;
   VK_EXTERNAL_MEMORY_FEATURE_FLAG_BITS_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:7866

   subtype VkExternalMemoryFeatureFlagsNV is VkFlags;  -- vulkan_core.h:7872

   type VkExternalImageFormatPropertiesNV is record
      imageFormatProperties : aliased VkImageFormatProperties;  -- vulkan_core.h:7874
      externalMemoryFeatures : aliased VkExternalMemoryFeatureFlagsNV;  -- vulkan_core.h:7875
      exportFromImportedHandleTypes : aliased VkExternalMemoryHandleTypeFlagsNV;  -- vulkan_core.h:7876
      compatibleHandleTypes : aliased VkExternalMemoryHandleTypeFlagsNV;  -- vulkan_core.h:7877
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7873

   type PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV is access function
        (arg1 : VkPhysicalDevice;
         arg2 : VkFormat;
         arg3 : VkImageType;
         arg4 : VkImageTiling;
         arg5 : VkImageUsageFlags;
         arg6 : VkImageCreateFlags;
         arg7 : VkExternalMemoryHandleTypeFlagsNV;
         arg8 : access VkExternalImageFormatPropertiesNV) return VkResult
   with Convention => C;  -- vulkan_core.h:7880

   function vkGetPhysicalDeviceExternalImageFormatPropertiesNV
     (physicalDevice : VkPhysicalDevice;
      format : VkFormat;
      c_type : VkImageType;
      tiling : VkImageTiling;
      usage : VkImageUsageFlags;
      flags : VkImageCreateFlags;
      externalHandleType : VkExternalMemoryHandleTypeFlagsNV;
      pExternalImageFormatProperties : access VkExternalImageFormatPropertiesNV) return VkResult  -- vulkan_core.h:7883
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceExternalImageFormatPropertiesNV";

   type VkExternalMemoryImageCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7899
      pNext : System.Address;  -- vulkan_core.h:7900
      handleTypes : aliased VkExternalMemoryHandleTypeFlagsNV;  -- vulkan_core.h:7901
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7898

   type VkExportMemoryAllocateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7905
      pNext : System.Address;  -- vulkan_core.h:7906
      handleTypes : aliased VkExternalMemoryHandleTypeFlagsNV;  -- vulkan_core.h:7907
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7904

   subtype VkValidationCheckEXT is unsigned;
   VK_VALIDATION_CHECK_ALL_EXT : constant unsigned := 0;
   VK_VALIDATION_CHECK_SHADERS_EXT : constant unsigned := 1;
   VK_VALIDATION_CHECK_BEGIN_RANGE_EXT : constant unsigned := 0;
   VK_VALIDATION_CHECK_END_RANGE_EXT : constant unsigned := 1;
   VK_VALIDATION_CHECK_RANGE_SIZE_EXT : constant unsigned := 2;
   VK_VALIDATION_CHECK_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:7916

   type VkValidationFlagsEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7925
      pNext : System.Address;  -- vulkan_core.h:7926
      disabledValidationCheckCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:7927
      pDisabledValidationChecks : access VkValidationCheckEXT;  -- vulkan_core.h:7928
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7924

   type VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7947
      pNext : System.Address;  -- vulkan_core.h:7948
      textureCompressionASTC_HDR : aliased VkBool32;  -- vulkan_core.h:7949
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7946

   type VkImageViewASTCDecodeModeEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7958
      pNext : System.Address;  -- vulkan_core.h:7959
      decodeMode : aliased VkFormat;  -- vulkan_core.h:7960
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7957

   type VkPhysicalDeviceASTCDecodeFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7964
      pNext : System.Address;  -- vulkan_core.h:7965
      decodeModeSharedExponent : aliased VkBool32;  -- vulkan_core.h:7966
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7963

   subtype VkConditionalRenderingFlagBitsEXT is unsigned;
   VK_CONDITIONAL_RENDERING_INVERTED_BIT_EXT : constant unsigned := 1;
   VK_CONDITIONAL_RENDERING_FLAG_BITS_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:7975

   subtype VkConditionalRenderingFlagsEXT is VkFlags;  -- vulkan_core.h:7979

   type VkConditionalRenderingBeginInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7981
      pNext : System.Address;  -- vulkan_core.h:7982
      buffer : VkBuffer;  -- vulkan_core.h:7983
      offset : aliased VkDeviceSize;  -- vulkan_core.h:7984
      flags : aliased VkConditionalRenderingFlagsEXT;  -- vulkan_core.h:7985
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7980

   type VkPhysicalDeviceConditionalRenderingFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7989
      pNext : System.Address;  -- vulkan_core.h:7990
      conditionalRendering : aliased VkBool32;  -- vulkan_core.h:7991
      inheritedConditionalRendering : aliased VkBool32;  -- vulkan_core.h:7992
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7988

   type VkCommandBufferInheritanceConditionalRenderingInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:7996
      pNext : System.Address;  -- vulkan_core.h:7997
      conditionalRenderingEnable : aliased VkBool32;  -- vulkan_core.h:7998
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:7995

   type PFN_vkCmdBeginConditionalRenderingEXT is access procedure (arg1 : VkCommandBuffer; arg2 : access constant VkConditionalRenderingBeginInfoEXT)
   with Convention => C;  -- vulkan_core.h:8001

   type PFN_vkCmdEndConditionalRenderingEXT is access procedure (arg1 : VkCommandBuffer)
   with Convention => C;  -- vulkan_core.h:8002

   procedure vkCmdBeginConditionalRenderingEXT (commandBuffer : VkCommandBuffer; pConditionalRenderingBegin : access constant VkConditionalRenderingBeginInfoEXT)  -- vulkan_core.h:8005
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBeginConditionalRenderingEXT";

   procedure vkCmdEndConditionalRenderingEXT (commandBuffer : VkCommandBuffer)  -- vulkan_core.h:8009
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdEndConditionalRenderingEXT";

   type VkObjectTableNVX_T is null record;   -- incomplete struct

   type VkObjectTableNVX is access all VkObjectTableNVX_T;  -- vulkan_core.h:8015

   type VkIndirectCommandsLayoutNVX_T is null record;   -- incomplete struct

   type VkIndirectCommandsLayoutNVX is access all VkIndirectCommandsLayoutNVX_T;  -- vulkan_core.h:8016

   subtype VkIndirectCommandsTokenTypeNVX is unsigned;
   VK_INDIRECT_COMMANDS_TOKEN_TYPE_PIPELINE_NVX : constant unsigned := 0;
   VK_INDIRECT_COMMANDS_TOKEN_TYPE_DESCRIPTOR_SET_NVX : constant unsigned := 1;
   VK_INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NVX : constant unsigned := 2;
   VK_INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NVX : constant unsigned := 3;
   VK_INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NVX : constant unsigned := 4;
   VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NVX : constant unsigned := 5;
   VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NVX : constant unsigned := 6;
   VK_INDIRECT_COMMANDS_TOKEN_TYPE_DISPATCH_NVX : constant unsigned := 7;
   VK_INDIRECT_COMMANDS_TOKEN_TYPE_BEGIN_RANGE_NVX : constant unsigned := 0;
   VK_INDIRECT_COMMANDS_TOKEN_TYPE_END_RANGE_NVX : constant unsigned := 7;
   VK_INDIRECT_COMMANDS_TOKEN_TYPE_RANGE_SIZE_NVX : constant unsigned := 8;
   VK_INDIRECT_COMMANDS_TOKEN_TYPE_MAX_ENUM_NVX : constant unsigned := 2147483647;  -- vulkan_core.h:8020

   subtype VkObjectEntryTypeNVX is unsigned;
   VK_OBJECT_ENTRY_TYPE_DESCRIPTOR_SET_NVX : constant unsigned := 0;
   VK_OBJECT_ENTRY_TYPE_PIPELINE_NVX : constant unsigned := 1;
   VK_OBJECT_ENTRY_TYPE_INDEX_BUFFER_NVX : constant unsigned := 2;
   VK_OBJECT_ENTRY_TYPE_VERTEX_BUFFER_NVX : constant unsigned := 3;
   VK_OBJECT_ENTRY_TYPE_PUSH_CONSTANT_NVX : constant unsigned := 4;
   VK_OBJECT_ENTRY_TYPE_BEGIN_RANGE_NVX : constant unsigned := 0;
   VK_OBJECT_ENTRY_TYPE_END_RANGE_NVX : constant unsigned := 4;
   VK_OBJECT_ENTRY_TYPE_RANGE_SIZE_NVX : constant unsigned := 5;
   VK_OBJECT_ENTRY_TYPE_MAX_ENUM_NVX : constant unsigned := 2147483647;  -- vulkan_core.h:8035

   subtype VkIndirectCommandsLayoutUsageFlagBitsNVX is unsigned;
   VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NVX : constant unsigned := 1;
   VK_INDIRECT_COMMANDS_LAYOUT_USAGE_SPARSE_SEQUENCES_BIT_NVX : constant unsigned := 2;
   VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EMPTY_EXECUTIONS_BIT_NVX : constant unsigned := 4;
   VK_INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NVX : constant unsigned := 8;
   VK_INDIRECT_COMMANDS_LAYOUT_USAGE_FLAG_BITS_MAX_ENUM_NVX : constant unsigned := 2147483647;  -- vulkan_core.h:8047

   subtype VkIndirectCommandsLayoutUsageFlagsNVX is VkFlags;  -- vulkan_core.h:8054

   subtype VkObjectEntryUsageFlagBitsNVX is unsigned;
   VK_OBJECT_ENTRY_USAGE_GRAPHICS_BIT_NVX : constant unsigned := 1;
   VK_OBJECT_ENTRY_USAGE_COMPUTE_BIT_NVX : constant unsigned := 2;
   VK_OBJECT_ENTRY_USAGE_FLAG_BITS_MAX_ENUM_NVX : constant unsigned := 2147483647;  -- vulkan_core.h:8056

   subtype VkObjectEntryUsageFlagsNVX is VkFlags;  -- vulkan_core.h:8061

   type VkDeviceGeneratedCommandsFeaturesNVX is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8063
      pNext : System.Address;  -- vulkan_core.h:8064
      computeBindingPointSupport : aliased VkBool32;  -- vulkan_core.h:8065
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8062

   type VkDeviceGeneratedCommandsLimitsNVX is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8069
      pNext : System.Address;  -- vulkan_core.h:8070
      maxIndirectCommandsLayoutTokenCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8071
      maxObjectEntryCounts : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8072
      minSequenceCountBufferOffsetAlignment : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8073
      minSequenceIndexBufferOffsetAlignment : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8074
      minCommandsTokenBufferOffsetAlignment : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8075
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8068

   type VkIndirectCommandsTokenNVX is record
      tokenType : aliased VkIndirectCommandsTokenTypeNVX;  -- vulkan_core.h:8079
      buffer : VkBuffer;  -- vulkan_core.h:8080
      offset : aliased VkDeviceSize;  -- vulkan_core.h:8081
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8078

   type VkIndirectCommandsLayoutTokenNVX is record
      tokenType : aliased VkIndirectCommandsTokenTypeNVX;  -- vulkan_core.h:8085
      bindingUnit : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8086
      dynamicCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8087
      divisor : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8088
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8084

   type VkIndirectCommandsLayoutCreateInfoNVX is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8092
      pNext : System.Address;  -- vulkan_core.h:8093
      pipelineBindPoint : aliased VkPipelineBindPoint;  -- vulkan_core.h:8094
      flags : aliased VkIndirectCommandsLayoutUsageFlagsNVX;  -- vulkan_core.h:8095
      tokenCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8096
      pTokens : access constant VkIndirectCommandsLayoutTokenNVX;  -- vulkan_core.h:8097
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8091

   type VkCmdProcessCommandsInfoNVX is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8101
      pNext : System.Address;  -- vulkan_core.h:8102
      objectTable : VkObjectTableNVX;  -- vulkan_core.h:8103
      indirectCommandsLayout : VkIndirectCommandsLayoutNVX;  -- vulkan_core.h:8104
      indirectCommandsTokenCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8105
      pIndirectCommandsTokens : access constant VkIndirectCommandsTokenNVX;  -- vulkan_core.h:8106
      maxSequencesCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8107
      targetCommandBuffer : VkCommandBuffer;  -- vulkan_core.h:8108
      sequencesCountBuffer : VkBuffer;  -- vulkan_core.h:8109
      sequencesCountOffset : aliased VkDeviceSize;  -- vulkan_core.h:8110
      sequencesIndexBuffer : VkBuffer;  -- vulkan_core.h:8111
      sequencesIndexOffset : aliased VkDeviceSize;  -- vulkan_core.h:8112
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8100

   type VkCmdReserveSpaceForCommandsInfoNVX is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8116
      pNext : System.Address;  -- vulkan_core.h:8117
      objectTable : VkObjectTableNVX;  -- vulkan_core.h:8118
      indirectCommandsLayout : VkIndirectCommandsLayoutNVX;  -- vulkan_core.h:8119
      maxSequencesCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8120
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8115

   type VkObjectTableCreateInfoNVX is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8124
      pNext : System.Address;  -- vulkan_core.h:8125
      objectCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8126
      pObjectEntryTypes : access VkObjectEntryTypeNVX;  -- vulkan_core.h:8127
      pObjectEntryCounts : access Interfaces.C.unsigned_short;  -- vulkan_core.h:8128
      pObjectEntryUsageFlags : access VkObjectEntryUsageFlagsNVX;  -- vulkan_core.h:8129
      maxUniformBuffersPerDescriptor : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8130
      maxStorageBuffersPerDescriptor : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8131
      maxStorageImagesPerDescriptor : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8132
      maxSampledImagesPerDescriptor : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8133
      maxPipelineLayouts : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8134
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8123

   type VkObjectTableEntryNVX is record
      c_type : aliased VkObjectEntryTypeNVX;  -- vulkan_core.h:8138
      flags : aliased VkObjectEntryUsageFlagsNVX;  -- vulkan_core.h:8139
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8137

   type VkObjectTablePipelineEntryNVX is record
      c_type : aliased VkObjectEntryTypeNVX;  -- vulkan_core.h:8143
      flags : aliased VkObjectEntryUsageFlagsNVX;  -- vulkan_core.h:8144
      pipeline : VkPipeline;  -- vulkan_core.h:8145
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8142

   type VkObjectTableDescriptorSetEntryNVX is record
      c_type : aliased VkObjectEntryTypeNVX;  -- vulkan_core.h:8149
      flags : aliased VkObjectEntryUsageFlagsNVX;  -- vulkan_core.h:8150
      pipelineLayout : VkPipelineLayout;  -- vulkan_core.h:8151
      descriptorSet : VkDescriptorSet;  -- vulkan_core.h:8152
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8148

   type VkObjectTableVertexBufferEntryNVX is record
      c_type : aliased VkObjectEntryTypeNVX;  -- vulkan_core.h:8156
      flags : aliased VkObjectEntryUsageFlagsNVX;  -- vulkan_core.h:8157
      buffer : VkBuffer;  -- vulkan_core.h:8158
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8155

   type VkObjectTableIndexBufferEntryNVX is record
      c_type : aliased VkObjectEntryTypeNVX;  -- vulkan_core.h:8162
      flags : aliased VkObjectEntryUsageFlagsNVX;  -- vulkan_core.h:8163
      buffer : VkBuffer;  -- vulkan_core.h:8164
      indexType : aliased VkIndexType;  -- vulkan_core.h:8165
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8161

   type VkObjectTablePushConstantEntryNVX is record
      c_type : aliased VkObjectEntryTypeNVX;  -- vulkan_core.h:8169
      flags : aliased VkObjectEntryUsageFlagsNVX;  -- vulkan_core.h:8170
      pipelineLayout : VkPipelineLayout;  -- vulkan_core.h:8171
      stageFlags : aliased VkShaderStageFlags;  -- vulkan_core.h:8172
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8168

   type PFN_vkCmdProcessCommandsNVX is access procedure (arg1 : VkCommandBuffer; arg2 : access constant VkCmdProcessCommandsInfoNVX)
   with Convention => C;  -- vulkan_core.h:8175

   type PFN_vkCmdReserveSpaceForCommandsNVX is access procedure (arg1 : VkCommandBuffer; arg2 : access constant VkCmdReserveSpaceForCommandsInfoNVX)
   with Convention => C;  -- vulkan_core.h:8176

   type PFN_vkCreateIndirectCommandsLayoutNVX is access function
        (arg1 : VkDevice;
         arg2 : access constant VkIndirectCommandsLayoutCreateInfoNVX;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:8177

   type PFN_vkDestroyIndirectCommandsLayoutNVX is access procedure
        (arg1 : VkDevice;
         arg2 : VkIndirectCommandsLayoutNVX;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:8178

   type PFN_vkCreateObjectTableNVX is access function
        (arg1 : VkDevice;
         arg2 : access constant VkObjectTableCreateInfoNVX;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:8179

   type PFN_vkDestroyObjectTableNVX is access procedure
        (arg1 : VkDevice;
         arg2 : VkObjectTableNVX;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:8180

   type PFN_vkRegisterObjectsNVX is access function
        (arg1 : VkDevice;
         arg2 : VkObjectTableNVX;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : System.Address;
         arg5 : access Interfaces.C.unsigned_short) return VkResult
   with Convention => C;  -- vulkan_core.h:8181

   type PFN_vkUnregisterObjectsNVX is access function
        (arg1 : VkDevice;
         arg2 : VkObjectTableNVX;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : access VkObjectEntryTypeNVX;
         arg5 : access Interfaces.C.unsigned_short) return VkResult
   with Convention => C;  -- vulkan_core.h:8182

   type PFN_vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : access VkDeviceGeneratedCommandsFeaturesNVX;
         arg3 : access VkDeviceGeneratedCommandsLimitsNVX)
   with Convention => C;  -- vulkan_core.h:8183

   procedure vkCmdProcessCommandsNVX (commandBuffer : VkCommandBuffer; pProcessCommandsInfo : access constant VkCmdProcessCommandsInfoNVX)  -- vulkan_core.h:8186
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdProcessCommandsNVX";

   procedure vkCmdReserveSpaceForCommandsNVX (commandBuffer : VkCommandBuffer; pReserveSpaceInfo : access constant VkCmdReserveSpaceForCommandsInfoNVX)  -- vulkan_core.h:8190
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdReserveSpaceForCommandsNVX";

   function vkCreateIndirectCommandsLayoutNVX
     (device : VkDevice;
      pCreateInfo : access constant VkIndirectCommandsLayoutCreateInfoNVX;
      pAllocator : access constant VkAllocationCallbacks;
      pIndirectCommandsLayout : System.Address) return VkResult  -- vulkan_core.h:8194
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateIndirectCommandsLayoutNVX";

   procedure vkDestroyIndirectCommandsLayoutNVX
     (device : VkDevice;
      indirectCommandsLayout : VkIndirectCommandsLayoutNVX;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:8200
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyIndirectCommandsLayoutNVX";

   function vkCreateObjectTableNVX
     (device : VkDevice;
      pCreateInfo : access constant VkObjectTableCreateInfoNVX;
      pAllocator : access constant VkAllocationCallbacks;
      pObjectTable : System.Address) return VkResult  -- vulkan_core.h:8205
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateObjectTableNVX";

   procedure vkDestroyObjectTableNVX
     (device : VkDevice;
      objectTable : VkObjectTableNVX;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:8211
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyObjectTableNVX";

   function vkRegisterObjectsNVX
     (device : VkDevice;
      objectTable : VkObjectTableNVX;
      objectCount : Interfaces.C.unsigned_short;
      ppObjectTableEntries : System.Address;
      pObjectIndices : access Interfaces.C.unsigned_short) return VkResult  -- vulkan_core.h:8216
   with Import => True, 
        Convention => C, 
        External_Name => "vkRegisterObjectsNVX";

   function vkUnregisterObjectsNVX
     (device : VkDevice;
      objectTable : VkObjectTableNVX;
      objectCount : Interfaces.C.unsigned_short;
      pObjectEntryTypes : access VkObjectEntryTypeNVX;
      pObjectIndices : access Interfaces.C.unsigned_short) return VkResult  -- vulkan_core.h:8223
   with Import => True, 
        Convention => C, 
        External_Name => "vkUnregisterObjectsNVX";

   procedure vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX
     (physicalDevice : VkPhysicalDevice;
      pFeatures : access VkDeviceGeneratedCommandsFeaturesNVX;
      pLimits : access VkDeviceGeneratedCommandsLimitsNVX)  -- vulkan_core.h:8230
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX";

   type VkViewportWScalingNV is record
      xcoeff : aliased float;  -- vulkan_core.h:8241
      ycoeff : aliased float;  -- vulkan_core.h:8242
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8240

   type VkPipelineViewportWScalingStateCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8246
      pNext : System.Address;  -- vulkan_core.h:8247
      viewportWScalingEnable : aliased VkBool32;  -- vulkan_core.h:8248
      viewportCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8249
      pViewportWScalings : access constant VkViewportWScalingNV;  -- vulkan_core.h:8250
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8245

   type PFN_vkCmdSetViewportWScalingNV is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : access constant VkViewportWScalingNV)
   with Convention => C;  -- vulkan_core.h:8253

   procedure vkCmdSetViewportWScalingNV
     (commandBuffer : VkCommandBuffer;
      firstViewport : Interfaces.C.unsigned_short;
      viewportCount : Interfaces.C.unsigned_short;
      pViewportWScalings : access constant VkViewportWScalingNV)  -- vulkan_core.h:8256
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetViewportWScalingNV";

   type PFN_vkReleaseDisplayEXT is access function (arg1 : VkPhysicalDevice; arg2 : VkDisplayKHR) return VkResult
   with Convention => C;  -- vulkan_core.h:8267

   function vkReleaseDisplayEXT (physicalDevice : VkPhysicalDevice; display : VkDisplayKHR) return VkResult  -- vulkan_core.h:8270
   with Import => True, 
        Convention => C, 
        External_Name => "vkReleaseDisplayEXT";

   subtype VkSurfaceCounterFlagBitsEXT is unsigned;
   VK_SURFACE_COUNTER_VBLANK_EXT : constant unsigned := 1;
   VK_SURFACE_COUNTER_FLAG_BITS_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:8280

   subtype VkSurfaceCounterFlagsEXT is VkFlags;  -- vulkan_core.h:8284

   type VkSurfaceCapabilities2EXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8286
      pNext : System.Address;  -- vulkan_core.h:8287
      minImageCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8288
      maxImageCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8289
      currentExtent : aliased VkExtent2D;  -- vulkan_core.h:8290
      minImageExtent : aliased VkExtent2D;  -- vulkan_core.h:8291
      maxImageExtent : aliased VkExtent2D;  -- vulkan_core.h:8292
      maxImageArrayLayers : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8293
      supportedTransforms : aliased VkSurfaceTransformFlagsKHR;  -- vulkan_core.h:8294
      currentTransform : aliased VkSurfaceTransformFlagBitsKHR;  -- vulkan_core.h:8295
      supportedCompositeAlpha : aliased VkCompositeAlphaFlagsKHR;  -- vulkan_core.h:8296
      supportedUsageFlags : aliased VkImageUsageFlags;  -- vulkan_core.h:8297
      supportedSurfaceCounters : aliased VkSurfaceCounterFlagsEXT;  -- vulkan_core.h:8298
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8285

   type PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT is access function
        (arg1 : VkPhysicalDevice;
         arg2 : VkSurfaceKHR;
         arg3 : access VkSurfaceCapabilities2EXT) return VkResult
   with Convention => C;  -- vulkan_core.h:8301

   function vkGetPhysicalDeviceSurfaceCapabilities2EXT
     (physicalDevice : VkPhysicalDevice;
      surface : VkSurfaceKHR;
      pSurfaceCapabilities : access VkSurfaceCapabilities2EXT) return VkResult  -- vulkan_core.h:8304
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceSurfaceCapabilities2EXT";

   subtype VkDisplayPowerStateEXT is unsigned;
   VK_DISPLAY_POWER_STATE_OFF_EXT : constant unsigned := 0;
   VK_DISPLAY_POWER_STATE_SUSPEND_EXT : constant unsigned := 1;
   VK_DISPLAY_POWER_STATE_ON_EXT : constant unsigned := 2;
   VK_DISPLAY_POWER_STATE_BEGIN_RANGE_EXT : constant unsigned := 0;
   VK_DISPLAY_POWER_STATE_END_RANGE_EXT : constant unsigned := 2;
   VK_DISPLAY_POWER_STATE_RANGE_SIZE_EXT : constant unsigned := 3;
   VK_DISPLAY_POWER_STATE_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:8315

   subtype VkDeviceEventTypeEXT is unsigned;
   VK_DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT : constant unsigned := 0;
   VK_DEVICE_EVENT_TYPE_BEGIN_RANGE_EXT : constant unsigned := 0;
   VK_DEVICE_EVENT_TYPE_END_RANGE_EXT : constant unsigned := 0;
   VK_DEVICE_EVENT_TYPE_RANGE_SIZE_EXT : constant unsigned := 1;
   VK_DEVICE_EVENT_TYPE_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:8325

   subtype VkDisplayEventTypeEXT is unsigned;
   VK_DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT : constant unsigned := 0;
   VK_DISPLAY_EVENT_TYPE_BEGIN_RANGE_EXT : constant unsigned := 0;
   VK_DISPLAY_EVENT_TYPE_END_RANGE_EXT : constant unsigned := 0;
   VK_DISPLAY_EVENT_TYPE_RANGE_SIZE_EXT : constant unsigned := 1;
   VK_DISPLAY_EVENT_TYPE_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:8333

   type VkDisplayPowerInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8341
      pNext : System.Address;  -- vulkan_core.h:8342
      powerState : aliased VkDisplayPowerStateEXT;  -- vulkan_core.h:8343
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8340

   type VkDeviceEventInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8347
      pNext : System.Address;  -- vulkan_core.h:8348
      deviceEvent : aliased VkDeviceEventTypeEXT;  -- vulkan_core.h:8349
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8346

   type VkDisplayEventInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8353
      pNext : System.Address;  -- vulkan_core.h:8354
      displayEvent : aliased VkDisplayEventTypeEXT;  -- vulkan_core.h:8355
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8352

   type VkSwapchainCounterCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8359
      pNext : System.Address;  -- vulkan_core.h:8360
      surfaceCounters : aliased VkSurfaceCounterFlagsEXT;  -- vulkan_core.h:8361
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8358

   type PFN_vkDisplayPowerControlEXT is access function
        (arg1 : VkDevice;
         arg2 : VkDisplayKHR;
         arg3 : access constant VkDisplayPowerInfoEXT) return VkResult
   with Convention => C;  -- vulkan_core.h:8364

   type PFN_vkRegisterDeviceEventEXT is access function
        (arg1 : VkDevice;
         arg2 : access constant VkDeviceEventInfoEXT;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:8365

   type PFN_vkRegisterDisplayEventEXT is access function
        (arg1 : VkDevice;
         arg2 : VkDisplayKHR;
         arg3 : access constant VkDisplayEventInfoEXT;
         arg4 : access constant VkAllocationCallbacks;
         arg5 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:8366

   type PFN_vkGetSwapchainCounterEXT is access function
        (arg1 : VkDevice;
         arg2 : VkSwapchainKHR;
         arg3 : VkSurfaceCounterFlagBitsEXT;
         arg4 : access Interfaces.C.unsigned_long) return VkResult
   with Convention => C;  -- vulkan_core.h:8367

   function vkDisplayPowerControlEXT
     (device : VkDevice;
      display : VkDisplayKHR;
      pDisplayPowerInfo : access constant VkDisplayPowerInfoEXT) return VkResult  -- vulkan_core.h:8370
   with Import => True, 
        Convention => C, 
        External_Name => "vkDisplayPowerControlEXT";

   function vkRegisterDeviceEventEXT
     (device : VkDevice;
      pDeviceEventInfo : access constant VkDeviceEventInfoEXT;
      pAllocator : access constant VkAllocationCallbacks;
      pFence : System.Address) return VkResult  -- vulkan_core.h:8375
   with Import => True, 
        Convention => C, 
        External_Name => "vkRegisterDeviceEventEXT";

   function vkRegisterDisplayEventEXT
     (device : VkDevice;
      display : VkDisplayKHR;
      pDisplayEventInfo : access constant VkDisplayEventInfoEXT;
      pAllocator : access constant VkAllocationCallbacks;
      pFence : System.Address) return VkResult  -- vulkan_core.h:8381
   with Import => True, 
        Convention => C, 
        External_Name => "vkRegisterDisplayEventEXT";

   function vkGetSwapchainCounterEXT
     (device : VkDevice;
      swapchain : VkSwapchainKHR;
      counter : VkSurfaceCounterFlagBitsEXT;
      pCounterValue : access Interfaces.C.unsigned_long) return VkResult  -- vulkan_core.h:8388
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetSwapchainCounterEXT";

   type VkRefreshCycleDurationGOOGLE is record
      refreshDuration : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:8400
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8399

   type VkPastPresentationTimingGOOGLE is record
      presentID : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8404
      desiredPresentTime : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:8405
      actualPresentTime : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:8406
      earliestPresentTime : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:8407
      presentMargin : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:8408
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8403

   type VkPresentTimeGOOGLE is record
      presentID : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8412
      desiredPresentTime : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:8413
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8411

   type VkPresentTimesInfoGOOGLE is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8417
      pNext : System.Address;  -- vulkan_core.h:8418
      swapchainCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8419
      pTimes : access constant VkPresentTimeGOOGLE;  -- vulkan_core.h:8420
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8416

   type PFN_vkGetRefreshCycleDurationGOOGLE is access function
        (arg1 : VkDevice;
         arg2 : VkSwapchainKHR;
         arg3 : access VkRefreshCycleDurationGOOGLE) return VkResult
   with Convention => C;  -- vulkan_core.h:8423

   type PFN_vkGetPastPresentationTimingGOOGLE is access function
        (arg1 : VkDevice;
         arg2 : VkSwapchainKHR;
         arg3 : access Interfaces.C.unsigned_short;
         arg4 : access VkPastPresentationTimingGOOGLE) return VkResult
   with Convention => C;  -- vulkan_core.h:8424

   function vkGetRefreshCycleDurationGOOGLE
     (device : VkDevice;
      swapchain : VkSwapchainKHR;
      pDisplayTimingProperties : access VkRefreshCycleDurationGOOGLE) return VkResult  -- vulkan_core.h:8427
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetRefreshCycleDurationGOOGLE";

   function vkGetPastPresentationTimingGOOGLE
     (device : VkDevice;
      swapchain : VkSwapchainKHR;
      pPresentationTimingCount : access Interfaces.C.unsigned_short;
      pPresentationTimings : access VkPastPresentationTimingGOOGLE) return VkResult  -- vulkan_core.h:8432
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPastPresentationTimingGOOGLE";

   type VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8459
      pNext : System.Address;  -- vulkan_core.h:8460
      perViewPositionAllComponents : aliased VkBool32;  -- vulkan_core.h:8461
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8458

   subtype VkViewportCoordinateSwizzleNV is unsigned;
   VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV : constant unsigned := 0;
   VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV : constant unsigned := 1;
   VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV : constant unsigned := 2;
   VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV : constant unsigned := 3;
   VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV : constant unsigned := 4;
   VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV : constant unsigned := 5;
   VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV : constant unsigned := 6;
   VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV : constant unsigned := 7;
   VK_VIEWPORT_COORDINATE_SWIZZLE_BEGIN_RANGE_NV : constant unsigned := 0;
   VK_VIEWPORT_COORDINATE_SWIZZLE_END_RANGE_NV : constant unsigned := 7;
   VK_VIEWPORT_COORDINATE_SWIZZLE_RANGE_SIZE_NV : constant unsigned := 8;
   VK_VIEWPORT_COORDINATE_SWIZZLE_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:8470

   subtype VkPipelineViewportSwizzleStateCreateFlagsNV is VkFlags;  -- vulkan_core.h:8484

   type VkViewportSwizzleNV is record
      x : aliased VkViewportCoordinateSwizzleNV;  -- vulkan_core.h:8486
      y : aliased VkViewportCoordinateSwizzleNV;  -- vulkan_core.h:8487
      z : aliased VkViewportCoordinateSwizzleNV;  -- vulkan_core.h:8488
      w : aliased VkViewportCoordinateSwizzleNV;  -- vulkan_core.h:8489
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8485

   type VkPipelineViewportSwizzleStateCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8493
      pNext : System.Address;  -- vulkan_core.h:8494
      flags : aliased VkPipelineViewportSwizzleStateCreateFlagsNV;  -- vulkan_core.h:8495
      viewportCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8496
      pViewportSwizzles : access constant VkViewportSwizzleNV;  -- vulkan_core.h:8497
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8492

   subtype VkDiscardRectangleModeEXT is unsigned;
   VK_DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT : constant unsigned := 0;
   VK_DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT : constant unsigned := 1;
   VK_DISCARD_RECTANGLE_MODE_BEGIN_RANGE_EXT : constant unsigned := 0;
   VK_DISCARD_RECTANGLE_MODE_END_RANGE_EXT : constant unsigned := 1;
   VK_DISCARD_RECTANGLE_MODE_RANGE_SIZE_EXT : constant unsigned := 2;
   VK_DISCARD_RECTANGLE_MODE_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:8506

   subtype VkPipelineDiscardRectangleStateCreateFlagsEXT is VkFlags;  -- vulkan_core.h:8514

   type VkPhysicalDeviceDiscardRectanglePropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8516
      pNext : System.Address;  -- vulkan_core.h:8517
      maxDiscardRectangles : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8518
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8515

   type VkPipelineDiscardRectangleStateCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8522
      pNext : System.Address;  -- vulkan_core.h:8523
      flags : aliased VkPipelineDiscardRectangleStateCreateFlagsEXT;  -- vulkan_core.h:8524
      discardRectangleMode : aliased VkDiscardRectangleModeEXT;  -- vulkan_core.h:8525
      discardRectangleCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8526
      pDiscardRectangles : access constant VkRect2D;  -- vulkan_core.h:8527
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8521

   type PFN_vkCmdSetDiscardRectangleEXT is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : access constant VkRect2D)
   with Convention => C;  -- vulkan_core.h:8530

   procedure vkCmdSetDiscardRectangleEXT
     (commandBuffer : VkCommandBuffer;
      firstDiscardRectangle : Interfaces.C.unsigned_short;
      discardRectangleCount : Interfaces.C.unsigned_short;
      pDiscardRectangles : access constant VkRect2D)  -- vulkan_core.h:8533
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetDiscardRectangleEXT";

   subtype VkConservativeRasterizationModeEXT is unsigned;
   VK_CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT : constant unsigned := 0;
   VK_CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT : constant unsigned := 1;
   VK_CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT : constant unsigned := 2;
   VK_CONSERVATIVE_RASTERIZATION_MODE_BEGIN_RANGE_EXT : constant unsigned := 0;
   VK_CONSERVATIVE_RASTERIZATION_MODE_END_RANGE_EXT : constant unsigned := 2;
   VK_CONSERVATIVE_RASTERIZATION_MODE_RANGE_SIZE_EXT : constant unsigned := 3;
   VK_CONSERVATIVE_RASTERIZATION_MODE_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:8545

   subtype VkPipelineRasterizationConservativeStateCreateFlagsEXT is VkFlags;  -- vulkan_core.h:8554

   type VkPhysicalDeviceConservativeRasterizationPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8556
      pNext : System.Address;  -- vulkan_core.h:8557
      primitiveOverestimationSize : aliased float;  -- vulkan_core.h:8558
      maxExtraPrimitiveOverestimationSize : aliased float;  -- vulkan_core.h:8559
      extraPrimitiveOverestimationSizeGranularity : aliased float;  -- vulkan_core.h:8560
      primitiveUnderestimation : aliased VkBool32;  -- vulkan_core.h:8561
      conservativePointAndLineRasterization : aliased VkBool32;  -- vulkan_core.h:8562
      degenerateTrianglesRasterized : aliased VkBool32;  -- vulkan_core.h:8563
      degenerateLinesRasterized : aliased VkBool32;  -- vulkan_core.h:8564
      fullyCoveredFragmentShaderInputVariable : aliased VkBool32;  -- vulkan_core.h:8565
      conservativeRasterizationPostDepthCoverage : aliased VkBool32;  -- vulkan_core.h:8566
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8555

   type VkPipelineRasterizationConservativeStateCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8570
      pNext : System.Address;  -- vulkan_core.h:8571
      flags : aliased VkPipelineRasterizationConservativeStateCreateFlagsEXT;  -- vulkan_core.h:8572
      conservativeRasterizationMode : aliased VkConservativeRasterizationModeEXT;  -- vulkan_core.h:8573
      extraPrimitiveOverestimationSize : aliased float;  -- vulkan_core.h:8574
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8569

   subtype VkPipelineRasterizationDepthClipStateCreateFlagsEXT is VkFlags;  -- vulkan_core.h:8582

   type VkPhysicalDeviceDepthClipEnableFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8584
      pNext : System.Address;  -- vulkan_core.h:8585
      depthClipEnable : aliased VkBool32;  -- vulkan_core.h:8586
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8583

   type VkPipelineRasterizationDepthClipStateCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8590
      pNext : System.Address;  -- vulkan_core.h:8591
      flags : aliased VkPipelineRasterizationDepthClipStateCreateFlagsEXT;  -- vulkan_core.h:8592
      depthClipEnable : aliased VkBool32;  -- vulkan_core.h:8593
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8589

   type VkXYColorEXT is record
      x : aliased float;  -- vulkan_core.h:8607
      y : aliased float;  -- vulkan_core.h:8608
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8606

   type VkHdrMetadataEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8612
      pNext : System.Address;  -- vulkan_core.h:8613
      displayPrimaryRed : aliased VkXYColorEXT;  -- vulkan_core.h:8614
      displayPrimaryGreen : aliased VkXYColorEXT;  -- vulkan_core.h:8615
      displayPrimaryBlue : aliased VkXYColorEXT;  -- vulkan_core.h:8616
      whitePoint : aliased VkXYColorEXT;  -- vulkan_core.h:8617
      maxLuminance : aliased float;  -- vulkan_core.h:8618
      minLuminance : aliased float;  -- vulkan_core.h:8619
      maxContentLightLevel : aliased float;  -- vulkan_core.h:8620
      maxFrameAverageLightLevel : aliased float;  -- vulkan_core.h:8621
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8611

   type PFN_vkSetHdrMetadataEXT is access procedure
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : System.Address;
         arg4 : access constant VkHdrMetadataEXT)
   with Convention => C;  -- vulkan_core.h:8624

   procedure vkSetHdrMetadataEXT
     (device : VkDevice;
      swapchainCount : Interfaces.C.unsigned_short;
      pSwapchains : System.Address;
      pMetadata : access constant VkHdrMetadataEXT)  -- vulkan_core.h:8627
   with Import => True, 
        Convention => C, 
        External_Name => "vkSetHdrMetadataEXT";

   type VkDebugUtilsMessengerEXT_T is null record;   -- incomplete struct

   type VkDebugUtilsMessengerEXT is access all VkDebugUtilsMessengerEXT_T;  -- vulkan_core.h:8647

   subtype VkDebugUtilsMessengerCallbackDataFlagsEXT is VkFlags;  -- vulkan_core.h:8650

   subtype VkDebugUtilsMessengerCreateFlagsEXT is VkFlags;  -- vulkan_core.h:8651

   subtype VkDebugUtilsMessageSeverityFlagBitsEXT is unsigned;
   VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT : constant unsigned := 1;
   VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT : constant unsigned := 16;
   VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT : constant unsigned := 256;
   VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT : constant unsigned := 4096;
   VK_DEBUG_UTILS_MESSAGE_SEVERITY_FLAG_BITS_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:8653

   subtype VkDebugUtilsMessageSeverityFlagsEXT is VkFlags;  -- vulkan_core.h:8660

   subtype VkDebugUtilsMessageTypeFlagBitsEXT is unsigned;
   VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT : constant unsigned := 1;
   VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT : constant unsigned := 2;
   VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT : constant unsigned := 4;
   VK_DEBUG_UTILS_MESSAGE_TYPE_FLAG_BITS_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:8662

   subtype VkDebugUtilsMessageTypeFlagsEXT is VkFlags;  -- vulkan_core.h:8668

   type VkDebugUtilsObjectNameInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8670
      pNext : System.Address;  -- vulkan_core.h:8671
      objectType : aliased VkObjectType;  -- vulkan_core.h:8672
      objectHandle : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:8673
      pObjectName : Interfaces.C.Strings.chars_ptr;  -- vulkan_core.h:8674
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8669

   type VkDebugUtilsObjectTagInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8678
      pNext : System.Address;  -- vulkan_core.h:8679
      objectType : aliased VkObjectType;  -- vulkan_core.h:8680
      objectHandle : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:8681
      tagName : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:8682
      tagSize : aliased size_t;  -- vulkan_core.h:8683
      pTag : System.Address;  -- vulkan_core.h:8684
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8677

   type VkDebugUtilsLabelEXT_array1588 is array (0 .. 3) of aliased float;
   type VkDebugUtilsLabelEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8688
      pNext : System.Address;  -- vulkan_core.h:8689
      pLabelName : Interfaces.C.Strings.chars_ptr;  -- vulkan_core.h:8690
      color : aliased VkDebugUtilsLabelEXT_array1588;  -- vulkan_core.h:8691
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8687

   type VkDebugUtilsMessengerCallbackDataEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8695
      pNext : System.Address;  -- vulkan_core.h:8696
      flags : aliased VkDebugUtilsMessengerCallbackDataFlagsEXT;  -- vulkan_core.h:8697
      pMessageIdName : Interfaces.C.Strings.chars_ptr;  -- vulkan_core.h:8698
      messageIdNumber : aliased Interfaces.C.short;  -- vulkan_core.h:8699
      pMessage : Interfaces.C.Strings.chars_ptr;  -- vulkan_core.h:8700
      queueLabelCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8701
      pQueueLabels : access constant VkDebugUtilsLabelEXT;  -- vulkan_core.h:8702
      cmdBufLabelCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8703
      pCmdBufLabels : access constant VkDebugUtilsLabelEXT;  -- vulkan_core.h:8704
      objectCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8705
      pObjects : access constant VkDebugUtilsObjectNameInfoEXT;  -- vulkan_core.h:8706
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8694

   type PFN_vkDebugUtilsMessengerCallbackEXT is access function
        (arg1 : VkDebugUtilsMessageSeverityFlagBitsEXT;
         arg2 : VkDebugUtilsMessageTypeFlagsEXT;
         arg3 : access constant VkDebugUtilsMessengerCallbackDataEXT;
         arg4 : System.Address) return VkBool32
   with Convention => C;  -- vulkan_core.h:8709

   type VkDebugUtilsMessengerCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8716
      pNext : System.Address;  -- vulkan_core.h:8717
      flags : aliased VkDebugUtilsMessengerCreateFlagsEXT;  -- vulkan_core.h:8718
      messageSeverity : aliased VkDebugUtilsMessageSeverityFlagsEXT;  -- vulkan_core.h:8719
      messageType : aliased VkDebugUtilsMessageTypeFlagsEXT;  -- vulkan_core.h:8720
      pfnUserCallback : PFN_vkDebugUtilsMessengerCallbackEXT;  -- vulkan_core.h:8721
      pUserData : System.Address;  -- vulkan_core.h:8722
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8715

   type PFN_vkSetDebugUtilsObjectNameEXT is access function (arg1 : VkDevice; arg2 : access constant VkDebugUtilsObjectNameInfoEXT) return VkResult
   with Convention => C;  -- vulkan_core.h:8725

   type PFN_vkSetDebugUtilsObjectTagEXT is access function (arg1 : VkDevice; arg2 : access constant VkDebugUtilsObjectTagInfoEXT) return VkResult
   with Convention => C;  -- vulkan_core.h:8726

   type PFN_vkQueueBeginDebugUtilsLabelEXT is access procedure (arg1 : VkQueue; arg2 : access constant VkDebugUtilsLabelEXT)
   with Convention => C;  -- vulkan_core.h:8727

   type PFN_vkQueueEndDebugUtilsLabelEXT is access procedure (arg1 : VkQueue)
   with Convention => C;  -- vulkan_core.h:8728

   type PFN_vkQueueInsertDebugUtilsLabelEXT is access procedure (arg1 : VkQueue; arg2 : access constant VkDebugUtilsLabelEXT)
   with Convention => C;  -- vulkan_core.h:8729

   type PFN_vkCmdBeginDebugUtilsLabelEXT is access procedure (arg1 : VkCommandBuffer; arg2 : access constant VkDebugUtilsLabelEXT)
   with Convention => C;  -- vulkan_core.h:8730

   type PFN_vkCmdEndDebugUtilsLabelEXT is access procedure (arg1 : VkCommandBuffer)
   with Convention => C;  -- vulkan_core.h:8731

   type PFN_vkCmdInsertDebugUtilsLabelEXT is access procedure (arg1 : VkCommandBuffer; arg2 : access constant VkDebugUtilsLabelEXT)
   with Convention => C;  -- vulkan_core.h:8732

   type PFN_vkCreateDebugUtilsMessengerEXT is access function
        (arg1 : VkInstance;
         arg2 : access constant VkDebugUtilsMessengerCreateInfoEXT;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:8733

   type PFN_vkDestroyDebugUtilsMessengerEXT is access procedure
        (arg1 : VkInstance;
         arg2 : VkDebugUtilsMessengerEXT;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:8734

   type PFN_vkSubmitDebugUtilsMessageEXT is access procedure
        (arg1 : VkInstance;
         arg2 : VkDebugUtilsMessageSeverityFlagBitsEXT;
         arg3 : VkDebugUtilsMessageTypeFlagsEXT;
         arg4 : access constant VkDebugUtilsMessengerCallbackDataEXT)
   with Convention => C;  -- vulkan_core.h:8735

   function vkSetDebugUtilsObjectNameEXT (device : VkDevice; pNameInfo : access constant VkDebugUtilsObjectNameInfoEXT) return VkResult  -- vulkan_core.h:8738
   with Import => True, 
        Convention => C, 
        External_Name => "vkSetDebugUtilsObjectNameEXT";

   function vkSetDebugUtilsObjectTagEXT (device : VkDevice; pTagInfo : access constant VkDebugUtilsObjectTagInfoEXT) return VkResult  -- vulkan_core.h:8742
   with Import => True, 
        Convention => C, 
        External_Name => "vkSetDebugUtilsObjectTagEXT";

   procedure vkQueueBeginDebugUtilsLabelEXT (queue : VkQueue; pLabelInfo : access constant VkDebugUtilsLabelEXT)  -- vulkan_core.h:8746
   with Import => True, 
        Convention => C, 
        External_Name => "vkQueueBeginDebugUtilsLabelEXT";

   procedure vkQueueEndDebugUtilsLabelEXT (queue : VkQueue)  -- vulkan_core.h:8750
   with Import => True, 
        Convention => C, 
        External_Name => "vkQueueEndDebugUtilsLabelEXT";

   procedure vkQueueInsertDebugUtilsLabelEXT (queue : VkQueue; pLabelInfo : access constant VkDebugUtilsLabelEXT)  -- vulkan_core.h:8753
   with Import => True, 
        Convention => C, 
        External_Name => "vkQueueInsertDebugUtilsLabelEXT";

   procedure vkCmdBeginDebugUtilsLabelEXT (commandBuffer : VkCommandBuffer; pLabelInfo : access constant VkDebugUtilsLabelEXT)  -- vulkan_core.h:8757
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBeginDebugUtilsLabelEXT";

   procedure vkCmdEndDebugUtilsLabelEXT (commandBuffer : VkCommandBuffer)  -- vulkan_core.h:8761
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdEndDebugUtilsLabelEXT";

   procedure vkCmdInsertDebugUtilsLabelEXT (commandBuffer : VkCommandBuffer; pLabelInfo : access constant VkDebugUtilsLabelEXT)  -- vulkan_core.h:8764
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdInsertDebugUtilsLabelEXT";

   function vkCreateDebugUtilsMessengerEXT
     (instance : VkInstance;
      pCreateInfo : access constant VkDebugUtilsMessengerCreateInfoEXT;
      pAllocator : access constant VkAllocationCallbacks;
      pMessenger : System.Address) return VkResult  -- vulkan_core.h:8768
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateDebugUtilsMessengerEXT";

   procedure vkDestroyDebugUtilsMessengerEXT
     (instance : VkInstance;
      messenger : VkDebugUtilsMessengerEXT;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:8774
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyDebugUtilsMessengerEXT";

   procedure vkSubmitDebugUtilsMessageEXT
     (instance : VkInstance;
      messageSeverity : VkDebugUtilsMessageSeverityFlagBitsEXT;
      messageTypes : VkDebugUtilsMessageTypeFlagsEXT;
      pCallbackData : access constant VkDebugUtilsMessengerCallbackDataEXT)  -- vulkan_core.h:8779
   with Import => True, 
        Convention => C, 
        External_Name => "vkSubmitDebugUtilsMessageEXT";

   subtype VkSamplerReductionModeEXT is VkSamplerReductionMode;  -- vulkan_core.h:8790

   subtype VkSamplerReductionModeCreateInfoEXT is VkSamplerReductionModeCreateInfo;  -- vulkan_core.h:8792

   subtype VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT is VkPhysicalDeviceSamplerFilterMinmaxProperties;  -- vulkan_core.h:8794

   type VkPhysicalDeviceInlineUniformBlockFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8817
      pNext : System.Address;  -- vulkan_core.h:8818
      inlineUniformBlock : aliased VkBool32;  -- vulkan_core.h:8819
      descriptorBindingInlineUniformBlockUpdateAfterBind : aliased VkBool32;  -- vulkan_core.h:8820
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8816

   type VkPhysicalDeviceInlineUniformBlockPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8824
      pNext : System.Address;  -- vulkan_core.h:8825
      maxInlineUniformBlockSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8826
      maxPerStageDescriptorInlineUniformBlocks : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8827
      maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8828
      maxDescriptorSetInlineUniformBlocks : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8829
      maxDescriptorSetUpdateAfterBindInlineUniformBlocks : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8830
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8823

   type VkWriteDescriptorSetInlineUniformBlockEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8834
      pNext : System.Address;  -- vulkan_core.h:8835
      dataSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8836
      pData : System.Address;  -- vulkan_core.h:8837
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8833

   type VkDescriptorPoolInlineUniformBlockCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8841
      pNext : System.Address;  -- vulkan_core.h:8842
      maxInlineUniformBlockBindings : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8843
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8840

   type VkSampleLocationEXT is record
      x : aliased float;  -- vulkan_core.h:8857
      y : aliased float;  -- vulkan_core.h:8858
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8856

   type VkSampleLocationsInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8862
      pNext : System.Address;  -- vulkan_core.h:8863
      sampleLocationsPerPixel : aliased VkSampleCountFlagBits;  -- vulkan_core.h:8864
      sampleLocationGridSize : aliased VkExtent2D;  -- vulkan_core.h:8865
      sampleLocationsCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8866
      pSampleLocations : access constant VkSampleLocationEXT;  -- vulkan_core.h:8867
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8861

   type VkAttachmentSampleLocationsEXT is record
      attachmentIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8871
      sampleLocationsInfo : aliased VkSampleLocationsInfoEXT;  -- vulkan_core.h:8872
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8870

   type VkSubpassSampleLocationsEXT is record
      subpassIndex : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8876
      sampleLocationsInfo : aliased VkSampleLocationsInfoEXT;  -- vulkan_core.h:8877
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8875

   type VkRenderPassSampleLocationsBeginInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8881
      pNext : System.Address;  -- vulkan_core.h:8882
      attachmentInitialSampleLocationsCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8883
      pAttachmentInitialSampleLocations : access constant VkAttachmentSampleLocationsEXT;  -- vulkan_core.h:8884
      postSubpassSampleLocationsCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8885
      pPostSubpassSampleLocations : access constant VkSubpassSampleLocationsEXT;  -- vulkan_core.h:8886
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8880

   type VkPipelineSampleLocationsStateCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8890
      pNext : System.Address;  -- vulkan_core.h:8891
      sampleLocationsEnable : aliased VkBool32;  -- vulkan_core.h:8892
      sampleLocationsInfo : aliased VkSampleLocationsInfoEXT;  -- vulkan_core.h:8893
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8889

   type VkPhysicalDeviceSampleLocationsPropertiesEXT_array1334 is array (0 .. 1) of aliased float;
   type VkPhysicalDeviceSampleLocationsPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8897
      pNext : System.Address;  -- vulkan_core.h:8898
      sampleLocationSampleCounts : aliased VkSampleCountFlags;  -- vulkan_core.h:8899
      maxSampleLocationGridSize : aliased VkExtent2D;  -- vulkan_core.h:8900
      sampleLocationCoordinateRange : aliased VkPhysicalDeviceSampleLocationsPropertiesEXT_array1334;  -- vulkan_core.h:8901
      sampleLocationSubPixelBits : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8902
      variableSampleLocations : aliased VkBool32;  -- vulkan_core.h:8903
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8896

   type VkMultisamplePropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8907
      pNext : System.Address;  -- vulkan_core.h:8908
      maxSampleLocationGridSize : aliased VkExtent2D;  -- vulkan_core.h:8909
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8906

   type PFN_vkCmdSetSampleLocationsEXT is access procedure (arg1 : VkCommandBuffer; arg2 : access constant VkSampleLocationsInfoEXT)
   with Convention => C;  -- vulkan_core.h:8912

   type PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT is access procedure
        (arg1 : VkPhysicalDevice;
         arg2 : VkSampleCountFlagBits;
         arg3 : access VkMultisamplePropertiesEXT)
   with Convention => C;  -- vulkan_core.h:8913

   procedure vkCmdSetSampleLocationsEXT (commandBuffer : VkCommandBuffer; pSampleLocationsInfo : access constant VkSampleLocationsInfoEXT)  -- vulkan_core.h:8916
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetSampleLocationsEXT";

   procedure vkGetPhysicalDeviceMultisamplePropertiesEXT
     (physicalDevice : VkPhysicalDevice;
      samples : VkSampleCountFlagBits;
      pMultisampleProperties : access VkMultisamplePropertiesEXT)  -- vulkan_core.h:8920
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceMultisamplePropertiesEXT";

   subtype VkBlendOverlapEXT is unsigned;
   VK_BLEND_OVERLAP_UNCORRELATED_EXT : constant unsigned := 0;
   VK_BLEND_OVERLAP_DISJOINT_EXT : constant unsigned := 1;
   VK_BLEND_OVERLAP_CONJOINT_EXT : constant unsigned := 2;
   VK_BLEND_OVERLAP_BEGIN_RANGE_EXT : constant unsigned := 0;
   VK_BLEND_OVERLAP_END_RANGE_EXT : constant unsigned := 2;
   VK_BLEND_OVERLAP_RANGE_SIZE_EXT : constant unsigned := 3;
   VK_BLEND_OVERLAP_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:8931

   type VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8941
      pNext : System.Address;  -- vulkan_core.h:8942
      advancedBlendCoherentOperations : aliased VkBool32;  -- vulkan_core.h:8943
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8940

   type VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8947
      pNext : System.Address;  -- vulkan_core.h:8948
      advancedBlendMaxColorAttachments : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8949
      advancedBlendIndependentBlend : aliased VkBool32;  -- vulkan_core.h:8950
      advancedBlendNonPremultipliedSrcColor : aliased VkBool32;  -- vulkan_core.h:8951
      advancedBlendNonPremultipliedDstColor : aliased VkBool32;  -- vulkan_core.h:8952
      advancedBlendCorrelatedOverlap : aliased VkBool32;  -- vulkan_core.h:8953
      advancedBlendAllOperations : aliased VkBool32;  -- vulkan_core.h:8954
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8946

   type VkPipelineColorBlendAdvancedStateCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8958
      pNext : System.Address;  -- vulkan_core.h:8959
      srcPremultiplied : aliased VkBool32;  -- vulkan_core.h:8960
      dstPremultiplied : aliased VkBool32;  -- vulkan_core.h:8961
      blendOverlap : aliased VkBlendOverlapEXT;  -- vulkan_core.h:8962
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8957

   subtype VkPipelineCoverageToColorStateCreateFlagsNV is VkFlags;  -- vulkan_core.h:8970

   type VkPipelineCoverageToColorStateCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8972
      pNext : System.Address;  -- vulkan_core.h:8973
      flags : aliased VkPipelineCoverageToColorStateCreateFlagsNV;  -- vulkan_core.h:8974
      coverageToColorEnable : aliased VkBool32;  -- vulkan_core.h:8975
      coverageToColorLocation : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:8976
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8971

   subtype VkCoverageModulationModeNV is unsigned;
   VK_COVERAGE_MODULATION_MODE_NONE_NV : constant unsigned := 0;
   VK_COVERAGE_MODULATION_MODE_RGB_NV : constant unsigned := 1;
   VK_COVERAGE_MODULATION_MODE_ALPHA_NV : constant unsigned := 2;
   VK_COVERAGE_MODULATION_MODE_RGBA_NV : constant unsigned := 3;
   VK_COVERAGE_MODULATION_MODE_BEGIN_RANGE_NV : constant unsigned := 0;
   VK_COVERAGE_MODULATION_MODE_END_RANGE_NV : constant unsigned := 3;
   VK_COVERAGE_MODULATION_MODE_RANGE_SIZE_NV : constant unsigned := 4;
   VK_COVERAGE_MODULATION_MODE_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:8985

   subtype VkPipelineCoverageModulationStateCreateFlagsNV is VkFlags;  -- vulkan_core.h:8995

   type VkPipelineCoverageModulationStateCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:8997
      pNext : System.Address;  -- vulkan_core.h:8998
      flags : aliased VkPipelineCoverageModulationStateCreateFlagsNV;  -- vulkan_core.h:8999
      coverageModulationMode : aliased VkCoverageModulationModeNV;  -- vulkan_core.h:9000
      coverageModulationTableEnable : aliased VkBool32;  -- vulkan_core.h:9001
      coverageModulationTableCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9002
      pCoverageModulationTable : access float;  -- vulkan_core.h:9003
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:8996

   type VkPhysicalDeviceShaderSMBuiltinsPropertiesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9017
      pNext : System.Address;  -- vulkan_core.h:9018
      shaderSMCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9019
      shaderWarpsPerSM : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9020
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9016

   type VkPhysicalDeviceShaderSMBuiltinsFeaturesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9024
      pNext : System.Address;  -- vulkan_core.h:9025
      shaderSMBuiltins : aliased VkBool32;  -- vulkan_core.h:9026
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9023

   type VkDrmFormatModifierPropertiesEXT is record
      drmFormatModifier : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:9040
      drmFormatModifierPlaneCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9041
      drmFormatModifierTilingFeatures : aliased VkFormatFeatureFlags;  -- vulkan_core.h:9042
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9039

   type VkDrmFormatModifierPropertiesListEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9046
      pNext : System.Address;  -- vulkan_core.h:9047
      drmFormatModifierCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9048
      pDrmFormatModifierProperties : access VkDrmFormatModifierPropertiesEXT;  -- vulkan_core.h:9049
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9045

   type VkPhysicalDeviceImageDrmFormatModifierInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9053
      pNext : System.Address;  -- vulkan_core.h:9054
      drmFormatModifier : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:9055
      sharingMode : aliased VkSharingMode;  -- vulkan_core.h:9056
      queueFamilyIndexCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9057
      pQueueFamilyIndices : access Interfaces.C.unsigned_short;  -- vulkan_core.h:9058
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9052

   type VkImageDrmFormatModifierListCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9062
      pNext : System.Address;  -- vulkan_core.h:9063
      drmFormatModifierCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9064
      pDrmFormatModifiers : access Interfaces.C.unsigned_long;  -- vulkan_core.h:9065
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9061

   type VkImageDrmFormatModifierExplicitCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9069
      pNext : System.Address;  -- vulkan_core.h:9070
      drmFormatModifier : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:9071
      drmFormatModifierPlaneCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9072
      pPlaneLayouts : access constant VkSubresourceLayout;  -- vulkan_core.h:9073
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9068

   type VkImageDrmFormatModifierPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9077
      pNext : System.Address;  -- vulkan_core.h:9078
      drmFormatModifier : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:9079
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9076

   type PFN_vkGetImageDrmFormatModifierPropertiesEXT is access function
        (arg1 : VkDevice;
         arg2 : VkImage;
         arg3 : access VkImageDrmFormatModifierPropertiesEXT) return VkResult
   with Convention => C;  -- vulkan_core.h:9082

   function vkGetImageDrmFormatModifierPropertiesEXT
     (device : VkDevice;
      image : VkImage;
      pProperties : access VkImageDrmFormatModifierPropertiesEXT) return VkResult  -- vulkan_core.h:9085
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetImageDrmFormatModifierPropertiesEXT";

   type VkValidationCacheEXT_T is null record;   -- incomplete struct

   type VkValidationCacheEXT is access all VkValidationCacheEXT_T;  -- vulkan_core.h:9093

   subtype VkValidationCacheHeaderVersionEXT is unsigned;
   VK_VALIDATION_CACHE_HEADER_VERSION_ONE_EXT : constant unsigned := 1;
   VK_VALIDATION_CACHE_HEADER_VERSION_BEGIN_RANGE_EXT : constant unsigned := 1;
   VK_VALIDATION_CACHE_HEADER_VERSION_END_RANGE_EXT : constant unsigned := 1;
   VK_VALIDATION_CACHE_HEADER_VERSION_RANGE_SIZE_EXT : constant unsigned := 1;
   VK_VALIDATION_CACHE_HEADER_VERSION_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:9097

   subtype VkValidationCacheCreateFlagsEXT is VkFlags;  -- vulkan_core.h:9104

   type VkValidationCacheCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9106
      pNext : System.Address;  -- vulkan_core.h:9107
      flags : aliased VkValidationCacheCreateFlagsEXT;  -- vulkan_core.h:9108
      initialDataSize : aliased size_t;  -- vulkan_core.h:9109
      pInitialData : System.Address;  -- vulkan_core.h:9110
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9105

   type VkShaderModuleValidationCacheCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9114
      pNext : System.Address;  -- vulkan_core.h:9115
      validationCache : VkValidationCacheEXT;  -- vulkan_core.h:9116
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9113

   type PFN_vkCreateValidationCacheEXT is access function
        (arg1 : VkDevice;
         arg2 : access constant VkValidationCacheCreateInfoEXT;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:9119

   type PFN_vkDestroyValidationCacheEXT is access procedure
        (arg1 : VkDevice;
         arg2 : VkValidationCacheEXT;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:9120

   type PFN_vkMergeValidationCachesEXT is access function
        (arg1 : VkDevice;
         arg2 : VkValidationCacheEXT;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:9121

   type PFN_vkGetValidationCacheDataEXT is access function
        (arg1 : VkDevice;
         arg2 : VkValidationCacheEXT;
         arg3 : access size_t;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:9122

   function vkCreateValidationCacheEXT
     (device : VkDevice;
      pCreateInfo : access constant VkValidationCacheCreateInfoEXT;
      pAllocator : access constant VkAllocationCallbacks;
      pValidationCache : System.Address) return VkResult  -- vulkan_core.h:9125
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateValidationCacheEXT";

   procedure vkDestroyValidationCacheEXT
     (device : VkDevice;
      validationCache : VkValidationCacheEXT;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:9131
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyValidationCacheEXT";

   function vkMergeValidationCachesEXT
     (device : VkDevice;
      dstCache : VkValidationCacheEXT;
      srcCacheCount : Interfaces.C.unsigned_short;
      pSrcCaches : System.Address) return VkResult  -- vulkan_core.h:9136
   with Import => True, 
        Convention => C, 
        External_Name => "vkMergeValidationCachesEXT";

   function vkGetValidationCacheDataEXT
     (device : VkDevice;
      validationCache : VkValidationCacheEXT;
      pDataSize : access size_t;
      pData : System.Address) return VkResult  -- vulkan_core.h:9142
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetValidationCacheDataEXT";

   subtype VkDescriptorBindingFlagBitsEXT is VkDescriptorBindingFlagBits;  -- vulkan_core.h:9153

   subtype VkDescriptorBindingFlagsEXT is VkDescriptorBindingFlags;  -- vulkan_core.h:9155

   subtype VkDescriptorSetLayoutBindingFlagsCreateInfoEXT is VkDescriptorSetLayoutBindingFlagsCreateInfo;  -- vulkan_core.h:9157

   subtype VkPhysicalDeviceDescriptorIndexingFeaturesEXT is VkPhysicalDeviceDescriptorIndexingFeatures;  -- vulkan_core.h:9159

   subtype VkPhysicalDeviceDescriptorIndexingPropertiesEXT is VkPhysicalDeviceDescriptorIndexingProperties;  -- vulkan_core.h:9161

   subtype VkDescriptorSetVariableDescriptorCountAllocateInfoEXT is VkDescriptorSetVariableDescriptorCountAllocateInfo;  -- vulkan_core.h:9163

   subtype VkDescriptorSetVariableDescriptorCountLayoutSupportEXT is VkDescriptorSetVariableDescriptorCountLayoutSupport;  -- vulkan_core.h:9165

   subtype VkShadingRatePaletteEntryNV is unsigned;
   VK_SHADING_RATE_PALETTE_ENTRY_NO_INVOCATIONS_NV : constant unsigned := 0;
   VK_SHADING_RATE_PALETTE_ENTRY_16_INVOCATIONS_PER_PIXEL_NV : constant unsigned := 1;
   VK_SHADING_RATE_PALETTE_ENTRY_8_INVOCATIONS_PER_PIXEL_NV : constant unsigned := 2;
   VK_SHADING_RATE_PALETTE_ENTRY_4_INVOCATIONS_PER_PIXEL_NV : constant unsigned := 3;
   VK_SHADING_RATE_PALETTE_ENTRY_2_INVOCATIONS_PER_PIXEL_NV : constant unsigned := 4;
   VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_PIXEL_NV : constant unsigned := 5;
   VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X1_PIXELS_NV : constant unsigned := 6;
   VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_1X2_PIXELS_NV : constant unsigned := 7;
   VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X2_PIXELS_NV : constant unsigned := 8;
   VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X2_PIXELS_NV : constant unsigned := 9;
   VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X4_PIXELS_NV : constant unsigned := 10;
   VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X4_PIXELS_NV : constant unsigned := 11;
   VK_SHADING_RATE_PALETTE_ENTRY_BEGIN_RANGE_NV : constant unsigned := 0;
   VK_SHADING_RATE_PALETTE_ENTRY_END_RANGE_NV : constant unsigned := 11;
   VK_SHADING_RATE_PALETTE_ENTRY_RANGE_SIZE_NV : constant unsigned := 12;
   VK_SHADING_RATE_PALETTE_ENTRY_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:9178

   subtype VkCoarseSampleOrderTypeNV is unsigned;
   VK_COARSE_SAMPLE_ORDER_TYPE_DEFAULT_NV : constant unsigned := 0;
   VK_COARSE_SAMPLE_ORDER_TYPE_CUSTOM_NV : constant unsigned := 1;
   VK_COARSE_SAMPLE_ORDER_TYPE_PIXEL_MAJOR_NV : constant unsigned := 2;
   VK_COARSE_SAMPLE_ORDER_TYPE_SAMPLE_MAJOR_NV : constant unsigned := 3;
   VK_COARSE_SAMPLE_ORDER_TYPE_BEGIN_RANGE_NV : constant unsigned := 0;
   VK_COARSE_SAMPLE_ORDER_TYPE_END_RANGE_NV : constant unsigned := 3;
   VK_COARSE_SAMPLE_ORDER_TYPE_RANGE_SIZE_NV : constant unsigned := 4;
   VK_COARSE_SAMPLE_ORDER_TYPE_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:9197

   type VkShadingRatePaletteNV is record
      shadingRatePaletteEntryCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9208
      pShadingRatePaletteEntries : access VkShadingRatePaletteEntryNV;  -- vulkan_core.h:9209
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9207

   type VkPipelineViewportShadingRateImageStateCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9213
      pNext : System.Address;  -- vulkan_core.h:9214
      shadingRateImageEnable : aliased VkBool32;  -- vulkan_core.h:9215
      viewportCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9216
      pShadingRatePalettes : access constant VkShadingRatePaletteNV;  -- vulkan_core.h:9217
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9212

   type VkPhysicalDeviceShadingRateImageFeaturesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9221
      pNext : System.Address;  -- vulkan_core.h:9222
      shadingRateImage : aliased VkBool32;  -- vulkan_core.h:9223
      shadingRateCoarseSampleOrder : aliased VkBool32;  -- vulkan_core.h:9224
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9220

   type VkPhysicalDeviceShadingRateImagePropertiesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9228
      pNext : System.Address;  -- vulkan_core.h:9229
      shadingRateTexelSize : aliased VkExtent2D;  -- vulkan_core.h:9230
      shadingRatePaletteSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9231
      shadingRateMaxCoarseSamples : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9232
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9227

   type VkCoarseSampleLocationNV is record
      pixelX : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9236
      pixelY : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9237
      sample : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9238
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9235

   type VkCoarseSampleOrderCustomNV is record
      shadingRate : aliased VkShadingRatePaletteEntryNV;  -- vulkan_core.h:9242
      sampleCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9243
      sampleLocationCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9244
      pSampleLocations : access constant VkCoarseSampleLocationNV;  -- vulkan_core.h:9245
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9241

   type VkPipelineViewportCoarseSampleOrderStateCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9249
      pNext : System.Address;  -- vulkan_core.h:9250
      sampleOrderType : aliased VkCoarseSampleOrderTypeNV;  -- vulkan_core.h:9251
      customSampleOrderCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9252
      pCustomSampleOrders : access constant VkCoarseSampleOrderCustomNV;  -- vulkan_core.h:9253
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9248

   type PFN_vkCmdBindShadingRateImageNV is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkImageView;
         arg3 : VkImageLayout)
   with Convention => C;  -- vulkan_core.h:9256

   type PFN_vkCmdSetViewportShadingRatePaletteNV is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : access constant VkShadingRatePaletteNV)
   with Convention => C;  -- vulkan_core.h:9257

   type PFN_vkCmdSetCoarseSampleOrderNV is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkCoarseSampleOrderTypeNV;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : access constant VkCoarseSampleOrderCustomNV)
   with Convention => C;  -- vulkan_core.h:9258

   procedure vkCmdBindShadingRateImageNV
     (commandBuffer : VkCommandBuffer;
      imageView : VkImageView;
      imageLayout : VkImageLayout)  -- vulkan_core.h:9261
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBindShadingRateImageNV";

   procedure vkCmdSetViewportShadingRatePaletteNV
     (commandBuffer : VkCommandBuffer;
      firstViewport : Interfaces.C.unsigned_short;
      viewportCount : Interfaces.C.unsigned_short;
      pShadingRatePalettes : access constant VkShadingRatePaletteNV)  -- vulkan_core.h:9266
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetViewportShadingRatePaletteNV";

   procedure vkCmdSetCoarseSampleOrderNV
     (commandBuffer : VkCommandBuffer;
      sampleOrderType : VkCoarseSampleOrderTypeNV;
      customSampleOrderCount : Interfaces.C.unsigned_short;
      pCustomSampleOrders : access constant VkCoarseSampleOrderCustomNV)  -- vulkan_core.h:9272
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetCoarseSampleOrderNV";

   type VkAccelerationStructureNV_T is null record;   -- incomplete struct

   type VkAccelerationStructureNV is access all VkAccelerationStructureNV_T;  -- vulkan_core.h:9281

   subtype VkAccelerationStructureTypeNV is unsigned;
   VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_NV : constant unsigned := 0;
   VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_NV : constant unsigned := 1;
   VK_ACCELERATION_STRUCTURE_TYPE_BEGIN_RANGE_NV : constant unsigned := 0;
   VK_ACCELERATION_STRUCTURE_TYPE_END_RANGE_NV : constant unsigned := 1;
   VK_ACCELERATION_STRUCTURE_TYPE_RANGE_SIZE_NV : constant unsigned := 2;
   VK_ACCELERATION_STRUCTURE_TYPE_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:9286

   subtype VkRayTracingShaderGroupTypeNV is unsigned;
   VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_NV : constant unsigned := 0;
   VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_NV : constant unsigned := 1;
   VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_NV : constant unsigned := 2;
   VK_RAY_TRACING_SHADER_GROUP_TYPE_BEGIN_RANGE_NV : constant unsigned := 0;
   VK_RAY_TRACING_SHADER_GROUP_TYPE_END_RANGE_NV : constant unsigned := 2;
   VK_RAY_TRACING_SHADER_GROUP_TYPE_RANGE_SIZE_NV : constant unsigned := 3;
   VK_RAY_TRACING_SHADER_GROUP_TYPE_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:9295

   subtype VkGeometryTypeNV is unsigned;
   VK_GEOMETRY_TYPE_TRIANGLES_NV : constant unsigned := 0;
   VK_GEOMETRY_TYPE_AABBS_NV : constant unsigned := 1;
   VK_GEOMETRY_TYPE_BEGIN_RANGE_NV : constant unsigned := 0;
   VK_GEOMETRY_TYPE_END_RANGE_NV : constant unsigned := 1;
   VK_GEOMETRY_TYPE_RANGE_SIZE_NV : constant unsigned := 2;
   VK_GEOMETRY_TYPE_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:9305

   subtype VkCopyAccelerationStructureModeNV is unsigned;
   VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_NV : constant unsigned := 0;
   VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_NV : constant unsigned := 1;
   VK_COPY_ACCELERATION_STRUCTURE_MODE_BEGIN_RANGE_NV : constant unsigned := 0;
   VK_COPY_ACCELERATION_STRUCTURE_MODE_END_RANGE_NV : constant unsigned := 1;
   VK_COPY_ACCELERATION_STRUCTURE_MODE_RANGE_SIZE_NV : constant unsigned := 2;
   VK_COPY_ACCELERATION_STRUCTURE_MODE_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:9314

   subtype VkAccelerationStructureMemoryRequirementsTypeNV is unsigned;
   VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_NV : constant unsigned := 0;
   VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_NV : constant unsigned := 1;
   VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_NV : constant unsigned := 2;
   VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BEGIN_RANGE_NV : constant unsigned := 0;
   VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_END_RANGE_NV : constant unsigned := 2;
   VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_RANGE_SIZE_NV : constant unsigned := 3;
   VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:9323

   subtype VkGeometryFlagBitsNV is unsigned;
   VK_GEOMETRY_OPAQUE_BIT_NV : constant unsigned := 1;
   VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_NV : constant unsigned := 2;
   VK_GEOMETRY_FLAG_BITS_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:9333

   subtype VkGeometryFlagsNV is VkFlags;  -- vulkan_core.h:9338

   subtype VkGeometryInstanceFlagBitsNV is unsigned;
   VK_GEOMETRY_INSTANCE_TRIANGLE_CULL_DISABLE_BIT_NV : constant unsigned := 1;
   VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_NV : constant unsigned := 2;
   VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_NV : constant unsigned := 4;
   VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_NV : constant unsigned := 8;
   VK_GEOMETRY_INSTANCE_FLAG_BITS_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:9340

   subtype VkGeometryInstanceFlagsNV is VkFlags;  -- vulkan_core.h:9347

   subtype VkBuildAccelerationStructureFlagBitsNV is unsigned;
   VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_NV : constant unsigned := 1;
   VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_NV : constant unsigned := 2;
   VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_NV : constant unsigned := 4;
   VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_NV : constant unsigned := 8;
   VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_NV : constant unsigned := 16;
   VK_BUILD_ACCELERATION_STRUCTURE_FLAG_BITS_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:9349

   subtype VkBuildAccelerationStructureFlagsNV is VkFlags;  -- vulkan_core.h:9357

   type VkRayTracingShaderGroupCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9359
      pNext : System.Address;  -- vulkan_core.h:9360
      c_type : aliased VkRayTracingShaderGroupTypeNV;  -- vulkan_core.h:9361
      generalShader : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9362
      closestHitShader : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9363
      anyHitShader : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9364
      intersectionShader : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9365
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9358

   type VkRayTracingPipelineCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9369
      pNext : System.Address;  -- vulkan_core.h:9370
      flags : aliased VkPipelineCreateFlags;  -- vulkan_core.h:9371
      stageCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9372
      pStages : access constant VkPipelineShaderStageCreateInfo;  -- vulkan_core.h:9373
      groupCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9374
      pGroups : access constant VkRayTracingShaderGroupCreateInfoNV;  -- vulkan_core.h:9375
      maxRecursionDepth : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9376
      layout : VkPipelineLayout;  -- vulkan_core.h:9377
      basePipelineHandle : VkPipeline;  -- vulkan_core.h:9378
      basePipelineIndex : aliased Interfaces.C.short;  -- vulkan_core.h:9379
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9368

   type VkGeometryTrianglesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9383
      pNext : System.Address;  -- vulkan_core.h:9384
      vertexData : VkBuffer;  -- vulkan_core.h:9385
      vertexOffset : aliased VkDeviceSize;  -- vulkan_core.h:9386
      vertexCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9387
      vertexStride : aliased VkDeviceSize;  -- vulkan_core.h:9388
      vertexFormat : aliased VkFormat;  -- vulkan_core.h:9389
      indexData : VkBuffer;  -- vulkan_core.h:9390
      indexOffset : aliased VkDeviceSize;  -- vulkan_core.h:9391
      indexCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9392
      indexType : aliased VkIndexType;  -- vulkan_core.h:9393
      transformData : VkBuffer;  -- vulkan_core.h:9394
      transformOffset : aliased VkDeviceSize;  -- vulkan_core.h:9395
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9382

   type VkGeometryAABBNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9399
      pNext : System.Address;  -- vulkan_core.h:9400
      aabbData : VkBuffer;  -- vulkan_core.h:9401
      numAABBs : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9402
      stride : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9403
      offset : aliased VkDeviceSize;  -- vulkan_core.h:9404
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9398

   type VkGeometryDataNV is record
      triangles : aliased VkGeometryTrianglesNV;  -- vulkan_core.h:9408
      aabbs : aliased VkGeometryAABBNV;  -- vulkan_core.h:9409
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9407

   type VkGeometryNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9413
      pNext : System.Address;  -- vulkan_core.h:9414
      geometryType : aliased VkGeometryTypeNV;  -- vulkan_core.h:9415
      geometry : aliased VkGeometryDataNV;  -- vulkan_core.h:9416
      flags : aliased VkGeometryFlagsNV;  -- vulkan_core.h:9417
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9412

   type VkAccelerationStructureInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9421
      pNext : System.Address;  -- vulkan_core.h:9422
      c_type : aliased VkAccelerationStructureTypeNV;  -- vulkan_core.h:9423
      flags : aliased VkBuildAccelerationStructureFlagsNV;  -- vulkan_core.h:9424
      instanceCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9425
      geometryCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9426
      pGeometries : access constant VkGeometryNV;  -- vulkan_core.h:9427
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9420

   type VkAccelerationStructureCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9431
      pNext : System.Address;  -- vulkan_core.h:9432
      compactedSize : aliased VkDeviceSize;  -- vulkan_core.h:9433
      info : aliased VkAccelerationStructureInfoNV;  -- vulkan_core.h:9434
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9430

   type VkBindAccelerationStructureMemoryInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9438
      pNext : System.Address;  -- vulkan_core.h:9439
      accelerationStructure : VkAccelerationStructureNV;  -- vulkan_core.h:9440
      memory : VkDeviceMemory;  -- vulkan_core.h:9441
      memoryOffset : aliased VkDeviceSize;  -- vulkan_core.h:9442
      deviceIndexCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9443
      pDeviceIndices : access Interfaces.C.unsigned_short;  -- vulkan_core.h:9444
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9437

   type VkWriteDescriptorSetAccelerationStructureNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9448
      pNext : System.Address;  -- vulkan_core.h:9449
      accelerationStructureCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9450
      pAccelerationStructures : System.Address;  -- vulkan_core.h:9451
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9447

   type VkAccelerationStructureMemoryRequirementsInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9455
      pNext : System.Address;  -- vulkan_core.h:9456
      c_type : aliased VkAccelerationStructureMemoryRequirementsTypeNV;  -- vulkan_core.h:9457
      accelerationStructure : VkAccelerationStructureNV;  -- vulkan_core.h:9458
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9454

   type VkPhysicalDeviceRayTracingPropertiesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9462
      pNext : System.Address;  -- vulkan_core.h:9463
      shaderGroupHandleSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9464
      maxRecursionDepth : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9465
      maxShaderGroupStride : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9466
      shaderGroupBaseAlignment : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9467
      maxGeometryCount : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:9468
      maxInstanceCount : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:9469
      maxTriangleCount : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:9470
      maxDescriptorSetAccelerationStructures : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9471
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9461

   type PFN_vkCreateAccelerationStructureNV is access function
        (arg1 : VkDevice;
         arg2 : access constant VkAccelerationStructureCreateInfoNV;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:9474

   type PFN_vkDestroyAccelerationStructureNV is access procedure
        (arg1 : VkDevice;
         arg2 : VkAccelerationStructureNV;
         arg3 : access constant VkAllocationCallbacks)
   with Convention => C;  -- vulkan_core.h:9475

   type PFN_vkGetAccelerationStructureMemoryRequirementsNV is access procedure
        (arg1 : VkDevice;
         arg2 : access constant VkAccelerationStructureMemoryRequirementsInfoNV;
         arg3 : access VkMemoryRequirements2KHR)
   with Convention => C;  -- vulkan_core.h:9476

   type PFN_vkBindAccelerationStructureMemoryNV is access function
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkBindAccelerationStructureMemoryInfoNV) return VkResult
   with Convention => C;  -- vulkan_core.h:9477

   type PFN_vkCmdBuildAccelerationStructureNV is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : access constant VkAccelerationStructureInfoNV;
         arg3 : VkBuffer;
         arg4 : VkDeviceSize;
         arg5 : VkBool32;
         arg6 : VkAccelerationStructureNV;
         arg7 : VkAccelerationStructureNV;
         arg8 : VkBuffer;
         arg9 : VkDeviceSize)
   with Convention => C;  -- vulkan_core.h:9478

   type PFN_vkCmdCopyAccelerationStructureNV is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkAccelerationStructureNV;
         arg3 : VkAccelerationStructureNV;
         arg4 : VkCopyAccelerationStructureModeNV)
   with Convention => C;  -- vulkan_core.h:9479

   type PFN_vkCmdTraceRaysNV is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : VkBuffer;
         arg5 : VkDeviceSize;
         arg6 : VkDeviceSize;
         arg7 : VkBuffer;
         arg8 : VkDeviceSize;
         arg9 : VkDeviceSize;
         arg10 : VkBuffer;
         arg11 : VkDeviceSize;
         arg12 : VkDeviceSize;
         arg13 : Interfaces.C.unsigned_short;
         arg14 : Interfaces.C.unsigned_short;
         arg15 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:9480

   type PFN_vkCreateRayTracingPipelinesNV is access function
        (arg1 : VkDevice;
         arg2 : VkPipelineCache;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : access constant VkRayTracingPipelineCreateInfoNV;
         arg5 : access constant VkAllocationCallbacks;
         arg6 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:9481

   type PFN_vkGetRayTracingShaderGroupHandlesNV is access function
        (arg1 : VkDevice;
         arg2 : VkPipeline;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : size_t;
         arg6 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:9482

   type PFN_vkGetAccelerationStructureHandleNV is access function
        (arg1 : VkDevice;
         arg2 : VkAccelerationStructureNV;
         arg3 : size_t;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:9483

   type PFN_vkCmdWriteAccelerationStructuresPropertiesNV is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : System.Address;
         arg4 : VkQueryType;
         arg5 : VkQueryPool;
         arg6 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:9484

   type PFN_vkCompileDeferredNV is access function
        (arg1 : VkDevice;
         arg2 : VkPipeline;
         arg3 : Interfaces.C.unsigned_short) return VkResult
   with Convention => C;  -- vulkan_core.h:9485

   function vkCreateAccelerationStructureNV
     (device : VkDevice;
      pCreateInfo : access constant VkAccelerationStructureCreateInfoNV;
      pAllocator : access constant VkAllocationCallbacks;
      pAccelerationStructure : System.Address) return VkResult  -- vulkan_core.h:9488
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateAccelerationStructureNV";

   procedure vkDestroyAccelerationStructureNV
     (device : VkDevice;
      accelerationStructure : VkAccelerationStructureNV;
      pAllocator : access constant VkAllocationCallbacks)  -- vulkan_core.h:9494
   with Import => True, 
        Convention => C, 
        External_Name => "vkDestroyAccelerationStructureNV";

   procedure vkGetAccelerationStructureMemoryRequirementsNV
     (device : VkDevice;
      pInfo : access constant VkAccelerationStructureMemoryRequirementsInfoNV;
      pMemoryRequirements : access VkMemoryRequirements2KHR)  -- vulkan_core.h:9499
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetAccelerationStructureMemoryRequirementsNV";

   function vkBindAccelerationStructureMemoryNV
     (device : VkDevice;
      bindInfoCount : Interfaces.C.unsigned_short;
      pBindInfos : access constant VkBindAccelerationStructureMemoryInfoNV) return VkResult  -- vulkan_core.h:9504
   with Import => True, 
        Convention => C, 
        External_Name => "vkBindAccelerationStructureMemoryNV";

   procedure vkCmdBuildAccelerationStructureNV
     (commandBuffer : VkCommandBuffer;
      pInfo : access constant VkAccelerationStructureInfoNV;
      instanceData : VkBuffer;
      instanceOffset : VkDeviceSize;
      update : VkBool32;
      dst : VkAccelerationStructureNV;
      src : VkAccelerationStructureNV;
      scratch : VkBuffer;
      scratchOffset : VkDeviceSize)  -- vulkan_core.h:9509
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdBuildAccelerationStructureNV";

   procedure vkCmdCopyAccelerationStructureNV
     (commandBuffer : VkCommandBuffer;
      dst : VkAccelerationStructureNV;
      src : VkAccelerationStructureNV;
      mode : VkCopyAccelerationStructureModeNV)  -- vulkan_core.h:9520
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdCopyAccelerationStructureNV";

   procedure vkCmdTraceRaysNV
     (commandBuffer : VkCommandBuffer;
      raygenShaderBindingTableBuffer : VkBuffer;
      raygenShaderBindingOffset : VkDeviceSize;
      missShaderBindingTableBuffer : VkBuffer;
      missShaderBindingOffset : VkDeviceSize;
      missShaderBindingStride : VkDeviceSize;
      hitShaderBindingTableBuffer : VkBuffer;
      hitShaderBindingOffset : VkDeviceSize;
      hitShaderBindingStride : VkDeviceSize;
      callableShaderBindingTableBuffer : VkBuffer;
      callableShaderBindingOffset : VkDeviceSize;
      callableShaderBindingStride : VkDeviceSize;
      width : Interfaces.C.unsigned_short;
      height : Interfaces.C.unsigned_short;
      depth : Interfaces.C.unsigned_short)  -- vulkan_core.h:9526
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdTraceRaysNV";

   function vkCreateRayTracingPipelinesNV
     (device : VkDevice;
      pipelineCache : VkPipelineCache;
      createInfoCount : Interfaces.C.unsigned_short;
      pCreateInfos : access constant VkRayTracingPipelineCreateInfoNV;
      pAllocator : access constant VkAllocationCallbacks;
      pPipelines : System.Address) return VkResult  -- vulkan_core.h:9543
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateRayTracingPipelinesNV";

   function vkGetRayTracingShaderGroupHandlesNV
     (device : VkDevice;
      pipeline : VkPipeline;
      firstGroup : Interfaces.C.unsigned_short;
      groupCount : Interfaces.C.unsigned_short;
      dataSize : size_t;
      pData : System.Address) return VkResult  -- vulkan_core.h:9551
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetRayTracingShaderGroupHandlesNV";

   function vkGetAccelerationStructureHandleNV
     (device : VkDevice;
      accelerationStructure : VkAccelerationStructureNV;
      dataSize : size_t;
      pData : System.Address) return VkResult  -- vulkan_core.h:9559
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetAccelerationStructureHandleNV";

   procedure vkCmdWriteAccelerationStructuresPropertiesNV
     (commandBuffer : VkCommandBuffer;
      accelerationStructureCount : Interfaces.C.unsigned_short;
      pAccelerationStructures : System.Address;
      queryType : VkQueryType;
      queryPool : VkQueryPool;
      firstQuery : Interfaces.C.unsigned_short)  -- vulkan_core.h:9565
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdWriteAccelerationStructuresPropertiesNV";

   function vkCompileDeferredNV
     (device : VkDevice;
      pipeline : VkPipeline;
      shader : Interfaces.C.unsigned_short) return VkResult  -- vulkan_core.h:9573
   with Import => True, 
        Convention => C, 
        External_Name => "vkCompileDeferredNV";

   type VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9584
      pNext : System.Address;  -- vulkan_core.h:9585
      representativeFragmentTest : aliased VkBool32;  -- vulkan_core.h:9586
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9583

   type VkPipelineRepresentativeFragmentTestStateCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9590
      pNext : System.Address;  -- vulkan_core.h:9591
      representativeFragmentTestEnable : aliased VkBool32;  -- vulkan_core.h:9592
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9589

   type VkPhysicalDeviceImageViewImageFormatInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9601
      pNext : System.Address;  -- vulkan_core.h:9602
      imageViewType : aliased VkImageViewType;  -- vulkan_core.h:9603
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9600

   type VkFilterCubicImageViewImageFormatPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9607
      pNext : System.Address;  -- vulkan_core.h:9608
      filterCubic : aliased VkBool32;  -- vulkan_core.h:9609
      filterCubicMinmax : aliased VkBool32;  -- vulkan_core.h:9610
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9606

   subtype VkQueueGlobalPriorityEXT is unsigned;
   VK_QUEUE_GLOBAL_PRIORITY_LOW_EXT : constant unsigned := 128;
   VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_EXT : constant unsigned := 256;
   VK_QUEUE_GLOBAL_PRIORITY_HIGH_EXT : constant unsigned := 512;
   VK_QUEUE_GLOBAL_PRIORITY_REALTIME_EXT : constant unsigned := 1024;
   VK_QUEUE_GLOBAL_PRIORITY_BEGIN_RANGE_EXT : constant unsigned := 128;
   VK_QUEUE_GLOBAL_PRIORITY_END_RANGE_EXT : constant unsigned := 1024;
   VK_QUEUE_GLOBAL_PRIORITY_RANGE_SIZE_EXT : constant unsigned := 897;
   VK_QUEUE_GLOBAL_PRIORITY_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:9619

   type VkDeviceQueueGlobalPriorityCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9630
      pNext : System.Address;  -- vulkan_core.h:9631
      globalPriority : aliased VkQueueGlobalPriorityEXT;  -- vulkan_core.h:9632
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9629

   type VkImportMemoryHostPointerInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9641
      pNext : System.Address;  -- vulkan_core.h:9642
      handleType : aliased VkExternalMemoryHandleTypeFlagBits;  -- vulkan_core.h:9643
      pHostPointer : System.Address;  -- vulkan_core.h:9644
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9640

   type VkMemoryHostPointerPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9648
      pNext : System.Address;  -- vulkan_core.h:9649
      memoryTypeBits : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9650
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9647

   type VkPhysicalDeviceExternalMemoryHostPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9654
      pNext : System.Address;  -- vulkan_core.h:9655
      minImportedHostPointerAlignment : aliased VkDeviceSize;  -- vulkan_core.h:9656
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9653

   type PFN_vkGetMemoryHostPointerPropertiesEXT is access function
        (arg1 : VkDevice;
         arg2 : VkExternalMemoryHandleTypeFlagBits;
         arg3 : System.Address;
         arg4 : access VkMemoryHostPointerPropertiesEXT) return VkResult
   with Convention => C;  -- vulkan_core.h:9659

   function vkGetMemoryHostPointerPropertiesEXT
     (device : VkDevice;
      handleType : VkExternalMemoryHandleTypeFlagBits;
      pHostPointer : System.Address;
      pMemoryHostPointerProperties : access VkMemoryHostPointerPropertiesEXT) return VkResult  -- vulkan_core.h:9662
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetMemoryHostPointerPropertiesEXT";

   type PFN_vkCmdWriteBufferMarkerAMD is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkPipelineStageFlagBits;
         arg3 : VkBuffer;
         arg4 : VkDeviceSize;
         arg5 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:9673

   procedure vkCmdWriteBufferMarkerAMD
     (commandBuffer : VkCommandBuffer;
      pipelineStage : VkPipelineStageFlagBits;
      dstBuffer : VkBuffer;
      dstOffset : VkDeviceSize;
      marker : Interfaces.C.unsigned_short)  -- vulkan_core.h:9676
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdWriteBufferMarkerAMD";

   subtype VkPipelineCompilerControlFlagBitsAMD is unsigned;
   VK_PIPELINE_COMPILER_CONTROL_FLAG_BITS_MAX_ENUM_AMD : constant unsigned := 2147483647;  -- vulkan_core.h:9689

   subtype VkPipelineCompilerControlFlagsAMD is VkFlags;  -- vulkan_core.h:9692

   type VkPipelineCompilerControlCreateInfoAMD is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9694
      pNext : System.Address;  -- vulkan_core.h:9695
      compilerControlFlags : aliased VkPipelineCompilerControlFlagsAMD;  -- vulkan_core.h:9696
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9693

   subtype VkTimeDomainEXT is unsigned;
   VK_TIME_DOMAIN_DEVICE_EXT : constant unsigned := 0;
   VK_TIME_DOMAIN_CLOCK_MONOTONIC_EXT : constant unsigned := 1;
   VK_TIME_DOMAIN_CLOCK_MONOTONIC_RAW_EXT : constant unsigned := 2;
   VK_TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_EXT : constant unsigned := 3;
   VK_TIME_DOMAIN_BEGIN_RANGE_EXT : constant unsigned := 0;
   VK_TIME_DOMAIN_END_RANGE_EXT : constant unsigned := 3;
   VK_TIME_DOMAIN_RANGE_SIZE_EXT : constant unsigned := 4;
   VK_TIME_DOMAIN_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:9705

   type VkCalibratedTimestampInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9716
      pNext : System.Address;  -- vulkan_core.h:9717
      timeDomain : aliased VkTimeDomainEXT;  -- vulkan_core.h:9718
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9715

   type PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkTimeDomainEXT) return VkResult
   with Convention => C;  -- vulkan_core.h:9721

   type PFN_vkGetCalibratedTimestampsEXT is access function
        (arg1 : VkDevice;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : access constant VkCalibratedTimestampInfoEXT;
         arg4 : access Interfaces.C.unsigned_long;
         arg5 : access Interfaces.C.unsigned_long) return VkResult
   with Convention => C;  -- vulkan_core.h:9722

   function vkGetPhysicalDeviceCalibrateableTimeDomainsEXT
     (physicalDevice : VkPhysicalDevice;
      pTimeDomainCount : access Interfaces.C.unsigned_short;
      pTimeDomains : access VkTimeDomainEXT) return VkResult  -- vulkan_core.h:9725
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceCalibrateableTimeDomainsEXT";

   function vkGetCalibratedTimestampsEXT
     (device : VkDevice;
      timestampCount : Interfaces.C.unsigned_short;
      pTimestampInfos : access constant VkCalibratedTimestampInfoEXT;
      pTimestamps : access Interfaces.C.unsigned_long;
      pMaxDeviation : access Interfaces.C.unsigned_long) return VkResult  -- vulkan_core.h:9730
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetCalibratedTimestampsEXT";

   type VkPhysicalDeviceShaderCorePropertiesAMD is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9743
      pNext : System.Address;  -- vulkan_core.h:9744
      shaderEngineCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9745
      shaderArraysPerEngineCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9746
      computeUnitsPerShaderArray : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9747
      simdPerComputeUnit : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9748
      wavefrontsPerSimd : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9749
      wavefrontSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9750
      sgprsPerSimd : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9751
      minSgprAllocation : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9752
      maxSgprAllocation : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9753
      sgprAllocationGranularity : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9754
      vgprsPerSimd : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9755
      minVgprAllocation : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9756
      maxVgprAllocation : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9757
      vgprAllocationGranularity : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9758
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9742

   subtype VkMemoryOverallocationBehaviorAMD is unsigned;
   VK_MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD : constant unsigned := 0;
   VK_MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD : constant unsigned := 1;
   VK_MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD : constant unsigned := 2;
   VK_MEMORY_OVERALLOCATION_BEHAVIOR_BEGIN_RANGE_AMD : constant unsigned := 0;
   VK_MEMORY_OVERALLOCATION_BEHAVIOR_END_RANGE_AMD : constant unsigned := 2;
   VK_MEMORY_OVERALLOCATION_BEHAVIOR_RANGE_SIZE_AMD : constant unsigned := 3;
   VK_MEMORY_OVERALLOCATION_BEHAVIOR_MAX_ENUM_AMD : constant unsigned := 2147483647;  -- vulkan_core.h:9767

   type VkDeviceMemoryOverallocationCreateInfoAMD is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9777
      pNext : System.Address;  -- vulkan_core.h:9778
      overallocationBehavior : aliased VkMemoryOverallocationBehaviorAMD;  -- vulkan_core.h:9779
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9776

   type VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9788
      pNext : System.Address;  -- vulkan_core.h:9789
      maxVertexAttribDivisor : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9790
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9787

   type VkVertexInputBindingDivisorDescriptionEXT is record
      binding : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9794
      divisor : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9795
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9793

   type VkPipelineVertexInputDivisorStateCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9799
      pNext : System.Address;  -- vulkan_core.h:9800
      vertexBindingDivisorCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9801
      pVertexBindingDivisors : access constant VkVertexInputBindingDivisorDescriptionEXT;  -- vulkan_core.h:9802
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9798

   type VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9806
      pNext : System.Address;  -- vulkan_core.h:9807
      vertexAttributeInstanceRateDivisor : aliased VkBool32;  -- vulkan_core.h:9808
      vertexAttributeInstanceRateZeroDivisor : aliased VkBool32;  -- vulkan_core.h:9809
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9805

   subtype VkPipelineCreationFeedbackFlagBitsEXT is unsigned;
   VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT_EXT : constant unsigned := 1;
   VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT_EXT : constant unsigned := 2;
   VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT_EXT : constant unsigned := 4;
   VK_PIPELINE_CREATION_FEEDBACK_FLAG_BITS_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:9818

   subtype VkPipelineCreationFeedbackFlagsEXT is VkFlags;  -- vulkan_core.h:9824

   type VkPipelineCreationFeedbackEXT is record
      flags : aliased VkPipelineCreationFeedbackFlagsEXT;  -- vulkan_core.h:9826
      duration : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:9827
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9825

   type VkPipelineCreationFeedbackCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9831
      pNext : System.Address;  -- vulkan_core.h:9832
      pPipelineCreationFeedback : access VkPipelineCreationFeedbackEXT;  -- vulkan_core.h:9833
      pipelineStageCreationFeedbackCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9834
      pPipelineStageCreationFeedbacks : access VkPipelineCreationFeedbackEXT;  -- vulkan_core.h:9835
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9830

   type VkPhysicalDeviceComputeShaderDerivativesFeaturesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9849
      pNext : System.Address;  -- vulkan_core.h:9850
      computeDerivativeGroupQuads : aliased VkBool32;  -- vulkan_core.h:9851
      computeDerivativeGroupLinear : aliased VkBool32;  -- vulkan_core.h:9852
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9848

   type VkPhysicalDeviceMeshShaderFeaturesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9861
      pNext : System.Address;  -- vulkan_core.h:9862
      taskShader : aliased VkBool32;  -- vulkan_core.h:9863
      meshShader : aliased VkBool32;  -- vulkan_core.h:9864
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9860

   type VkPhysicalDeviceMeshShaderPropertiesNV_array1331 is array (0 .. 2) of aliased Interfaces.C.unsigned_short;
   type VkPhysicalDeviceMeshShaderPropertiesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9868
      pNext : System.Address;  -- vulkan_core.h:9869
      maxDrawMeshTasksCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9870
      maxTaskWorkGroupInvocations : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9871
      maxTaskWorkGroupSize : aliased VkPhysicalDeviceMeshShaderPropertiesNV_array1331;  -- vulkan_core.h:9872
      maxTaskTotalMemorySize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9873
      maxTaskOutputCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9874
      maxMeshWorkGroupInvocations : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9875
      maxMeshWorkGroupSize : aliased VkPhysicalDeviceMeshShaderPropertiesNV_array1331;  -- vulkan_core.h:9876
      maxMeshTotalMemorySize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9877
      maxMeshOutputVertices : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9878
      maxMeshOutputPrimitives : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9879
      maxMeshMultiviewViewCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9880
      meshOutputPerVertexGranularity : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9881
      meshOutputPerPrimitiveGranularity : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9882
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9867

   type VkDrawMeshTasksIndirectCommandNV is record
      taskCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9886
      firstTask : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9887
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9885

   type PFN_vkCmdDrawMeshTasksNV is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:9890

   type PFN_vkCmdDrawMeshTasksIndirectNV is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : Interfaces.C.unsigned_short;
         arg5 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:9891

   type PFN_vkCmdDrawMeshTasksIndirectCountNV is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : VkBuffer;
         arg3 : VkDeviceSize;
         arg4 : VkBuffer;
         arg5 : VkDeviceSize;
         arg6 : Interfaces.C.unsigned_short;
         arg7 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:9892

   procedure vkCmdDrawMeshTasksNV
     (commandBuffer : VkCommandBuffer;
      taskCount : Interfaces.C.unsigned_short;
      firstTask : Interfaces.C.unsigned_short)  -- vulkan_core.h:9895
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawMeshTasksNV";

   procedure vkCmdDrawMeshTasksIndirectNV
     (commandBuffer : VkCommandBuffer;
      buffer : VkBuffer;
      offset : VkDeviceSize;
      drawCount : Interfaces.C.unsigned_short;
      stride : Interfaces.C.unsigned_short)  -- vulkan_core.h:9900
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawMeshTasksIndirectNV";

   procedure vkCmdDrawMeshTasksIndirectCountNV
     (commandBuffer : VkCommandBuffer;
      buffer : VkBuffer;
      offset : VkDeviceSize;
      countBuffer : VkBuffer;
      countBufferOffset : VkDeviceSize;
      maxDrawCount : Interfaces.C.unsigned_short;
      stride : Interfaces.C.unsigned_short)  -- vulkan_core.h:9907
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdDrawMeshTasksIndirectCountNV";

   type VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9922
      pNext : System.Address;  -- vulkan_core.h:9923
      fragmentShaderBarycentric : aliased VkBool32;  -- vulkan_core.h:9924
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9921

   type VkPhysicalDeviceShaderImageFootprintFeaturesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9933
      pNext : System.Address;  -- vulkan_core.h:9934
      imageFootprint : aliased VkBool32;  -- vulkan_core.h:9935
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9932

   type VkPipelineViewportExclusiveScissorStateCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9944
      pNext : System.Address;  -- vulkan_core.h:9945
      exclusiveScissorCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:9946
      pExclusiveScissors : access constant VkRect2D;  -- vulkan_core.h:9947
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9943

   type VkPhysicalDeviceExclusiveScissorFeaturesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9951
      pNext : System.Address;  -- vulkan_core.h:9952
      exclusiveScissor : aliased VkBool32;  -- vulkan_core.h:9953
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9950

   type PFN_vkCmdSetExclusiveScissorNV is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : access constant VkRect2D)
   with Convention => C;  -- vulkan_core.h:9956

   procedure vkCmdSetExclusiveScissorNV
     (commandBuffer : VkCommandBuffer;
      firstExclusiveScissor : Interfaces.C.unsigned_short;
      exclusiveScissorCount : Interfaces.C.unsigned_short;
      pExclusiveScissors : access constant VkRect2D)  -- vulkan_core.h:9959
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetExclusiveScissorNV";

   type VkQueueFamilyCheckpointPropertiesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9971
      pNext : System.Address;  -- vulkan_core.h:9972
      checkpointExecutionStageMask : aliased VkPipelineStageFlags;  -- vulkan_core.h:9973
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9970

   type VkCheckpointDataNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:9977
      pNext : System.Address;  -- vulkan_core.h:9978
      stage : aliased VkPipelineStageFlagBits;  -- vulkan_core.h:9979
      pCheckpointMarker : System.Address;  -- vulkan_core.h:9980
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:9976

   type PFN_vkCmdSetCheckpointNV is access procedure (arg1 : VkCommandBuffer; arg2 : System.Address)
   with Convention => C;  -- vulkan_core.h:9983

   type PFN_vkGetQueueCheckpointDataNV is access procedure
        (arg1 : VkQueue;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkCheckpointDataNV)
   with Convention => C;  -- vulkan_core.h:9984

   procedure vkCmdSetCheckpointNV (commandBuffer : VkCommandBuffer; pCheckpointMarker : System.Address)  -- vulkan_core.h:9987
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetCheckpointNV";

   procedure vkGetQueueCheckpointDataNV
     (queue : VkQueue;
      pCheckpointDataCount : access Interfaces.C.unsigned_short;
      pCheckpointData : access VkCheckpointDataNV)  -- vulkan_core.h:9991
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetQueueCheckpointDataNV";

   type VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10002
      pNext : System.Address;  -- vulkan_core.h:10003
      shaderIntegerFunctions2 : aliased VkBool32;  -- vulkan_core.h:10004
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10001

   type VkPerformanceConfigurationINTEL_T is null record;   -- incomplete struct

   type VkPerformanceConfigurationINTEL is access all VkPerformanceConfigurationINTEL_T;  -- vulkan_core.h:10010

   subtype VkPerformanceConfigurationTypeINTEL is unsigned;
   VK_PERFORMANCE_CONFIGURATION_TYPE_COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED_INTEL : constant unsigned := 0;
   VK_PERFORMANCE_CONFIGURATION_TYPE_BEGIN_RANGE_INTEL : constant unsigned := 0;
   VK_PERFORMANCE_CONFIGURATION_TYPE_END_RANGE_INTEL : constant unsigned := 0;
   VK_PERFORMANCE_CONFIGURATION_TYPE_RANGE_SIZE_INTEL : constant unsigned := 1;
   VK_PERFORMANCE_CONFIGURATION_TYPE_MAX_ENUM_INTEL : constant unsigned := 2147483647;  -- vulkan_core.h:10014

   subtype VkQueryPoolSamplingModeINTEL is unsigned;
   VK_QUERY_POOL_SAMPLING_MODE_MANUAL_INTEL : constant unsigned := 0;
   VK_QUERY_POOL_SAMPLING_MODE_BEGIN_RANGE_INTEL : constant unsigned := 0;
   VK_QUERY_POOL_SAMPLING_MODE_END_RANGE_INTEL : constant unsigned := 0;
   VK_QUERY_POOL_SAMPLING_MODE_RANGE_SIZE_INTEL : constant unsigned := 1;
   VK_QUERY_POOL_SAMPLING_MODE_MAX_ENUM_INTEL : constant unsigned := 2147483647;  -- vulkan_core.h:10022

   subtype VkPerformanceOverrideTypeINTEL is unsigned;
   VK_PERFORMANCE_OVERRIDE_TYPE_NULL_HARDWARE_INTEL : constant unsigned := 0;
   VK_PERFORMANCE_OVERRIDE_TYPE_FLUSH_GPU_CACHES_INTEL : constant unsigned := 1;
   VK_PERFORMANCE_OVERRIDE_TYPE_BEGIN_RANGE_INTEL : constant unsigned := 0;
   VK_PERFORMANCE_OVERRIDE_TYPE_END_RANGE_INTEL : constant unsigned := 1;
   VK_PERFORMANCE_OVERRIDE_TYPE_RANGE_SIZE_INTEL : constant unsigned := 2;
   VK_PERFORMANCE_OVERRIDE_TYPE_MAX_ENUM_INTEL : constant unsigned := 2147483647;  -- vulkan_core.h:10030

   subtype VkPerformanceParameterTypeINTEL is unsigned;
   VK_PERFORMANCE_PARAMETER_TYPE_HW_COUNTERS_SUPPORTED_INTEL : constant unsigned := 0;
   VK_PERFORMANCE_PARAMETER_TYPE_STREAM_MARKER_VALID_BITS_INTEL : constant unsigned := 1;
   VK_PERFORMANCE_PARAMETER_TYPE_BEGIN_RANGE_INTEL : constant unsigned := 0;
   VK_PERFORMANCE_PARAMETER_TYPE_END_RANGE_INTEL : constant unsigned := 1;
   VK_PERFORMANCE_PARAMETER_TYPE_RANGE_SIZE_INTEL : constant unsigned := 2;
   VK_PERFORMANCE_PARAMETER_TYPE_MAX_ENUM_INTEL : constant unsigned := 2147483647;  -- vulkan_core.h:10039

   subtype VkPerformanceValueTypeINTEL is unsigned;
   VK_PERFORMANCE_VALUE_TYPE_UINT32_INTEL : constant unsigned := 0;
   VK_PERFORMANCE_VALUE_TYPE_UINT64_INTEL : constant unsigned := 1;
   VK_PERFORMANCE_VALUE_TYPE_FLOAT_INTEL : constant unsigned := 2;
   VK_PERFORMANCE_VALUE_TYPE_BOOL_INTEL : constant unsigned := 3;
   VK_PERFORMANCE_VALUE_TYPE_STRING_INTEL : constant unsigned := 4;
   VK_PERFORMANCE_VALUE_TYPE_BEGIN_RANGE_INTEL : constant unsigned := 0;
   VK_PERFORMANCE_VALUE_TYPE_END_RANGE_INTEL : constant unsigned := 4;
   VK_PERFORMANCE_VALUE_TYPE_RANGE_SIZE_INTEL : constant unsigned := 5;
   VK_PERFORMANCE_VALUE_TYPE_MAX_ENUM_INTEL : constant unsigned := 2147483647;  -- vulkan_core.h:10048

   type VkPerformanceValueDataINTEL (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            value32 : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10060
         when 1 =>
            value64 : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:10061
         when 2 =>
            valueFloat : aliased float;  -- vulkan_core.h:10062
         when 3 =>
            valueBool : aliased VkBool32;  -- vulkan_core.h:10063
         when others =>
            valueString : Interfaces.C.Strings.chars_ptr;  -- vulkan_core.h:10064
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- vulkan_core.h:10059

   type VkPerformanceValueINTEL is record
      c_type : aliased VkPerformanceValueTypeINTEL;  -- vulkan_core.h:10068
      data : aliased VkPerformanceValueDataINTEL;  -- vulkan_core.h:10069
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10067

   type VkInitializePerformanceApiInfoINTEL is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10073
      pNext : System.Address;  -- vulkan_core.h:10074
      pUserData : System.Address;  -- vulkan_core.h:10075
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10072

   type VkQueryPoolCreateInfoINTEL is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10079
      pNext : System.Address;  -- vulkan_core.h:10080
      performanceCountersSampling : aliased VkQueryPoolSamplingModeINTEL;  -- vulkan_core.h:10081
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10078

   type VkPerformanceMarkerInfoINTEL is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10085
      pNext : System.Address;  -- vulkan_core.h:10086
      marker : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:10087
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10084

   type VkPerformanceStreamMarkerInfoINTEL is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10091
      pNext : System.Address;  -- vulkan_core.h:10092
      marker : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10093
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10090

   type VkPerformanceOverrideInfoINTEL is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10097
      pNext : System.Address;  -- vulkan_core.h:10098
      c_type : aliased VkPerformanceOverrideTypeINTEL;  -- vulkan_core.h:10099
      enable : aliased VkBool32;  -- vulkan_core.h:10100
      parameter : aliased Interfaces.C.unsigned_long;  -- vulkan_core.h:10101
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10096

   type VkPerformanceConfigurationAcquireInfoINTEL is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10105
      pNext : System.Address;  -- vulkan_core.h:10106
      c_type : aliased VkPerformanceConfigurationTypeINTEL;  -- vulkan_core.h:10107
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10104

   type PFN_vkInitializePerformanceApiINTEL is access function (arg1 : VkDevice; arg2 : access constant VkInitializePerformanceApiInfoINTEL) return VkResult
   with Convention => C;  -- vulkan_core.h:10110

   type PFN_vkUninitializePerformanceApiINTEL is access procedure (arg1 : VkDevice)
   with Convention => C;  -- vulkan_core.h:10111

   type PFN_vkCmdSetPerformanceMarkerINTEL is access function (arg1 : VkCommandBuffer; arg2 : access constant VkPerformanceMarkerInfoINTEL) return VkResult
   with Convention => C;  -- vulkan_core.h:10112

   type PFN_vkCmdSetPerformanceStreamMarkerINTEL is access function (arg1 : VkCommandBuffer; arg2 : access constant VkPerformanceStreamMarkerInfoINTEL) return VkResult
   with Convention => C;  -- vulkan_core.h:10113

   type PFN_vkCmdSetPerformanceOverrideINTEL is access function (arg1 : VkCommandBuffer; arg2 : access constant VkPerformanceOverrideInfoINTEL) return VkResult
   with Convention => C;  -- vulkan_core.h:10114

   type PFN_vkAcquirePerformanceConfigurationINTEL is access function
        (arg1 : VkDevice;
         arg2 : access constant VkPerformanceConfigurationAcquireInfoINTEL;
         arg3 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:10115

   type PFN_vkReleasePerformanceConfigurationINTEL is access function (arg1 : VkDevice; arg2 : VkPerformanceConfigurationINTEL) return VkResult
   with Convention => C;  -- vulkan_core.h:10116

   type PFN_vkQueueSetPerformanceConfigurationINTEL is access function (arg1 : VkQueue; arg2 : VkPerformanceConfigurationINTEL) return VkResult
   with Convention => C;  -- vulkan_core.h:10117

   type PFN_vkGetPerformanceParameterINTEL is access function
        (arg1 : VkDevice;
         arg2 : VkPerformanceParameterTypeINTEL;
         arg3 : access VkPerformanceValueINTEL) return VkResult
   with Convention => C;  -- vulkan_core.h:10118

   function vkInitializePerformanceApiINTEL (device : VkDevice; pInitializeInfo : access constant VkInitializePerformanceApiInfoINTEL) return VkResult  -- vulkan_core.h:10121
   with Import => True, 
        Convention => C, 
        External_Name => "vkInitializePerformanceApiINTEL";

   procedure vkUninitializePerformanceApiINTEL (device : VkDevice)  -- vulkan_core.h:10125
   with Import => True, 
        Convention => C, 
        External_Name => "vkUninitializePerformanceApiINTEL";

   function vkCmdSetPerformanceMarkerINTEL (commandBuffer : VkCommandBuffer; pMarkerInfo : access constant VkPerformanceMarkerInfoINTEL) return VkResult  -- vulkan_core.h:10128
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetPerformanceMarkerINTEL";

   function vkCmdSetPerformanceStreamMarkerINTEL (commandBuffer : VkCommandBuffer; pMarkerInfo : access constant VkPerformanceStreamMarkerInfoINTEL) return VkResult  -- vulkan_core.h:10132
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetPerformanceStreamMarkerINTEL";

   function vkCmdSetPerformanceOverrideINTEL (commandBuffer : VkCommandBuffer; pOverrideInfo : access constant VkPerformanceOverrideInfoINTEL) return VkResult  -- vulkan_core.h:10136
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetPerformanceOverrideINTEL";

   function vkAcquirePerformanceConfigurationINTEL
     (device : VkDevice;
      pAcquireInfo : access constant VkPerformanceConfigurationAcquireInfoINTEL;
      pConfiguration : System.Address) return VkResult  -- vulkan_core.h:10140
   with Import => True, 
        Convention => C, 
        External_Name => "vkAcquirePerformanceConfigurationINTEL";

   function vkReleasePerformanceConfigurationINTEL (device : VkDevice; configuration : VkPerformanceConfigurationINTEL) return VkResult  -- vulkan_core.h:10145
   with Import => True, 
        Convention => C, 
        External_Name => "vkReleasePerformanceConfigurationINTEL";

   function vkQueueSetPerformanceConfigurationINTEL (queue : VkQueue; configuration : VkPerformanceConfigurationINTEL) return VkResult  -- vulkan_core.h:10149
   with Import => True, 
        Convention => C, 
        External_Name => "vkQueueSetPerformanceConfigurationINTEL";

   function vkGetPerformanceParameterINTEL
     (device : VkDevice;
      parameter : VkPerformanceParameterTypeINTEL;
      pValue : access VkPerformanceValueINTEL) return VkResult  -- vulkan_core.h:10153
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPerformanceParameterINTEL";

   type VkPhysicalDevicePCIBusInfoPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10164
      pNext : System.Address;  -- vulkan_core.h:10165
      pciDomain : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10166
      pciBus : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10167
      pciDevice : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10168
      pciFunction : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10169
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10163

   type VkDisplayNativeHdrSurfaceCapabilitiesAMD is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10178
      pNext : System.Address;  -- vulkan_core.h:10179
      localDimmingSupport : aliased VkBool32;  -- vulkan_core.h:10180
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10177

   type VkSwapchainDisplayNativeHdrCreateInfoAMD is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10184
      pNext : System.Address;  -- vulkan_core.h:10185
      localDimmingEnable : aliased VkBool32;  -- vulkan_core.h:10186
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10183

   type PFN_vkSetLocalDimmingAMD is access procedure
        (arg1 : VkDevice;
         arg2 : VkSwapchainKHR;
         arg3 : VkBool32)
   with Convention => C;  -- vulkan_core.h:10189

   procedure vkSetLocalDimmingAMD
     (device : VkDevice;
      swapChain : VkSwapchainKHR;
      localDimmingEnable : VkBool32)  -- vulkan_core.h:10192
   with Import => True, 
        Convention => C, 
        External_Name => "vkSetLocalDimmingAMD";

   type VkPhysicalDeviceFragmentDensityMapFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10203
      pNext : System.Address;  -- vulkan_core.h:10204
      fragmentDensityMap : aliased VkBool32;  -- vulkan_core.h:10205
      fragmentDensityMapDynamic : aliased VkBool32;  -- vulkan_core.h:10206
      fragmentDensityMapNonSubsampledImages : aliased VkBool32;  -- vulkan_core.h:10207
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10202

   type VkPhysicalDeviceFragmentDensityMapPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10211
      pNext : System.Address;  -- vulkan_core.h:10212
      minFragmentDensityTexelSize : aliased VkExtent2D;  -- vulkan_core.h:10213
      maxFragmentDensityTexelSize : aliased VkExtent2D;  -- vulkan_core.h:10214
      fragmentDensityInvocations : aliased VkBool32;  -- vulkan_core.h:10215
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10210

   type VkRenderPassFragmentDensityMapCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10219
      pNext : System.Address;  -- vulkan_core.h:10220
      fragmentDensityMapAttachment : aliased VkAttachmentReference;  -- vulkan_core.h:10221
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10218

   subtype VkPhysicalDeviceScalarBlockLayoutFeaturesEXT is VkPhysicalDeviceScalarBlockLayoutFeatures;  -- vulkan_core.h:10229

   type VkPhysicalDeviceSubgroupSizeControlFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10247
      pNext : System.Address;  -- vulkan_core.h:10248
      subgroupSizeControl : aliased VkBool32;  -- vulkan_core.h:10249
      computeFullSubgroups : aliased VkBool32;  -- vulkan_core.h:10250
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10246

   type VkPhysicalDeviceSubgroupSizeControlPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10254
      pNext : System.Address;  -- vulkan_core.h:10255
      minSubgroupSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10256
      maxSubgroupSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10257
      maxComputeWorkgroupSubgroups : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10258
      requiredSubgroupSizeStages : aliased VkShaderStageFlags;  -- vulkan_core.h:10259
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10253

   type VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10263
      pNext : System.Address;  -- vulkan_core.h:10264
      requiredSubgroupSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10265
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10262

   subtype VkShaderCorePropertiesFlagBitsAMD is unsigned;
   VK_SHADER_CORE_PROPERTIES_FLAG_BITS_MAX_ENUM_AMD : constant unsigned := 2147483647;  -- vulkan_core.h:10274

   subtype VkShaderCorePropertiesFlagsAMD is VkFlags;  -- vulkan_core.h:10277

   type VkPhysicalDeviceShaderCoreProperties2AMD is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10279
      pNext : System.Address;  -- vulkan_core.h:10280
      shaderCoreFeatures : aliased VkShaderCorePropertiesFlagsAMD;  -- vulkan_core.h:10281
      activeComputeUnitCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10282
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10278

   type VkPhysicalDeviceCoherentMemoryFeaturesAMD is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10291
      pNext : System.Address;  -- vulkan_core.h:10292
      deviceCoherentMemory : aliased VkBool32;  -- vulkan_core.h:10293
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10290

   type VkPhysicalDeviceMemoryBudgetPropertiesEXT_array5703 is array (0 .. 15) of aliased VkDeviceSize;
   type VkPhysicalDeviceMemoryBudgetPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10302
      pNext : System.Address;  -- vulkan_core.h:10303
      heapBudget : aliased VkPhysicalDeviceMemoryBudgetPropertiesEXT_array5703;  -- vulkan_core.h:10304
      heapUsage : aliased VkPhysicalDeviceMemoryBudgetPropertiesEXT_array5703;  -- vulkan_core.h:10305
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10301

   type VkPhysicalDeviceMemoryPriorityFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10314
      pNext : System.Address;  -- vulkan_core.h:10315
      memoryPriority : aliased VkBool32;  -- vulkan_core.h:10316
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10313

   type VkMemoryPriorityAllocateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10320
      pNext : System.Address;  -- vulkan_core.h:10321
      priority : aliased float;  -- vulkan_core.h:10322
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10319

   type VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10331
      pNext : System.Address;  -- vulkan_core.h:10332
      dedicatedAllocationImageAliasing : aliased VkBool32;  -- vulkan_core.h:10333
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10330

   type VkPhysicalDeviceBufferDeviceAddressFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10342
      pNext : System.Address;  -- vulkan_core.h:10343
      bufferDeviceAddress : aliased VkBool32;  -- vulkan_core.h:10344
      bufferDeviceAddressCaptureReplay : aliased VkBool32;  -- vulkan_core.h:10345
      bufferDeviceAddressMultiDevice : aliased VkBool32;  -- vulkan_core.h:10346
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10341

   subtype VkPhysicalDeviceBufferAddressFeaturesEXT is VkPhysicalDeviceBufferDeviceAddressFeaturesEXT;  -- vulkan_core.h:10349

   subtype VkBufferDeviceAddressInfoEXT is VkBufferDeviceAddressInfo;  -- vulkan_core.h:10351

   type VkBufferDeviceAddressCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10354
      pNext : System.Address;  -- vulkan_core.h:10355
      deviceAddress : aliased VkDeviceAddress;  -- vulkan_core.h:10356
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10353

   type PFN_vkGetBufferDeviceAddressEXT is access function (arg1 : VkDevice; arg2 : access constant VkBufferDeviceAddressInfo) return VkDeviceAddress
   with Convention => C;  -- vulkan_core.h:10359

   function vkGetBufferDeviceAddressEXT (device : VkDevice; pInfo : access constant VkBufferDeviceAddressInfo) return VkDeviceAddress  -- vulkan_core.h:10362
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetBufferDeviceAddressEXT";

   subtype VkToolPurposeFlagBitsEXT is unsigned;
   VK_TOOL_PURPOSE_VALIDATION_BIT_EXT : constant unsigned := 1;
   VK_TOOL_PURPOSE_PROFILING_BIT_EXT : constant unsigned := 2;
   VK_TOOL_PURPOSE_TRACING_BIT_EXT : constant unsigned := 4;
   VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT_EXT : constant unsigned := 8;
   VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT_EXT : constant unsigned := 16;
   VK_TOOL_PURPOSE_DEBUG_REPORTING_BIT_EXT : constant unsigned := 32;
   VK_TOOL_PURPOSE_DEBUG_MARKERS_BIT_EXT : constant unsigned := 64;
   VK_TOOL_PURPOSE_FLAG_BITS_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:10372

   subtype VkToolPurposeFlagsEXT is VkFlags;  -- vulkan_core.h:10382

   subtype VkPhysicalDeviceToolPropertiesEXT_array1342 is Interfaces.C.char_array (0 .. 255);
   type VkPhysicalDeviceToolPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10384
      pNext : System.Address;  -- vulkan_core.h:10385
      name : aliased VkPhysicalDeviceToolPropertiesEXT_array1342;  -- vulkan_core.h:10386
      version : aliased VkPhysicalDeviceToolPropertiesEXT_array1342;  -- vulkan_core.h:10387
      purposes : aliased VkToolPurposeFlagsEXT;  -- vulkan_core.h:10388
      description : aliased VkPhysicalDeviceToolPropertiesEXT_array1342;  -- vulkan_core.h:10389
      layer : aliased VkPhysicalDeviceToolPropertiesEXT_array1342;  -- vulkan_core.h:10390
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10383

   type PFN_vkGetPhysicalDeviceToolPropertiesEXT is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkPhysicalDeviceToolPropertiesEXT) return VkResult
   with Convention => C;  -- vulkan_core.h:10393

   function vkGetPhysicalDeviceToolPropertiesEXT
     (physicalDevice : VkPhysicalDevice;
      pToolCount : access Interfaces.C.unsigned_short;
      pToolProperties : access VkPhysicalDeviceToolPropertiesEXT) return VkResult  -- vulkan_core.h:10396
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceToolPropertiesEXT";

   subtype VkImageStencilUsageCreateInfoEXT is VkImageStencilUsageCreateInfo;  -- vulkan_core.h:10406

   subtype VkValidationFeatureEnableEXT is unsigned;
   VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_EXT : constant unsigned := 0;
   VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_RESERVE_BINDING_SLOT_EXT : constant unsigned := 1;
   VK_VALIDATION_FEATURE_ENABLE_BEST_PRACTICES_EXT : constant unsigned := 2;
   VK_VALIDATION_FEATURE_ENABLE_BEGIN_RANGE_EXT : constant unsigned := 0;
   VK_VALIDATION_FEATURE_ENABLE_END_RANGE_EXT : constant unsigned := 2;
   VK_VALIDATION_FEATURE_ENABLE_RANGE_SIZE_EXT : constant unsigned := 3;
   VK_VALIDATION_FEATURE_ENABLE_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:10414

   subtype VkValidationFeatureDisableEXT is unsigned;
   VK_VALIDATION_FEATURE_DISABLE_ALL_EXT : constant unsigned := 0;
   VK_VALIDATION_FEATURE_DISABLE_SHADERS_EXT : constant unsigned := 1;
   VK_VALIDATION_FEATURE_DISABLE_THREAD_SAFETY_EXT : constant unsigned := 2;
   VK_VALIDATION_FEATURE_DISABLE_API_PARAMETERS_EXT : constant unsigned := 3;
   VK_VALIDATION_FEATURE_DISABLE_OBJECT_LIFETIMES_EXT : constant unsigned := 4;
   VK_VALIDATION_FEATURE_DISABLE_CORE_CHECKS_EXT : constant unsigned := 5;
   VK_VALIDATION_FEATURE_DISABLE_UNIQUE_HANDLES_EXT : constant unsigned := 6;
   VK_VALIDATION_FEATURE_DISABLE_BEGIN_RANGE_EXT : constant unsigned := 0;
   VK_VALIDATION_FEATURE_DISABLE_END_RANGE_EXT : constant unsigned := 6;
   VK_VALIDATION_FEATURE_DISABLE_RANGE_SIZE_EXT : constant unsigned := 7;
   VK_VALIDATION_FEATURE_DISABLE_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:10424

   type VkValidationFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10438
      pNext : System.Address;  -- vulkan_core.h:10439
      enabledValidationFeatureCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10440
      pEnabledValidationFeatures : access VkValidationFeatureEnableEXT;  -- vulkan_core.h:10441
      disabledValidationFeatureCount : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10442
      pDisabledValidationFeatures : access VkValidationFeatureDisableEXT;  -- vulkan_core.h:10443
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10437

   subtype VkComponentTypeNV is unsigned;
   VK_COMPONENT_TYPE_FLOAT16_NV : constant unsigned := 0;
   VK_COMPONENT_TYPE_FLOAT32_NV : constant unsigned := 1;
   VK_COMPONENT_TYPE_FLOAT64_NV : constant unsigned := 2;
   VK_COMPONENT_TYPE_SINT8_NV : constant unsigned := 3;
   VK_COMPONENT_TYPE_SINT16_NV : constant unsigned := 4;
   VK_COMPONENT_TYPE_SINT32_NV : constant unsigned := 5;
   VK_COMPONENT_TYPE_SINT64_NV : constant unsigned := 6;
   VK_COMPONENT_TYPE_UINT8_NV : constant unsigned := 7;
   VK_COMPONENT_TYPE_UINT16_NV : constant unsigned := 8;
   VK_COMPONENT_TYPE_UINT32_NV : constant unsigned := 9;
   VK_COMPONENT_TYPE_UINT64_NV : constant unsigned := 10;
   VK_COMPONENT_TYPE_BEGIN_RANGE_NV : constant unsigned := 0;
   VK_COMPONENT_TYPE_END_RANGE_NV : constant unsigned := 10;
   VK_COMPONENT_TYPE_RANGE_SIZE_NV : constant unsigned := 11;
   VK_COMPONENT_TYPE_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:10452

   subtype VkScopeNV is unsigned;
   VK_SCOPE_DEVICE_NV : constant unsigned := 1;
   VK_SCOPE_WORKGROUP_NV : constant unsigned := 2;
   VK_SCOPE_SUBGROUP_NV : constant unsigned := 3;
   VK_SCOPE_QUEUE_FAMILY_NV : constant unsigned := 5;
   VK_SCOPE_BEGIN_RANGE_NV : constant unsigned := 1;
   VK_SCOPE_END_RANGE_NV : constant unsigned := 5;
   VK_SCOPE_RANGE_SIZE_NV : constant unsigned := 5;
   VK_SCOPE_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:10470

   type VkCooperativeMatrixPropertiesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10481
      pNext : System.Address;  -- vulkan_core.h:10482
      MSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10483
      NSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10484
      KSize : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10485
      AType : aliased VkComponentTypeNV;  -- vulkan_core.h:10486
      BType : aliased VkComponentTypeNV;  -- vulkan_core.h:10487
      CType : aliased VkComponentTypeNV;  -- vulkan_core.h:10488
      DType : aliased VkComponentTypeNV;  -- vulkan_core.h:10489
      scope : aliased VkScopeNV;  -- vulkan_core.h:10490
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10480

   type VkPhysicalDeviceCooperativeMatrixFeaturesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10494
      pNext : System.Address;  -- vulkan_core.h:10495
      cooperativeMatrix : aliased VkBool32;  -- vulkan_core.h:10496
      cooperativeMatrixRobustBufferAccess : aliased VkBool32;  -- vulkan_core.h:10497
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10493

   type VkPhysicalDeviceCooperativeMatrixPropertiesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10501
      pNext : System.Address;  -- vulkan_core.h:10502
      cooperativeMatrixSupportedStages : aliased VkShaderStageFlags;  -- vulkan_core.h:10503
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10500

   type PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesNV is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkCooperativeMatrixPropertiesNV) return VkResult
   with Convention => C;  -- vulkan_core.h:10506

   function vkGetPhysicalDeviceCooperativeMatrixPropertiesNV
     (physicalDevice : VkPhysicalDevice;
      pPropertyCount : access Interfaces.C.unsigned_short;
      pProperties : access VkCooperativeMatrixPropertiesNV) return VkResult  -- vulkan_core.h:10509
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceCooperativeMatrixPropertiesNV";

   subtype VkCoverageReductionModeNV is unsigned;
   VK_COVERAGE_REDUCTION_MODE_MERGE_NV : constant unsigned := 0;
   VK_COVERAGE_REDUCTION_MODE_TRUNCATE_NV : constant unsigned := 1;
   VK_COVERAGE_REDUCTION_MODE_BEGIN_RANGE_NV : constant unsigned := 0;
   VK_COVERAGE_REDUCTION_MODE_END_RANGE_NV : constant unsigned := 1;
   VK_COVERAGE_REDUCTION_MODE_RANGE_SIZE_NV : constant unsigned := 2;
   VK_COVERAGE_REDUCTION_MODE_MAX_ENUM_NV : constant unsigned := 2147483647;  -- vulkan_core.h:10520

   subtype VkPipelineCoverageReductionStateCreateFlagsNV is VkFlags;  -- vulkan_core.h:10528

   type VkPhysicalDeviceCoverageReductionModeFeaturesNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10530
      pNext : System.Address;  -- vulkan_core.h:10531
      coverageReductionMode : aliased VkBool32;  -- vulkan_core.h:10532
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10529

   type VkPipelineCoverageReductionStateCreateInfoNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10536
      pNext : System.Address;  -- vulkan_core.h:10537
      flags : aliased VkPipelineCoverageReductionStateCreateFlagsNV;  -- vulkan_core.h:10538
      coverageReductionMode : aliased VkCoverageReductionModeNV;  -- vulkan_core.h:10539
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10535

   type VkFramebufferMixedSamplesCombinationNV is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10543
      pNext : System.Address;  -- vulkan_core.h:10544
      coverageReductionMode : aliased VkCoverageReductionModeNV;  -- vulkan_core.h:10545
      rasterizationSamples : aliased VkSampleCountFlagBits;  -- vulkan_core.h:10546
      depthStencilSamples : aliased VkSampleCountFlags;  -- vulkan_core.h:10547
      colorSamples : aliased VkSampleCountFlags;  -- vulkan_core.h:10548
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10542

   type PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV is access function
        (arg1 : VkPhysicalDevice;
         arg2 : access Interfaces.C.unsigned_short;
         arg3 : access VkFramebufferMixedSamplesCombinationNV) return VkResult
   with Convention => C;  -- vulkan_core.h:10551

   function vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV
     (physicalDevice : VkPhysicalDevice;
      pCombinationCount : access Interfaces.C.unsigned_short;
      pCombinations : access VkFramebufferMixedSamplesCombinationNV) return VkResult  -- vulkan_core.h:10554
   with Import => True, 
        Convention => C, 
        External_Name => "vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV";

   type VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10565
      pNext : System.Address;  -- vulkan_core.h:10566
      fragmentShaderSampleInterlock : aliased VkBool32;  -- vulkan_core.h:10567
      fragmentShaderPixelInterlock : aliased VkBool32;  -- vulkan_core.h:10568
      fragmentShaderShadingRateInterlock : aliased VkBool32;  -- vulkan_core.h:10569
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10564

   type VkPhysicalDeviceYcbcrImageArraysFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10578
      pNext : System.Address;  -- vulkan_core.h:10579
      ycbcrImageArrays : aliased VkBool32;  -- vulkan_core.h:10580
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10577

   subtype VkHeadlessSurfaceCreateFlagsEXT is VkFlags;  -- vulkan_core.h:10588

   type VkHeadlessSurfaceCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10590
      pNext : System.Address;  -- vulkan_core.h:10591
      flags : aliased VkHeadlessSurfaceCreateFlagsEXT;  -- vulkan_core.h:10592
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10589

   type PFN_vkCreateHeadlessSurfaceEXT is access function
        (arg1 : VkInstance;
         arg2 : access constant VkHeadlessSurfaceCreateInfoEXT;
         arg3 : access constant VkAllocationCallbacks;
         arg4 : System.Address) return VkResult
   with Convention => C;  -- vulkan_core.h:10595

   function vkCreateHeadlessSurfaceEXT
     (instance : VkInstance;
      pCreateInfo : access constant VkHeadlessSurfaceCreateInfoEXT;
      pAllocator : access constant VkAllocationCallbacks;
      pSurface : System.Address) return VkResult  -- vulkan_core.h:10598
   with Import => True, 
        Convention => C, 
        External_Name => "vkCreateHeadlessSurfaceEXT";

   subtype VkLineRasterizationModeEXT is unsigned;
   VK_LINE_RASTERIZATION_MODE_DEFAULT_EXT : constant unsigned := 0;
   VK_LINE_RASTERIZATION_MODE_RECTANGULAR_EXT : constant unsigned := 1;
   VK_LINE_RASTERIZATION_MODE_BRESENHAM_EXT : constant unsigned := 2;
   VK_LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT : constant unsigned := 3;
   VK_LINE_RASTERIZATION_MODE_BEGIN_RANGE_EXT : constant unsigned := 0;
   VK_LINE_RASTERIZATION_MODE_END_RANGE_EXT : constant unsigned := 3;
   VK_LINE_RASTERIZATION_MODE_RANGE_SIZE_EXT : constant unsigned := 4;
   VK_LINE_RASTERIZATION_MODE_MAX_ENUM_EXT : constant unsigned := 2147483647;  -- vulkan_core.h:10610

   type VkPhysicalDeviceLineRasterizationFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10621
      pNext : System.Address;  -- vulkan_core.h:10622
      rectangularLines : aliased VkBool32;  -- vulkan_core.h:10623
      bresenhamLines : aliased VkBool32;  -- vulkan_core.h:10624
      smoothLines : aliased VkBool32;  -- vulkan_core.h:10625
      stippledRectangularLines : aliased VkBool32;  -- vulkan_core.h:10626
      stippledBresenhamLines : aliased VkBool32;  -- vulkan_core.h:10627
      stippledSmoothLines : aliased VkBool32;  -- vulkan_core.h:10628
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10620

   type VkPhysicalDeviceLineRasterizationPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10632
      pNext : System.Address;  -- vulkan_core.h:10633
      lineSubPixelPrecisionBits : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10634
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10631

   type VkPipelineRasterizationLineStateCreateInfoEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10638
      pNext : System.Address;  -- vulkan_core.h:10639
      lineRasterizationMode : aliased VkLineRasterizationModeEXT;  -- vulkan_core.h:10640
      stippledLineEnable : aliased VkBool32;  -- vulkan_core.h:10641
      lineStippleFactor : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10642
      lineStipplePattern : aliased Interfaces.C.unsigned_short;  -- vulkan_core.h:10643
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10637

   type PFN_vkCmdSetLineStippleEXT is access procedure
        (arg1 : VkCommandBuffer;
         arg2 : Interfaces.C.unsigned_short;
         arg3 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:10646

   procedure vkCmdSetLineStippleEXT
     (commandBuffer : VkCommandBuffer;
      lineStippleFactor : Interfaces.C.unsigned_short;
      lineStipplePattern : Interfaces.C.unsigned_short)  -- vulkan_core.h:10649
   with Import => True, 
        Convention => C, 
        External_Name => "vkCmdSetLineStippleEXT";

   subtype VkPhysicalDeviceHostQueryResetFeaturesEXT is VkPhysicalDeviceHostQueryResetFeatures;  -- vulkan_core.h:10659

   type PFN_vkResetQueryPoolEXT is access procedure
        (arg1 : VkDevice;
         arg2 : VkQueryPool;
         arg3 : Interfaces.C.unsigned_short;
         arg4 : Interfaces.C.unsigned_short)
   with Convention => C;  -- vulkan_core.h:10661

   procedure vkResetQueryPoolEXT
     (device : VkDevice;
      queryPool : VkQueryPool;
      firstQuery : Interfaces.C.unsigned_short;
      queryCount : Interfaces.C.unsigned_short)  -- vulkan_core.h:10664
   with Import => True, 
        Convention => C, 
        External_Name => "vkResetQueryPoolEXT";

   type VkPhysicalDeviceIndexTypeUint8FeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10676
      pNext : System.Address;  -- vulkan_core.h:10677
      indexTypeUint8 : aliased VkBool32;  -- vulkan_core.h:10678
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10675

   type VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10687
      pNext : System.Address;  -- vulkan_core.h:10688
      shaderDemoteToHelperInvocation : aliased VkBool32;  -- vulkan_core.h:10689
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10686

   type VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10698
      pNext : System.Address;  -- vulkan_core.h:10699
      texelBufferAlignment : aliased VkBool32;  -- vulkan_core.h:10700
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10697

   type VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT is record
      sType : aliased VkStructureType;  -- vulkan_core.h:10704
      pNext : System.Address;  -- vulkan_core.h:10705
      storageTexelBufferOffsetAlignmentBytes : aliased VkDeviceSize;  -- vulkan_core.h:10706
      storageTexelBufferOffsetSingleTexelAlignment : aliased VkBool32;  -- vulkan_core.h:10707
      uniformTexelBufferOffsetAlignmentBytes : aliased VkDeviceSize;  -- vulkan_core.h:10708
      uniformTexelBufferOffsetSingleTexelAlignment : aliased VkBool32;  -- vulkan_core.h:10709
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_core.h:10703

end Vulkan.Low_Level.vulkan_core_h;
