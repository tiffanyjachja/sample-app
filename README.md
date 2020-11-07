# Sample-app: A Cloud Native Engineering Exercise

This repo includes this readme file and an `app.py` file containing an simple RESTful API with Python and Flask. 
This Sample app exposes a REST endpoint that returns the following JSON payload with the current timestamp and static message:

`{
  "message": "Automate all the things!", 
  "timestamp": "Sat, 07 Nov 2020 10:30:42 GMT"
}`

## Local Environment Setup
The program uses standard and third party python libraries, such as datetime and Flask.

If you would like to use a conda environment. Setup the conda environment by using the **environment.yml** file.

To do so:
1. Simply unzip the file and within the cs6475 directory use the command:
`conda env create -f environment.yml`
2. Activate the new environment:
`conda activate sample-app`
3. Verify that the new environment was installed correctly:
`conda env list`

### Running the sample-app locally:
1. Clone or obtain the repository files if you haven't already.
2. Run the sample app by using the CLI command:
`python app.py`
3. Curl the endpoint in another terminal window:
`curl -i http://localhost:5000/`
