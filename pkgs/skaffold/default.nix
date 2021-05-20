{ lib, buildGoModule, fetchFromGitHub, installShellFiles }:

buildGoModule rec {
  pname = "skaffold";
  version = "1.24.0";

  src = fetchFromGitHub {
    owner = "GoogleContainerTools";
    repo = "skaffold";
    rev = "v${version}";
    sha256 = "1qjwbq86apn7888rl792y36mzxhma9prsm2pmfs9f8b09fm1p5nc";
  };

  vendorSha256 = "0sda5hfybb5bl40x0g80kqpj6isfrrz1dcv18b5l6z8dfs0jpbb8";

  subPackages = ["cmd/skaffold"];

  buildFlagsArray = let t = "github.com/GoogleContainerTools/skaffold/pkg/skaffold"; in  ''
    -ldflags=
      -s -w
      -X ${t}/version.version=v${version}
      -X ${t}/version.gitCommit=${src.rev}
      -X ${t}/version.buildDate=unknown
  '';

  nativeBuildInputs = [ installShellFiles ];

  postInstall = ''
    installShellCompletion --cmd skaffold \
      --bash <($out/bin/skaffold completion bash) \
      --zsh <($out/bin/skaffold completion zsh)
  '';

  meta = with lib; {
    homepage = "https://skaffold.dev/";
    changelog = "https://github.com/GoogleContainerTools/skaffold/releases/tag/v${version}";
    description = "Easy and Repeatable Kubernetes Development";
    longDescription = ''
      Skaffold is a command line tool that facilitates continuous development for Kubernetes applications.
      You can iterate on your application source code locally then deploy to local or remote Kubernetes clusters.
      Skaffold handles the workflow for building, pushing and deploying your application.
      It also provides building blocks and describe customizations for a CI/CD pipeline.
    '';
    license = licenses.asl20;
    maintainers = with maintainers; [ vdemeester ];
  };
}
