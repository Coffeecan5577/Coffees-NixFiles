{ ... }:
{
  flake.modules.homeManager.applications-note-taking = { lib, pkgs, ...}:
  {
    home.packages = [ pkgs.obsidian ];

    home.activation.obsidianCacheReset = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      cfg="$HOME/.config/obsidian"
      stamp="$cfg/.nix-package"
      current="${pkgs.obsidian}"

      if [ -d "$cfg" ] && [ "$(cat "$stamp" 2>/dev/null)" != "$current" ]; then
      rm -rf "$cfg/Cache" "$cfg/Code Cache" "$cfg/GPUCache"
      printf '%s' "$current" > "$stamp"
      fi
    '';
  };
}
