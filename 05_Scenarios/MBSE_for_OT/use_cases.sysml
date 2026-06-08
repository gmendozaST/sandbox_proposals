package MBSE_for_OT {

    ////////////////////////////////////////////////
    // IMPORTS
    ////////////////////////////////////////////////

    import MBSE_for_OT::Needs::*;
    import MBSE_for_OT::BRS::*;

    ////////////////////////////////////////////////
    // USE CASES
    ////////////////////////////////////////////////

    package UseCases {

        //////////////////////////////////////////////////
        // UC1 — Submit Change Request
        //////////////////////////////////////////////////

        use case UC1_Submit_Change_Request {
            description =
                "Allows an OT Project Manager to submit a change request using the model as the single source of truth.";
        }

        //////////////////////////////////////////////////
        // UC2 — Review Change Impact
        //////////////////////////////////////////////////

        use case UC2_Review_Change_Impact {
            description =
                "Allows stakeholders to review the impact of proposed changes using traceable model relationships.";
        }

        //////////////////////////////////////////////////
        // UC3 — Generate CCB Submission Artefacts
        //////////////////////////////////////////////////

        use case UC3_Generate_CCB_Submission_Artefacts {
            description =
                "Allows users to generate CCB submission artefacts directly from the model.";
        }

        ////////////////////////////////////////////////
        // TRACEABILITY TO BRS
        ////////////////////////////////////////////////

        connection UC1_refines_T001 : Refine {
            lower = UC1_Submit_Change_Request;
            higher = MBSE_BRS_T001;
        }

        connection UC2_refines_T001 : Refine {
            lower = UC2_Review_Change_Impact;
            higher = MBSE_BRS_T001;
        }

        connection UC3_refines_T001 : Refine {
            lower = UC3_Generate_CCB_Submission_Artefacts;
            higher = MBSE_BRS_T001;
        }

        ////////////////////////////////////////////////
        // TRACEABILITY TO NEEDS (direct link)
        ////////////////////////////////////////////////

        connection UC1_supports_NE1 : Trace {
            source = UC1_Submit_Change_Request;
            target = MBSE_OT_NE1;
        }

        connection UC1_supports_NE2 : Trace {
            source = UC1_Submit_Change_Request;
            target = MBSE_OT_NE2;
        }

        connection UC2_supports_NE1 : Trace {
            source = UC2_Review_Change_Impact;
            target = MBSE_OT_NE1;
        }

        connection UC2_supports_NE2 : Trace {
            source = UC2_Review_Change_Impact;
            target = MBSE_OT_NE2;
        }

        connection UC3_supports_NE1 : Trace {
            source = UC3_Generate_CCB_Submission_Artefacts;
            target = MBSE_OT_NE1;
        }

        connection UC3_supports_NE2 : Trace {
            source = UC3_Generate_CCB_Submission_Artefacts;
            target = MBSE_OT_NE2;
        }

    }
}