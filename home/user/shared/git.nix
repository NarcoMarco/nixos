let
  userName = "marco";
  email = "marcocondipodero@gmail.com";
in
{
  programs.git = {
    enable = true;
	# settings = {
	#      user.name = userName;
	#      user.email = email;
	# 	};

	includes = [
		{
			condition = "gitdir:~/git-repos/";
			contents.user = {
				email = "marcocondipodero@gmail.com";
				name = "Marco";
			};
		}
		{
			condition = "gitdir:~/Documents/";
			contents.user = {
				email = "u8494294@anu.edu.au";
				name = "Marco Condipodero";
			};
		}
		];
  };
}
