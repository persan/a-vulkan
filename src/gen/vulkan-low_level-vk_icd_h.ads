pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Vulkan.Low_Level.vulkan_core_h;
with Interfaces.C.Strings;

with System;
with Interfaces.C.Extensions;

package Vulkan.Low_Level.vk_icd_h is

   CURRENT_LOADER_ICD_INTERFACE_VERSION : constant := 5;  --  vk_icd.h:44
   MIN_SUPPORTED_LOADER_ICD_INTERFACE_VERSION : constant := 0;  --  vk_icd.h:45
   MIN_PHYS_DEV_EXTENSION_ICD_INTERFACE_VERSION : constant := 4;  --  vk_icd.h:46

   ICD_LOADER_MAGIC : constant := 16#01CDC0DE#;  --  vk_icd.h:61

  -- File: vk_icd.h
  -- * Copyright (c) 2015-2016 The Khronos Group Inc.
  -- * Copyright (c) 2015-2016 Valve Corporation
  -- * Copyright (c) 2015-2016 LunarG, Inc.
  -- *
  -- * Licensed under the Apache License, Version 2.0 (the "License");
  -- * you may not use this file except in compliance with the License.
  -- * You may obtain a copy of the License at
  -- *
  -- *     http://www.apache.org/licenses/LICENSE-2.0
  -- *
  -- * Unless required by applicable law or agreed to in writing, software
  -- * distributed under the License is distributed on an "AS IS" BASIS,
  -- * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  -- * See the License for the specific language governing permissions and
  -- * limitations under the License.
  -- *
  --  

  -- Loader-ICD version negotiation API.  Versions add the following features:
  --   Version 0 - Initial.  Doesn't support vk_icdGetInstanceProcAddr
  --               or vk_icdNegotiateLoaderICDInterfaceVersion.
  --   Version 1 - Add support for vk_icdGetInstanceProcAddr.
  --   Version 2 - Add Loader/ICD Interface version negotiation
  --               via vk_icdNegotiateLoaderICDInterfaceVersion.
  --   Version 3 - Add ICD creation/destruction of KHR_surface objects.
  --   Version 4 - Add unknown physical device extension qyering via
  --               vk_icdGetPhysicalDeviceProcAddr.
  --   Version 5 - Tells ICDs that the loader is now paying attention to the
  --               application version of Vulkan passed into the ApplicationInfo
  --               structure during vkCreateInstance.  This will tell the ICD
  --               that if the loader is older, it should automatically fail a
  --               call for any API version > 1.0.  Otherwise, the loader will
  --               manually determine if it can support the expected version.
   type PFN_vkNegotiateLoaderICDInterfaceVersion is access function (arg1 : access Interfaces.C.unsigned_short) return Vulkan.Low_Level.vulkan_core_h.VkResult
   with Convention => C;  -- vk_icd.h:47

  -- This is defined in vk_layer.h which will be found by the loader, but if an ICD is building against this
  -- file directly, it won't be found.
   type PFN_GetPhysicalDeviceProcAddr is access function (arg1 : Vulkan.Low_Level.vulkan_core_h.VkInstance; arg2 : Interfaces.C.Strings.chars_ptr) return Vulkan.Low_Level.vulkan_core_h.PFN_vkVoidFunction
   with Convention => C;  -- vk_icd.h:52

  -- * The ICD must reserve space for a pointer for the loader's dispatch
  -- * table, at the start of <each object>.
  -- * The ICD must initialize this variable using the SET_LOADER_MAGIC_VALUE macro.
  --  

   --  skipped anonymous struct anon_2

   type VK_LOADER_DATA (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            loaderMagic : aliased access Interfaces.C.unsigned;  -- vk_icd.h:64
         when others =>
            loaderData : System.Address;  -- vk_icd.h:65
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- vk_icd.h:66

   procedure set_loader_magic_value (pNewObject : System.Address)  -- vk_icd.h:68
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZL22set_loader_magic_valuePv";

   function valid_loader_magic_value (pNewObject : System.Address) return Extensions.bool  -- vk_icd.h:73
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZL24valid_loader_magic_valuePv";

  -- * Windows and Linux ICDs will treat VkSurfaceKHR as a pointer to a struct that
  -- * contains the platform-specific connection and surface information.
  --  

   type VkIcdWsiPlatform is 
     (VK_ICD_WSI_PLATFORM_MIR,
      VK_ICD_WSI_PLATFORM_WAYLAND,
      VK_ICD_WSI_PLATFORM_WIN32,
      VK_ICD_WSI_PLATFORM_XCB,
      VK_ICD_WSI_PLATFORM_XLIB,
      VK_ICD_WSI_PLATFORM_ANDROID,
      VK_ICD_WSI_PLATFORM_MACOS,
      VK_ICD_WSI_PLATFORM_IOS,
      VK_ICD_WSI_PLATFORM_DISPLAY,
      VK_ICD_WSI_PLATFORM_HEADLESS,
      VK_ICD_WSI_PLATFORM_METAL)
   with Convention => C;  -- vk_icd.h:94

   --  skipped anonymous struct anon_4

   type VkIcdSurfaceBase is record
      platform : aliased VkIcdWsiPlatform;  -- vk_icd.h:97
   end record
   with Convention => C_Pass_By_Copy;  -- vk_icd.h:98

   --  skipped anonymous struct anon_5

   type VkIcdSurfaceDisplay is record
      base : aliased VkIcdSurfaceBase;  -- vk_icd.h:162
      displayMode : Vulkan.Low_Level.vulkan_core_h.VkDisplayModeKHR;  -- vk_icd.h:163
      planeIndex : aliased Interfaces.C.unsigned_short;  -- vk_icd.h:164
      planeStackIndex : aliased Interfaces.C.unsigned_short;  -- vk_icd.h:165
      transform : aliased Vulkan.Low_Level.vulkan_core_h.VkSurfaceTransformFlagBitsKHR;  -- vk_icd.h:166
      globalAlpha : aliased float;  -- vk_icd.h:167
      alphaMode : aliased Vulkan.Low_Level.vulkan_core_h.VkDisplayPlaneAlphaFlagBitsKHR;  -- vk_icd.h:168
      imageExtent : aliased Vulkan.Low_Level.vulkan_core_h.VkExtent2D;  -- vk_icd.h:169
   end record
   with Convention => C_Pass_By_Copy;  -- vk_icd.h:170

   --  skipped anonymous struct anon_6

   type VkIcdSurfaceHeadless is record
      base : aliased VkIcdSurfaceBase;  -- vk_icd.h:173
   end record
   with Convention => C_Pass_By_Copy;  -- vk_icd.h:174

end Vulkan.Low_Level.vk_icd_h;
