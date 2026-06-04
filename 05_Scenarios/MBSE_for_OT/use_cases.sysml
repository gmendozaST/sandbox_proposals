// SysML v2 textual sketch of use cases for MBSE_for_OT
package OTModelling_Standards.Scenarios.MBSE_for_OT {

  // Lightweight UseCase type
  part def UseCase {
    attribute id : String;
    attribute title : String;
    attribute description : String[0..1];
    attribute references : String[0..*];
  }

  // UC1 with nested sub-use-cases
  part UC1 : UseCase {
    id = "UC1";
    title = "Alignment with Engineering Management Manual (MN-A-05000 v2.0)";
    references = "MN-A-05000 v2.0";

    part UC1_1 : UseCase {
      id = "UC1_1";
      title = "Project Impact Assessment";
    }

    part UC1_2 : UseCase {
      id = "UC1_2";
      title = "System Integration";
    }

    part UC1_3 : UseCase {
      id = "UC1_3";
      title = "Requirements Management";

      part UC1_3_1 : UseCase {
        id = "UC1_3_1";
        title = "Requirements Schema (t-mu-am-06004-st v3.0)";
        references = "t-mu-am-06004-st v3.0";
      }

      part UC1_3_3 : UseCase {
        id = "UC1_3_3";
        title = "Testing Standard (t-mu-te-81003-st v2.0)";
        references = "t-mu-te-81003-st v2.0";

        part UC1_3_3_1 : UseCase {
          id = "UC1_3_3_1";
          title = "Configuration Management";
        }

        part UC1_3_3_2 : UseCase {
          id = "UC1_3_3_2";
          title = "Incident Management";
        }
      }

    }

    part UC1_4 : UseCase {
      id = "UC1_4";
      title = "RAM";
    }
  }

  // Other top-level use cases
  part UC2 : UseCase {
    id = "UC2";
    title = "Engineering Review Board";
  }

  part UC3 : UseCase {
    id = "UC3";
    title = "Periodic status report";
  }

  part UC4 : UseCase {
    id = "UC4";
    title = "OSAF";
  }

  part UC5 : UseCase {
    id = "UC5";
    title = "OSARB";
  }

} // package OTModelling_Standards.Scenarios.MBSE_for_OT
