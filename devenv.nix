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
  git-hooks.hooks.actionlint.enable = true;
  # provided shellcheck has no options
  git-hooks.hooks.shellcheck_custom = {
    enable = true;
    name = "shellcheck";
    entry = "${pkgs.shellcheck}/bin/shellcheck -s bash";
    types = [ "shell" ];
    language = "system";
  };
  # provided shfmt has no options...
  git-hooks.hooks.shfmt_custom = {
    enable = true;
    name = "shfmt";
    entry = "${pkgs.shfmt}/bin/shfmt -d -i 4 -ci -bn -s";
    types = [ "shell" ];
    language = "system";
  };
  # pre-commit.hooks.typos.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";
}
