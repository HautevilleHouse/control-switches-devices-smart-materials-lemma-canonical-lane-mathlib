import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  crackGeometry : Type u
  stressIntensityFactor : Type v
  fractureToughness : Prop
  propagationCriterion : Prop
  energyReleaseRate : Prop
  fatigueLife : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackGeometryDefined : F.crackGeometry
  stressIntensityFactorDefined : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  propagationCriterionClosed : F.propagationCriterion
  energyReleaseRateClosed : F.energyReleaseRate
  fatigueLifeClosed : F.fatigueLife

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackGeometry ∧ F.stressIntensityFactor ∧ F.fractureToughness ∧ F.propagationCriterion ∧ F.energyReleaseRate ∧ F.fatigueLife

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.crackGeometryDefined
    (And.intro E.stressIntensityFactorDefined
      (And.intro E.fractureToughnessClosed
        (And.intro E.propagationCriterionClosed
          (And.intro E.energyReleaseRateClosed E.fatigueLifeClosed))))

end ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean
end HautevilleHouse