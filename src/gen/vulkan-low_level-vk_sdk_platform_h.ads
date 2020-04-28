pragma Ada_2012;
pragma Style_Checks (Off);



package Vulkan.Low_Level.vk_sdk_platform_h is

   --  unsupported macro: NOEXCEPT noexcept
  -- File: vk_sdk_platform.h
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
  --  

  -- C99:
  -- Microsoft didn't implement C99 in Visual Studio; but started adding it with
  -- VS2013.  However, VS2013 still didn't have snprintf().  The following is a
  -- work-around (Note: The _CRT_SECURE_NO_WARNINGS macro must be set in the
  -- "CMakeLists.txt" file).
  -- NOTE: This is fixed in Visual Studio 2015.
  -- Check for noexcept support using clang, with fallback to Windows or GCC version numbers
end Vulkan.Low_Level.vk_sdk_platform_h;
