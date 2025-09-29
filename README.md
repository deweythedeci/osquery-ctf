# osquery-ctf

## Setup

Create a new project and enable billing for that project. Open Cloud Shell and double check to make sure it is pointing to the project you just created.

`gcloud config set project [PROJECT-ID]`

Clone this project into your shell.

`git clone https://github.com/deweythedeci/osquery-ctf.git; cd osquery-ctf`

Initialize terraform.

`terraform -chdir=terraform/core init`

Then, to play each level start it up with the run script.

`./run-level.sh <level_module_name>`

When you are done, tear it down with the destroy script.

`./destroy-level.sh <level_module_name>`