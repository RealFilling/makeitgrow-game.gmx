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

function gd_get_tutorial_step (step) {
  return tutorial_step(step);
}

function gd_save_tutorial_status(status) {
  return save_tutorial(status);
}

function gd_mixpanel_register(name, params) {
  mixpanel.track(name,JSON.parse(params));
}