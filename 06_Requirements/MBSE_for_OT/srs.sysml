package MBSE_for_OT {

    ////////////////////////////////////////////////
    // IMPORTS
    ////////////////////////////////////////////////

    import TfNSWRequirementsSchema::*;
    import MBSE_for_OT::UseCases::*;
    import MBSE_for_OT::BRS::*;

    ////////////////////////////////////////////////
    // SYSTEM REQUIREMENTS (SRS)
    ////////////////////////////////////////////////

    package SRS {

        ////////////////////////////////////////////////
        // SR001 — Repository Capability (PARENT)
        ////////////////////////////////////////////////

        requirement MBSE_SRS_SR001 :> SystemRequirement {

            identifier = "MBSE-SRS-SR001";
            objectType_ = ObjectType::Requirement;
            requirementType_ = RequirementType::Functional;

            description =
                "The system shall provide a centralised model repository supporting configuration management.";

            criticality = Criticality::Essential;
            validationMethod_ = ValidationMethod::Demonstration;
            validationTestType_ = ValidationTestType::UAT;

            deliveryPhase_ = DeliveryPhase::Integrate;
            approvalStatus = RequirementApprovalStatus::Draft;
        }


        ////////////////////////////////////////////////
        // SR001 CHILD REQUIREMENTS
        ////////////////////////////////////////////////

        // Central repository
        requirement MBSE_SRS_SR001_1 :> SystemRequirement {

            identifier = "MBSE-SRS-SR001-1";

            description =
                "The system shall maintain a centralised repository for all model artefacts.";

            criticality = Criticality::Essential;
        }


        // Version control
        requirement MBSE_SRS_SR001_2 :> SystemRequirement {

            identifier = "MBSE-SRS-SR001-2";

            description =
                "The system shall implement version control for all model elements.";

            criticality = Criticality::Essential;
        }


        // Traceability
        requirement MBSE_SRS_SR001_3 :> SystemRequirement {

            identifier = "MBSE-SRS-SR001-3";

            description =
                "The system shall support traceable relationships between model elements.";

            criticality = Criticality::Essential;
        }


        // Visibility
        requirement MBSE_SRS_SR001_4 :> SystemRequirement {

            identifier = "MBSE-SRS-SR001-4";

            description =
                "The system shall provide users with visibility of current configuration states.";

            criticality = Criticality::Essential;
        }


        ////////////////////////////////////////////////
        // DECOMPOSITION (PARENT → CHILD)
        ////////////////////////////////////////////////

        connection SR001_decomp_1 : DeriveReqt {
            higher = MBSE_SRS_SR001;
            lower = MBSE_SRS_SR001_1;
        }

        connection SR001_decomp_2 : DeriveReqt {
            higher = MBSE_SRS_SR001;
            lower = MBSE_SRS_SR001_2;
        }

        connection SR001_decomp_3 : DeriveReqt {
            higher = MBSE_SRS_SR001;
            lower = MBSE_SRS_SR001_3;
        }

        connection SR001_decomp_4 : DeriveReqt {
            higher = MBSE_SRS_SR001;
            lower = MBSE_SRS_SR001_4;
        }


        ////////////////////////////////////////////////
        // TRACEABILITY
        ////////////////////////////////////////////////

        // Parent SR → Use Case
        connection SR001_refines_UC1 : Refine {
            lower = MBSE_SRS_SR001;
            higher = UC1_Submit_Change_Request;
        }

        // Parent SR → BRS
        connection SR001_satisfies_T001 : Satisfies {
            lower = MBSE_SRS_SR001;
            higher = MBSE_BRS_T001;
        }

    }

}
``