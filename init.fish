function init -a path --on-event init_golang-binpath
  set -l golang_bin_path (echo $GOPATH)
  set -q golang_bin_path; or set -l golang_bin_path $HOME/go/bin
  contains -- $golang_bin_path $PATH
    or set -gx PATH $golang_bin_path $PATH
end
