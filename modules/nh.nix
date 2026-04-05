{pkgs, ...}: {
  programs.nh = {
    enable = true;
    clean = {
      enable = false;
      extraArgs = "--keep-since 7d --keep 5";
    };
    flake = "/home/pc120/Meu-Nix_server";
  };

  environment.systemPackages = with pkgs; [
    nix-output-monitor
    nvd
  ];
}
