# Pinning nixpkgs: https://nix.dev/tutorials/first-steps/towards-reproducibility-pinning-nixpkgs#
{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/8804d8199e6570113477ec4b624e74d250230c49.tar.gz") {} }:

with pkgs;

mkShell {
  buildInputs = [
    jdk11
    nodejs-18_x
    babashka
    clojure
    yarn
  ];
  # Need to use original make, not the cmake installed in one of the
  # builds above...
  shellHook = ''
    export PATH="/usr/bin:$PATH"
  '';
}
