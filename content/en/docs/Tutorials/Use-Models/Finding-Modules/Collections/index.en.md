---
title: "Find themed collections of ready4 modules"
linkTitle: "Collections"
date: "2024-06-11"
description: "Tools from the ready4 R library can help find details about module libraries from a modelling project."
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
rmd_hash: b0cdeee638ed918a
html_dependencies:
- <script src="kePrint-0.0.1/kePrint.js"></script>
- <link href="lightable-0.0.1/lightable.css" rel="stylesheet" />

---

{{% pageinfo %}} This below section renders a vignette article from the ready4 library. You can use the following links to:

-   [view the vignette on the library website (adds useful hyperlinks to code blocks)](https://ready4-dev.github.io/ready4/articles/V_04.html)
-   [view the source file](https://github.com/ready4-dev/ready4/blob/main/vignettes/V_04.Rmd) from that article, and;
-   [edit its contents](https://github.com/ready4-dev/ready4/edit/main/vignettes/V_04.Rmd) (requires a GitHub account). {{% /pageinfo %}}

<div class="highlight">

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='kr'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='o'>(</span><span class='nv'><a href='https://ready4-dev.github.io/ready4/'>ready4</a></span><span class='o'>)</span> </span></code></pre>

</div>

## Motivation

To use and combine health economic model modules it is first useful to find modules that have been developed using a common framework that promotes inter-operability.

## Implementation

A table summarising currently available module libraries authored with the [ready4 framework](https://www.ready4-dev.com/) within a specified GitHub organisation can be retrieved from an online dataset by using the `get_libraries_tb` and `update_libraries_tb` functions.

## Use

In the below example we will search for modules from the [readyforwhatsnext model](https://readyforwhatsnext.org/). The source code for these modules all reside in the [ready4-dev GitHub repository](https://github.com/ready4-dev). The value supplied to the `gh_repo_1L_chr` argument specifies the repository in which a dataset of readyforwhatsnext module libraries is stored.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>libraries_tb</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://ready4-dev.github.io/ready4/reference/get_libraries_tb.html'>get_libraries_tb</a></span><span class='o'>(</span>gh_repo_1L_chr <span class='o'>=</span> <span class='s'>"ready4-dev/ready4"</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span> <span class='nf'><a href='https://ready4-dev.github.io/ready4/reference/update_libraries_tb.html'>update_libraries_tb</a></span><span class='o'>(</span>include_1L_chr <span class='o'>=</span> <span class='s'>"modules"</span>, url_stub_1L_chr <span class='o'>=</span> <span class='s'>"https://ready4-dev.github.io/"</span><span class='o'>)</span></span></code></pre>

</div>

In this example, module libraries have been grouped in to the following thematic model "sections".

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>libraries_tb</span><span class='o'>$</span><span class='nv'>Section</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span> <span class='nf'><a href='https://rdrr.io/r/base/unique.html'>unique</a></span><span class='o'>(</span><span class='o'>)</span></span>
<span><span class='c'>#&gt; [1] "People"   "Places"   "Programs"</span></span>
<span></span></code></pre>

</div>

We can use the `print_packages` function to display a HTML summary of the module libraries currently available for each section. The resulting table summarises the types of module library (e.g. those for description, developing models or predicting with models), the name and purpose of those libraries, the locations from which development and archived library code can be downloaded and details of supporting documentation for each library (e.g. website, manuals and examples).

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://ready4-dev.github.io/ready4/reference/print_packages.html'>print_packages</a></span><span class='o'>(</span><span class='nv'>libraries_tb</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span> <span class='nf'>dplyr</span><span class='nf'>::</span><span class='nf'><a href='https://dplyr.tidyverse.org/reference/filter.html'>filter</a></span><span class='o'>(</span><span class='nv'>Section</span> <span class='o'>==</span> <span class='s'>"People"</span><span class='o'>)</span><span class='o'>)</span></span>
</code></pre>
<table class="table table-hover table-condensed" style="color: black; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Type
</th>
<th style="text-align:left;">
Package
</th>
<th style="text-align:left;">
Purpose
</th>
<th style="text-align:left;">
Documentation
</th>
<th style="text-align:left;">
Code
</th>
<th style="text-align:left;">
Examples
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
<img src="https://img.shields.io/badge/ready4-description-navy?style=flat&amp;labelColor=black&amp;logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAIXRFWHRDcmVhdGlvbiBUaW1lADIwMjI6MDM6MDcgMTY6MTM6NTPZeG5UAAABa0lEQVQ4T4WT607CQBCFpyUi3qIR0eAfNfCi/vENfEgENIAIlcJ6vr1oLaZOerJzdst0zpklc49nznqHZs6ZfWwDem1xM1sqXwtXkb8rL4SuOLEoLXPPXWfD01Dg9dPsrTQbngQ+EZ+LDyIfiy/FHyIfFZbbTslWKOOqxx/uWBPSfp07FahGlqlNfWGqL9HNfBO+CAfwdO55WS8g4MFML834sfJVA9e7vwsg50aGohncdmRojV9XeL+jArRNmZxVSJ4Acj3NHqARdyeFJqC2KJiCfKE9zsfxnNYTl5TcCtmNMcwY/ZXf+3wdzzVza2vj4iCaq3d1R/bvwVSH6IPjNIUHx0FSNZA7WquDqOVb35+eiO8h7Oe+vRfp0a3yGtFMDuiAIg2R20YaVwJ3Hj+4kehO/J/I7VJ/jHtpvBP6mrHnR4EzdyQ0xI8HhM8jUiChxVpDK3iVuadzx43yRdI4E2d0gNtX74TCs419AR8YEST/cHPBAAAAAElFTkSuQmCC">
</td>
<td style="text-align:left;">
<img src="https://ready4-dev.github.io/youthvars/logo.png" width="51.2" height="51.2">
</td>
<td style="text-align:left;">
Describe and Validate Youth Mental Health Dataset Variables
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/youthvars/authors.html" style="     ">Citation</a> , <a href="https://ready4-dev.github.io/youthvars/index.html" style="     ">Website</a> , <a href="https://github.com/ready4-dev/youthvars/releases/download/Documentation_0.0/youthvars_User.pdf" style="     ">Manual - Short (PDF)</a> , <a href="https://github.com/ready4-dev/youthvars/releases/download/Documentation_0.0/youthvars_Developer.pdf" style="     ">Manual - Full (PDF)</a>
</td>
<td style="text-align:left;">
<a href="https://github.com/ready4-dev/youthvars/" style="     ">Dev</a> , <a href="https://doi.org/10.5281/zenodo.5646550" style="     ">Archive</a>
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/youthvars/articles/V_01.html" style="     ">12</a>, <a href="https://ready4-dev.github.io/youthvars/articles/V_02.html" style="     ">13</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<img src="https://img.shields.io/badge/ready4-description-navy?style=flat&amp;labelColor=black&amp;logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAIXRFWHRDcmVhdGlvbiBUaW1lADIwMjI6MDM6MDcgMTY6MTM6NTPZeG5UAAABa0lEQVQ4T4WT607CQBCFpyUi3qIR0eAfNfCi/vENfEgENIAIlcJ6vr1oLaZOerJzdst0zpklc49nznqHZs6ZfWwDem1xM1sqXwtXkb8rL4SuOLEoLXPPXWfD01Dg9dPsrTQbngQ+EZ+LDyIfiy/FHyIfFZbbTslWKOOqxx/uWBPSfp07FahGlqlNfWGqL9HNfBO+CAfwdO55WS8g4MFML834sfJVA9e7vwsg50aGohncdmRojV9XeL+jArRNmZxVSJ4Acj3NHqARdyeFJqC2KJiCfKE9zsfxnNYTl5TcCtmNMcwY/ZXf+3wdzzVza2vj4iCaq3d1R/bvwVSH6IPjNIUHx0FSNZA7WquDqOVb35+eiO8h7Oe+vRfp0a3yGtFMDuiAIg2R20YaVwJ3Hj+4kehO/J/I7VJ/jHtpvBP6mrHnR4EzdyQ0xI8HhM8jUiChxVpDK3iVuadzx43yRdI4E2d0gNtX74TCs419AR8YEST/cHPBAAAAAElFTkSuQmCC">
</td>
<td style="text-align:left;">
<img src="https://ready4-dev.github.io/scorz/logo.png" width="51.2" height="51.2">
</td>
<td style="text-align:left;">
Score Multi-Attribute Utility Instruments
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/scorz/authors.html" style="     ">Citation</a> , <a href="https://ready4-dev.github.io/scorz/index.html" style="     ">Website</a> , <a href="https://github.com/ready4-dev/scorz/releases/download/Documentation_0.0/scorz_User.pdf" style="     ">Manual - Short (PDF)</a> , <a href="https://github.com/ready4-dev/scorz/releases/download/Documentation_0.0/scorz_Developer.pdf" style="     ">Manual - Full (PDF)</a>
</td>
<td style="text-align:left;">
<a href="https://github.com/ready4-dev/scorz/" style="     ">Dev</a> , <a href="https://doi.org/10.5281/zenodo.5722708" style="     ">Archive</a>
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/scorz/articles/V_01.html" style="     ">14</a>, <a href="https://ready4-dev.github.io/scorz/articles/V_02.html" style="     ">15</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<img src="https://img.shields.io/badge/ready4-modelling-indigo?style=flat&amp;labelColor=black&amp;logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAIXRFWHRDcmVhdGlvbiBUaW1lADIwMjI6MDM6MDcgMTY6MTM6NTPZeG5UAAABa0lEQVQ4T4WT607CQBCFpyUi3qIR0eAfNfCi/vENfEgENIAIlcJ6vr1oLaZOerJzdst0zpklc49nznqHZs6ZfWwDem1xM1sqXwtXkb8rL4SuOLEoLXPPXWfD01Dg9dPsrTQbngQ+EZ+LDyIfiy/FHyIfFZbbTslWKOOqxx/uWBPSfp07FahGlqlNfWGqL9HNfBO+CAfwdO55WS8g4MFML834sfJVA9e7vwsg50aGohncdmRojV9XeL+jArRNmZxVSJ4Acj3NHqARdyeFJqC2KJiCfKE9zsfxnNYTl5TcCtmNMcwY/ZXf+3wdzzVza2vj4iCaq3d1R/bvwVSH6IPjNIUHx0FSNZA7WquDqOVb35+eiO8h7Oe+vRfp0a3yGtFMDuiAIg2R20YaVwJ3Hj+4kehO/J/I7VJ/jHtpvBP6mrHnR4EzdyQ0xI8HhM8jUiChxVpDK3iVuadzx43yRdI4E2d0gNtX74TCs419AR8YEST/cHPBAAAAAElFTkSuQmCC">
</td>
<td style="text-align:left;">
<img src="https://ready4-dev.github.io/mychoice/logo.png" width="51.2" height="51.2">
</td>
<td style="text-align:left;">
Model Youth Choice Behaviours
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/mychoice/authors.html" style="     ">Citation</a> , <a href="https://ready4-dev.github.io/mychoice/index.html" style="     ">Website</a> , <a href="https://github.com/ready4-dev/mychoice/releases/download/Documentation_0.0/mychoice_Developer.pdf" style="     ">Citation</a>
</td>
<td style="text-align:left;">
<a href="https://github.com/ready4-dev/mychoice/" style="     ">Dev</a> , <a href="https://doi.org/10.5281/zenodo.7213799" style="     ">Archive</a>
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<img src="https://img.shields.io/badge/ready4-modelling-indigo?style=flat&amp;labelColor=black&amp;logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAIXRFWHRDcmVhdGlvbiBUaW1lADIwMjI6MDM6MDcgMTY6MTM6NTPZeG5UAAABa0lEQVQ4T4WT607CQBCFpyUi3qIR0eAfNfCi/vENfEgENIAIlcJ6vr1oLaZOerJzdst0zpklc49nznqHZs6ZfWwDem1xM1sqXwtXkb8rL4SuOLEoLXPPXWfD01Dg9dPsrTQbngQ+EZ+LDyIfiy/FHyIfFZbbTslWKOOqxx/uWBPSfp07FahGlqlNfWGqL9HNfBO+CAfwdO55WS8g4MFML834sfJVA9e7vwsg50aGohncdmRojV9XeL+jArRNmZxVSJ4Acj3NHqARdyeFJqC2KJiCfKE9zsfxnNYTl5TcCtmNMcwY/ZXf+3wdzzVza2vj4iCaq3d1R/bvwVSH6IPjNIUHx0FSNZA7WquDqOVb35+eiO8h7Oe+vRfp0a3yGtFMDuiAIg2R20YaVwJ3Hj+4kehO/J/I7VJ/jHtpvBP6mrHnR4EzdyQ0xI8HhM8jUiChxVpDK3iVuadzx43yRdI4E2d0gNtX74TCs419AR8YEST/cHPBAAAAAElFTkSuQmCC">
</td>
<td style="text-align:left;">
<img src="https://ready4-dev.github.io/TTU/logo.png" width="51.2" height="51.2">
</td>
<td style="text-align:left;">
Implement Transfer to Utility Mapping Algorithms
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/TTU/authors.html" style="     ">Citation</a> , <a href="https://ready4-dev.github.io/TTU/index.html" style="     ">Website</a> , <a href="https://github.com/ready4-dev/TTU/releases/download/Documentation_0.0/TTU_User.pdf" style="     ">Manual - Short (PDF)</a> , <a href="https://github.com/ready4-dev/TTU/releases/download/Documentation_0.0/TTU_Developer.pdf" style="     ">Manual - Full (PDF)</a>
</td>
<td style="text-align:left;">
<a href="https://github.com/ready4-dev/TTU/" style="     ">Dev</a> , <a href="https://doi.org/10.5281/zenodo.5646593" style="     ">Archive</a>
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/TTU/articles/V_01.html" style="     ">16</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<img src="https://img.shields.io/badge/ready4-modelling-indigo?style=flat&amp;labelColor=black&amp;logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAIXRFWHRDcmVhdGlvbiBUaW1lADIwMjI6MDM6MDcgMTY6MTM6NTPZeG5UAAABa0lEQVQ4T4WT607CQBCFpyUi3qIR0eAfNfCi/vENfEgENIAIlcJ6vr1oLaZOerJzdst0zpklc49nznqHZs6ZfWwDem1xM1sqXwtXkb8rL4SuOLEoLXPPXWfD01Dg9dPsrTQbngQ+EZ+LDyIfiy/FHyIfFZbbTslWKOOqxx/uWBPSfp07FahGlqlNfWGqL9HNfBO+CAfwdO55WS8g4MFML834sfJVA9e7vwsg50aGohncdmRojV9XeL+jArRNmZxVSJ4Acj3NHqARdyeFJqC2KJiCfKE9zsfxnNYTl5TcCtmNMcwY/ZXf+3wdzzVza2vj4iCaq3d1R/bvwVSH6IPjNIUHx0FSNZA7WquDqOVb35+eiO8h7Oe+vRfp0a3yGtFMDuiAIg2R20YaVwJ3Hj+4kehO/J/I7VJ/jHtpvBP6mrHnR4EzdyQ0xI8HhM8jUiChxVpDK3iVuadzx43yRdI4E2d0gNtX74TCs419AR8YEST/cHPBAAAAAElFTkSuQmCC">
</td>
<td style="text-align:left;">
<img src="https://ready4-dev.github.io/heterodox/logo.png" width="51.2" height="51.2">
</td>
<td style="text-align:left;">
Explore and Characterise Heterogeneity in Quality of Life Data
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/heterodox/authors.html" style="     ">Citation</a> , <a href="https://ready4-dev.github.io/heterodox/index.html" style="     ">Website</a> , <a href="https://github.com/ready4-dev/heterodox/releases/download/Documentation_0.0/heterodox_User.pdf" style="     ">Manual - Short (PDF)</a> , <a href="https://github.com/ready4-dev/heterodox/releases/download/Documentation_0.0/heterodox_Developer.pdf" style="     ">Manual - Full (PDF)</a>
</td>
<td style="text-align:left;">
<a href="https://github.com/ready4-dev/heterodox/" style="     ">Dev</a> , <a href="https://doi.org/10.5281/zenodo.5751193" style="     ">Archive</a>
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<img src="https://img.shields.io/badge/ready4-modelling-indigo?style=flat&amp;labelColor=black&amp;logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAIXRFWHRDcmVhdGlvbiBUaW1lADIwMjI6MDM6MDcgMTY6MTM6NTPZeG5UAAABa0lEQVQ4T4WT607CQBCFpyUi3qIR0eAfNfCi/vENfEgENIAIlcJ6vr1oLaZOerJzdst0zpklc49nznqHZs6ZfWwDem1xM1sqXwtXkb8rL4SuOLEoLXPPXWfD01Dg9dPsrTQbngQ+EZ+LDyIfiy/FHyIfFZbbTslWKOOqxx/uWBPSfp07FahGlqlNfWGqL9HNfBO+CAfwdO55WS8g4MFML834sfJVA9e7vwsg50aGohncdmRojV9XeL+jArRNmZxVSJ4Acj3NHqARdyeFJqC2KJiCfKE9zsfxnNYTl5TcCtmNMcwY/ZXf+3wdzzVza2vj4iCaq3d1R/bvwVSH6IPjNIUHx0FSNZA7WquDqOVb35+eiO8h7Oe+vRfp0a3yGtFMDuiAIg2R20YaVwJ3Hj+4kehO/J/I7VJ/jHtpvBP6mrHnR4EzdyQ0xI8HhM8jUiChxVpDK3iVuadzx43yRdI4E2d0gNtX74TCs419AR8YEST/cHPBAAAAAElFTkSuQmCC">
</td>
<td style="text-align:left;">
<img src="https://ready4-dev.github.io/specific/logo.png" width="51.2" height="51.2">
</td>
<td style="text-align:left;">
Specify Models to Solve Inverse Problems
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/specific/authors.html" style="     ">Citation</a> , <a href="https://ready4-dev.github.io/specific/index.html" style="     ">Website</a> , <a href="https://github.com/ready4-dev/specific/releases/download/Documentation_0.0/specific_User.pdf" style="     ">Manual - Short (PDF)</a> , <a href="https://github.com/ready4-dev/specific/releases/download/Documentation_0.0/specific_Developer.pdf" style="     ">Manual - Full (PDF)</a>
</td>
<td style="text-align:left;">
<a href="https://github.com/ready4-dev/specific/" style="     ">Dev</a> , <a href="https://doi.org/10.5281/zenodo.5768689" style="     ">Archive</a>
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/specific/articles/V_01.html" style="     ">17</a>
</td>
</tr>
<tr>
<td style="text-align:left;">
<img src="https://img.shields.io/badge/ready4-prediction-forestgreen?style=flat&amp;labelColor=black&amp;logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAIXRFWHRDcmVhdGlvbiBUaW1lADIwMjI6MDM6MDcgMTY6MTM6NTPZeG5UAAABa0lEQVQ4T4WT607CQBCFpyUi3qIR0eAfNfCi/vENfEgENIAIlcJ6vr1oLaZOerJzdst0zpklc49nznqHZs6ZfWwDem1xM1sqXwtXkb8rL4SuOLEoLXPPXWfD01Dg9dPsrTQbngQ+EZ+LDyIfiy/FHyIfFZbbTslWKOOqxx/uWBPSfp07FahGlqlNfWGqL9HNfBO+CAfwdO55WS8g4MFML834sfJVA9e7vwsg50aGohncdmRojV9XeL+jArRNmZxVSJ4Acj3NHqARdyeFJqC2KJiCfKE9zsfxnNYTl5TcCtmNMcwY/ZXf+3wdzzVza2vj4iCaq3d1R/bvwVSH6IPjNIUHx0FSNZA7WquDqOVb35+eiO8h7Oe+vRfp0a3yGtFMDuiAIg2R20YaVwJ3Hj+4kehO/J/I7VJ/jHtpvBP6mrHnR4EzdyQ0xI8HhM8jUiChxVpDK3iVuadzx43yRdI4E2d0gNtX74TCs419AR8YEST/cHPBAAAAAElFTkSuQmCC">
</td>
<td style="text-align:left;">
<img src="https://ready4-dev.github.io/youthu/logo.png" width="51.2" height="51.2">
</td>
<td style="text-align:left;">
Transform Youth Outcomes to Health Utility Predictions
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/youthu/authors.html" style="     ">Citation</a> , <a href="https://ready4-dev.github.io/youthu/index.html" style="     ">Website</a> , <a href="https://github.com/ready4-dev/youthu/releases/download/Documentation_0.0/youthu_User.pdf" style="     ">Manual - Short (PDF)</a> , <a href="https://github.com/ready4-dev/youthu/releases/download/Documentation_0.0/youthu_Developer.pdf" style="     ">Manual - Full (PDF)</a>
</td>
<td style="text-align:left;">
<a href="https://github.com/ready4-dev/youthu/" style="     ">Dev</a> , <a href="https://doi.org/10.5281/zenodo.5646668" style="     ">Archive</a>
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/youthu/articles/V_01.html" style="     ">18</a>
</td>
</tr>
</tbody>
</table>

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://ready4-dev.github.io/ready4/reference/print_packages.html'>print_packages</a></span><span class='o'>(</span><span class='nv'>libraries_tb</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span> <span class='nf'>dplyr</span><span class='nf'>::</span><span class='nf'><a href='https://dplyr.tidyverse.org/reference/filter.html'>filter</a></span><span class='o'>(</span><span class='nv'>Section</span> <span class='o'>==</span> <span class='s'>"Places"</span><span class='o'>)</span><span class='o'>)</span></span>
</code></pre>
<table class="table table-hover table-condensed" style="color: black; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Type
</th>
<th style="text-align:left;">
Package
</th>
<th style="text-align:left;">
Purpose
</th>
<th style="text-align:left;">
Documentation
</th>
<th style="text-align:left;">
Code
</th>
<th style="text-align:left;">
Examples
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
<img src="https://img.shields.io/badge/ready4-modelling-indigo?style=flat&amp;labelColor=black&amp;logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAIXRFWHRDcmVhdGlvbiBUaW1lADIwMjI6MDM6MDcgMTY6MTM6NTPZeG5UAAABa0lEQVQ4T4WT607CQBCFpyUi3qIR0eAfNfCi/vENfEgENIAIlcJ6vr1oLaZOerJzdst0zpklc49nznqHZs6ZfWwDem1xM1sqXwtXkb8rL4SuOLEoLXPPXWfD01Dg9dPsrTQbngQ+EZ+LDyIfiy/FHyIfFZbbTslWKOOqxx/uWBPSfp07FahGlqlNfWGqL9HNfBO+CAfwdO55WS8g4MFML834sfJVA9e7vwsg50aGohncdmRojV9XeL+jArRNmZxVSJ4Acj3NHqARdyeFJqC2KJiCfKE9zsfxnNYTl5TcCtmNMcwY/ZXf+3wdzzVza2vj4iCaq3d1R/bvwVSH6IPjNIUHx0FSNZA7WquDqOVb35+eiO8h7Oe+vRfp0a3yGtFMDuiAIg2R20YaVwJ3Hj+4kehO/J/I7VJ/jHtpvBP6mrHnR4EzdyQ0xI8HhM8jUiChxVpDK3iVuadzx43yRdI4E2d0gNtX74TCs419AR8YEST/cHPBAAAAAElFTkSuQmCC">
</td>
<td style="text-align:left;">
<img src="https://ready4-dev.github.io/aus/logo.png" width="51.2" height="51.2">
</td>
<td style="text-align:left;">
Model Australian Spatial Data
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/aus/authors.html" style="     ">Citation</a> , <a href="https://ready4-dev.github.io/aus/index.html" style="     ">Website</a> , <a href="https://github.com/ready4-dev/aus/releases/download/Documentation_0.0/aus_User.pdf" style="     ">Manual - Short (PDF)</a> , <a href="https://github.com/ready4-dev/aus/releases/download/Documentation_0.0/aus_Developer.pdf" style="     ">Manual - Full (PDF)</a>
</td>
<td style="text-align:left;">
<a href="https://github.com/ready4-dev/aus/" style="     ">Dev</a> , <a href="https://doi.org/10.5281/zenodo.7687126" style="     ">Archive</a>
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<img src="https://img.shields.io/badge/ready4-modelling-indigo?style=flat&amp;labelColor=black&amp;logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAIXRFWHRDcmVhdGlvbiBUaW1lADIwMjI6MDM6MDcgMTY6MTM6NTPZeG5UAAABa0lEQVQ4T4WT607CQBCFpyUi3qIR0eAfNfCi/vENfEgENIAIlcJ6vr1oLaZOerJzdst0zpklc49nznqHZs6ZfWwDem1xM1sqXwtXkb8rL4SuOLEoLXPPXWfD01Dg9dPsrTQbngQ+EZ+LDyIfiy/FHyIfFZbbTslWKOOqxx/uWBPSfp07FahGlqlNfWGqL9HNfBO+CAfwdO55WS8g4MFML834sfJVA9e7vwsg50aGohncdmRojV9XeL+jArRNmZxVSJ4Acj3NHqARdyeFJqC2KJiCfKE9zsfxnNYTl5TcCtmNMcwY/ZXf+3wdzzVza2vj4iCaq3d1R/bvwVSH6IPjNIUHx0FSNZA7WquDqOVb35+eiO8h7Oe+vRfp0a3yGtFMDuiAIg2R20YaVwJ3Hj+4kehO/J/I7VJ/jHtpvBP6mrHnR4EzdyQ0xI8HhM8jUiChxVpDK3iVuadzx43yRdI4E2d0gNtX74TCs419AR8YEST/cHPBAAAAAElFTkSuQmCC">
</td>
<td style="text-align:left;">
<img src="https://ready4-dev.github.io/vicinity/logo.png" width="51.2" height="51.2">
</td>
<td style="text-align:left;">
Model Spatial Features of Health Systems
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/vicinity/authors.html" style="     ">Citation</a> , <a href="https://ready4-dev.github.io/vicinity/index.html" style="     ">Website</a> , <a href="https://github.com/ready4-dev/vicinity/releases/download/Documentation_0.0/vicinity_User.pdf" style="     ">Manual - Short (PDF)</a> , <a href="https://github.com/ready4-dev/vicinity/releases/download/Documentation_0.0/vicinity_Developer.pdf" style="     ">Manual - Full (PDF)</a>
</td>
<td style="text-align:left;">
<a href="https://github.com/ready4-dev/vicinity/" style="     ">Dev</a> , <a href="https://doi.org/10.5281/zenodo.7623630" style="     ">Archive</a>
</td>
<td style="text-align:left;">
</td>
</tr>
</tbody>
</table>

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://ready4-dev.github.io/ready4/reference/print_packages.html'>print_packages</a></span><span class='o'>(</span><span class='nv'>libraries_tb</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span> <span class='nf'>dplyr</span><span class='nf'>::</span><span class='nf'><a href='https://dplyr.tidyverse.org/reference/filter.html'>filter</a></span><span class='o'>(</span><span class='nv'>Section</span> <span class='o'>==</span> <span class='s'>"Programs"</span><span class='o'>)</span><span class='o'>)</span></span>
</code></pre>
<table class="table table-hover table-condensed" style="color: black; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Type
</th>
<th style="text-align:left;">
Package
</th>
<th style="text-align:left;">
Purpose
</th>
<th style="text-align:left;">
Documentation
</th>
<th style="text-align:left;">
Code
</th>
<th style="text-align:left;">
Examples
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
<img src="https://img.shields.io/badge/ready4-modelling-indigo?style=flat&amp;labelColor=black&amp;logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAIXRFWHRDcmVhdGlvbiBUaW1lADIwMjI6MDM6MDcgMTY6MTM6NTPZeG5UAAABa0lEQVQ4T4WT607CQBCFpyUi3qIR0eAfNfCi/vENfEgENIAIlcJ6vr1oLaZOerJzdst0zpklc49nznqHZs6ZfWwDem1xM1sqXwtXkb8rL4SuOLEoLXPPXWfD01Dg9dPsrTQbngQ+EZ+LDyIfiy/FHyIfFZbbTslWKOOqxx/uWBPSfp07FahGlqlNfWGqL9HNfBO+CAfwdO55WS8g4MFML834sfJVA9e7vwsg50aGohncdmRojV9XeL+jArRNmZxVSJ4Acj3NHqARdyeFJqC2KJiCfKE9zsfxnNYTl5TcCtmNMcwY/ZXf+3wdzzVza2vj4iCaq3d1R/bvwVSH6IPjNIUHx0FSNZA7WquDqOVb35+eiO8h7Oe+vRfp0a3yGtFMDuiAIg2R20YaVwJ3Hj+4kehO/J/I7VJ/jHtpvBP6mrHnR4EzdyQ0xI8HhM8jUiChxVpDK3iVuadzx43yRdI4E2d0gNtX74TCs419AR8YEST/cHPBAAAAAElFTkSuQmCC">
</td>
<td style="text-align:left;">
<img src="https://ready4-dev.github.io/bimp/logo.png" width="51.2" height="51.2">
</td>
<td style="text-align:left;">
Undertake Health Economic Budget Impact Analysis.
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/bimp/authors.html" style="     ">Citation</a> , <a href="https://ready4-dev.github.io/bimp/index.html" style="     ">Website</a> , <a href="https://github.com/ready4-dev/bimp/releases/download/Documentation_0.0/bimp_User.pdf" style="     ">Manual - Short (PDF)</a> , <a href="https://github.com/ready4-dev/bimp/releases/download/Documentation_0.0/bimp_Developer.pdf" style="     ">Manual - Full (PDF)</a>
</td>
<td style="text-align:left;">
<a href="https://github.com/ready4-dev/bimp/" style="     ">Dev</a> , <a href="https://doi.org/10.5281/zenodo.5889462" style="     ">Archive</a>
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
<img src="https://img.shields.io/badge/ready4-modelling-indigo?style=flat&amp;labelColor=black&amp;logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAIXRFWHRDcmVhdGlvbiBUaW1lADIwMjI6MDM6MDcgMTY6MTM6NTPZeG5UAAABa0lEQVQ4T4WT607CQBCFpyUi3qIR0eAfNfCi/vENfEgENIAIlcJ6vr1oLaZOerJzdst0zpklc49nznqHZs6ZfWwDem1xM1sqXwtXkb8rL4SuOLEoLXPPXWfD01Dg9dPsrTQbngQ+EZ+LDyIfiy/FHyIfFZbbTslWKOOqxx/uWBPSfp07FahGlqlNfWGqL9HNfBO+CAfwdO55WS8g4MFML834sfJVA9e7vwsg50aGohncdmRojV9XeL+jArRNmZxVSJ4Acj3NHqARdyeFJqC2KJiCfKE9zsfxnNYTl5TcCtmNMcwY/ZXf+3wdzzVza2vj4iCaq3d1R/bvwVSH6IPjNIUHx0FSNZA7WquDqOVb35+eiO8h7Oe+vRfp0a3yGtFMDuiAIg2R20YaVwJ3Hj+4kehO/J/I7VJ/jHtpvBP6mrHnR4EzdyQ0xI8HhM8jUiChxVpDK3iVuadzx43yRdI4E2d0gNtX74TCs419AR8YEST/cHPBAAAAAElFTkSuQmCC">
</td>
<td style="text-align:left;">
<img src="https://ready4-dev.github.io/costly/logo.png" width="51.2" height="51.2">
</td>
<td style="text-align:left;">
Develop, Use and Share Unit Cost Datasets for Health Economic
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/costly/authors.html" style="     ">Citation</a> , <a href="https://ready4-dev.github.io/costly/index.html" style="     ">Website</a> , <a href="https://github.com/ready4-dev/costly/releases/download/Documentation_0.0/costly_User.pdf" style="     ">Manual - Short (PDF)</a> , <a href="https://github.com/ready4-dev/costly/releases/download/Documentation_0.0/costly_Developer.pdf" style="     ">Manual - Full (PDF)</a>
</td>
<td style="text-align:left;">
<a href="https://github.com/ready4-dev/costly/" style="     ">Dev</a> , <a href="https://github.com/ready4-dev/costly/" style="     ">Archive</a>
</td>
<td style="text-align:left;">
<a href="https://ready4-dev.github.io/costly/articles/V_01.html" style="     ">19</a>, <a href="https://ready4-dev.github.io/costly/articles/V_02.html" style="     ">20</a>
</td>
</tr>
</tbody>
</table>

</div>

## Related content

Details of how to search for details on individual modules is described in [another article](https://ready4-dev.github.io/ready4/articles/V_05.html).

