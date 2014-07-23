$(document).on("ready",function(){

	 var videobackground = new $.backgroundVideo($('#vbackground'), {
                "align": "centerXY",
                "width": 1280,
                "height": 720,
                "path": "videos/",
                "filename": "cloud",
                "types": ["mp4","ogg","webm"]
                });
})