---
title: "QTL mapping: beta-binomial top-hit diagnostic"
author: "XSun"
date: "2026-08-01"
output:
  workflowr::wflow_html:
    code_folding: hide
    toc: true
---

<p>
<button type="button" class="btn btn-default btn-workflowr btn-workflowr-report"
  data-toggle="collapse" data-target="#workflowr-report">
  <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
  workflowr
  <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
</button>
</p>

<div id="workflowr-report" class="collapse">
<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#summary">Summary</a></li>
  <li><a data-toggle="tab" href="#checks">
  Checks <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
  </a></li>
  <li><a data-toggle="tab" href="#versions">Past versions</a></li>
</ul>

<div class="tab-content">
<div id="summary" class="tab-pane fade in active">
  <p><strong>Last updated:</strong> 2026-08-01</p>
  <p><strong>Checks:</strong>
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  6
  <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
  1
  </p>
  <p><strong>Knit directory:</strong>
  <code>pumseq/</code>
  <span class="glyphicon glyphicon-question-sign" aria-hidden="true"
  title="This is the local directory in which the code in this file was executed.">
  </span>
  </p>
  <p>
  This reproducible <a href="https://rmarkdown.rstudio.com">R Markdown</a>
  analysis was created with <a
  href="https://github.com/workflowr/workflowr">workflowr</a> (version
  1.7.0). The <em>Checks</em> tab describes the
  reproducibility checks that were applied when the results were created.
  The <em>Past versions</em> tab lists the development history.
  </p>
<hr>
</div>
<div id="checks" class="tab-pane fade">
  <div class="panel-group" id="workflowr-checks">
  <div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongRMarkdownfilestronguncommittedchanges">
  <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
  <strong>R Markdown file:</strong> uncommitted changes
</a>
</p>
</div>
<div id="strongRMarkdownfilestronguncommittedchanges" class="panel-collapse collapse">
<div class="panel-body">
  The R Markdown file has unstaged changes. 
To know which version of the R Markdown file created these
results, you'll want to first commit it to the Git repo. If
you're still working on the analysis, you can ignore this
warning. When you're finished, you can run
<code>wflow_publish</code> to commit the R Markdown file and
build the HTML.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongEnvironmentstrongempty">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Environment:</strong> empty
</a>
</p>
</div>
<div id="strongEnvironmentstrongempty" class="panel-collapse collapse">
<div class="panel-body">
  
Great job! The global environment was empty. Objects defined in the global
environment can affect the analysis in your R Markdown file in unknown ways.
For reproduciblity it's best to always run the code in an empty environment.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongSeedstrongcodesetseed20260202code">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Seed:</strong> <code>set.seed(20260202)</code>
</a>
</p>
</div>
<div id="strongSeedstrongcodesetseed20260202code" class="panel-collapse collapse">
<div class="panel-body">
  
The command <code>set.seed(20260202)</code> was run prior to running the code in the R Markdown file.
Setting a seed ensures that any results that rely on randomness, e.g.
subsampling or permutations, are reproducible.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongSessioninformationstrongrecorded">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Session information:</strong> recorded
</a>
</p>
</div>
<div id="strongSessioninformationstrongrecorded" class="panel-collapse collapse">
<div class="panel-body">
  
Great job! Recording the operating system, R version, and package versions is
critical for reproducibility.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongCachestrongnone">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Cache:</strong> none
</a>
</p>
</div>
<div id="strongCachestrongnone" class="panel-collapse collapse">
<div class="panel-body">
  
Nice! There were no cached chunks for this analysis, so you can be confident
that you successfully produced the results during this run.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongFilepathsstrongrelative">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>File paths:</strong> relative
</a>
</p>
</div>
<div id="strongFilepathsstrongrelative" class="panel-collapse collapse">
<div class="panel-body">
  
Great job! Using relative paths to the files within your workflowr project
makes it easier to run your code on other machines.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongRepositoryversionstrongahrefhttpsgithubcomxsun1229pumseqtree686a4a8b3d472bf4a5f78c864f39eb71ea99a217targetblank686a4a8a">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Repository version:</strong> <a href="https://github.com/xsun1229/pumseq/tree/686a4a8b3d472bf4a5f78c864f39eb71ea99a217" target="_blank">686a4a8</a>
</a>
</p>
</div>
<div id="strongRepositoryversionstrongahrefhttpsgithubcomxsun1229pumseqtree686a4a8b3d472bf4a5f78c864f39eb71ea99a217targetblank686a4a8a" class="panel-collapse collapse">
<div class="panel-body">
  
<p>
Great! You are using Git for version control. Tracking code development and
connecting the code version to the results is critical for reproducibility.
</p>

<p>
The results in this page were generated with repository version <a href="https://github.com/xsun1229/pumseq/tree/686a4a8b3d472bf4a5f78c864f39eb71ea99a217" target="_blank">686a4a8</a>.
See the <em>Past versions</em> tab to see a history of the changes made to the
R Markdown and HTML files.
</p>

<p>
Note that you need to be careful to ensure that all relevant files for the
analysis have been committed to Git prior to generating the results (you can
use <code>wflow_publish</code> or <code>wflow_git_commit</code>). workflowr only
checks the R Markdown file, but you know if there are other scripts or data
files that it depends on. Below is the status of the Git repository when the
results were generated:
</p>

<pre><code>
Ignored files:
	Ignored:    analysis/qtl_mapping_summary_cache/

Unstaged changes:
	Modified:   analysis/qtl_mapping_betabinomial_diagnostic.Rmd

</code></pre>

<p>
Note that any generated files, e.g. HTML, png, CSS, etc., are not included in
this status report because it is ok for generated content to have uncommitted
changes.
</p>

</div>
</div>
</div>
</div>
<hr>
</div>
<div id="versions" class="tab-pane fade">
  
<p>
These are the previous versions of the repository in which changes were made
to the R Markdown (<code>analysis/qtl_mapping_betabinomial_diagnostic.Rmd</code>) and HTML (<code>docs/qtl_mapping_betabinomial_diagnostic.html</code>)
files. If you've configured a remote Git repository (see
<code>?wflow_git_remote</code>), click on the hyperlinks in the table below to
view the files as they were in that past version.
</p>
<div class="table-responsive">
<table class="table table-condensed table-hover">
<thead>
<tr>
<th>File</th>
<th>Version</th>
<th>Author</th>
<th>Date</th>
<th>Message</th>
</tr>
</thead>
<tbody>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/xsun1229/pumseq/686a4a8b3d472bf4a5f78c864f39eb71ea99a217/docs/qtl_mapping_betabinomial_diagnostic.html" target="_blank">686a4a8</a></td>
<td>XSun</td>
<td>2026-07-31</td>
<td>update</td>
</tr>
<tr>
<td>Rmd</td>
<td><a href="https://github.com/xsun1229/pumseq/blob/4fa878a14a65f49627dd80cd86e3539fbfee3cff/analysis/qtl_mapping_betabinomial_diagnostic.Rmd" target="_blank">4fa878a</a></td>
<td>XSun</td>
<td>2026-07-31</td>
<td>update</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/xsun1229/pumseq/4fa878a14a65f49627dd80cd86e3539fbfee3cff/docs/qtl_mapping_betabinomial_diagnostic.html" target="_blank">4fa878a</a></td>
<td>XSun</td>
<td>2026-07-31</td>
<td>update</td>
</tr>
<tr>
<td>Rmd</td>
<td><a href="https://github.com/xsun1229/pumseq/blob/caa960227425ca1a770f825570fe56446d51037f/analysis/qtl_mapping_betabinomial_diagnostic.Rmd" target="_blank">caa9602</a></td>
<td>XSun</td>
<td>2026-07-31</td>
<td>update</td>
</tr>
<tr>
<td>html</td>
<td><a href="https://rawcdn.githack.com/xsun1229/pumseq/caa960227425ca1a770f825570fe56446d51037f/docs/qtl_mapping_betabinomial_diagnostic.html" target="_blank">caa9602</a></td>
<td>XSun</td>
<td>2026-07-31</td>
<td>update</td>
</tr>
</tbody>
</table>
</div>

<hr>
</div>
</div>
</div>







```r
suppressMessages({ library(data.table); library(ggplot2) })

knitr::opts_chunk$set(
  echo = TRUE, warning = FALSE, message = FALSE,
  fig.align = "center", fig.width = 12, fig.height = 14
)

PROJECT_DIR <- "/project/xinhe/xsun/pumseq"
BASE   <- file.path(PROJECT_DIR, "pumseq_processed/psi_qtl")
BBR    <- file.path(BASE, "qtl_betabinomial/lrt_results_merged")
CALIB  <- file.path(BASE, "qtl_betabinomial/lrt_calibration")
COUNTS <- file.path(BASE, "phenotype/fold5_union/counts")
PSAM   <- file.path(BASE, "genotype/plink2/pumseq_genotype.hg38.chr1-22.psam")
TRAW   <- file.path(BASE, "genotype/qtl_binomial/genotype_common.traw")

WINDOW_KB <- 5
NPCS      <- 3
N_TOP     <- 20
MIN_GRP   <- 5   # flag threshold for "small genotype group" in the pattern summary below
```


A number of sites reach implausibly small p-values
(`-log10(p) > 100`) given the small sample size (50 cell lines). 

We pick a few top hits and plot %pU by genotype directly to build intuition for what's driving them.

This page does that for the **beta-binomial LRT model at its best-performing
config (5kb window, 3 PCs)** — the top 20 sites by
nominal (pre-permutation-correction) LRT p-value.

Two candidate artifacts motivated this check:

1. **Small genotype-group separation** — a genotype class with very few cell
   lines can, by chance, produce a near-perfect fit and an inflated LRT
   statistic, independent of any real effect.
2. **SNP-at-site overlap** — if the tested cis-SNP sits at (or right next to)
   the modification site's own genomic position, an individual's true
   genotype there can directly bias which base gets called at that position,
   masquerading as a huge modification-QTL effect. This is the same
   phenomenon as the well-known SNP-at-CpG confound in bisulfite-based mQTL
   studies.

# 1. SNP-at-site rate among significant hits

For each site, `lead_pos` is the position of the most associated cis-SNP.
When `lead_pos == pos` (the site's own genomic position), the "QTL" SNP is
sitting exactly on top of the profiled base.


```r
d <- fread(file.path(BBR, sprintf("scan_lrt_w%dkb_pc%d.txt.gz", WINDOW_KB, NPCS)))
d[, snp_at_site := lead_pos == pos]

sig <- d[fdr < 0.05]
tbl <- data.table(
  group = c("All tested sites", "Significant (FDR<0.05)"),
  n              = c(nrow(d), nrow(sig)),
  n_snp_at_site  = c(sum(d$snp_at_site, na.rm = TRUE), sum(sig$snp_at_site, na.rm = TRUE))
)
tbl[, pct_snp_at_site := round(100 * n_snp_at_site / n, 1)]
knitr::kable(tbl, caption = sprintf(
  "SNP-at-site rate: baseline vs. significant hits (beta-binomial, %dkb, %d PCs)",
  WINDOW_KB, NPCS))
```



Table: SNP-at-site rate: baseline vs. significant hits (beta-binomial, 5kb, 3 PCs)

|group                  |     n| n_snp_at_site| pct_snp_at_site|
|:----------------------|-----:|-------------:|---------------:|
|All tested sites       | 11112|           531|             4.8|
|Significant (FDR<0.05) |  1360|           520|            38.2|

The SNP-at-site rate is **38.2%** among significant hits vs.
a **4.8%** baseline among all tested sites — an
**8x enrichment**.
This alone means a large share of current significant calls at this config are
sites where the tested variant overlaps the profiled base itself, not a
genuine cis-regulatory effect.

# 2. Top 20 QTLs: %pU by genotype at the lead cis-SNP


```r
C <- fread(file.path(COUNTS, "C_matrix.txt.gz")); N <- fread(file.path(COUNTS, "N_matrix.txt.gz"))
psam <- fread(PSAM); go <- psam[[2]]
Cm <- as.matrix(C[, ..go]); Nm <- as.matrix(N[, ..go])
sites <- C[, .(ref = as.character(ref), pos = as.integer(pos))]

traw <- fread(TRAW); samp <- paste0(go, "_", go)
Gall <- t(as.matrix(traw[, ..samp])); gid <- traw$SNP
```


```r
top20 <- d[order(nominal_min_p)][1:N_TOP]
top20[, rank := .I]

rows <- rbindlist(lapply(seq_len(nrow(top20)), function(i) {
  s <- top20[i]
  si <- which(sites$ref == as.character(s$ref) & sites$pos == s$pos)
  gi <- which(gid == s$lead_snp)
  y <- Cm[si, ]; n <- Nm[si, ]; g <- Gall[, gi]
  pi_v <- y / n
  grp_tab <- table(g)
  min_grp <- min(grp_tab)
  flags <- paste0(
    if (s$lead_pos == s$pos) "\n[SNP-at-site]" else "",
    if (min_grp < MIN_GRP) sprintf("\n[small group n=%d]", min_grp) else ""
  )
  data.table(
    rank = s$rank,
    site_lab = sprintf("#%d chr%s:%.0f\n-log10(p)=%.0f%s",
                        s$rank, s$ref, s$pos, -log10(max(s$nominal_min_p, 1e-300)), flags),
    g = factor(g, levels = 0:2), pi = pi_v, n = n,
    snp_at_site = s$lead_pos == s$pos, min_grp = min_grp
  )
}))
rows[, site_lab := factor(site_lab, levels = unique(site_lab[order(rank)]))]

blue3 <- c(`0` = "#86b6ef", `1` = "#2a78d6", `2` = "#104281")

ggplot(rows, aes(x = g, y = pi, color = g)) +
  geom_boxplot(aes(group = g), outlier.shape = NA, width = 0.4, color = "grey60", fill = NA) +
  geom_jitter(aes(size = n), width = 0.12, alpha = 0.75) +
  scale_color_manual(values = blue3, name = "genotype\n(alt-allele copies)") +
  scale_size_continuous(name = "depth (n)", range = c(0.6, 3.5)) +
  facet_wrap(~ site_lab, scales = "free_x", ncol = 4) +
  labs(x = "genotype (copies of alt allele) at the lead cis-SNP", y = "%pU (y/n per cell line)",
       title = sprintf("Top %d beta-binomial QTLs by nominal LRT p-value (%dkb, %d PCs)",
                       N_TOP, WINDOW_KB, NPCS),
       subtitle = "Ranked by nominal (pre-permutation) p-value, most extreme first. '[SNP-at-site]' = lead SNP sits exactly at the profiled base; '[small group n=X]' = smallest genotype class has X < 5 cell lines.") +
  theme_bw(base_size = 11) +
  theme(legend.position = "bottom", strip.text = element_text(size = 7.5))
```

<img src="figure/qtl_mapping_betabinomial_diagnostic.Rmd/top20-select-1.png" width="1152" style="display: block; margin: auto;" />

  <p>
  <button type="button" class="btn btn-default btn-xs btn-workflowr btn-workflowr-fig"
  data-toggle="collapse" data-target="#fig-top20-select-1">
  Past versions of top20-select-1.png
  </button>
  </p>

  <div id="fig-top20-select-1" class="collapse">
  <div class="table-responsive">
  <table class="table table-condensed table-hover">
  <thead>
  <tr>
  <th>Version</th>
  <th>Author</th>
  <th>Date</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td><a href="https://github.com/xsun1229/pumseq/blob/4fa878a14a65f49627dd80cd86e3539fbfee3cff/docs/figure/qtl_mapping_betabinomial_diagnostic.Rmd/top20-select-1.png" target="_blank">4fa878a</a></td>
  <td>XSun</td>
  <td>2026-07-31</td>
  </tr>
  <tr>
  <td><a href="https://github.com/xsun1229/pumseq/blob/caa960227425ca1a770f825570fe56446d51037f/docs/figure/qtl_mapping_betabinomial_diagnostic.Rmd/top20-select-1.png" target="_blank">caa9602</a></td>
  <td>XSun</td>
  <td>2026-07-31</td>
  </tr>
  </tbody>
  </table>
  </div>
  </div>
  

# 3. Pattern summary across these 20 sites


```r
summ <- unique(rows[, .(rank, snp_at_site, min_grp)])
summ[, category := fifelse(snp_at_site, "SNP at/on the modification site",
                     fifelse(min_grp < MIN_GRP, sprintf("Small genotype group (min class n<%d)", MIN_GRP),
                             "Neither flag (plausible)"))]
knitr::kable(summ[order(rank)], caption = "Per-site flags among the top 20")
```



Table: Per-site flags among the top 20

| rank|snp_at_site | min_grp|category                             |
|----:|:-----------|-------:|:------------------------------------|
|    1|FALSE       |       5|Neither flag (plausible)             |
|    2|TRUE        |       8|SNP at/on the modification site      |
|    3|TRUE        |       7|SNP at/on the modification site      |
|    4|FALSE       |      10|Neither flag (plausible)             |
|    5|TRUE        |       6|SNP at/on the modification site      |
|    6|FALSE       |       8|Neither flag (plausible)             |
|    7|TRUE        |      12|SNP at/on the modification site      |
|    8|TRUE        |       9|SNP at/on the modification site      |
|    9|FALSE       |       3|Small genotype group (min class n<5) |
|   10|FALSE       |       1|Small genotype group (min class n<5) |
|   11|TRUE        |       2|SNP at/on the modification site      |
|   12|FALSE       |      14|Neither flag (plausible)             |
|   13|FALSE       |       3|Small genotype group (min class n<5) |
|   14|FALSE       |      11|Neither flag (plausible)             |
|   15|FALSE       |       1|Small genotype group (min class n<5) |
|   16|TRUE        |       1|SNP at/on the modification site      |
|   17|TRUE        |       1|SNP at/on the modification site      |
|   18|FALSE       |      12|Neither flag (plausible)             |
|   19|FALSE       |       1|Small genotype group (min class n<5) |
|   20|TRUE        |       4|SNP at/on the modification site      |

```r
cat_tbl <- summ[, .N, by = category][order(-N)]
knitr::kable(cat_tbl, caption = "Category counts among the top 20")
```



Table: Category counts among the top 20

|category                             |  N|
|:------------------------------------|--:|
|SNP at/on the modification site      |  9|
|Neither flag (plausible)             |  6|
|Small genotype group (min class n<5) |  5|

Of the top 20 beta-binomial hits by nominal p-value,
**9** have their
lead SNP sitting exactly at the modification site itself, and
**5** more have a genotype
class with fewer than 5 cell lines (and no SNP-at-site overlap) —
together accounting for
**14/20** of the most
extreme "hits" in this model. 

Visually, nearly every panel above shows the
same pattern: genotype 0 near %pU=1, genotype 1 near
%pU=0.5, genotype 2 near %pU=0.

<!-- **The remaining 6 sites -->
<!-- are not a clean "these are fine" bucket.** Most of them (#1, #4, #6, #12 — -->
<!-- none of these are on chr6) show the same staircase -->
<!-- despite having normal-sized genotype groups and no SNP-at-site overlap, -->
<!-- meaning the two mechanisms characterized here do not explain everything — -->
<!-- something else (e.g. a nearby-but-not-exact-position variant still perturbing -->
<!-- the assay's base-calling, or another unmodeled technical effect) is likely -->
<!-- producing the same signature. Only two sites (#14 `chr3:37277733`, #18 -->
<!-- `chr2:88886147`) look qualitatively different: noisy, near-uniform scatter -->
<!-- across all three genotype groups with no clean separation, or driven by a -->
<!-- single outlier cell line — closer to what a null or borderline result should -->
<!-- look like, and a useful visual contrast against the rest of this page. So the -->
<!-- two flagged mechanisms are a partial, not complete, explanation, and the -->
<!-- planned fixes (excluding cis-SNPs that overlap the profiled base, requiring a -->
<!-- minimum sample count per genotype class) should be treated as a first pass, -->
<!-- re-checked against a fresh top-20 plot after re-running. -->

# 4. Sanity check: are these hits real, or driven by phenotype shape alone?

The %pU phenotype at many sites is not smoothly distributed — it's often
**bimodal** (a cell line reads close to 0 or close to 1, with little in
between), which a single Beta-distributed mean per genotype group may not
represent well. To test whether that alone (independent of any genotype
effect, real or not) can produce these extreme statistics, we took ONE fixed
permutation of the phenotype/covariates across the 50 cell lines (same
permutation used as "perm1" in the LRT calibration check, genotype held
fixed at each individual's true value) and re-ran the same per-site nominal
LRT scan, tracking site identity and lead SNP — something the calibration
check itself doesn't do, since it only pools p-values genome-wide for lambda
and discards per-site/per-SNP identity.


```r
p1 <- fread(file.path(CALIB, sprintf("perm1_scan_w%dkb_pc%d.txt.gz", WINDOW_KB, NPCS)))
p1_top20 <- p1[order(nominal_min_p)][1:N_TOP]
p1_top20[, rank := .I]

real_top20_sites <- d[order(nominal_min_p)][1:N_TOP, .(ref, pos)]
overlap_n <- sum(paste(p1_top20$ref, p1_top20$pos) %in% paste(real_top20_sites$ref, real_top20_sites$pos))
```

**19/20** of the top sites under this random permutation are
the *same sites* as the real top 20 — with comparably extreme nominal
p-values (`~1e-285` at the top) — despite the genotype-phenotype pairing
being completely scrambled.


```r
m <- length(go)
set.seed(1001); ord <- sample.int(m)   # identical seed to 5.calibration_check_lrt.R's perm1

rows_p1 <- rbindlist(lapply(seq_len(nrow(p1_top20)), function(i) {
  s <- p1_top20[i]
  si <- which(sites$ref == as.character(s$ref) & sites$pos == s$pos)
  gi <- which(gid == s$lead_snp)
  y <- Cm[si, ord]; n <- Nm[si, ord]; g <- Gall[, gi]   # phenotype permuted, genotype fixed -- same pairing as the calibration check
  pi_v <- y / n
  grp_tab <- table(g)
  min_grp <- min(grp_tab)
  flags <- paste0(
    if (s$lead_pos == s$pos) "\n[SNP-at-site]" else "",
    if (min_grp < MIN_GRP) sprintf("\n[small group n=%d]", min_grp) else ""
  )
  data.table(
    rank = s$rank,
    site_lab = sprintf("#%d chr%s:%.0f\n-log10(p)=%.0f%s",
                        s$rank, s$ref, s$pos, -log10(max(s$nominal_min_p, 1e-300)), flags),
    g = factor(g, levels = 0:2), pi = pi_v, n = n
  )
}))
rows_p1[, site_lab := factor(site_lab, levels = unique(site_lab[order(rank)]))]

ggplot(rows_p1, aes(x = g, y = pi, color = g)) +
  geom_boxplot(aes(group = g), outlier.shape = NA, width = 0.4, color = "grey60", fill = NA) +
  geom_jitter(aes(size = n), width = 0.12, alpha = 0.75) +
  scale_color_manual(values = blue3, name = "genotype\n(alt-allele copies)") +
  scale_size_continuous(name = "depth (n)", range = c(0.6, 3.5)) +
  facet_wrap(~ site_lab, scales = "free_x", ncol = 4) +
  labs(x = "genotype (fixed) vs. PERMUTED phenotype at the lead cis-SNP",
       y = "%pU (y/n per cell line, permuted individual order)",
       title = sprintf("Top %d sites under permutation-1 (genotype-phenotype pairing randomized)", N_TOP),
       subtitle = "Same seed as the LRT calibration check's perm1 (set.seed(1001)).") +
  theme_bw(base_size = 11) +
  theme(legend.position = "bottom", strip.text = element_text(size = 7.5))
```

<img src="figure/qtl_mapping_betabinomial_diagnostic.Rmd/perm1-plot-1.png" width="1152" style="display: block; margin: auto;" />

Unlike the real top-20 plot above, these panels show **no clean
separation between genotype groups** — heavily overlapping, noisy scatter
within each group. Yet the p-values are just as extreme. That rules out "the
permutation got lucky and happened to look like a real effect" — instead, it
means these specific sites produce enormous LRT statistics almost regardless
of which grouping variable is tested, genotype or a completely unrelated
random shuffle. These sites also have very high median read depth (hundreds
to thousands of reads per cell line) alongside the bimodal %pU pattern —
at that depth, even a small amount of between-individual variance that the
beta-binomial's single dispersion parameter (`phi`) doesn't capture can make
almost any partition of the 50 cell lines look highly "significant." This
points to a phenotype-shape/model-misspecification problem at these
particular sites, on top of (not replaced by) the SNP-at-site and
small-genotype-group mechanisms found above — excluding SNP-at-site SNPs or
requiring larger genotype groups is not expected to fix these specific
sites, since the effect survives complete randomization of genotype-phenotype
pairing.

<br>
<p>
<button type="button" class="btn btn-default btn-workflowr btn-workflowr-sessioninfo"
  data-toggle="collapse" data-target="#workflowr-sessioninfo"
  style = "display: block;">
  <span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
  Session information
</button>
</p>

<div id="workflowr-sessioninfo" class="collapse">

```r
sessionInfo()
```

```
R version 4.2.0 (2022-04-22)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Red Hat Enterprise Linux 8.10 (Ootpa)

Matrix products: default
BLAS/LAPACK: /software/openblas-0.3.13-el8-x86_64/lib/libopenblas_skylakexp-r0.3.13.so

locale:
 [1] LC_CTYPE=C.UTF-8       LC_NUMERIC=C           LC_TIME=C.UTF-8       
 [4] LC_COLLATE=C.UTF-8     LC_MONETARY=C.UTF-8    LC_MESSAGES=C.UTF-8   
 [7] LC_PAPER=C.UTF-8       LC_NAME=C              LC_ADDRESS=C          
[10] LC_TELEPHONE=C         LC_MEASUREMENT=C.UTF-8 LC_IDENTIFICATION=C   

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] ggplot2_3.4.2     data.table_1.14.4 workflowr_1.7.0  

loaded via a namespace (and not attached):
 [1] tidyselect_1.2.0  xfun_0.38         bslib_0.3.1       colorspace_2.0-3 
 [5] vctrs_0.6.1       generics_0.1.3    htmltools_0.5.7   yaml_2.3.5       
 [9] utf8_1.2.2        rlang_1.1.2       R.oo_1.24.0       jquerylib_0.1.4  
[13] later_1.3.0       pillar_1.9.0      glue_1.6.2        withr_2.5.0      
[17] R.utils_2.11.0    lifecycle_1.0.4   stringr_1.5.0     munsell_0.5.0    
[21] gtable_0.3.0      R.methodsS3_1.8.1 evaluate_0.15     labeling_0.4.2   
[25] knitr_1.42        callr_3.7.0       fastmap_1.1.0     httpuv_1.6.5     
[29] ps_1.7.0          fansi_1.0.3       highr_0.9         Rcpp_1.0.11      
[33] promises_1.2.0.1  scales_1.2.0      jsonlite_1.8.7    farver_2.1.0     
[37] fs_1.5.2          digest_0.6.29     stringi_1.7.6     processx_3.5.3   
[41] dplyr_1.1.2       getPass_0.2-2     rprojroot_2.0.3   grid_4.2.0       
[45] cli_3.6.2         tools_4.2.0       magrittr_2.0.3    sass_0.4.1       
[49] tibble_3.2.1      whisker_0.4       pkgconfig_2.0.3   rmarkdown_2.21   
[53] httr_1.4.5        rstudioapi_0.14   R6_2.5.1          git2r_0.30.1     
[57] compiler_4.2.0   
```
</div>
