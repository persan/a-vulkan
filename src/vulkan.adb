pragma Ada_2012;
with Vulkan.Low_Level.Vulkan_Core_H;
with Interfaces.C;
package body Vulkan is
   use Vulkan.Low_Level.Vulkan_Core_H;
   use Interfaces.C;
   --------------------------------
   -- VkEnumerateInstanceVersion --
   --------------------------------

   function VkEnumerateInstanceVersion return Integer is
      ApiVersion : aliased  Unsigned_Short;
      Result     : VkResult;
   begin
      Result := VkEnumerateInstanceVersion (ApiVersion'Access);
      if Result /= 0 then
         raise Vulkan_Error with Result'Img;
      end if;
      return Integer (ApiVersion);
   end VkEnumerateInstanceVersion;

end Vulkan;
