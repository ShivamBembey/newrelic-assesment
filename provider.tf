terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.27.3"
    }
  }
}

provider "newrelic" {
  # Configuration options
  account_id = 4209828
  api_key = "NRAK-9R4XLQOKBZCA5QA9JZ7NS8RUYWT"
  region = "US"
}