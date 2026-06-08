package TfNSWRequirementsSchema {

    /// TfNSW Requirements Schema (T MU AM 06004 ST v3.0)
    /// Defines the standard structure, metadata, and traceability

    ////////////////////////////////////////////////
    // ENUMERATIONS
    ////////////////////////////////////////////////
    enum def ObjectType {
        doc /* Object classification within the TfNSW requirements schema. */

        requirement_;    /// A requirement within scope of work
        heading;        /// Structural heading used to organise content
        context;        /// Contextual information to support understanding
        information;    /// Informational statement outside scope
        scope;          /// Scope definition or boundary statement
        term;           /// Term, definition, or acronym
    }

    enum def RequirementLevel {
        doc /* Hierarchical level of requirement */

        businessRequirement;     /// Business Requirement
        systemRequirement;     /// System Requirement
        subsystemRequirement;    /// Subsystem Requirement
    }

    enum def RequirementType {
        doc /* Classification of requirement intent */

        technical;      /// Requirement describing a property of the delivered asset
        process;        /// Requirement describing a delivery or process obligation
    }

    enum def ComplianceStatus {
        doc /* Compliance assessment status of a requirement */

        compliant;
        compliantWithConcession;
        nonCompliant;
        partiallyCompliant;
        notApplicable;
        pending;
    }

    enum def Criticality {
        doc /* Criticality of the requirement */
        
        Essential;      /// Mandatory (“shall”)
        Desirable;      /// Strongly recommended (“should”)
        Optional;       /// Optional
    }

    enum def VerificationMethod {
        doc /* Method used to verify a requirement */

        review;
        analysis_;
        modelling;
        simulation;
        certification;
        inspection;
        demonstration;
        test;
        notApplicable;
    }

    enum def ValidationMethod {
        doc /* Method used to validate a requirement */

        review;
        analysis_;
        modelling;
        simulation;
        certification;
        inspection;
        demonstration;
        test;
        notApplicable;
    }

    enum def ValidationTestType {
        doc /* Type of validation test where applicable */
    
        SIT;
        UAT;
        NA;
    }

    enum def RequirementApprovalStatus {
        doc /* Approval maturity of a requirement */

        draft;
        candidate;
        agreed;
        approved;
        cancelled;
    }

    enum def DeliveryPhase {
        doc /* Lifecycle phase associated with requirement delivery */

        concept;
        specify;
        procure;
        design;
        manufacture;
        build;
        integrate;
        accept_;
        operate;
        maintain;
        evolve;
        dispose;
    }

    ////////////////////////////////////////////////
    // TRACEABILITY CONNECTION DEFINITIONS
    ////////////////////////////////////////////////
    connection def Satisfies {
        doc /* Traceability relationship indicating that a lower-level requirement satisfies a higher-level requirement. */
        end lower : TfNSWRequirement;
        end higher : TfNSWRequirement;
    }

    connection def Verifies {
        doc /* Traceability relationship indicating that a verification activity is associated with a requirement. */
        end verification;
        end requirement : TfNSWRequirement;
    }

    connection def Validates {
        doc /* Traceability relationship indicating that a validation activity is associated with a requirement. */
        end validation;
        end requirement : TfNSWRequirement;
    }

    ////////////////////////////////////////////////
    // CORE REQUIREMENT DEFINITION
    ////////////////////////////////////////////////
    requirement def TfNSWRequirement {
        doc /* Canonical TfNSW requirement definition. Applies uniformly to business, system, and subsystem requirements */

        attribute identifier;                                   /// Unique identifier for the requirement (e.g., "BR-001", "SR-002", "SSR-003")
        attribute objectType_ : ObjectType;                     /// Object classification within the schema
        attribute requirementType_ : RequirementType;           /// Technical or process requirement
        attribute level : RequirementLevel;                     /// Hierarchical requirement level
        attribute description;                                  /// Requirement statement text
        attribute source;                                       /// Source document or origin of the requirement
        attribute allocation_;                                  /// Anticipated allocation target during decomposition
        attribute complianceStatus : ComplianceStatus;          /// Compliance assessment status
        attribute criticality : Criticality;                    /// Requirement criticality
        attribute limitOfScope;                                 /// Scope limitation or applicability boundary
        attribute owner;                                        /// Accountable owner of the requirement
        attribute verificationMethod_ : VerificationMethod;     /// Proposed verification method
        attribute validationMethod_ : ValidationMethod;         /// Proposed validation method
        attribute validationTestType_ : ValidationTestType;     /// Validation test type (if applicable)
        attribute rationale;                                    /// Rationale explaining why the requirement exists
        attribute remarks;                                      /// Supplementary notes or clarifications
        attribute deliveryPhase_ : DeliveryPhase;               /// Lifecycle phase for requirement delivery
        attribute approvalStatus : RequirementApprovalStatus;   /// Approval maturity status
        ref satisfies : Satisfies[0..*];                        /// Decomposition trace to higher-level requirements
    }

    ////////////////////////////////////////////////
    // SPECIALISED REQUIREMENT TYPES
    ////////////////////////////////////////////////
    requirement def BusinessRequirement specializes TfNSWRequirement {
        doc /* Business-level requirement */
        level = RequirementLevel::BR;
    }

    requirement def SystemRequirement specializes TfNSWRequirement {
        doc /* System-level requirement */
        level = RequirementLevel::SR;
    }

    requirement def SubsystemRequirement specializes TfNSWRequirement {
        doc /* Subsystem-level requirement */
        level = RequirementLevel::SSR;
    }

}
