import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  pressureRange : Type v
  phaseBoundaries : Prop
  criticalPoints : Prop
  triplePoints : Prop
  phaseTransitions : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeDefined : P.temperatureRange
  pressureRangeDefined : P.pressureRange
  phaseBoundariesClosed : P.phaseBoundaries
  criticalPointsClosed : P.criticalPoints
  triplePointsClosed : P.triplePoints
  phaseTransitionsClosed : P.phaseTransitions

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.pressureRange ∧ P.phaseBoundaries ∧ P.criticalPoints ∧ P.triplePoints ∧ P.phaseTransitions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeDefined
    (And.intro E.pressureRangeDefined
      (And.intro E.phaseBoundariesClosed
        (And.intro E.criticalPointsClosed
          (And.intro E.triplePointsClosed E.phaseTransitionsClosed))))

end ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean
end HautevilleHouse