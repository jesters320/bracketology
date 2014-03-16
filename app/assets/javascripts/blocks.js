$( document ).ready(function() {
		$(".block_box").hover(
		  function() {
			$(this).addClass("block_box-hover");
		  }, function() {
			$( this ).removeClass("block_box-hover");
		  }
		);
  });

