{ profile, ... }: {
  programs.bash = {
    enable = false;
    enableCompletion = true;
    shellAliases = {
      sv = "sudo nvim";
      fr = "nh os switch --hostname ${profile}";
      fu = "nh os switch --hostname ${profile} --update";
      ncg = "nix-collect-garbage --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
      v = "nvim";
      vi = "nvim";
      cat = "bat";
      ".." = "cd ..";
    };
  };
}
