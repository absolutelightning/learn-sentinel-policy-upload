import "plugin" "terraform" {
  config = {
    "plan_path": "./plan.json"
  }
}

import "plugin" "tfplan/v2" {
  config = {
    "plan_path": "./plan.json"
  }
}

import "plugin" "sentinelplugin-3p" {
  source = "/Users/asheshvidyut/sentinelplugin-3p/sentinelplugin-3p"
}

sentinel {
  features = {
    apply-all = true
    terraform = true
  }
}