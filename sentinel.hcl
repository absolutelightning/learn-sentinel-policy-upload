// policy "restrict-aws-instances-type-and-tag" {
//   enforcement_level = "hard-mandatory"
// }

// policy "restrict-aws-config-enabled" {
//   enforcement_level = "hard-mandatory"
// }

// policy "restrict-cloud-trail-s3-not-public" {
//   enforcement_level = "hard-mandatory"
// }

import "plugin" "sentinel-plugin-tfcommon" {
  source = "../sentinel-plugin-tfcommon"
  config = {
    plan_path = "./plan.json"
  }
}

sentinel {
  features = {
    apply-all = true
    terraform = true
  }
}

policy "iam-policy" {
  enforcement_level = "hard-mandatory"
}