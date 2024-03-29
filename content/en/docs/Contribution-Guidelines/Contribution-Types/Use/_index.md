---
title: "Undertake projects"
linkTitle: "Projects"
date: 2017-01-05
weight: 115
tags:
- Project
- Project - contributions
- Project - contributions (types)
categories:
- Documentation
description: >
  Plan, conduct and disseminate ready4 [modelling projects](/docs/getting-started/concepts/project/).
---

## What?
A ready4 modelling project undertakes novel analysis of [youth mental health topics](/docs/examples/) by using, enhancing and/or authoring model [modules](/docs/getting-started/concepts/module/), [datasets](/docs/model/datasets/) and [executables](/docs/software/executables/). 
Each ready4 modelling project has its own unique [funder(s)](/docs/getting-started/stakeholders/funders/), governance, objectives and team. The links between modelling projects are in the form of a common [framework](/docs/framework/) and membership of a collaborative [community](/community/). 

Undertaking modelling projects will help us achieve our following priority goals:

- Priority 3. [Applying ready4](/docs/contribution-guidelines/priorities/apply/).

- Priority 5. [Extending ready4](/docs/contribution-guidelines/priorities/extend/).

## Who?
Modelling projects should typically be led by a [researcher](/docs/getting-started/stakeholders/researchers/) (who may or may not be a [modeller](/docs/getting-started/users/modeller/)) or [planner](/docs/getting-started/users/planner/). The core project team will always include modelling expertise and, should authorship of new modules (or extensions to existing modules) be required, will also need to include [coders](/docs/getting-started/users/coder/). Advisory structures to engage [community members](/docs/getting-started/stakeholders/community-members/) and [planners](/docs/getting-started/users/planner/) are also recommended.

## How?
There are three main steps in implementing a ready4 modelling project.

### Step 1: Develop model
Each project's [computational model](/docs/getting-started/concepts/model/) is constructed by adopting one or more of the following strategies:

- selecting a subset of [existing ready4 modules](/docs/model/modules/finding-modules/) and [using them](/docs/model/modules/using-modules/) in unmodified form;
- selecting a subset of existing ready4 modules and [contributing code edits](/docs/contribution-guidelines/contribution-types/code/) to these modules to add desired functionality;
- selecting a subset of existing ready4 modules and using them as templates from which to author new [inheriting modules](/docs/framework/implementation/paradigm/#inheritence) (which can be code contributions to an existing [module library](/docs/software/libraries/types/module/) or [distributed as part of a new library](/docs/framework/use/authoring-modules/packaging-modules/)); and/or
- [authoring new ready4 modules](/docs/framework/use/authoring-modules/) (most likely to be distributed in new code libraries). 

As part of the validation and verification process for all new and derived modules, tests should be defined, bundled as part of the relevant module libraries and rerun every time these libraries are edited.

### Step 2: Add data
By data we typically mean digitally stored information, principally relating to model parameter values, that can be added to the ready4 computational model to tailor it to a specific decision context (e.g. a particular population / jurisdiction / service / intervention) and set of underpinning beliefs (e.g. preferred evidence sources). Data for a ready4 modelling project will be from one or both of the following options:

- [finding and using existing open access data](/docs/model/datasets/finding-data/) from other ready4 projects;
- supplying new project specific data, [appropriately describing these data](/docs/framework/use/authoring-data/label-data/) and (for non-confidential records) [sharing these data publicly](/docs/framework/use/authoring-data/share-data/).

### Step 3: Run analyses
ready4 project analyses apply algorithms contained in ready4 modules to supplied data to generate insight and can be implemented by:

- adapting existing [replication programs](/docs/model/analyses/replication-code/); 
- [authoring new analysis programs](/docs/framework/use/authoring-analyses/); and / or
- developing a [user-interface](/docs/model/analyses/decision-aids/) to allow non-technical users to run custom analyses.

When reporting analyses, using a [reporting template](/docs/model/analyses/reporting-templates/) can be useful.

