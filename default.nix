let
  rev = "5f244caea76105b63d826911b2a1563d33ff1cdc";
  nixpkgs = fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
    sha256 = "1xlgynfw9svy7nvh9nkxsxdzncv9hg99gbvbwv3gmrhmzc3sar75";
  };
  pkgs = import nixpkgs {};
in with pkgs;
mkShell {
  buildInputs = [
    php
    php74Packages.composer
    shellcheck
    zip
  ];
}
