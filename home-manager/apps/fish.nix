{
  programs.fish = {
    enable = true;

    shellInit = ''
      set NIXPKGS_ALLOW_UNFREE 1
      set -U fish_greeting
      starship init fish | source
      zoxide init fish | source
      bind \b 'backward-kill-word'
      bind \ea 'prevd-or-backward-word'
      bind \ed 'nextd-or-forward-word'
    '';

    shellAbbrs = {
      l = "exa";
      la = "exa -la";
      ll = "exa -l";
      ls = "exa";
      cat = "bat";
      dots = "cd ~/dots/";
      hm = "cd ~/dots/home-manager";
      home = "cd ~/dots/home-manager";
      os = "cd ~/dots/os/";
      apps = "~/dots/home-manager/apps/";
      trash = "cd ~/trash";
      srm = "sudo rm";
      srmr = "sudo rm -r";
      shx = "sudo hx";
      fonts = "fc-list";
      config = "~/.config";
      cd = "z";
    };

    functions = {
      jot = "echo $argv >> ~/Sync/notes/Jot.md";
    };
  };
}
