#!/bin/bash
#SBATCH --job-name=render_qtl_summary
#SBATCH --account=pi-spott
#SBATCH --partition=spott
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --time=00:30:00
#SBATCH --output=render_qtl_summary_%j.out

# Renders analysis/qtl_mapping_summary.Rmd via workflowr::wflow_build on a
# dedicated compute node -- the login node is CPU-starved for the final
# section's parquet loads (6 datasets x ~42M-row pair tables), see
# pumseq project memory [[feedback-job-submission]] for the same issue
# hit earlier in the main pipeline.
set -euo pipefail
module load pandoc
module load R/4.2.0
cd /home/sxt1229/xsun.xin3/website/pumseq
Rscript --vanilla -e '.libPaths(c("/software/R-4.2.0-el8-x86_64/lib64/R/library","/home/sxt1229/R/x86_64-pc-linux-gnu-library/4.2")); workflowr::wflow_build("analysis/qc_mRNA_discovery_replication.Rmd", view = FALSE)'
