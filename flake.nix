# flake.nix
#
# This file packages pythoneda-shared-pythonlang-artf/domain as a Nix flake.
#
# Copyright (C) 2024-today rydnr's pythoneda-shared-pythonlang-artf-def/domain
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
{
  description = "Artifact space of pythoneda-shared-pythonlang/domain";
  inputs = rec {
    flake-utils.url = "github:numtide/flake-utils/v1.0.0";
    nixos.url = "github:NixOS/nixpkgs/24.05";
    pythoneda-external-artf-flakeutils = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixos.follows = "nixos";
      inputs.pythoneda-shared-nix-flake-shared.follows =
        "pythoneda-shared-nix-flake-shared";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-external-artf-def/flakeutils/0.0.4";
    };
    pythoneda-external-artf-nixpkgs = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixos.follows = "nixos";
      inputs.pythoneda-shared-nix-flake-shared.follows =
        "pythoneda-shared-nix-flake-shared";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-external-artf-def/nixpkgs/0.0.4";
    };
    pythoneda-shared-artifact-artifact-events = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixos.follows = "nixos";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-artifact-def/artifact-events/0.0.44";
    };
    pythoneda-shared-artifact-artifact-shared = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixos.follows = "nixos";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-artifact-def/artifact-shared/0.0.47";
    };
    pythoneda-shared-artifact-events = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixos.follows = "nixos";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-artifact-def/events/0.0.49";
    };
    pythoneda-shared-artifact-shared = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixos.follows = "nixos";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-artifact-def/shared/0.0.59";
    };
    pythoneda-shared-git-shared = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixos.follows = "nixos";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-git-def/shared/0.0.50";
    };
    pythoneda-shared-nix-flake-shared = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixos.follows = "nixos";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-nix-flake-def/shared/0.0.55";
    };
    pythoneda-shared-pythonlang-artf-banner = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixos.follows = "nixos";
      inputs.pythoneda-external-artf-flakeutils.follows =
        "pythoneda-external-artf-flakeutils";
      inputs.pythoneda-external-artf-nixpkgs.follows =
        "pythoneda-external-artf-nixpkgs";
      inputs.pythoneda-shared-nix-flake-shared.follows =
        "pythoneda-shared-nix-flake-shared";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-pythonlang-artf-def/banner/0.0.1";
    };
    pythoneda-shared-pythonlang-banner = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixos.follows = "nixos";
      url = "github:pythoneda-shared-pythonlang-def/banner/0.0.56";
    };
    pythoneda-shared-pythonlang-domain = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixos.follows = "nixos";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      url = "github:pythoneda-shared-pythonlang-def/domain/0.0.54";
    };
  };
  outputs = inputs:
    with inputs;
    flake-utils.lib.eachDefaultSystem (system:
      let
        org = "pythoneda-shared-pythonlang-artf";
        repo = "domain";
        version = "0.0.24";
        sha256 = "09sz7bsdxzl4qrgqfc0sywl3xrvj2frdj9m67zg1wkpx2bqbifdn";
        pname = "${org}-${repo}";
        pythonpackage = "pythoneda.artifact.shared.domain";
        pkgs = import nixos { inherit system; };
        description = "Artifact scope of pythoneda-shared-pythonlang/domain";
        license = pkgs.lib.licenses.gpl3;
        homepage = "https://github.com/${org}/${repo}";
        maintainers = with pkgs.lib.maintainers;
          [ "rydnr <github@acm-sl.org>" ];
        archRole = "B";
        space = "A";
        layer = "D";
        nixosVersion = builtins.readFile "${nixos}/.version";
        nixpkgsRelease =
          builtins.replaceStrings [ "\n" ] [ "" ] "nixos-${nixosVersion}";
        shared = import "${pythoneda-shared-pythonlang-banner}/nix/shared.nix";
        pythoneda-shared-pythonlang-artf-domain-for = { python
          , pythoneda-external-artf-flakeutils, pythoneda-external-artf-nixpkgs
          , pythoneda-shared-artifact-events
          , pythoneda-shared-artifact-artifact-events
          , pythoneda-shared-artifact-artifact-shared
          , pythoneda-shared-artifact-shared, pythoneda-shared-git-shared
          , pythoneda-shared-nix-flake-shared
          , pythoneda-shared-pythonlang-artf-banner
          , pythoneda-shared-pythonlang-domain }:
          let
            pnameWithUnderscores =
              builtins.replaceStrings [ "-" ] [ "_" ] pname;
            pythonVersionParts = builtins.splitVersion python.version;
            pythonMajorVersion = builtins.head pythonVersionParts;
            pythonMajorMinorVersion =
              "${pythonMajorVersion}.${builtins.elemAt pythonVersionParts 1}";
            wheelName =
              "${pnameWithUnderscores}-${version}-py${pythonMajorVersion}-none-any.whl";
          in python.pkgs.buildPythonPackage rec {
            inherit pname version;
            projectDir = ./.;
            pyprojectTomlTemplate = ./templates/pyproject.toml.template;
            pyprojectToml = pkgs.substituteAll {
              authors = builtins.concatStringsSep ","
                (map (item: ''"${item}"'') maintainers);
              desc = description;
              inherit homepage pname pythonMajorMinorVersion pythonpackage
                version;
              package = builtins.replaceStrings [ "." ] [ "/" ] pythonpackage;
              pythonedaExternalArtfFlakeutils =
                pythoneda-external-artf-flakeutils.version;
              pythonedaExternalArtfNixpkgs =
                pythoneda-external-artf-nixpkgs.version;
              pythonedaSharedArtifactArtifactEvents =
                pythoneda-shared-artifact-artifact-events.version;
              pythonedaSharedArtifactArtifactShared =
                pythoneda-shared-artifact-artifact-shared.version;
              pythonedaSharedArtifactEvents =
                pythoneda-shared-artifact-events.version;
              pythonedaSharedArtifactShared =
                pythoneda-shared-artifact-shared.version;
              pythonedaSharedGitShared = pythoneda-shared-git-shared.version;
              pythonedaSharedNixFlakeShared =
                pythoneda-shared-nix-flake-shared.version;
              pythonedaSharedPythonlangArtfBanner =
                pythoneda-shared-pythonlang-artf-banner.version;
              pythonedaSharedPythonlangDomain =
                pythoneda-shared-pythonlang-domain.version;
              src = pyprojectTomlTemplate;
            };
            src = pkgs.fetchFromGitHub {
              owner = org;
              rev = version;
              inherit repo sha256;
            };

            format = "pyproject";

            nativeBuildInputs = with python.pkgs; [ pip poetry-core ];
            propagatedBuildInputs = with python.pkgs; [
              pythoneda-external-artf-flakeutils
              pythoneda-external-artf-nixpkgs
              pythoneda-shared-artifact-artifact-events
              pythoneda-shared-artifact-artifact-shared
              pythoneda-shared-artifact-events
              pythoneda-shared-artifact-shared
              pythoneda-shared-git-shared
              pythoneda-shared-nix-flake-shared
              pythoneda-shared-pythonlang-artf-banner
              pythoneda-shared-pythonlang-domain
            ];

            # pythonImportsCheck = [ pythonpackage ];

            unpackPhase = ''
              cp -r ${src} .
              sourceRoot=$(ls | grep -v env-vars)
              chmod +w $sourceRoot
              cp ${pyprojectToml} $sourceRoot/pyproject.toml
            '';

            postInstall = ''
              pushd /build/$sourceRoot
              for f in $(find . -name '__init__.py'); do
                mkdir -p $out/lib/python${pythonMajorMinorVersion}/site-packages/domain/scripts
                if [[ ! -e $out/lib/python${pythonMajorMinorVersion}/site-packages/$f ]]; then
                  cp $f $out/lib/python${pythonMajorMinorVersion}/site-packages/$f
                fi
              done
              popd
              mkdir $out/dist
              cp dist/${wheelName} $out/dist
            '';

            meta = with pkgs.lib; {
              inherit description homepage license maintainers;
            };
          };
      in rec {
        defaultPackage = packages.default;
        devShells = rec {
          default = pythoneda-artifact-shared-domain-default;
          pythoneda-artifact-shared-domain-default =
            pythoneda-artifact-shared-domain-python312;
          pythoneda-artifact-shared-domain-python38 = shared.devShell-for {
            banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python38
              }/bin/banner.sh";
            extra-namespaces = "";
            nixpkgs-release = nixpkgsRelease;
            package = packages.pythoneda-artifact-shared-domain-python38;
            python = pkgs.python38;
            pythoneda-shared-pythonlang-banner =
              pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python38;
            pythoneda-shared-pythonlang-domain =
              pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python38;
            inherit archRole layer org pkgs repo space;
          };
          pythoneda-artifact-shared-domain-python39 = shared.devShell-for {
            banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python39
              }/bin/banner.sh";
            extra-namespaces = "";
            nixpkgs-release = nixpkgsRelease;
            package = packages.pythoneda-artifact-shared-domain-python39;
            python = pkgs.python39;
            pythoneda-shared-pythonlang-banner =
              pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python39;
            pythoneda-shared-pythonlang-domain =
              pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python39;
            inherit archRole layer org pkgs repo space;
          };
          pythoneda-artifact-shared-domain-python310 = shared.devShell-for {
            banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python310
              }/bin/banner.sh";
            extra-namespaces = "";
            nixpkgs-release = nixpkgsRelease;
            package = packages.pythoneda-artifact-shared-domain-python310;
            python = pkgs.python310;
            pythoneda-shared-pythonlang-banner =
              pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python310;
            pythoneda-shared-pythonlang-domain =
              pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python310;
            inherit archRole layer org pkgs repo space;
          };
          pythoneda-artifact-shared-domain-python311 = shared.devShell-for {
            banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python311
              }/bin/banner.sh";
            extra-namespaces = "";
            nixpkgs-release = nixpkgsRelease;
            package = packages.pythoneda-artifact-shared-domain-python311;
            python = pkgs.python311;
            pythoneda-shared-pythonlang-banner =
              pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python311;
            pythoneda-shared-pythonlang-domain =
              pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python311;
            inherit archRole layer org pkgs repo space;
          };
          pythoneda-artifact-shared-domain-python312 = shared.devShell-for {
            banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python312
              }/bin/banner.sh";
            extra-namespaces = "";
            nixpkgs-release = nixpkgsRelease;
            package = packages.pythoneda-artifact-shared-domain-python312;
            python = pkgs.python312;
            pythoneda-shared-pythonlang-banner =
              pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python312;
            pythoneda-shared-pythonlang-domain =
              pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python312;
            inherit archRole layer org pkgs repo space;
          };
        };
        packages = rec {
          default = pythoneda-artifact-shared-domain-default;
          pythoneda-artifact-shared-domain-default =
            pythoneda-artifact-shared-domain-python312;
          pythoneda-artifact-shared-domain-python38 =
            pythoneda-shared-pythonlang-artf-domain-for {
              python = pkgs.python38;
              pythoneda-external-artf-flakeutils =
                pythoneda-external-artf-flakeutils.packages.${system}.pythoneda-external-artf-flakeutils-python38;
              pythoneda-external-artf-nixpkgs =
                pythoneda-external-artf-nixpkgs.packages.${system}.pythoneda-external-artf-nixpkgs-python38;
              pythoneda-shared-artifact-artifact-events =
                pythoneda-shared-artifact-artifact-events.packages.${system}.pythoneda-shared-artifact-artifact-events-python38;
              pythoneda-shared-artifact-artifact-shared =
                pythoneda-shared-artifact-artifact-shared.packages.${system}.pythoneda-shared-artifact-artifact-shared-python38;
              pythoneda-shared-artifact-events =
                pythoneda-shared-artifact-events.packages.${system}.pythoneda-shared-artifact-events-python38;
              pythoneda-shared-artifact-shared =
                pythoneda-shared-artifact-shared.packages.${system}.pythoneda-shared-artifact-shared-python38;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python38;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python38;
              pythoneda-shared-pythonlang-artf-banner =
                pythoneda-shared-pythonlang-artf-banner.packages.${system}.pythoneda-shared-pythonlang-artf-banner-python38;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python38;
            };
          pythoneda-artifact-shared-domain-python39 =
            pythoneda-shared-pythonlang-artf-domain-for {
              python = pkgs.python39;
              pythoneda-external-artf-flakeutils =
                pythoneda-external-artf-flakeutils.packages.${system}.pythoneda-external-artf-flakeutils-python39;
              pythoneda-external-artf-nixpkgs =
                pythoneda-external-artf-nixpkgs.packages.${system}.pythoneda-external-artf-nixpkgs-python39;
              pythoneda-shared-artifact-artifact-events =
                pythoneda-shared-artifact-artifact-events.packages.${system}.pythoneda-shared-artifact-artifact-events-python39;
              pythoneda-shared-artifact-artifact-shared =
                pythoneda-shared-artifact-artifact-shared.packages.${system}.pythoneda-shared-artifact-artifact-shared-python39;
              pythoneda-shared-artifact-events =
                pythoneda-shared-artifact-events.packages.${system}.pythoneda-shared-artifact-events-python39;
              pythoneda-shared-artifact-shared =
                pythoneda-shared-artifact-shared.packages.${system}.pythoneda-shared-artifact-shared-python39;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python39;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python39;
              pythoneda-shared-pythonlang-artf-banner =
                pythoneda-shared-pythonlang-artf-banner.packages.${system}.pythoneda-shared-pythonlang-artf-banner-python39;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python39;
            };
          pythoneda-artifact-shared-domain-python310 =
            pythoneda-shared-pythonlang-artf-domain-for {
              python = pkgs.python310;
              pythoneda-external-artf-flakeutils =
                pythoneda-external-artf-flakeutils.packages.${system}.pythoneda-external-artf-flakeutils-python310;
              pythoneda-external-artf-nixpkgs =
                pythoneda-external-artf-nixpkgs.packages.${system}.pythoneda-external-artf-nixpkgs-python310;
              pythoneda-shared-artifact-artifact-events =
                pythoneda-shared-artifact-artifact-events.packages.${system}.pythoneda-shared-artifact-artifact-events-python310;
              pythoneda-shared-artifact-artifact-shared =
                pythoneda-shared-artifact-artifact-shared.packages.${system}.pythoneda-shared-artifact-artifact-shared-python310;
              pythoneda-shared-artifact-events =
                pythoneda-shared-artifact-events.packages.${system}.pythoneda-shared-artifact-events-python310;
              pythoneda-shared-artifact-shared =
                pythoneda-shared-artifact-shared.packages.${system}.pythoneda-shared-artifact-shared-python310;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python310;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python310;
              pythoneda-shared-pythonlang-artf-banner =
                pythoneda-shared-pythonlang-artf-banner.packages.${system}.pythoneda-shared-pythonlang-artf-banner-python310;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python310;
            };
          pythoneda-artifact-shared-domain-python311 =
            pythoneda-shared-pythonlang-artf-domain-for {
              python = pkgs.python311;
              pythoneda-external-artf-flakeutils =
                pythoneda-external-artf-flakeutils.packages.${system}.pythoneda-external-artf-flakeutils-python311;
              pythoneda-external-artf-nixpkgs =
                pythoneda-external-artf-nixpkgs.packages.${system}.pythoneda-external-artf-nixpkgs-python311;
              pythoneda-shared-artifact-artifact-events =
                pythoneda-shared-artifact-artifact-events.packages.${system}.pythoneda-shared-artifact-artifact-events-python311;
              pythoneda-shared-artifact-artifact-shared =
                pythoneda-shared-artifact-artifact-shared.packages.${system}.pythoneda-shared-artifact-artifact-shared-python311;
              pythoneda-shared-artifact-events =
                pythoneda-shared-artifact-events.packages.${system}.pythoneda-shared-artifact-events-python311;
              pythoneda-shared-artifact-shared =
                pythoneda-shared-artifact-shared.packages.${system}.pythoneda-shared-artifact-shared-python311;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python311;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python311;
              pythoneda-shared-pythonlang-artf-banner =
                pythoneda-shared-pythonlang-artf-banner.packages.${system}.pythoneda-shared-pythonlang-artf-banner-python311;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python311;
            };
          pythoneda-artifact-shared-domain-python312 =
            pythoneda-shared-pythonlang-artf-domain-for {
              python = pkgs.python312;
              pythoneda-external-artf-flakeutils =
                pythoneda-external-artf-flakeutils.packages.${system}.pythoneda-external-artf-flakeutils-python312;
              pythoneda-external-artf-nixpkgs =
                pythoneda-external-artf-nixpkgs.packages.${system}.pythoneda-external-artf-nixpkgs-python312;
              pythoneda-shared-artifact-artifact-events =
                pythoneda-shared-artifact-artifact-events.packages.${system}.pythoneda-shared-artifact-artifact-events-python312;
              pythoneda-shared-artifact-artifact-shared =
                pythoneda-shared-artifact-artifact-shared.packages.${system}.pythoneda-shared-artifact-artifact-shared-python312;
              pythoneda-shared-artifact-events =
                pythoneda-shared-artifact-events.packages.${system}.pythoneda-shared-artifact-events-python312;
              pythoneda-shared-artifact-shared =
                pythoneda-shared-artifact-shared.packages.${system}.pythoneda-shared-artifact-shared-python312;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python312;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python312;
              pythoneda-shared-pythonlang-artf-banner =
                pythoneda-shared-pythonlang-artf-banner.packages.${system}.pythoneda-shared-pythonlang-artf-banner-python312;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python312;
            };
        };
      });
}
