// Extracted from v3 of t-mu-am-06004-st-v3.0_Requirements Schema
package OTModelling.Standards.RequirementsSchema {

  //-----------------------------------------
  // ENUMERATIONS
  //-----------------------------------------
  enum def RequirementLevel {
    Business;
    System;
    Subsystem;
  }

  enum def RequirementType {
    Technical;
    Process;
  }

  enum def ObjectType {
    Requirement;
    Heading;
    Context;
    Information;
    Scope;
    Term;
  }

  enum def ComplianceStatus {
    Compliant;
    Compliant_with_concession;
    Non_compliant;
    Partially_compliant;
    Not_applicable;
    Pending;
  }

  enum def Criticality {
    Essential;
    Desirable;
    Optional;
  }

  enum def VerificationMethod {
    Review;
    Analysis;
    Modelling;
    Simulation;
    Certification;
    Inspection;
    Demonstration;
    Test;
  }

  enum def ValidationMethod {
    Review;
    Analysis;
    Modelling;
    Simulation;
    Certification;
    Demonstration;
    Inspection;
    Test;
  }

  enum def ApprovalStatus {
    Draft;
    Candidate;
    Agreed;
    Approved;
    Cancelled;
  }

  //-----------------------------------------
  // REQUIREMENT ELEMENT (Container)
  //-----------------------------------------
  part def RequirementElement {
    attribute type : String;             // BR, SR, SSR
    attribute name : String;
    attribute sources : String[0..*];
    attribute owner : String;
    attribute releaseDate : Date;
    attribute version : String;
    attribute elementStatus : String;    // draft / approved
  }

  //-----------------------------------------
  // REQUIREMENT OBJECT
  //-----------------------------------------
  part def Requirement {

    //-------------------------------------
    // Core Identity
    //-------------------------------------
    attribute identifier : String;
    attribute objectType : ObjectType;

    //-------------------------------------
    // Classification
    //-------------------------------------
    attribute requirementType : RequirementType[0..1];
    attribute requirementLevel : RequirementLevel;

    //-------------------------------------
    // Description
    //-------------------------------------
    attribute description : String;

    //-------------------------------------
    // Source & Allocation
    //-------------------------------------
    attribute source : String[1..*];
    attribute allocation : String[0..*];

    //-------------------------------------
    // Ownership
    //-------------------------------------
    attribute owner : String;

    //-------------------------------------
    // Compliance & Importance
    //-------------------------------------
    attribute complianceStatus : ComplianceStatus;
    attribute criticality : Criticality;

    //-------------------------------------
    // Scope
    //-------------------------------------
    attribute limitOfScope : String[0..*];

    //-------------------------------------
    // Verification & Validation
    //-------------------------------------
    attribute proposedVerificationMethod : VerificationMethod[0..*];
    attribute proposedValidationMethod : ValidationMethod;
    attribute validationTestType : String[0..*];

    //-------------------------------------
    // Lifecycle
    //-------------------------------------
    attribute deliveryPhase : String[0..*];
    attribute approvalStatus : ApprovalStatus;

    //-------------------------------------
    // Supporting Info
    //-------------------------------------
    attribute rationale : String[0..1];
    attribute remarks : String[0..*];
  }

  //-----------------------------------------
  // RELATIONSHIPS (Traceability)
  //-----------------------------------------
  connection def Satisfies {
    end child : Requirement;
    end parent : Requirement;
  }

  connection def Verifies {
    end verification : VerificationActivity;
    end requirement : Requirement;
  }

  connection def Validates {
    end validation : ValidationActivity;
    end requirement : Requirement;
  }

  //-----------------------------------------
  // VERIFICATION (Minimal Representation)
  //-----------------------------------------
  part def VerificationActivity {
    attribute identifier : String;
    attribute description : String;
    attribute method : VerificationMethod[1..*];
    attribute status : ApprovalStatus;
    attribute successCriteria : String;
  }

  //-----------------------------------------
  // VALIDATION (Minimal Representation)
  //-----------------------------------------
  part def ValidationActivity {
    attribute identifier : String;
    attribute description : String;
    attribute method : ValidationMethod[1..*];
    attribute status : ApprovalStatus;
    attribute successCriteria : String;
  }

}
