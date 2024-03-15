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