{ pkgs, ... }:

{
  # https://devenv.sh/basics/
  # env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = with pkgs; [
    act
    bats
    asciidoctor
  ];

  # enterShell = ''
  # '';

  # https://devenv.sh/languages/
  # languages.nix.enable = true;

  # https://devenv.sh/scripts/
  # scripts.hello.exec = "echo hello from $GREET";

  # https://devenv.sh/pre-commit-hooks/
  git-hooks.hooks.shellcheck.enable = true;
  git-hooks.hooks.actionlint.enable = true;
  git-hooks.hooks.shfmt.enable = true;
  # pre-commit.hooks.typos.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";
}
