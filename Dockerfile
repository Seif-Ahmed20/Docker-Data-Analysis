# Dockerfile
FROM jupyter/base-notebook:latest

# set the working directory
WORKDIR /Assignment

# copy the notebook and the dataset into the container
COPY books.csv /Assignment/

# Expose the port
EXPOSE 8888

# command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]