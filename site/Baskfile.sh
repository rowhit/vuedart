shopt -s extglob


task_default() {
  bask_log_error "No default task."
  false
}


task_pack_debug() {
  aspen
}


task_pack_release() {
  bask_depends pygments
  aspen -m prod
}

task_build_debug() {
  bask_depends pack_debug
  pub
}

task_build_release() {
  bask_depends pack_release
  pub build --mode release
}
