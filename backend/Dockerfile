# Base image for Python
FROM python:3.9

# Set the working directory
WORKDIR /backend

# Copy the API code
COPY api/ /backend/api/
COPY data/ /backend/data/

# Install Python dependencies
RUN pip install -r /backend/api/requirements.txt

# Install R and necessary libraries
RUN apt-get update && \
    apt-get install -y r-base && \
    R -e "install.packages(c('nflfastR', 'dplyr', 'DBI', 'RPostgres'), repos='http://cran.rstudio.com/')"

# Run the FastAPI server
CMD ["uvicorn", "api.api:app", "--host", "0.0.0.0", "--port", "8000"]