---
title: "Commands for using model modules"
linkTitle: "Commands"
date: "2024-06-11"
description: "Apply model modules using a simple and consistent syntax."
weight: 91
tags:
- Programming
- Programming - literate
- Reporting
- Reporting - tutorials
- Software
- Software - libraries
- Software - libraries (ready4show)
- Status
- Status - development
categories:
- Documentation
output: hugodown::md_document
rmd_hash: b59564bf0f30e44e
html_dependencies:
- <script src="kePrint-0.0.1/kePrint.js"></script>
- <link href="lightable-0.0.1/lightable.css" rel="stylesheet" />

---

{{% pageinfo %}} This below section renders a vignette article from the ready4show library. You can use the following links to:

-   [view the vignette on the library website (adds useful hyperlinks to code blocks)](https://ready4-dev.github.io/ready4/articles/V_02.html)
-   [view the source file](https://github.com/ready4-dev/ready4/blob/main/vignettes/V_02.Rmd) from that article, and;
-   [edit its contents](https://github.com/ready4-dev/ready4/edit/main/vignettes/V_02.Rmd) (requires a GitHub account). {{% /pageinfo %}}

<div class="highlight">

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='kr'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='o'>(</span><span class='nv'><a href='https://ready4-dev.github.io/ready4/'>ready4</a></span><span class='o'>)</span> </span></code></pre>

</div>

## Motivation

To be used in health economic analyses, model modules need to be called using a programming syntax. Ideally that syntax should be relatively simple, with the name and description of each command reliably communicating the category of operations it performs.

## Implementation

`ready4` provides a simple syntax that is used by all model modules developed with the [`ready4` framework](https://www.ready4-dev.com/).

## Use

A table that itemises `ready4` commands along with examples of how these commands are used can be ingested from a periodically updated database using `get_methods_tb`. In the below example we will search for examples of where that syntax has been used by modules from the [readyforwhatsnext model](https://readyforwhatsnext.org/). The value supplied to the `gh_repo_1L_chr` argument specifies the repository in which a dataset of readyforwhatsnext module libraries is stored.

<div class="highlight">

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>x</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://ready4-dev.github.io/ready4/reference/get_methods_tb.html'>get_methods_tb</a></span><span class='o'>(</span>gh_repo_1L_chr <span class='o'>=</span> <span class='s'>"ready4-dev/ready4"</span><span class='o'>)</span></span></code></pre>

</div>

### Core commands

A HTML table of `ready4`'s core commands and examples of the use of each command can be displayed using the `print_methods` function, using the `return_1L_chr = "core"` argument.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://ready4-dev.github.io/ready4/reference/print_methods.html'>print_methods</a></span><span class='o'>(</span><span class='nv'>x</span>,</span>
<span>              return_1L_chr <span class='o'>=</span> <span class='s'>"core"</span>,</span>
<span>              scroll_width_1L_chr <span class='o'>=</span> <span class='s'>"100%"</span><span class='o'>)</span> </span>
</code></pre>

<div style="border: 1px solid #ddd; padding: 5px; overflow-x: scroll; width:100%; ">

<table class="table table-hover table-condensed" style="color: black; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Method
</th>
<th style="text-align:left;">
Purpose
</th>
<th style="text-align:left;">
Examples
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/author-methods.html"> author </a>
</td>
<td style="text-align:left;">
Author and save files
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4fun/articles/V_01.html" style="     ">5</a> , <a href="https://ready4-dev.github.io/ready4class/articles/V_01.html" style="     ">6</a>, <a href="https://ready4-dev.github.io/ready4pack/articles/V_01.html" style="     ">7</a> , <a href="https://ready4-dev.github.io/TTU/articles/V_01.html" style="     ">16</a> , <a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/characterize-methods.html"> characterize </a>
</td>
<td style="text-align:left;">
Characterize model module data by generating (tabular) descriptive statistics
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/depict-methods.html"> depict </a>
</td>
<td style="text-align:left;">
Depict (plot) features of model module data
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/youthvars/articles/V_02.html" style="     ">13</a>, <a href="https://ready4-dev.github.io/scorz/articles/V_01.html" style="     ">14</a> , <a href="https://ready4-dev.github.io/scorz/articles/V_02.html" style="     ">15</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/enhance-methods.html"> enhance </a>
</td>
<td style="text-align:left;">
Enhance a model module by adding new elements
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/exhibit-methods.html"> exhibit </a>
</td>
<td style="text-align:left;">
Exhibit features of model module data by printing them to the R console
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4use/articles/V_02.html" style="     ">2</a> , <a href="https://ready4-dev.github.io/ready4fun/articles/V_01.html" style="     ">5</a> , <a href="https://ready4-dev.github.io/ready4class/articles/V_01.html" style="     ">6</a>, <a href="https://ready4-dev.github.io/youthvars/articles/V_02.html" style="     ">13</a> , <a href="https://ready4-dev.github.io/scorz/articles/V_01.html" style="     ">14</a> , <a href="https://ready4-dev.github.io/scorz/articles/V_02.html" style="     ">15</a> , <a href="https://ready4-dev.github.io/TTU/articles/V_01.html" style="     ">16</a> , <a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a> , <a href="https://ready4-dev.github.io/youthu/articles/V_01.html" style="     ">18</a> , <a href="https://ready4-dev.github.io/costly/articles/V_01.html" style="     ">19</a> , <a href="https://ready4-dev.github.io/costly/articles/V_02.html" style="     ">20</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/ingest-methods.html"> ingest </a>
</td>
<td style="text-align:left;">
Ingest data
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4use/articles/V_01.html" style="     ">1</a> , <a href="https://ready4-dev.github.io/ready4use/articles/V_02.html" style="     ">2</a> , <a href="https://ready4-dev.github.io/ready4use/articles/V_03.html" style="     ">3</a> , <a href="https://ready4-dev.github.io/ready4class/articles/V_01.html" style="     ">6</a>, <a href="https://ready4-dev.github.io/youthvars/articles/V_02.html" style="     ">13</a> , <a href="https://ready4-dev.github.io/scorz/articles/V_01.html" style="     ">14</a> , <a href="https://ready4-dev.github.io/scorz/articles/V_02.html" style="     ">15</a> , <a href="https://ready4-dev.github.io/TTU/articles/V_01.html" style="     ">16</a> , <a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a> , <a href="https://ready4-dev.github.io/youthu/articles/V_01.html" style="     ">18</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/investigate-methods.html"> investigate </a>
</td>
<td style="text-align:left;">
Investigate solutions to an inverse problem
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/TTU/articles/V_01.html" style="     ">16</a> , <a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/manufacture-methods.html"> manufacture </a>
</td>
<td style="text-align:left;">
Manufacture a new object
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/metamorphose-methods.html"> metamorphose </a>
</td>
<td style="text-align:left;">
Metamorphose a model module to a model module of a different (non-inheriting) class
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/procure-methods.html"> procure </a>
</td>
<td style="text-align:left;">
Procure items from a dataset
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4fun/articles/V_01.html" style="     ">5</a>, <a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/prognosticate-methods.html"> prognosticate </a>
</td>
<td style="text-align:left;">
Prognosticate (make predictions) by solving a forward problem
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/ratify-methods.html"> ratify </a>
</td>
<td style="text-align:left;">
Ratify that input or output data meet validity criteria
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/youthvars/articles/V_02.html" style="     ">13</a>, <a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a> , <a href="https://ready4-dev.github.io/costly/articles/V_01.html" style="     ">19</a> , <a href="https://ready4-dev.github.io/costly/articles/V_02.html" style="     ">20</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/reckon-methods.html"> reckon </a>
</td>
<td style="text-align:left;">
Reckon (calculate) a value
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/renew-methods.html"> renew </a>
</td>
<td style="text-align:left;">
Renew (update) values
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4use/articles/V_01.html" style="     ">1</a> , <a href="https://ready4-dev.github.io/ready4use/articles/V_02.html" style="     ">2</a> , <a href="https://ready4-dev.github.io/youthvars/articles/V_02.html" style="     ">13</a>, <a href="https://ready4-dev.github.io/scorz/articles/V_01.html" style="     ">14</a> , <a href="https://ready4-dev.github.io/scorz/articles/V_02.html" style="     ">15</a> , <a href="https://ready4-dev.github.io/TTU/articles/V_01.html" style="     ">16</a> , <a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a> , <a href="https://ready4-dev.github.io/costly/articles/V_01.html" style="     ">19</a> , <a href="https://ready4-dev.github.io/costly/articles/V_02.html" style="     ">20</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/share-methods.html"> share </a>
</td>
<td style="text-align:left;">
Share data via an online repository
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4use/articles/V_01.html" style="     ">1</a> , <a href="https://ready4-dev.github.io/youthvars/articles/V_02.html" style="     ">13</a>, <a href="https://ready4-dev.github.io/scorz/articles/V_01.html" style="     ">14</a> , <a href="https://ready4-dev.github.io/scorz/articles/V_02.html" style="     ">15</a> , <a href="https://ready4-dev.github.io/TTU/articles/V_01.html" style="     ">16</a>
</td>
</tr>
</tbody>
</table>

</div>

</div>

### Applying commands to module "slots"

Each of the "core" commands also has a "slot" version, which applies the command to a specified slot (a named element of a module). Two of these "slot" methods can also be used for additional purposes:

-   [procureSlot](https://ready4-dev.github.io/ready4/reference/procureSlot-methods.html) is a "getter" method - its default behaviour is to return the value of a specified slot. If the argument `use_procure_mthd_1L_lgl = T` is included in the method call, `procureSlot` will instead apply the `procure` method to a specified slot.

-   [renewSlot](https://ready4-dev.github.io/ready4/reference/procureSlot-methods.html) is a "setter" method - if any value other than "use_renew_mthd" (the default) is passed to the `new_val_xx` argument, that value will be assigned to the specified slot.

A HTML table of slot commands and relevant examples can be displayed using the `print_methods` function, using the `return_1L_chr = "slot"` argument.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://ready4-dev.github.io/ready4/reference/print_methods.html'>print_methods</a></span><span class='o'>(</span><span class='nv'>x</span>,</span>
<span>              return_1L_chr <span class='o'>=</span> <span class='s'>"slot"</span>,</span>
<span>              scroll_width_1L_chr <span class='o'>=</span> <span class='s'>"100%"</span><span class='o'>)</span></span>
</code></pre>

<div style="border: 1px solid #ddd; padding: 5px; overflow-x: scroll; width:100%; ">

<table class="table table-hover table-condensed" style="color: black; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Method
</th>
<th style="text-align:left;">
Purpose
</th>
<th style="text-align:left;">
Examples
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/authorSlot-methods.html"> authorSlot </a>
</td>
<td style="text-align:left;">
Apply the author method to a model module slot
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/characterizeSlot-methods.html"> characterizeSlot </a>
</td>
<td style="text-align:left;">
Apply the characterize method to a model module slot
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/depictSlot-methods.html"> depictSlot </a>
</td>
<td style="text-align:left;">
Apply the depict method to a model module slot
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/enhanceSlot-methods.html"> enhanceSlot </a>
</td>
<td style="text-align:left;">
Apply the enhance method to a model module slot
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/exhibitSlot-methods.html"> exhibitSlot </a>
</td>
<td style="text-align:left;">
Apply the exhibit method to a model module slot
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4show/articles/V_01.html" style="     ">4</a>, <a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a> , <a href="https://ready4-dev.github.io/costly/articles/V_01.html" style="     ">19</a> , <a href="https://ready4-dev.github.io/costly/articles/V_02.html" style="     ">20</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/ingestSlot-methods.html"> ingestSlot </a>
</td>
<td style="text-align:left;">
Apply the ingest method to a model module slot
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/investigateSlot-methods.html"> investigateSlot </a>
</td>
<td style="text-align:left;">
Apply the investigate method to a model module slot
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/manufactureSlot-methods.html"> manufactureSlot </a>
</td>
<td style="text-align:left;">
Apply the manufacture method to a model module slot
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/metamorphoseSlot-methods.html"> metamorphoseSlot </a>
</td>
<td style="text-align:left;">
Apply the metamorphose method to a model module slot
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/procureSlot-methods.html"> procureSlot </a>
</td>
<td style="text-align:left;">
Procure (get) data from a slot
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4show/articles/V_01.html" style="     ">4</a>, <a href="https://ready4-dev.github.io/scorz/articles/V_01.html" style="     ">14</a> , <a href="https://ready4-dev.github.io/TTU/articles/V_01.html" style="     ">16</a> , <a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/prognosticateSlot-methods.html"> prognosticateSlot </a>
</td>
<td style="text-align:left;">
Apply the prognosticate method to a model module slot
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/ratifySlot-methods.html"> ratifySlot </a>
</td>
<td style="text-align:left;">
Apply the ratify method to a model module slot
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/reckonSlot-methods.html"> reckonSlot </a>
</td>
<td style="text-align:left;">
Apply the reckon method to a model module slot
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/renewSlot-methods.html"> renewSlot </a>
</td>
<td style="text-align:left;">
Renew (set) the values of data in a module slot
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4show/articles/V_01.html" style="     ">4</a>, <a href="https://ready4-dev.github.io/scorz/articles/V_01.html" style="     ">14</a> , <a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a> , <a href="https://ready4-dev.github.io/costly/articles/V_01.html" style="     ">19</a> , <a href="https://ready4-dev.github.io/costly/articles/V_02.html" style="     ">20</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/shareSlot-methods.html"> shareSlot </a>
</td>
<td style="text-align:left;">
Apply the share method to a model module slot
</td>
<td style="text-align:left;">
</td>
</tr>
</tbody>
</table>

</div>

</div>

### Extended commands

Finally, there are a small number of other commands that are more general extensions of the core commands. Currently, these extended commands are all variants on the `author` command, with each extension specifying the type of output to be authored by the method. A HTML table of the extended generics bundled with `ready4` can be displayed using the `print_methods` function, using the `return_1L_chr = "extended"` argument.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://ready4-dev.github.io/ready4/reference/print_methods.html'>print_methods</a></span><span class='o'>(</span><span class='nv'>x</span>,</span>
<span>              exclude_mthds_for_chr <span class='o'>=</span> <span class='s'>"Ready4Module"</span>,</span>
<span>              return_1L_chr <span class='o'>=</span> <span class='s'>"extended"</span>,</span>
<span>              scroll_width_1L_chr <span class='o'>=</span> <span class='s'>"100%"</span><span class='o'>)</span></span>
</code></pre>

<div style="border: 1px solid #ddd; padding: 5px; overflow-x: scroll; width:100%; ">

<table class="table table-hover table-condensed" style="color: black; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Method
</th>
<th style="text-align:left;">
Purpose
</th>
<th style="text-align:left;">
Examples
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/authorClasses-methods.html"> authorClasses </a>
</td>
<td style="text-align:left;">
Author and document classes
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/authorData-methods.html"> authorData </a>
</td>
<td style="text-align:left;">
Author and document datasets
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4show/articles/V_01.html" style="     ">4</a>, <a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/authorFunctions-methods.html"> authorFunctions </a>
</td>
<td style="text-align:left;">
Author and document functions
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4/reference/authorReport-methods.html"> authorReport </a>
</td>
<td style="text-align:left;">
Author and save a report
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/ready4show/articles/V_01.html" style="     ">4</a>
</td>
</tr>
</tbody>
</table>

</div>

</div>

