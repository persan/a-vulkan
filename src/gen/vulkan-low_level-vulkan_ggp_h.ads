pragma Ada_2012;
pragma Style_Checks (Off);


with System;

package Vulkan.Low_Level.vulkan_ggp_h is

   VULKAN_GGP_H_u : constant := 1;  --  vulkan_ggp.h:2

   VK_GGP_stream_descriptor_surface : constant := 1;  --  vulkan_ggp.h:32
   VK_GGP_STREAM_DESCRIPTOR_SURFACE_SPEC_VERSION : constant := 1;  --  vulkan_ggp.h:33
   VK_GGP_STREAM_DESCRIPTOR_SURFACE_EXTENSION_NAME : aliased constant String := "VK_GGP_stream_descriptor_surface" & ASCII.NUL;  --  vulkan_ggp.h:34

   VK_GGP_frame_token : constant := 1;  --  vulkan_ggp.h:54
   VK_GGP_FRAME_TOKEN_SPEC_VERSION : constant := 1;  --  vulkan_ggp.h:55
   VK_GGP_FRAME_TOKEN_EXTENSION_NAME : aliased constant String := "VK_GGP_frame_token" & ASCII.NUL;  --  vulkan_ggp.h:56

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

   type VkStreamDescriptorSurfaceCreateInfoGGP is record
      pNext : System.Address;  -- vulkan_ggp.h:38
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_ggp.h:36

   type VkPresentFrameTokenGGP is record
      pNext : System.Address;  -- vulkan_ggp.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_ggp.h:57

end Vulkan.Low_Level.vulkan_ggp_h;
