plan patching::pre_patch (
  TargetSpec $nodes,
  Optional[String[1]] $script_linux   = undef,
  Optional[String[1]] $script_windows = undef,
) {
  return run_plan('patching::patch_helper',
                  nodes          => $nodes,
                  task           => 'patching::pre_patch',
                  script_linux   => $script_linux,
                  script_windows => $script_windows)
}