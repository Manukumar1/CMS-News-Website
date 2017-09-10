<section>
	<h2>Order pages</h2>
	<p class="alert alert-info">Drag to order pages and then click 'Save'</p>
	<div id="orderResult"></div>
</section>
<script>
$(function(){
	$.post('<?php echo site_url('admin/page/order_ajax'); ?>', {}, function(data){
		$('#orderResult').html(data);
		});
});
</script>