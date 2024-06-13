---
title: "Provide end users with a simple and consistent syntax for using model modules"
linkTitle: "Syntax"
date: "2024-06-13"
description: "Methods are associated with ready4 modules using a novel syntax."
weight: 2
aliases:
- /docs/framework/implementation/syntax
categories: 
- Documentation
tags: 
- Framework
- Framework - foundation
- Framework - foundation (syntax)
- Programming
- Programming - object-oriented
- Software
- Software - libraries
- Software - libraries (ready4)
- Status
- Status - development
output: hugodown::md_document
rmd_hash: 3843e91474b429a0

---

{{% pageinfo %}} This below section renders a vignette article from the ready4 library. You can use the following links to:

-   [view the vignette on the library website (adds useful hyperlinks to code blocks)](https://ready4-dev.github.io/ready4/articles/V_07.html)
-   [view the source file](https://github.com/ready4-dev/ready4/blob/main/vignettes/V_07.Rmd) from that article, and;
-   [edit its contents](https://github.com/ready4-dev/ready4/edit/main/vignettes/V_07.Rmd) (requires a GitHub account). {{% /pageinfo %}}

<div class="highlight">

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='kr'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='o'>(</span><span class='nv'><a href='https://ready4-dev.github.io/ready4/'>ready4</a></span><span class='o'>)</span> </span></code></pre>

</div>

## Motivation

Transparency is one of the underpinning principles of ethical modelling practice. One way to improve the transparency of computational health economic models is to ensure that the programs implementing model analyses can be meaningfully inspected by readers with different levels of technical expertise. Even non-technical readers should be able to follow the high-level logic implemented by model algorithms. If multiple analysis programs are written using a common simplified syntax then reviewers of those programs need to contend with relatively fewer new concepts.

## Implementation

`ready4` provides a simple syntax that can be consistently applied to attach algorithms (methods) to [model modules](https://www.ready4-dev.com/docs/framework/implementation/modularity/). It does so by taking advantage of the [abstraction and polymorphism features of Object Oriented Programing](https://www.ready4-dev.com/docs/framework/implementation/paradigm/object-oriented/#transparent-computational-models) and R's use of generic functions. Generic functions don't implement algorithms themselves - their most salient features are a name and a high level description of the type of task that any method associated with that generic should perform. Whenever a developer creates a method for classes that use R's S4 and S3 systems [(the types used for model modules and sub-modules)](https://www.ready4-dev.com/docs/framework/implementation/modularity/#implementation), they can associate that method with a generic that has a description that is a good match for the algorithm being implemented.

## Use

`ready4` includes a number of core generic functions which describe the main types of method to be implemented by model modules. These generics correspond exactly to the "core", "slot" and "extended" commands described in [another article](https://www.ready4-dev.com/docs/tutorials/use-models/authoring-analyses/commands/).

Notably, the `ready4` package does not associate any core or extended methods with the `Ready4Module` [template module](https://www.ready4-dev.com/docs/framework/implementation/modularity/). Instead, model developers need to decide which core and extended generics they associate with the modules they derive from the `Ready4Module` template. This decision is typically made when authoring the methods associated with model modules.

Currently, the only methods defined for `Ready4Module` are [slot-methods](https://www.ready4-dev.com/docs/tutorials/use-models/authoring-analyses/commands/). By default, these slot methods are inherited by all modules derived from the `Ready4Module` template. These methods can be itemised using the `get_methods` function.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://ready4-dev.github.io/ready4/reference/get_methods.html'>get_methods</a></span><span class='o'>(</span><span class='o'>)</span></span>
<span><span class='c'>#&gt;  [1] "authorSlot"        "characterizeSlot"  "depictSlot"        "enhanceSlot"       "exhibitSlot"       "ingestSlot"        "investigateSlot"   "manufactureSlot"  </span></span>
<span><span class='c'>#&gt;  [9] "metamorphoseSlot"  "procureSlot"       "prognosticateSlot" "ratifySlot"        "reckonSlot"        "renewSlot"         "shareSlot"</span></span>
<span></span></code></pre>

</div>

