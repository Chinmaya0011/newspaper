# Define Terraform backend using a Google Cloud Storage bucket for storing the Terraform state
terraform {
  #   backend "gcs" {
  #     bucket  = "tfst-bck"
  #     prefix    = "tfst-bck/tfst-gke-private"
  #     # access_token = "ya29.a0AfH6SMAqoqV5dJ_bZfYNCOKYUDAA0tujgTVEUXsJCWvOAPh7LcuhgVIgzpvuoyZostECA3VNUE79HZJ7tj_dq_rhdmOF480uAXkFZlmigtTv-bpXGTjmQiBho_30lGjX-HB_PJ2Gbhg8T4yDU3SbRrXdC_tpFVjUVHQAbutJkVan_-Z-zDxr"
  #     credentials = "./sa.json" 
  #  }

  cloud {
    organization = "Cloudplaybook"

    workspaces {
      name = "gcp-github-action"
    }
  }

}
