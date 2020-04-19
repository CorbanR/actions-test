{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };

  callPackage = pkgs.lib.callPackageWith (pkgs // self);

  self = {
    hello = callPackage ./hello { };
  };
in self
