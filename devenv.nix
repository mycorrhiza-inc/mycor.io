{ pkgs, ... }:

{
  packages = [
    pkgs.quarto
  ];

  languages.r = {
    enable = true;
    package = pkgs.R;
  };
}
