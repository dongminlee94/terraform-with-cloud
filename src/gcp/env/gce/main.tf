module "gce" {
  source = "../../modules/gce"

  sa_account_id   = "gce-sa"
  subnetwork_name = "public-subnetwork"

  gce_address_name   = "gce-address"
  gce_instance_name  = "gce-instance"
  gce_machine_type   = "e2-medium"
  gce_zone           = "asia-northeast1-a"
  gce_image          = "ubuntu-os-cloud/ubuntu-2004-focal-v20230724"
  gce_size           = 50
  gce_service_scopes = ["cloud-platform"]
  gce_user_name      = "ubuntu"
  gce_tags           = ["gcp"]
  gce_public_key     = "c3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCZ1FDN3BjUjB3VzVmRGIyZkhXZXduVGZQekc3dFg5YnB4UEcxOHR3L2dmU2JZT200aDhZV0ZDZ3NSSFVLbTc4QzRKNWZWMjd1R0NnYUFha1pSNzcydytZd2FRb3AzRnRyc2dVdmpwU0RhVkU3Y0dyTXVOZzVUc2NMZ1hEQTJONEJPcHpiNlpFY1g5d0dpNEErQ0lSay9VaGNoYjhNQnZCZzQwc3BQTENWSko0K2o1SEFnWnZpK3lIalF0K2RBVE4rTVZBMXZEWDNPSGRXQzhveVNGMmVQcGVFL3gwZVF0aERTazAwK1hwc2hrTDFrd1BkaXZHTk5WcDF2MkRhNTd0M3V2QmJwOXkraEQ2c0I4NER6NXVuMG5oQ1NEazVhM3NtamdrSmdCK2xiZm5ZRFBRZG5ZTGZZL3NOTW1IblFja3FBTkVka2ZYcjFJRjhBV1VHWk1NeXFvMHZUVnJlZzAxKzdWWjFjZUdrN0R2WUgrNU9XY05hRE1KbEk5Z0x6RTd4eEhrNVl1UjlOMUluR0d6NVlXWVVVanZReUsxN1M0aUZ1Y1NQdHRJck9NV0EyMWFMdHNXMEdzSHNEYm1hM0tmZlZvdURRV1dnY3c3ajFXeXlmbFB5MEU5NUxBdG5XUHhsNVcrN2JtWkFlYjlTc091bEQyeVNQUGxyM0I3b08ydS9GbjA9IGRvbmdtaW5sZWVARG9uZ21pbnMtTWFjQm9vay1Qcm8ubG9jYWwK"

  rp_name               = "daily-backup"
  rp_days_in_cycle      = 1
  rp_start_time         = "18:00"
  rp_max_retention_days = 5
  rp_label              = "snapshot"
}
