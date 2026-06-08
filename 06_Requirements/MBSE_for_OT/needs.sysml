package MBSE_for_OT{

    import TfNSWRequirementsSchema::*;

    package Needs {
        ////////////////////////////////////////////////
        // Initiative-Level Need
        ////////////////////////////////////////////////

        requirement MBSE_OT_BR_001 :> BusinessRequirement {

            identifier = "MBSE_OT_BR_001";
            objectType_ = ObjectType::Requirement;
            requirementType_ = RequirementType::Process;
            description =
                "The OT MBSE governance initiative needs a standardised, traceable systems engineering framework " +
                "that unifies OT configuration management, design terminology, review governance, and knowledge transfer " +
                "across multidisciplinary teams, so current and future projects can be delivered with consistent quality, " +
                "reduced risk, and better stakeholder communication.";

            criticality = Criticality::Essential;
            complianceStatus = ComplianceStatus::Pending;
            approvalStatus = RequirementApprovalStatus::Draft;
        }

        ////////////////////////////////////////////////
        // Derived Needs
        ////////////////////////////////////////////////
        requirement MBSE_OT_NE1 :> BusinessRequirement {
            identifier = "NE1";
            objectType_ = ObjectType::Requirement;
            requirementType_ = RequirementType::Process;
            description =
                "Assist in streamlining and standardising configuration management practices in OT.";
            criticality = Criticality::Essential;
            complianceStatus = ComplianceStatus::Pending;
            approvalStatus = RequirementApprovalStatus::Draft;
        }

        requirement MBSE_OT_NE2 :> BusinessRequirement {
            identifier = "NE2";
            objectType_ = ObjectType::Requirement;
            requirementType_ = RequirementType::Process;
            description = "Improve OT configuration status accounting.";
            criticality = Criticality::Essential;
            complianceStatus = ComplianceStatus::Pending;
            approvalStatus = RequirementApprovalStatus::Draft;
        }

        ////////////////////////////////////////////////
        // Traceability
        ////////////////////////////////////////////////
        connection NE1_satisfies_BR001: Satisfies { lower = MBSE_OT_NE1; higher = MBSE_OT_BR_001; }
        connection NE2_satisfies_BR001: Satisfies { lower = MBSE_OT_NE2; higher = MBSE_OT_BR_001; }
    }
}
