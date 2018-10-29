var stopped = false;
onmessage = function(e){
    if (e.data=="stop"){

    }
}
function is_prim(n)
{
	for (var i = 2; i * i <= n; i++)
		if (n % i == 0)
			return false;
	return true;
}
//-------------------------------
function calculeaza_prime(strat_value)
{
    if(stopped);
    else{
for (var i = strat_value; i < strat_value + 1000; i++)
	if (is_prim(i))
        postMessage(i);
        strat_value +=1000;
    }
    if(strat_value<1e10)
    setInterval(calculeaza_prime, 1, strat_value);
else
postMessage("gata");
}