function gd_load()
{
	load();
}

function gd_save(data)
{
	save(data);
}

function gd_data_status()
{
	return getDataStatus();
}

function gd_get_data()
{
	return getData();
}

function gd_check_user_status()
{
	return checkLoggedIn();
}

function gd_get_user_status()
{
	return isLoggedIn();
}