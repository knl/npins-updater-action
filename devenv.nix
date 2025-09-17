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
  # provided shfmt has no options...
  git-hooks.hooks.shfmt_custom = {
    enable = true;

    # The name of the hook (appears on the report table):
    name = "shfmt";

    # The command to execute (mandatory):
    entry = "${pkgs.shfmt}/bin/shfmt -d -i 4 -ci -bn -s";

    # List of file types to run on (default: [ "file" ] (all files))
    # see also https://pre-commit.com/#filtering-files-with-types
    # You probably only need to specify one of `files` or `types`:
    types = [ "shell" ];

    # The language of the hook - tells pre-commit
    # how to install the hook (default: "system")
    # see also https://pre-commit.com/#supported-languages
    language = "system";
  };
  # pre-commit.hooks.typos.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";
}
