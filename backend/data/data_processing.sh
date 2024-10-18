#!/bin/bash

# Run the R script to update play-by-play data
Rscript /backend/data/data_processing.R
```

Make this script executable with:
```sh
chmod +x update_data.sh