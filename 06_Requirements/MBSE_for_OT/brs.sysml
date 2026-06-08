package MBSE_for_OT {

    import TfNSWRequirementsSchema::*;
    import MBSE_for_OT::Needs::*;

    package BRS {
        doc /* Business Requirements Specification for OT MBSE initiative, structured according to TfNSW Requirements Schema. */

        enum def BRCategory {
            /* Business Requirement Category as defined by AMB Guide T MU AM 06010 GU Business Requirements Specification*/
            User;
            Operational;
            Compliance;
            FutureProofing;
            SystemIntegration;
            WholeOfLifeCost;
            Support;
            Process;
            Constraint;
        }

        requirement def BRSRequirement :> BusinessRequirement {
            doc /* Base requirement type for BRS, extending the generic BusinessRequirement with additional attributes specific to the BRS context. */
            attribute category : BRCategory;
        }

        package Technical {
            doc /* Technical requirements derived from the initiative-level needs, structured as BRSRequirements. */

            requirement MBSE_BRS_T001 :> BRSRequirement {

                identifier = "MBSE-BRS-T001";
                objectType_ = ObjectType::Requirement;
                requirementType_ = RequirementType::Technical;
                description =
                    "OT Major works shall have a single reference point to support CCB submissions on OT projects.";
                category = BRCategory::User;
                source = "ST2021-003 CM Audit Report";
                owner = "OT Eng.";
                criticality = Criticality::Essential;
                validationMethod_ = ValidationMethod::Demonstration;
                validationTestType_ = ValidationTestType::UAT;
                rationale =
                    "CCB submission are undertaken by OT PM and information is currently captured in multiple sources and repositories. The proposed approach will ensure most (if not all) work is produced in the model.  "
                deliveryPhase_ = DeliveryPhase::Integrate;
                approvalStatus = RequirementApprovalStatus::Draft;
            }
            connection T001_satisfies_NE1 : Satisfies {lower = MBSE_BRS_T001; higher = MBSE_OT_NE1;}          
            connection T001_satisfies_NE2 : Satisfies {lower = MBSE_BRS_T001; higher = MBSE_OT_NE2;}
        }


        ////////////////////////////////////////////////
        // CONSTRAINTS (placeholder for later)
        ////////////////////////////////////////////////

        package Constraints {

        }


        ////////////////////////////////////////////////
        // PROCESS REQUIREMENTS (placeholder for later)
        ////////////////////////////////////////////////

        package Process {

        }

    }

}