provider "google" {
  credentials = "./creds/vpc-mysql-gke-demo-84b306fbd0e7.json"
  project     = "vpc-mysql-gke-demo"
}

module "cluster-gke-beta-b"{
source =  "./modules/gke"
}


module "instance-a"{
source =  "./modules/mysql"
}

module "vpc"{
source =  "./modules/vpc"
}

module "debian"{
source =  "./modules/container-reg"
}