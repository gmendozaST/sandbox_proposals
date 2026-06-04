// BRS aligned to `requirement_schema.sysml` definitions (SysML v2 textual)
package OTModelling.Standards.Requirements.MBSE_for_OT {
  // Local category enum and BusinessRequirement specialization (kept local to this package)
  enum def RequirementCategory {
    User;
    Operational;
    Compliance; // policies, processes, and standards
    Future_proofing;
    System_integration;
    Whole_of_life_cost;
    Support;
    Process;
    Constraint;
  }

  // BusinessRequirement extends the canonical Requirement (adds category) without changing the global schema
  part def BusinessRequirement extends OTModelling.Standards.RequirementsSchema.Requirement {
    attribute category : RequirementCategory;
  }

  // Create requirements as instances of the canonical Requirement part (using BusinessRequirement to carry category)
  part MBSE_BRS_T001 : BusinessRequirement {
    identifier = "MBSE-BRS-T001";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT Major works shall have a single reference point to support CCB submissions on OT projects";
    source = { "ST2021-003 CM Audit Report" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.User;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "CCB submission are undertaken by OT PM and information is currently captured in multiple sources and repositories. The proposed approach will ensure most (if not all) work is produced in the model.";
  }

  part MBSE_BRS_T002 : BusinessRequirement {
    identifier = "MBSE-BRS-T002";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT Major works shall optimize the efforts of engineering design and development on OT Projects";
    source = { "Meeting minutes (OT Engineering)" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.Operational;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Covers efficiencies of the modelling tool to minimise efforts of engineering design through reusability, searchability, traceability and accessibility.";
  }

  part MBSE_BRS_T003 : BusinessRequirement {
    identifier = "MBSE-BRS-T003";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT Major works shall be able to produce engineering system models with basic computer skills on OT projects during design and development";
    source = { "Meeting minutes (OT Engineering)" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.Operational;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "User requirement to support development and management of models: model verification, create relationships, undo/redo, drag and drop, performance.";
  }

  part MBSE_BRS_T004 : BusinessRequirement {
    identifier = "MBSE-BRS-T004";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT Major works shall benefit from rationalisation of tools used throughout design and development of OT projects";
    source = { "Meeting minutes (OT Engineering)" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.Operational;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Design engineers use multiple tools (Visio, Acrobat, CAD); rationalisation reduces tool sprawl.";
  }

  part MBSE_BRS_T005 : BusinessRequirement {
    identifier = "MBSE-BRS-T005";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT Major works shall be able to elicit contribution from multiple subject matter experts in its MBSE process";
    source = { "Meeting minutes (OT Engineering)" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.User;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Model must be accessible to non-technical SMEs (human factors, heritage, safety) for reviews/workshops.";
  }

  part MBSE_BRS_T006 : BusinessRequirement {
    identifier = "MBSE-BRS-T006";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT Major works shall use a centralised repository for its MBSE process and design";
    source = { "Meeting minutes (OT Engineering)" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.Operational;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Disparate tools produce multiple repositories causing inefficiencies and CCB issues; single repository reduces risk.";
  }

  part MBSE_BRS_T007 : BusinessRequirement {
    identifier = "MBSE-BRS-T007";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT Major works shall achieve a whole-of-life cost benefit through efficiencies gained by utilising an MBSE process";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.Whole_of_life_cost;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "MBSE benefits must outweigh tool purchase, training and licensing costs.";
  }

  part MBSE_BRS_T008 : BusinessRequirement {
    identifier = "MBSE-BRS-T008";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT Major works shall be able to operate the MBSE process without additional capital investment for a minimum of 2 years";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.Future_proofing;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Tool updates or Java upgrades require effort/costs; minimise capital changes for 2 years.";
  }

  part MBSE_BRS_T009 : BusinessRequirement {
    identifier = "MBSE-BRS-T009";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT Major works shall be able to integrate its MBSE process with existing tools used by OT Engineers";
    source = { "Meeting minutes (OT Engineering)", "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.System_integration;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "SIT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Integrate with DOORS classic/NextGen, APIs, SAP, corporate directories and other digital models.";
  }

  part MBSE_BRS_T010 : BusinessRequirement {
    identifier = "MBSE-BRS-T010";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT Major works shall be able to receive and modify models from external programs";
    source = { "Meeting minutes (OT Engineering)" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.Operational;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Applies where external sub-projects provide models that must be transferred and adapted.";
  }

  part MBSE_BRS_T011 : BusinessRequirement {
    identifier = "MBSE-BRS-T011";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT designers shall operate in the new process with minimal training";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.Support;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Validate basic operation: drawing an FFBD and core tool functionality.";
  }

  part MBSE_BRS_T012 : BusinessRequirement {
    identifier = "MBSE-BRS-T012";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT Major works shall have access to training and support provided by a vendor";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.Support;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Validated via operational readiness or vendor-provided training and support.";
  }

  part MBSE_BRS_T013 : BusinessRequirement {
    identifier = "MBSE-BRS-T013";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "OT Major works shall operate its MBSE process in accordance to all internal engineering design and management processes";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.Compliance;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "In accordance with CSMS, AMB Standards and ST internal processes (EMM).";
  }

  // Constraints
  part MBSE_BRS_C001 : BusinessRequirement {
    identifier = "MBSE-BRS-C001";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "Tool shall be able to use existing Sydney Trains ICT Infrastructure to implement and sustain MBSE infrastructure";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.System_integration;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Chosen modelling software must be compatible with ST ICT minimum requirements; some MBSE tools are hardware intensive.";
  }

  part MBSE_BRS_C002 : BusinessRequirement {
    identifier = "MBSE-BRS-C002";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "MBSE implementation shall comply with Sydney Trains and TfNSW Information Security standards";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    category = RequirementCategory.Compliance;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "UAT" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "CSUP ensures compliance to relevant security controls and processes.";
  }

  // Process requirements
  part MBSE_BRS_P001 : BusinessRequirement {
    category = RequirementCategory.Process;
    identifier = "MBSE-BRS-P001";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "All business requirements in this specification shall be allocated to one or more derived system requirements (or design)";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "NA" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Requirements must be traceable to child system requirements and designs.";
  }

  part MBSE_BRS_P002 : BusinessRequirement {
    category = RequirementCategory.Process;
    identifier = "MBSE-BRS-P002";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "Any scope of business requirement changes shall be reflected in this BRS";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "NA" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Maintain the BRS as the authoritative source for business requirements.";
  }

  part MBSE_BRS_P003 : BusinessRequirement {
    category = RequirementCategory.Process;
    identifier = "MBSE-BRS-P003";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "Any scope of business requirement changes shall be accepted by authorised ST representative";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "NA" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Scope changes require formal acceptance by authorised representatives.";
  }

  part MBSE_BRS_P004 : BusinessRequirement {
    category = RequirementCategory.Process;
    identifier = "MBSE-BRS-P004";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "Implementation of MBSE shall be treated as a project with agreed schedule and budget";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "NA" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Model-centric implementation is complex and requires project management.";
  }

  part MBSE_BRS_P005 : BusinessRequirement {
    category = RequirementCategory.Process;
    identifier = "MBSE-BRS-P005";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "Implementation of MBSE shall adopt ST Configuration Management process";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "NA" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Part of standard ST change process for asset or business change.";
  }

  part MBSE_BRS_P006 : BusinessRequirement {
    category = RequirementCategory.Process;
    identifier = "MBSE-BRS-P006";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "An MBSE Implementation test plan shall be developed";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "NA" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Test plan is the roadmap for testing work across the project lifecycle.";
  }

  part MBSE_BRS_P007 : BusinessRequirement {
    category = RequirementCategory.Process;
    identifier = "MBSE-BRS-P007";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "An RVTM shall be developed";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "NA" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "RVTM provides single reference for requirements traceability and V&V activities.";
  }

  part MBSE_BRS_P008 : BusinessRequirement {
    category = RequirementCategory.Process;
    identifier = "MBSE-BRS-P008";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "The V&V methods shall be in line with T MU AM 06016 GU Guide to Verification and Validation";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "NA" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "V&V activities must align to the guide for TfNSW and Agency led programs.";
  }

  part MBSE_BRS_P009 : BusinessRequirement {
    category = RequirementCategory.Process;
    identifier = "MBSE-BRS-P009";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "The V&V events shall be defined in the MBSE Tool Test Plan";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "NA" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Defines how and when V&V activities occur in the tool test plan.";
  }

  part MBSE_BRS_P010 : BusinessRequirement {
    category = RequirementCategory.Process;
    identifier = "MBSE-BRS-P010";
    objectType = BusinessRequirement.ObjectType.Requirement;
    description = "Competency in MBSE should be demonstrated through formal training and/or experience records prior to design";
    source = { "SAA Team" };
    owner = "OT Eng.";
    criticality = BusinessRequirement.Criticality.Essential;
    proposedValidationMethod = BusinessRequirement.ValidationMethod.Demonstration;
    validationTestType = { "NA" };
    deliveryPhase = { "Integrate and Accept" };
    approvalStatus = BusinessRequirement.ApprovalStatus.Draft;
    rationale = "Training requirement to ensure competency before undertaking design work.";
  }

} // package OTModelling.Standards.Requirements.MBSE_for_OT
