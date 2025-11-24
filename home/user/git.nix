let
  userName = "marco";
  email = "marcocondipodero@gmail.com";
in
{
  programs.git = {
    enable = true;
    userName = userName;
    userEmail = email;
  };

  programs.gh = {
    enable = true;
    
    settings = {
      git_protocol = "https";

      prompt = "enabled";

      aliases = {
        co = "pr checkout";
      };
    };
  };
}
