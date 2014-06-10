/*Funciones Genericas para APP ANUARIO ECONOMICO 2014 */


/*Se pasa una URL y los parametros necesarios para llamar una acción*/
function llamadaAjax(_url, _params){

		var jqxhr = $.post( _url , _params, function() {
		  alert( "success" );
		})
		  .done(function() {
		    alert( "second success" );
		  })
		  .fail(function() {
		    alert( "error" );
		  })
		  .always(function() {
		    alert( "finished" );
		});

}