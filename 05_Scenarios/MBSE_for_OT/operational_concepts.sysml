package MBSE_for_OT {

    ////////////////////////////////////////////////
    // IMPORTS
    ////////////////////////////////////////////////

    import MBSE_for_OT::UseCases::*;

    ////////////////////////////////////////////////
    // OPERATIONAL CONCEPTS
    ////////////////////////////////////////////////

    package OperationalConcepts {

        //////////////////////////////////////////////////
        // OC1 — Model-Centric CCB Workflow
        //////////////////////////////////////////////////

        part def OC1_Model_Centric_CCB_Workflow {
            description =
                "Defines an end-to-end workflow where all CCB activities are conducted within the MBSE model.";
        }

        //////////////////////////////////////////////////
        // OC2 — Central Repository
        //////////////////////////////////////////////////

        part def OC2_Central_Repository {
            description =
                "Defines a single authoritative repository for all configuration and design artefacts.";
        }

        //////////////////////////////////////////////////
        // OC3 — Live and Traceable Visibility
        //////////////////////////////////////////////////

        part def OC3_Live_Traceable_Visibility {
            description =
                "Defines real-time access to configuration data with traceability across system elements.";
        }

        ////////////////////////////////////////////////
        // TRACEABILITY TO USE CASES
        ////////////////////////////////////////////////

        connection OC1_supports_UC1 : Trace {
            source = OC1_Model_Centric_CCB_Workflow;
            target = UC1_Submit_Change_Request;
        }

        connection OC1_supports_UC2 : Trace {
            source = OC1_Model_Centric_CCB_Workflow;
            target = UC2_Review_Change_Impact;
        }

        connection OC1_supports_UC3 : Trace {
            source = OC1_Model_Centric_CCB_Workflow;
            target = UC3_Generate_CCB_Submission_Artefacts;
        }

        connection OC2_supports_UC1 : Trace {
            source = OC2_Central_Repository;
            target = UC1_Submit_Change_Request;
        }

        connection OC2_supports_UC3 : Trace {
            source = OC2_Central_Repository;
            target = UC3_Generate_CCB_Submission_Artefacts;
        }

        connection OC3_supports_UC2 : Trace {
            source = OC3_Live_Traceable_Visibility;
            target = UC2_Review_Change_Impact;
        }

        connection OC3_supports_UC3 : Trace {
            source = OC3_Live_Traceable_Visibility;
            target = UC3_Generate_CCB_Submission_Artefacts;
        }

    }
}