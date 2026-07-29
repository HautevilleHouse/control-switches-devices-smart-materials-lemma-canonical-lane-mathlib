import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean

structure ElasticityTensorPackage where
  stressTensor : Type u
  strainTensor : Type v
  elasticConstants : Prop
  stiffnessMatrix : Prop
  complianceMatrix : Prop
  positiveDefiniteness : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  stressTensorDefined : E.stressTensor
  strainTensorDefined : E.strainTensor
  elasticConstantsClosed : E.elasticConstants
  stiffnessMatrixClosed : E.stiffnessMatrix
  complianceMatrixClosed : E.complianceMatrix
  positiveDefinitenessClosed : E.positiveDefiniteness

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.stressTensor ∧ E.strainTensor ∧ E.elasticConstants ∧ E.stiffnessMatrix ∧ E.complianceMatrix ∧ E.positiveDefiniteness

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.stressTensorDefined
    (And.intro Ev.strainTensorDefined
      (And.intro Ev.elasticConstantsClosed
        (And.intro Ev.stiffnessMatrixClosed
          (And.intro Ev.complianceMatrixClosed Ev.positiveDefinitenessClosed))))

end ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean
end HautevilleHouse