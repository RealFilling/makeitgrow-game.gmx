var delay = 5000;

function gd_set_delay(ms)
{
	delay = ms;
}

function load()
{
	dataReady = false;
	dataStatus = 0;
	saveDataFinal = "";
	setTimeout("updateData()", delay);	
}

var saveDataFinal = "";
function save(saveData)
{
	saveDataFinal = saveData;
	dataReady = false;
	dataStatus = 0;
	setTimeout("updateData()", delay);
}

var finalData = "";
var dataReady = false;
var dataStatus = 0;

function getDataStatus()
{
	return dataStatus;
}

function getData()
{
	return finalData;
}

function updateData()
{
	dataReady = true;
	dataStatus = 1;
	finalData = saveDataFinal;
	saveDataFinal = "";
}

var isLogged = 0;
var isLoggedNext = 1;
function gd_set_logged_in(data)
{
	isLoggedNext = data;
	if ((data != 1) && (data != 2))
	{
		isLoggedNext = 1;	
	}
	
}
function checkLoggedIn()
{
	isLogged = 0;
	setTimeout("updateLogIn()", delay);
}

function updateLogIn()
{
	isLogged = isLoggedNext;
}
function isLoggedIn()
{
	return isLogged;
}