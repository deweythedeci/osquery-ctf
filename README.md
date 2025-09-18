# osquery-ctf

## Setup

Create a new project and enable billing for that project. Open Cloud Shell and set it to point to the project you just created.

`gcloud config set project [PROJECT-ID]`

Enable the API required for this project.

`gcloud services enable compute.googleapis.com`

Create a Python virtual enviornment that will be used for Ansible.

`virtualenv -v env-osctf; source env-osctf/bin/activate`

Clone this project into your shell.

`git clone https://github.com/REPLACEME`

Run the setup script.

`cd osquery-ctf; ./setup.sh`

Then, to play each level start it up with the run script.

`./run-level.sh <level_module_name>`

When you are done, tear it down with the destroy script.

`./destroy-level.sh <level_module_name>`