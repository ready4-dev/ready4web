---
title: "Repeatable research"
linkTitle: "Repeatability"
weight: 24
categories: 
- Documentation
tags:
- Project
- Project - concepts
description: >
  Some core concepts relating to repeatable research have multiple conflicting definitions - this is how we use them.
---

Although there is widespread support from the scientific community on the importance of repeatable research, the definition of key terms such as reproducibility and replicability can vary across disciplines and methodologies (e.g. the extent to which computational modelling is used). The meanings we intend when using these terms are described below.

## Reproduction and Replication
The distinctions we make between reproduction and replication have been guided by the approach outlined in a report by the [National Academies of Sciences, Engineering and Medicine](https://nap.nationalacademies.org/catalog/25303/reproducibility-and-replicability-in-science). However, we have adapted their definitions slightly as the meanings in that report were framed in terms of study findings / outcomes, whereas our usage relates more to intended objectives when deploying tools.

### Our usage

#### Reproduction
Applying the same [analysis](/docs/model/analyses/) code to the same input [data](/docs/model/datasets/) with the expectation of generating identical outputs (with the exception of trivial artefacts like datestamps for when analysis reports were produced).

#### Replication
Applying analysis code used in a study to new input data. The analysis code is reused with only minimal edits that are necessary to account for differences in input data paths and variable names and to study metadata (e.g. investigator names, sample descriptions). The new data can be real or fake, but will include the same structure and concepts / measures as those found in the original study's dataset. If the new data is a sample from the same population as the original study, then the expectation when undertaking replications is for results across studies to be broadly similar. 

### Suggested policies
When publishing analysis code we suggest adopting the following rules of thumb: 

1. If the data required to re-run a study analysis are publicly available (or declared by the analysis program itself), publish the code as a reproduction program (e.g. [this program for creating a synthetic population](https://readyforwhatsnext.org/docs/analyses/replication-code/make-fakes/clinical-primary/)).

2. If the data required to re-run a study analysis are not publicly available, we publish the replication version of the code. The replication version of the code may be configured to ingest a synthetic (fake) representation of the study dataset as with [this utility mapping replication program](https://readyforwhatsnext.org/docs/analyses/replication-code/map-utility/ttu_lng_aqol6d_csp/). Details of the (minimal) steps required to revert the replication code to a version that can be used for reproduction purposes are typically embedded within the program itself.
