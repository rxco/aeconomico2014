function init_functions_content(){


	$(document).on("change",".subchapter_choose_content",function(){

			var subchapter_selected = $(this).val();
			load_content_by_subchapter(subchapter_selected);
	});





}


function load_content_by_subchapter(_id_subchapter){

	$("#container_content_by_subchapter").html("subchapter id" + _id_subchapter);

	$.getScript("content_loader");
}