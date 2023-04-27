

provider "helm" {
  kubernetes {
    host                   = data.aws_eks_cluster.cluster.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
    token                  = data.aws_eks_cluster_auth.cluster.token

  }
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token

}


provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAZWSWNZGR2OFNTCW4"
  secret_key = "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"
}







