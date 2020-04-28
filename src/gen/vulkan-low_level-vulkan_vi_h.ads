pragma Ada_2012;
pragma Style_Checks (Off);


with System;

package Vulkan.Low_Level.vulkan_vi_h is

   VULKAN_VI_H_u : constant := 1;  --  vulkan_vi.h:2

   VK_NN_vi_surface : constant := 1;  --  vulkan_vi.h:32
   VK_NN_VI_SURFACE_SPEC_VERSION : constant := 1;  --  vulkan_vi.h:33
   VK_NN_VI_SURFACE_EXTENSION_NAME : aliased constant String := "VK_NN_vi_surface" & ASCII.NUL;  --  vulkan_vi.h:34

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

   type VkViSurfaceCreateInfoNN is record
      pNext : System.Address;  -- vulkan_vi.h:38
      window : System.Address;  -- vulkan_vi.h:40
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_vi.h:36

end Vulkan.Low_Level.vulkan_vi_h;
