This example deploys Megaport Virtual Edge (MVE) in 10 global locations and a full mesh private network between all locations using Megaports private backbone. In this scenario, the MVEs provide regional aggregation for Internet based SD-WAN sites within the region. The following resources are deployed:

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
* Set the Megaport environment in provider.tf - this example can be deployed completely in the staging environment.
* Generate a public/private SSH key pair and set the public key in variables.tf under the rsa_pub_key variable - this SSH key pair will be used to SSH into the Cisco C8Kv.
* Modify the variables.tf file to suit your preferred deployment locations, MVE CPU allocation, and the main.tf for Internet Transit size, Private VXC size.
* From the command line change to the directory containing the Terraform files.
* Run `terraform init` to initialise Terraform and the providers.
* Run `terraform apply` to deploy this example.

### Notes

* When you have completed, use `terraform destroy` so that you will stop incurring costs for the resources (if deployed in production).
* To use a different version of C8Kv IOS or another network vendor OS the image ID is required. To obtain the full list of image IDs use the Megaport API call documented here: [Link](https://dev.megaport.com/#ae411b15-0989-4f7f-ac28-78e385264515)

### Testing

* The staging environment is a simulates deployment of Megaport services only, services are not real and do not run live traffic.
* To test with live services deploy in the production environment, using the SSH key pair login to the C8Kv using the public IP address assigned to the MVE and configure IP addressing for the Private VXCs and BGP peering between MVE locations.
