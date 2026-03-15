{ pkgs, ... }:
{
  env.OPENROUTER_MODEL = "google/gemini-3.1-pro-preview";

  packages = [
    pkgs.quarto
  ];

  languages.r = {
    enable = true;
    package = pkgs.R;
  };

  languages.julia = {
    enable = true;
    package = pkgs.nodejs_22;
    corepack.enable = true;
  };
}
