# osquery-ctf

## Setup

Create a new project and enable billing for that project. Open Cloud Shell and double check to make sure it is pointing to the project you just created.

`gcloud config set project [PROJECT-ID]`

Enable the compute API for this project.

`gcloud services enable compute.googleapis.com`

Create a Python virtual enviornment that will be used for Ansible.

`virtualenv -v env-osctf; source env-osctf/bin/activate`

Install Ansible on that virtual enviornment.

`pip install ansible`

Clone this project into your shell.

`git clone https://github.com/deweythedeci/osquery-ctf.git; cd osquery-ctf`

Run the setup script to initialize everything.

`./setup-lab.sh`

Then, to play each level start it up with the run script.

`./run-level.sh <level_module_name>`

When you are done, tear it down with the destroy script.

`./destroy-level.sh <level_module_name>`
