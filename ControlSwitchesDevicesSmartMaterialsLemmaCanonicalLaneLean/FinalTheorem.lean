import ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean.BridgeLemmas
import ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean

def ConstrainedControlSwitchesDevicesSmartMaterialsLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_control_switches_devices_smart_materials_lemma_endgame (A : AdmissibleClass) :
    ConstrainedControlSwitchesDevicesSmartMaterialsLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
