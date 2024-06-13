---
title: "Partially automate maintenance of a modelling project's website"
linkTitle: "Maintenance"
date: "2024-06-13"
description: "ready4 includes tools that can help maintain the documentation website for a modelling project."
weight: 4
categories: 
- Documentation
tags: 
- Framework
- Framework - foundation
- Framework - foundation (maintenance)
- Programming
- Software
- Software - libraries
- Software - libraries (ready4)
- Status
- Status - development
output: hugodown::md_document
rmd_hash: 4f9b1b9716bd6723

---

{{% pageinfo %}} This below section renders a vignette article from the ready4 library. You can use the following links to:

-   [view the vignette on the library website (adds useful hyperlinks to code blocks)](https://ready4-dev.github.io/ready4/articles/V_06.html)
-   [view the source file](https://github.com/ready4-dev/ready4/blob/main/vignettes/V_06.Rmd) from that article, and;
-   [edit its contents](https://github.com/ready4-dev/ready4/edit/main/vignettes/V_06.Rmd) (requires a GitHub account). {{% /pageinfo %}}

<div class="highlight">

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='kr'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='o'>(</span><span class='nv'><a href='https://ready4-dev.github.io/ready4/'>ready4</a></span><span class='o'>)</span> </span></code></pre>

</div>

## Motivation

Manually keeping track of modules libraries, programs, reporting templates and datasets authored by different teams and stored in different locations can be an onerous undertaking. The `ready4` library therefore includes tools to allow a modelling project's maintainers to perform automated searches for model artefacts and to output tabular summaries of these assets in formats suitable for inclusion on a project documentation website.

## Implementation

The `ready4` library includes tools to allow a modelling project's maintainers to partially automate searching for and creating summaries of relevant modelling project assets (e.g. tutorials, releases, etc.) that are suitable for inclusion on documentation website pages.

## Use

The documentation website maintenance tools in the `ready4` library are designed to be used on a docsy documentation website derived from [this template repository](https://github.com/ready4-dev/ready4web). An example of a website created from this template is the [readyforwhatsnext model project website](https://readyforwhatsnext.org/), for which source code is [available here](https://github.com/ready4-dev/readyforwhatsnext).

The `write_to_render_post` is the main `ready4` function used specifically for website maintenance tasks. Importantly, the non-CRAN library [hugodown](https://github.com/r-lib/hugodown) needs to be installed to use this function.

`write_to_render_post` is designed for help overcome practical challenges of rendering RMD or Rmarkdown files (pareticularly those sourced from an individual module library's documentation website) to Markdown output in an overall modelling project website. Examples of its use are in [this script](https://github.com/ready4-dev/readyforwhatsnext/blob/main/runme.R) that is run when updating the readyforwhatsnext project website. The RMD / Rmarkdown files rendered by this example script call other useful functions from the ready4 package, such as:

-   `get_libraries_tb`, `update_libraries_tb` and `print_packages` for updating details on module libraries (see [this example](https://readyforwhatsnext.org/docs/tutorials/finding/libraries/))

-   `make_modules_tb` and `print_modules` for updating details on individual modules (see [this example](https://readyforwhatsnext.org/docs/tutorials/finding/individual/))

-   `make_datasets_tb` and `print_data` for updating details on module datasets (see [this example](https://readyforwhatsnext.org/docs/tutorials/finding/finding-data/))

-   `get_datasets_tb`, `make_dss_tb` and `make_ds_releases_tbl` for updating release statuses of module datasets (see this [RMD file](https://github.com/ready4-dev/readyforwhatsnext/blob/main/content/en/blog/releases/Datasets/Model-Data/People-Datasets/index_Body.Rmd) and its [output](https://readyforwhatsnext.org/blog/2024/06/08/datasets-for-modelling-people-releases/))

-   `make_programs_tbl` for updating details on analysis programs or reporting sub-routines that use model modules (see [this RMD file](https://github.com/ready4-dev/readyforwhatsnext/blob/main/content/en/docs/Analyses/Find/index_Body.Rmd) and [its associated output](https://readyforwhatsnext.org/docs/analyses/find/#current-readyforhwatsnext-programs) as well as this [RMD file](https://github.com/ready4-dev/readyforwhatsnext/blob/main/content/en/docs/Reporting/index_Body.Rmd) and [its output](https://readyforwhatsnext.org/docs/reporting/#current-readyforwhatsnext-subroutines))

-   `make_code_releases_tbl` for updating release statuses of module libraries and programs or reporting sub-routines that use model modules (see this [RMD file](https://github.com/ready4-dev/readyforwhatsnext/blob/main/content/en/blog/releases/Executables/Programs/index_Body.Rmd) and its [output](https://readyforwhatsnext.org/blog/2024/06/08/programs-releases/))

