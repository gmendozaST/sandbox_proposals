// Operational Concept View (SysML v2 textual)
package OTModelling.Standards.UserViews.MBSE_for_OT {

  // Operational concept container capturing stakeholders, needs, use cases and traces to requirements
  part def OperationalConceptView {
    attribute id : String;
    attribute title : String;
    attribute description : String[0..1];
    attribute stakeholders : String[0..*];
    attribute needs : String[0..*];                // human-readable need or mapping to requirement id
    attribute useCases : String[0..*];             // use case identifiers
    attribute activities : String[0..*];
    attribute operationalFlows : String[0..*];     // short flow descriptions
    attribute successCriteria : String[0..*];
    attribute relatedRequirements : OTModelling.Standards.RequirementsSchema.Requirement[0..*];
    attribute constraints : String[0..*];
  }

  // Instance: Operational Concept for MBSE_for_OT
  part OC_MBSE : OperationalConceptView {
    id = "OC-MBSE-001";
    title = "Operational Concept for MBSE for OT Major Works";
    description = "Encapsulates stakeholder needs, use cases and operational flows required to deliver MBSE on OT Major works.";

    stakeholders = {
      "OT Engineers",
      "OT Project Managers (OT PM)",
      "SAA Team",
      "Subject Matter Experts (SMEs)",
      "Vendors / Tool Providers",
      "Operations & Maintenance"
    };

    // Key needs (mapped to BRS identifiers where applicable)
    needs = {
      "Single authoritative reference for CCB submissions (MBSE-BRS-T001)",
      "Optimise engineering design effort (MBSE-BRS-T002)",
      "Enable modelling with basic computer skills (MBSE-BRS-T003)",
      "Rationalise design tools (MBSE-BRS-T004)",
      "Elicit SME contribution (MBSE-BRS-T005)",
      "Centralised repository (MBSE-BRS-T006)",
      "Demonstrate whole-of-life cost benefit (MBSE-BRS-T007)",
      "Operate without capital investment for 2 years (MBSE-BRS-T008)",
      "Integrate with existing tools (MBSE-BRS-T009)"
    };

    // Referenced use cases (defined under scenarios)
    useCases = {
      "UC1", "UC1_1", "UC1_2", "UC1_3", "UC1_3_1", "UC1_3_3", "UC1_3_3_1", "UC1_3_3_2", "UC1_4",
      "UC2", "UC3", "UC4", "UC5"
    };

    activities = {
      "Author and manage model artefacts",
      "Review and approve via CCB",
      "Import/Export models to/from external tools",
      "Trace requirements to model elements",
      "Execute V&V events (SIT/UAT)"
    };

    operationalFlows = {
      "Create model element -> assign owner -> link to requirement -> review -> CCB submission",
      "Receive external model -> import -> validation -> integration into central repository"
    };

    successCriteria = {
      "Single source for CCB artefacts and evidence",
      "Reduced rework and tool handoffs across design lifecycle",
      "Traceability from business requirement to system element established",
      "Operational readiness validated in UAT/SIT"
    };

    // Trace back to the canonical requirement instances in the BRS package
    relatedRequirements = {
      OTModelling.Standards.Requirements.MBSE_for_OT.MBSE_BRS_T001,
      OTModelling.Standards.Requirements.MBSE_for_OT.MBSE_BRS_T002,
      OTModelling.Standards.Requirements.MBSE_for_OT.MBSE_BRS_T003,
      OTModelling.Standards.Requirements.MBSE_for_OT.MBSE_BRS_T005,
      OTModelling.Standards.Requirements.MBSE_for_OT.MBSE_BRS_T006,
      OTModelling.Standards.Requirements.MBSE_for_OT.MBSE_BRS_T009
    };

    constraints = {
      "Must comply with Information Security standards (MBSE-BRS-C002)",
      "Tool must operate on existing ICT infrastructure (MBSE-BRS-C001)"
    };
  }

} // package
