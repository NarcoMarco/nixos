let
  userName = "marco";
  email = "marcocondipodero@gmail.com";
in
{
  programs.git = {
    enable = true;
	settings = {
      user.name = userName;
      user.email = email;
	};
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
