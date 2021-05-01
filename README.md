# Nix Config

[[https://builtwithnix.org][https://img.shields.io/badge/Built_With-Nix-5277C3.svg?logo=nixos&labelColor=73C3D5]]

A collection of machine configurations - expressed in [[https://nixos.org/nix][Nix]]

## usage

- Clone this to /config
- Install nix
- Install nix-darwin

```sh
NIXPKGS_ALLOW_UNFREE=1 /run/current-system/sw/bin/darwin-rebuild switch -I darwin-config=/config/hosts/phoenix/config.nix
```

## references

- [[https://nixos.org/manual/nix/stable][Nix Manual]]
- [[https://nixos.org/manual/nixpkgs/stable][Nixpkgs Manual]]
- [[https://search.nixos.org/packages][Nix Package Search]]

- [[https://nixos.org/manual/nix/stable/#sec-conf-file][nix config options]]
- [[https://daiderd.com/nix-darwin/manual/][nix-darwin config options]]
- [[https://rycee.gitlab.io/home-manager/options.html][home-manager config options]]

## inspiration

- [[https://github.com/burke/b][burke]]
- [[https://github.com/cmacrae/config][cmacrae]]
