This example deploys Megaport Virtual Edge (MVE) in 10 global locations and a full mesh private network between all locations using Megaports private backbone. In this scenario, the MVEs would provide regional aggregation for Internet based SD-WAN sites within the region. The following resources are deployed:

* 2 x Megaport Virtual Edge with the Cisco C8Kv in the following locations:
  * Sydney (8vCPU)
  * Singapore (8vCPU)
  * Hong Kong (4vCPU)
  * Frankfurt (4vCPU)
  * Dallas (4vCPU)
* 1Gbps Internet Transit connected to each MVE
* 2 x 1Gbps Private VXC between all locations

Cisco specific configuration is not provided in this example. For the full list of supported network vendors see [Link](https://megaport.com).

### Prerequisites

* Install Terraform locally on Mac, Linux, or Windows: [Link](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/install-cli)
* Create Megaport API Key: [Link](https://docs.megaport.com/api/api-key/)

### Deployment Instructions

* Download or Clone this Terraform example.
* Modify the provider.tf file with your own Megaport API Key/API Key Secret.
* Set the Megaport environment - this example can be deployed completely in the staging environment.
* Modify the variables.tf file to suit your preferred deployment locations, MVE CPU allocation, Internet Transit size, and Private VXC size.
* From the command line change to the directory containing the Terraform files.
* Run `terraform init` to initialise Terraform and the providers.
* Run `terraform apply` to deploy this example.
