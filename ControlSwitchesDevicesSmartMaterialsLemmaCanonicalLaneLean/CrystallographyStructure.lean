import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeVectors : Type u
  basis : Type v
  symmetryGroup : Type w
  bravaisLattice : Prop
  unitCellVolume : Prop
  diffractionPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeVectorsDefined : C.latticeVectors
  basisDefined : C.basis
  symmetryGroupIdentified : C.symmetryGroup
  bravaisLatticeClosed : C.bravaisLattice
  unitCellVolumeClosed : C.unitCellVolume
  diffractionPatternClosed : C.diffractionPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeVectors ∧ C.basis ∧ C.symmetryGroup ∧ C.bravaisLattice ∧ C.unitCellVolume ∧ C.diffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeVectorsDefined
    (And.intro E.basisDefined
      (And.intro E.symmetryGroupIdentified
        (And.intro E.bravaisLatticeClosed
          (And.intro E.unitCellVolumeClosed E.diffractionPatternClosed))))

end ControlSwitchesDevicesSmartMaterialsLemmaCanonicalLaneLean
end HautevilleHouse