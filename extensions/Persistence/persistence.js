function gd_load()
{
	return load();
}

function gd_save(data,hypertime)
{
	return save(data,hypertime);
}

function gd_get_user_status()
{
	return isLoggedIn();
}

function gd_log(msg)
{
  console.log(msg);
  return 1;
}