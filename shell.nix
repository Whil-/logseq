{ pkgs ? import <nixpkgs> {} }:

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
