/*Funciones Genericas para APP ANUARIO ECONOMICO 2014 */


/*Se pasa una URL y los parametros necesarios para llamar una acción*/
function llamadaAjax(_url, _params,_fnsuccess,_fndone,_fnfail,_fnalways){

		var jqxhr = $.post( _url , _params, _fnsuccess)
		  .done(_fndone)
		  .fail(_fnfail)
		  .always(_fnalways);

}

/*Se pasa una URL y los parametros necesarios para llamar una acción METHOD GET*/
function llamadaAjaxGet(_url, _params,_fnsuccess,_fndone,_fnfail,_fnalways){
	console.log(_url);
		var jqxhr = $.getJSON( _url , _params, _fnsuccess)
		  .done(_fndone)
		  .fail(_fnfail)
		  .always(_fnalways);

}
