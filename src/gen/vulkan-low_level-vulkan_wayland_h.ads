pragma Ada_2012;
pragma Style_Checks (Off);


with System;

package Vulkan.Low_Level.vulkan_wayland_h is

   VULKAN_WAYLAND_H_u : constant := 1;  --  vulkan_wayland.h:2

   VK_KHR_wayland_surface : constant := 1;  --  vulkan_wayland.h:32
   VK_KHR_WAYLAND_SURFACE_SPEC_VERSION : constant := 6;  --  vulkan_wayland.h:33
   VK_KHR_WAYLAND_SURFACE_EXTENSION_NAME : aliased constant String := "VK_KHR_wayland_surface" & ASCII.NUL;  --  vulkan_wayland.h:34

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

   type wl_display;
   type wl_surface;
   type VkWaylandSurfaceCreateInfoKHR is record
      pNext : System.Address;  -- vulkan_wayland.h:38
      display : access wl_display;  -- vulkan_wayland.h:40
      surface : access wl_surface;  -- vulkan_wayland.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- vulkan_wayland.h:36

   type wl_display is null record;   -- incomplete struct

   type wl_surface is null record;   -- incomplete struct

end Vulkan.Low_Level.vulkan_wayland_h;
