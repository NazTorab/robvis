context("Check traffic-light plots")

language_dat <- data_rob2
names(language_dat)[7] <- "Globale"

test_that("ROB - Traffic light", {
  vdiffr::expect_doppelganger("TF - ROB2 - Basic", rob_traffic_light(data_rob2, "ROB2"))
  vdiffr::expect_doppelganger("TF - ROB2 - Point Size", rob_traffic_light(data_rob2, "ROB2", psize = 10))
  vdiffr::expect_doppelganger("TF - ROB2 - Colour - cochrane", rob_traffic_light(data_rob2, "ROB2", colour = "cochrane"))
  vdiffr::expect_doppelganger("TF - ROB2 - Colour - colourblind", rob_traffic_light(data_rob2, "ROB2", colour = "colourblind"))
  vdiffr::expect_doppelganger("TF - ROB2 - Colour - custom", rob_traffic_light(data_rob2, "ROB2", colour = c("#f442c8", "#bef441", "#000000", "#333333")))
  vdiffr::expect_doppelganger("TF - ROB2 - Overall", rob_traffic_light(data_rob2[1:6], "ROB2", overall = FALSE))

  vdiffr::expect_doppelganger("TF - ROB2C - Basic", rob_traffic_light(data_rob2_cluster, "ROB2-Cluster"))
  vdiffr::expect_doppelganger("TF - ROB2C - Point Size", rob_traffic_light(data_rob2_cluster, "ROB2-Cluster", psize = 10))
  vdiffr::expect_doppelganger("TF - ROB2C - Colour - cochrane", rob_traffic_light(data_rob2_cluster, "ROB2-Cluster", colour = "cochrane"))
  vdiffr::expect_doppelganger("TF - ROB2C - Colour - colourblind", rob_traffic_light(data_rob2_cluster, "ROB2-Cluster", colour = "colourblind"))
  vdiffr::expect_doppelganger("TF - ROB2C - Colour - custom", rob_traffic_light(data_rob2_cluster, "ROB2-Cluster", colour = c("#f442c8", "#bef441", "#000000", "#333333")))
  vdiffr::expect_doppelganger("TF - ROB2C - Overall", rob_traffic_light(data_rob2_cluster[1:7], "ROB2-Cluster", overall = FALSE))

  vdiffr::expect_doppelganger("TF - ROBINS-I - Basic", rob_traffic_light(data_robins, "ROBINS-I"))
  vdiffr::expect_doppelganger("TF - ROBINS-I - Point Size", rob_traffic_light(data_robins, "ROBINS-I", psize = 10))
  vdiffr::expect_doppelganger("TF - ROBINS-I - Colour - cochrane", rob_traffic_light(data_robins, "ROBINS-I", colour = "cochrane"))
  vdiffr::expect_doppelganger("TF - ROBINS-I - Colour - colourblind", rob_traffic_light(data_robins, "ROBINS-I", colour = "colourblind"))
  vdiffr::expect_doppelganger("TF - ROBINS-I - Colour - custom", rob_traffic_light(data_robins, "ROBINS-I", colour = c("#f442c8", "#bef441", "#000000", "#bef441", "#333333")))
  vdiffr::expect_doppelganger("TF - ROBINS-I - Overall", rob_traffic_light(data_robins[1:8], "ROBINS-I", overall = FALSE))

  vdiffr::expect_doppelganger("TF - QUADAS - Basic", rob_traffic_light(data_quadas, "QUADAS-2"))
  vdiffr::expect_doppelganger("TF - QUADAS - Point size", rob_traffic_light(data_quadas, "QUADAS-2", psize = 10))
  vdiffr::expect_doppelganger("TF - QUADAS - Colour - cochrane", rob_traffic_light(data_quadas, "QUADAS-2", colour = "cochrane"))
  vdiffr::expect_doppelganger("TF - QUADAS - Colour - colourblind", rob_traffic_light(data_quadas, "QUADAS-2", colour = "colourblind"))
  vdiffr::expect_doppelganger("TF - QUADAS - Colour - custom", rob_traffic_light(data_quadas, "QUADAS-2", colour = c("#f442c8", "#bef441", "#000000", "#333333")))
  vdiffr::expect_doppelganger("TF - QUADAS - Overall", rob_traffic_light(data_quadas[1:5], "QUADAS-2", overall = FALSE))

  vdiffr::expect_doppelganger("TF - QUIPS - Basic", rob_traffic_light(data_quips, "QUIPS"))
  vdiffr::expect_doppelganger("TF - QUIPS - Point Size", rob_traffic_light(data_quips, "QUIPS", psize = 10))
  vdiffr::expect_doppelganger("TF - QUIPS - Colour - cochrane", rob_traffic_light(data_quips, "QUIPS", colour = "cochrane"))
  vdiffr::expect_doppelganger("TF - QUIPS - Colour - colourblind", rob_traffic_light(data_quips, "QUIPS", colour = "colourblind"))
  vdiffr::expect_doppelganger("TF - QUIPS - Colour - custom", rob_traffic_light(data_quips, "QUIPS", colour = c("#f442c8", "#bef441", "#000000", "#bef441", "#333333")))
  vdiffr::expect_doppelganger("TF - QUIPS - Overall", rob_traffic_light(data_quips[1:7], "QUIPS", overall = FALSE))

  vdiffr::expect_doppelganger("TF - ROBG - Basic", rob_traffic_light(data_rob2, tool = "Generic"))
  vdiffr::expect_doppelganger("TF - ROBG - Point size", rob_traffic_light(data_rob2, tool = "Generic", psize = 15))
  vdiffr::expect_doppelganger("TF - ROBG - Judgement labels", rob_traffic_light(data_rob2, tool = "Generic", judgement_labels = c("Very bad", "Pretty bad", "Not sure", "Good", "No info", "NA")))
  vdiffr::expect_doppelganger("TF - ROBG - Judgement title", rob_traffic_light(data_rob2, tool = "Generic", judgement_title = "Assessment"))
  vdiffr::expect_doppelganger("TF - ROBG - Overall domain", rob_traffic_light(language_dat, tool = "Generic"))
  vdiffr::expect_doppelganger("TF - ROBG - Label x axis", rob_traffic_light(data_rob2, tool = "Generic", x_title = "ROB domains"))
  vdiffr::expect_doppelganger("TF - ROBG - Label y axis", rob_traffic_light(data_rob2, tool = "Generic", y_title = "Trial"))
  vdiffr::expect_doppelganger("TF - ROBG - Overall", rob_traffic_light(data_rob2[1:6], "Generic", overall = FALSE))

})
