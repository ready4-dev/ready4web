---
title: Installing tools for authoring and managing model datasets
linkTitle: "Datasets"
author: Matthew Hamilton
date: "2023-11-30"
description: Instructions for installing the ready4use library.
weight: 2
categories: 
- Documentation
tags: 
- Framework
- Framework - authoring tools
- Framework - authoring tools (datasets)
- Software
- Software - libraries
- Software - libraries (installation)
- Software - libraries (ready4use)
- Status
- Status - development
output: hugodown::md_document
rmd_hash: 8c4b9b8ef4a1b4dc

---

## Before you install

If you are a [coder](/docs/getting-started/users/coder/) or [modeller](/docs/getting-started/users/modeller) planning to create, share and access model datasets with ready4, then you will need the [ready4use](https://ready4-dev.github.io/ready4use/) library.

**However, please note that ready4use is not yet available as a [production release](/docs/software/status/production-releases/). You should therefore understand the limitations of using ready4 software [development releases](/docs/software/status/development-releases/) before you make the decision to install this software.**

You may already have ready4use installed on your machine (e.g. if you have previously installed other ready4 framework and module libraries that include ready4use as a [dependency](/docs/software/libraries/dependencies/)). If you can run the following command without producing an error message, then you already have it.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://rdrr.io/r/base/find.package.html'>find.package</a></span><span class='o'>(</span><span class='s'>"ready4use"</span><span class='o'>)</span></span></code></pre>

</div>

## Installation

You can install ready4use directly from its [GitHub repository](https://github.com/ready4-dev/ready4use).

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'>devtools</span><span class='nf'>::</span><span class='nf'><a href='https://remotes.r-lib.org/reference/install_github.html'>install_github</a></span><span class='o'>(</span><span class='s'>"ready4-dev/ready4use"</span><span class='o'>)</span></span></code></pre>

</div>

## Configuration

If one of your intended uses of ready4use is to share outputs in online datasets, you will need to have set up an account on a [Dataverse](https://dataverse.org) installation (we recommend using the [Harvard Dataverse](https://dataverse.harvard.edu)). Some of the key terms and concepts relating to using a Dataverse installation in conjunction with ready4use are described [in this tutorial](https://www.acumen-mh.org/blog/2022/08/28/access_open_data/).

You need to ensure that you have write permissions to any Dataverse Datasets that you plan to use to post files to. Furthermore, the machine on which you install ready4use should also securely store your Dataverse account credentials (specifically, values for the DATAVERSE_KEY and DATAVERSE_SERVER tokens). Details of how to do this are [described in documentation for the dataverse R package](https://cran.r-project.org/web/packages/dataverse/vignettes/A-introduction.html), an important third party dependency package for ready4use.

## Try it out

You should now be able to run the example code included in the [package vignettes](https://ready4-dev.github.io/ready4use/articles/). To run all of this code you will need to replace the details of the Dataverse Dataset to which files are being written to those of your own Dataverse Dataset.

