import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean

structure ControlSwitchesDevicesSmartMaterialsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ControlSwitchesDevicesSmartMaterialsAdmittedObject where
  space : ControlSwitchesDevicesSmartMaterialsSpace
  structuralIntegrity : Prop
  switchingAdmissible : Prop
  endpointModel : Type
  endpointTopology : TopologicalSpace endpointModel
  endpointReachable : Prop
  conclusion : endpointReachable

def ControlSwitchesDevicesSmartMaterialsWitnessClosed (O : ControlSwitchesDevicesSmartMaterialsAdmittedObject) : Prop :=
  O.endpointReachable

structure ControlSwitchesDevicesSmartMaterialsEndgameState where
  object : ControlSwitchesDevicesSmartMaterialsAdmittedObject

end ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
