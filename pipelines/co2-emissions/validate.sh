#!/bin/bash
# [wf] validate the output of pipeline.
# The point of entry to the validation of results produced by the pipeline.
# Any non-zero exit code will be interpreted as a failure by the 'popper check'
# command. Additionally, the command should print "true" or "false" for each
# validation (one per line, each interpreted as a separate validation).
# [wf] validate results and get a table
set -ex

# [wf] verify that we got actual result values
scripts/validate_output.py data/global_per_capita_mean.csv

# [wf] generate markdown table
scripts/get_mdown_table.py data/global_per_capita_mean.csv
