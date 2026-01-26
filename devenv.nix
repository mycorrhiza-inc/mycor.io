{ pkgs, ... }:

{
  packages = [
    pkgs.quarto
  ];

  languages.r = {
    enable = true;
    package = pkgs.R;
  };

  languages.julia = {
    enable = true;
  };
}
