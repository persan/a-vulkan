private with System.Storage_Elements;
private with Ada.Finalization;
package Vulkan.Instances is
   type InstanceCreateInfo is tagged limited private;
   type AllocationCallbacks is tagged limited private;
   type Instance (CreateInfo : not null access constant InstanceCreateInfo;
                  Allocator  : not null access constant AllocationCallbacks) is tagged limited private;

private
   type Instance (CreateInfo : not null access constant InstanceCreateInfo;
                  Allocator  : not null access constant AllocationCallbacks)  is new Ada.Finalization.Limited_Controlled with record
      Store : aliased System.Storage_Elements.Storage_Array (1 .. 8);
   end record;

   type InstanceCreateInfo is new Ada.Finalization.Limited_Controlled with record
      null;
   end record;

   type AllocationCallbacks is new Ada.Finalization.Limited_Controlled with record
      null;
   end record;
end Vulkan.Instances;
