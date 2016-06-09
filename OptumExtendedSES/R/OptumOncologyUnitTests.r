createTests <- function(connectionDetails) {
  declareTest("1", "this is the first test");
  add_patient("P1");
  add_patient("P2");
  add_care_area();
  expect_person(person_id="1");
  declareTest("2", "next test");
  add_patient("P3");
  add_encounter("E1");
  expect_visit_occurrence(person_id = 3);
}
