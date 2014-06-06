$(document).ready(function(){


	$(document).on("click",".listaPerfiles", function(){

		var _subchapter_id  = $(this).attr("data-subchapter-id");
		var _profile_id  	= $(this).attr("data-profile-id");


		var _url= "/delete_subchapter_profile";
		var _params = {subchapter_id: _subchapter_id, profile_id:_profile_id};

		llamadaAjax( _url , _params);

	});


	$(document).on("click",".agregar_perfil",function(){
		var _selected_profile = $(this).parent().find("select").val();

		var _subchapter_id = $(this).parent().find("a").attr("data-profile-id");
		
		var _url= "/create_subchapter_profile";
		var _params = {subchapter_id: _subchapter_id, profile_id:_selected_profile};

		llamadaAjax( _url , _params);
	});




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



});