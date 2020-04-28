pragma Ada_2012;
pragma Style_Checks (Off);



package Vulkan.Low_Level.vk_platform_h is

  -- File: vk_platform.h
  --** Copyright (c) 2014-2017 The Khronos Group Inc.
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

  --***************************************************************************************************
  --*   Platform-specific directives and type declarations
  --***************************************************************************************************
  -- 

  -- Platform-specific calling convention macros.
  -- *
  -- * Platforms should define these so that Vulkan clients call Vulkan commands
  -- * with the same calling conventions that the Vulkan implementation expects.
  -- *
  -- * VKAPI_ATTR - Placed before the return type in function declarations.
  -- *              Useful for C++11 and GCC/Clang-style function attribute syntax.
  -- * VKAPI_CALL - Placed after the return type in function declarations.
  -- *              Useful for MSVC-style calling convention syntax.
  -- * VKAPI_PTR  - Placed between the '(' and '*' in function pointer types.
  -- *
  -- * Function declaration:  VKAPI_ATTR void VKAPI_CALL vkCommand(void);
  -- * Function pointer type: typedef void (VKAPI_PTR *PFN_vkCommand)(void);
  --  

  -- On Windows, Vulkan commands use the stdcall convention
  -- On Android 32-bit ARM targets, Vulkan functions use the "hardfloat"
  -- calling convention, i.e. float parameters are passed in registers. This
  -- is true even if the rest of the application passes floats on the stack,
  -- as it does by default when compiling for the armeabi-v7a NDK ABI.
  -- On other platforms, use the default calling convention
  -- extern "C"
end Vulkan.Low_Level.vk_platform_h;
