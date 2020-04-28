pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Vulkan.Low_Level.vulkan_core_h;
with Interfaces.C.Strings;
with System;


package Vulkan.Low_Level.vk_layer_h is

   --  unsupported macro: VK_LAYER_EXPORT __attribute__((visibility("default")))
   MAX_NUM_UNKNOWN_EXTS : constant := 250;  --  vk_layer.h:38

   CURRENT_LOADER_LAYER_INTERFACE_VERSION : constant := 2;  --  vk_layer.h:45
   MIN_SUPPORTED_LOADER_LAYER_INTERFACE_VERSION : constant := 1;  --  vk_layer.h:46

   VK_CURRENT_CHAIN_VERSION : constant := 1;  --  vk_layer.h:48

  -- File: vk_layer.h
  -- * Copyright (c) 2015-2017 The Khronos Group Inc.
  -- * Copyright (c) 2015-2017 Valve Corporation
  -- * Copyright (c) 2015-2017 LunarG, Inc.
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

  -- Need to define dispatch table
  -- * Core struct can then have ptr to dispatch table at the top
  -- * Along with object ptrs for current and next OBJ
  --  

  -- Loader-Layer version negotiation API.  Versions add the following features:
  --   Versions 0/1 - Initial.  Doesn't support vk_layerGetPhysicalDeviceProcAddr
  --                  or vk_icdNegotiateLoaderLayerInterfaceVersion.
  --   Version 2    - Add support for vk_layerGetPhysicalDeviceProcAddr and
  --                  vk_icdNegotiateLoaderLayerInterfaceVersion.
  -- Typedef for use in the interfaces below
   type PFN_GetPhysicalDeviceProcAddr is access function (arg1 : Vulkan.Low_Level.vulkan_core_h.VkInstance; arg2 : Interfaces.C.Strings.chars_ptr) return Vulkan.Low_Level.vulkan_core_h.PFN_vkVoidFunction
   with Convention => C;  -- vk_layer.h:51

  -- Version negotiation values
   type VkNegotiateLayerStructType is 
     (LAYER_NEGOTIATE_UNINTIALIZED,
      LAYER_NEGOTIATE_INTERFACE_STRUCT)
   with Convention => C;  -- vk_layer.h:54

  -- Version negotiation structures
   type VkNegotiateLayerInterface is record
      sType : aliased VkNegotiateLayerStructType;  -- vk_layer.h:61
      pNext : System.Address;  -- vk_layer.h:62
      loaderLayerInterfaceVersion : aliased Interfaces.C.unsigned_short;  -- vk_layer.h:63
      pfnGetInstanceProcAddr : Vulkan.Low_Level.vulkan_core_h.PFN_vkGetInstanceProcAddr;  -- vk_layer.h:64
      pfnGetDeviceProcAddr : Vulkan.Low_Level.vulkan_core_h.PFN_vkGetDeviceProcAddr;  -- vk_layer.h:65
      pfnGetPhysicalDeviceProcAddr : PFN_GetPhysicalDeviceProcAddr;  -- vk_layer.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- vk_layer.h:60

  -- Version negotiation functions
   type PFN_vkNegotiateLoaderLayerInterfaceVersion is access function (arg1 : access VkNegotiateLayerInterface) return Vulkan.Low_Level.vulkan_core_h.VkResult
   with Convention => C;  -- vk_layer.h:70

  -- Function prototype for unknown physical device extension command
   type PFN_PhysDevExt is access function (arg1 : Vulkan.Low_Level.vulkan_core_h.VkPhysicalDevice) return Vulkan.Low_Level.vulkan_core_h.VkResult
   with Convention => C;  -- vk_layer.h:73

  -- ------------------------------------------------------------------------------------------------
  -- CreateInstance and CreateDevice support structures
  -- Sub type of structure for instance and device loader ext of CreateInfo.
  -- * When sType == VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO
  -- * or sType == VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO
  -- * then VkLayerFunction indicates struct type pointed to by pNext
  --  

   type VkLayerFunction_u is 
     (VK_LAYER_LINK_INFO,
      VK_LOADER_DATA_CALLBACK,
      VK_LOADER_LAYER_CREATE_DEVICE_CALLBACK)
   with Convention => C;  -- vk_layer.h:83

   subtype VkLayerFunction is VkLayerFunction_u;  -- vk_layer.h:87

   type VkLayerInstanceLink_u;
   type VkLayerInstanceLink_u is record
      pNext : access VkLayerInstanceLink_u;  -- vk_layer.h:90
      pfnNextGetInstanceProcAddr : Vulkan.Low_Level.vulkan_core_h.PFN_vkGetInstanceProcAddr;  -- vk_layer.h:91
      pfnNextGetPhysicalDeviceProcAddr : PFN_GetPhysicalDeviceProcAddr;  -- vk_layer.h:92
   end record
   with Convention => C_Pass_By_Copy;  -- vk_layer.h:89

   subtype VkLayerInstanceLink is VkLayerInstanceLink_u;  -- vk_layer.h:93

  -- * When creating the device chain the loader needs to pass
  -- * down information about it's device structure needed at
  -- * the end of the chain. Passing the data via the
  -- * VkLayerDeviceInfo avoids issues with finding the
  -- * exact instance being used.
  --  

   type VkLayerDeviceInfo_u is record
      device_info : System.Address;  -- vk_layer.h:103
      pfnNextGetInstanceProcAddr : Vulkan.Low_Level.vulkan_core_h.PFN_vkGetInstanceProcAddr;  -- vk_layer.h:104
   end record
   with Convention => C_Pass_By_Copy;  -- vk_layer.h:102

   subtype VkLayerDeviceInfo is VkLayerDeviceInfo_u;  -- vk_layer.h:105

   type PFN_vkSetInstanceLoaderData is access function (arg1 : Vulkan.Low_Level.vulkan_core_h.VkInstance; arg2 : System.Address) return Vulkan.Low_Level.vulkan_core_h.VkResult
   with Convention => C;  -- vk_layer.h:107

   type PFN_vkSetDeviceLoaderData is access function (arg1 : Vulkan.Low_Level.vulkan_core_h.VkDevice; arg2 : System.Address) return Vulkan.Low_Level.vulkan_core_h.VkResult
   with Convention => C;  -- vk_layer.h:109

   type PFN_vkLayerCreateDevice is access function
        (arg1 : Vulkan.Low_Level.vulkan_core_h.VkInstance;
         arg2 : Vulkan.Low_Level.vulkan_core_h.VkPhysicalDevice;
         arg3 : access constant Vulkan.Low_Level.vulkan_core_h.VkDeviceCreateInfo;
         arg4 : access constant Vulkan.Low_Level.vulkan_core_h.VkAllocationCallbacks;
         arg5 : System.Address;
         arg6 : Vulkan.Low_Level.vulkan_core_h.PFN_vkGetInstanceProcAddr;
         arg7 : System.Address) return Vulkan.Low_Level.vulkan_core_h.VkResult
   with Convention => C;  -- vk_layer.h:111

   type PFN_vkLayerDestroyDevice is access procedure
        (arg1 : Vulkan.Low_Level.vulkan_core_h.VkDevice;
         arg2 : access constant Vulkan.Low_Level.vulkan_core_h.VkAllocationCallbacks;
         arg3 : Vulkan.Low_Level.vulkan_core_h.PFN_vkDestroyDevice)
   with Convention => C;  -- vk_layer.h:113

  -- VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO
   --  skipped anonymous struct anon_2

   type anon_4 is record
      pfnLayerCreateDevice : PFN_vkLayerCreateDevice;  -- vk_layer.h:122
      pfnLayerDestroyDevice : PFN_vkLayerDestroyDevice;  -- vk_layer.h:123
   end record
   with Convention => C_Pass_By_Copy;
   type anon_3 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            pLayerInfo : access VkLayerInstanceLink;  -- vk_layer.h:119
         when 1 =>
            pfnSetInstanceLoaderData : PFN_vkSetInstanceLoaderData;  -- vk_layer.h:120
         when others =>
            layerDevice : aliased anon_4;  -- vk_layer.h:124
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type VkLayerInstanceCreateInfo is record
      sType : aliased Vulkan.Low_Level.vulkan_core_h.VkStructureType;  -- vk_layer.h:115
      pNext : System.Address;  -- vk_layer.h:116
      c_function : aliased VkLayerFunction;  -- vk_layer.h:117
      u : aliased anon_3;  -- vk_layer.h:125
   end record
   with Convention => C_Pass_By_Copy;  -- vk_layer.h:126

   type VkLayerDeviceLink_u;
   type VkLayerDeviceLink_u is record
      pNext : access VkLayerDeviceLink_u;  -- vk_layer.h:129
      pfnNextGetInstanceProcAddr : Vulkan.Low_Level.vulkan_core_h.PFN_vkGetInstanceProcAddr;  -- vk_layer.h:130
      pfnNextGetDeviceProcAddr : Vulkan.Low_Level.vulkan_core_h.PFN_vkGetDeviceProcAddr;  -- vk_layer.h:131
   end record
   with Convention => C_Pass_By_Copy;  -- vk_layer.h:128

   subtype VkLayerDeviceLink is VkLayerDeviceLink_u;  -- vk_layer.h:132

  -- VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO
   --  skipped anonymous struct anon_5

   type anon_6 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            pLayerInfo : access VkLayerDeviceLink;  -- vk_layer.h:139
         when others =>
            pfnSetDeviceLoaderData : PFN_vkSetDeviceLoaderData;  -- vk_layer.h:140
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type VkLayerDeviceCreateInfo is record
      sType : aliased Vulkan.Low_Level.vulkan_core_h.VkStructureType;  -- vk_layer.h:135
      pNext : System.Address;  -- vk_layer.h:136
      c_function : aliased VkLayerFunction;  -- vk_layer.h:137
      u : aliased anon_6;  -- vk_layer.h:141
   end record
   with Convention => C_Pass_By_Copy;  -- vk_layer.h:142

   function vkNegotiateLoaderLayerInterfaceVersion (pVersionStruct : access VkNegotiateLayerInterface) return Vulkan.Low_Level.vulkan_core_h.VkResult  -- vk_layer.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "vkNegotiateLoaderLayerInterfaceVersion";

   type VkChainType is 
     (VK_CHAIN_TYPE_UNKNOWN,
      VK_CHAIN_TYPE_ENUMERATE_INSTANCE_EXTENSION_PROPERTIES,
      VK_CHAIN_TYPE_ENUMERATE_INSTANCE_LAYER_PROPERTIES,
      VK_CHAIN_TYPE_ENUMERATE_INSTANCE_VERSION)
   with Convention => C;  -- vk_layer.h:150

   type VkChainHeader is record
      c_type : aliased VkChainType;  -- vk_layer.h:158
      version : aliased Interfaces.C.unsigned_short;  -- vk_layer.h:159
      size : aliased Interfaces.C.unsigned_short;  -- vk_layer.h:160
   end record
   with Convention => C_Pass_By_Copy;  -- vk_layer.h:157


   package Class_VkEnumerateInstanceExtensionPropertiesChain is
      type VkEnumerateInstanceExtensionPropertiesChain is limited record
         header : aliased VkChainHeader;  -- vk_layer.h:164
         pfnNextLayer : access function
              (arg1 : access constant VkEnumerateInstanceExtensionPropertiesChain;
               arg2 : Interfaces.C.Strings.chars_ptr;
               arg3 : access Interfaces.C.unsigned_short;
               arg4 : access Vulkan.Low_Level.vulkan_core_h.VkExtensionProperties) return Vulkan.Low_Level.vulkan_core_h.VkResult;  -- vk_layer.h:165
         pNextLink : access constant VkEnumerateInstanceExtensionPropertiesChain;  -- vk_layer.h:167
      end record
      with Import => True,
           Convention => CPP;

      function CallDown
        (this : access constant VkEnumerateInstanceExtensionPropertiesChain;
         pLayerName : Interfaces.C.Strings.chars_ptr;
         pPropertyCount : access Interfaces.C.unsigned_short;
         pProperties : access Vulkan.Low_Level.vulkan_core_h.VkExtensionProperties) return Vulkan.Low_Level.vulkan_core_h.VkResult  -- vk_layer.h:170
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNK43VkEnumerateInstanceExtensionPropertiesChain8CallDownEPKcPjP21VkExtensionProperties";
   end;


   package Class_VkEnumerateInstanceLayerPropertiesChain is
      type VkEnumerateInstanceLayerPropertiesChain is limited record
         header : aliased VkChainHeader;  -- vk_layer.h:177
         pfnNextLayer : access function
              (arg1 : access constant VkEnumerateInstanceLayerPropertiesChain;
               arg2 : access Interfaces.C.unsigned_short;
               arg3 : access Vulkan.Low_Level.vulkan_core_h.VkLayerProperties) return Vulkan.Low_Level.vulkan_core_h.VkResult;  -- vk_layer.h:178
         pNextLink : access constant VkEnumerateInstanceLayerPropertiesChain;  -- vk_layer.h:179
      end record
      with Import => True,
           Convention => CPP;

      function CallDown
        (this : access constant VkEnumerateInstanceLayerPropertiesChain;
         pPropertyCount : access Interfaces.C.unsigned_short;
         pProperties : access Vulkan.Low_Level.vulkan_core_h.VkLayerProperties) return Vulkan.Low_Level.vulkan_core_h.VkResult  -- vk_layer.h:182
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNK39VkEnumerateInstanceLayerPropertiesChain8CallDownEPjP17VkLayerProperties";
   end;


   package Class_VkEnumerateInstanceVersionChain is
      type VkEnumerateInstanceVersionChain is limited record
         header : aliased VkChainHeader;  -- vk_layer.h:189
         pfnNextLayer : access function (arg1 : access constant VkEnumerateInstanceVersionChain; arg2 : access Interfaces.C.unsigned_short) return Vulkan.Low_Level.vulkan_core_h.VkResult;  -- vk_layer.h:190
         pNextLink : access constant VkEnumerateInstanceVersionChain;  -- vk_layer.h:191
      end record
      with Import => True,
           Convention => CPP;

      function CallDown (this : access constant VkEnumerateInstanceVersionChain; pApiVersion : access Interfaces.C.unsigned_short) return Vulkan.Low_Level.vulkan_core_h.VkResult  -- vk_layer.h:194
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNK31VkEnumerateInstanceVersionChain8CallDownEPj";
   end;

end Vulkan.Low_Level.vk_layer_h;
