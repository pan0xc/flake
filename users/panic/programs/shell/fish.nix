{
  pkgs,
  ...
}:

{

  programs.fish.enable = true;
  users.users.panic.shell = pkgs.fish;

  hjem.users.panic.rum.programs.fish = {
    enable = true;

    functions = {
      fish_greeting = pkgs.writers.writeFish "fish_greeting.fish" ''
        function fish_greeting
          set user $USER

          set greetings \
          "  [EN] Hello, $user!" \
          "  [ZH] 你好，$user！" \

          set greet (random choice $greetings)
          echo $greet
        end
      '';
    };
  };
}
