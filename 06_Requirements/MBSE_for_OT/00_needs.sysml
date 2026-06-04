package OTModelling.Needs {

    block NeedsStatement {
        attribute id: String[1];
        attribute title: String[1];
        attribute statement: String[1];
    }

    block OTMBSEGovernanceNeedsStatement: NeedsStatement {
        attribute id = "NS1";
        attribute title = "OT MBSE governance needs statement";
        attribute statement = "The OT MBSE governance initiative needs a standardised, traceable systems engineering framework that unifies OT configuration management, design terminology, review governance, and knowledge transfer across multidisciplinary teams, so current and future projects can be delivered with consistent quality, reduced risk, and better stakeholder communication.";
    }

    block def Need {
        attribute id: String[1];
        attribute title: String[1];
        attribute statement: String[1];
    }

    block NE1: Need {
        attribute id = "NE1";
        attribute title = "Configuration management standardisation";
        attribute statement = "Assist in streamlining and standardising configuration management practices in OT.";
    }

    block NE2: Need {
        attribute id = "NE2";
        attribute title = "Configuration status accounting";
        attribute statement = "Improve OT configuration status accounting.";
    }

    block NE3: Need {
        attribute id = "NE3";
        attribute title = "Standard terminology";
        attribute statement = "Standardise engineering design and development with consistent terminology.";
    }

    block NE4: Need {
        attribute id = "NE4";
        attribute title = "Reduce development risk";
        attribute statement = "Reduce project development risk, including scope creep, budget, and schedule.";
    }

    block NE5: Need {
        attribute id = "NE5";
        attribute title = "Single source of truth";
        attribute statement = "Provide a means of having a single source of truth where current and future projects can benefit, improving design quality and productivity.";
    }

    block NE6: Need {
        attribute id = "NE6";
        attribute title = "Augment document-based practices";
        attribute statement = "Augment and replace some of the document-based practices.";
    }

    block NE7: Need {
        attribute id = "NE7";
        attribute title = "Enhance multidisciplinary communication";
        attribute statement = "Enhance multi-disciplinary communication during SDR, PDR, and CDR.";
    }

    block NE8: Need {
        attribute id = "NE8";
        attribute title = "Enhance knowledge transfer";
        attribute statement = "Enhance knowledge transfer and organisational capability.";
    }

}
