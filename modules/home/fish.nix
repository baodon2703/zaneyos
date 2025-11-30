{ profile
, pkgs
, lib
, ...
}: {
  programs.fish = {
    enable = true;
    # TRAMP compatibility - runs early in fish startup
    interactiveShellInit = ''
      if test "$TERM" = "dumb"
        function fish_prompt; echo "\$ "; end
        function fish_right_prompt; end
        function fish_greeting; end
        function fish_title; end
      end
    '';

    shellAliases = {
      sv = "sudo nvim";
      v = "nvim";
      vi = "nvim";
      c = "clear";
      fr = "nh os switch --hostname ${profile}";
      fu = "nh os switch --hostname ${profile} --update";
      ncg = "nix-collect-garbage --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
      cat = "bat";
      man = "batman";
    };
  };
}
