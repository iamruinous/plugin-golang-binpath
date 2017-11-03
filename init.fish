set -q GOBIN; and set -l golang_bin_path "$GOBIN"
set -q GOPATH; and set -l golang_bin_path "$GOPATH/bin"
set -q golang_bin_path; or set -l golang_bin_path "$HOME/go/bin"

contains -- $golang_bin_path $PATH
  or set -gx PATH $golang_bin_path $PATH
