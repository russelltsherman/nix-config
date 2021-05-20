{ pkgs, ... }:

let

  skaffold = pkgs.callPackage /config/pkgs/skaffold {};

in

with pkgs; [ 
  _1password
  argocd
  awscli2
  awslogs
  errcheck
  go
  go-outline
  go-symbols
  goa
  gocode
  gocode-gomod
  gocyclo
  godef
  goimports
  golangci-lint
  golint
  gomodifytags
  gomplate
  gopkgs
  gopls
  gotags
  gotools
  gox
  helmfile
  k9s
  kind
  kube-prompt
  kubecfg
  kubectl
  kubectx
  kubernetes-helm
  kubetail
  kubeval
  kustomize
  lazydocker
  lazygit
  minikube
  open-policy-agent
  python37
  python37Packages.pip
  python37Packages.python-language-server
  python37Packages.virtualenv
  skaffold
  tasksh
  wakatime
  watchman
  youtube-dl
]
