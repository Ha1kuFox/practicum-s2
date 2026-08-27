{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        jdk25
        jdt-language-server
        google-java-format
        checkstyle
        pmd
        zip
      ];

      shellHook = ''
        export JAVA_HOME="${pkgs.jdk25}"
      '';
    };
  };
}
