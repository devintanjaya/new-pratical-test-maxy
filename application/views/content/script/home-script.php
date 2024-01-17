<script>

	$(document).ready(function(){
		refresh_table();
	});

	function refresh_table()
	{
		$("#tabel").load("<?php echo base_url('Home/refresh_barang') ?>", function(){

		});
	}

	$("#to-add-barang").click(function(){
		window.location.href = "<?= base_url() . 'barang/add' ?>";
	});

	//$(".update").click(function(){
	$(document).on("click", ".update", function(){
		console.log("edit barang di click");
		var selected_id = $(this).attr("id");
		var arr_id = selected_id.split("-");
		var selected_index = arr_id[arr_id.length - 1];
		var id = selected_index;
		window.location.href = "<?= base_url() . 'barang/update/' ?>" + id;
	});

	$(document).on("click", ".delete", function(){
		var selected_id = $(this).attr("id");
		var arr_id = selected_id.split("-");
		var selected_index = arr_id[arr_id.length - 1];
		var id = selected_index;
		$("#delete-confirmation").modal("show");
		$("#delete-id").val(id);
	});

	$(document).on("click", "#delete-yes", function(){
		var delete_id = $("#delete-id").val();
		if (delete_id != undefined && delete_id > 0) {
			var id = delete_id;
			$.post( "<?= base_url("home/delete_barang") ?>",
                { id : id })
            .done(function( data ) {
            	alert("delete barang berhasil");
            	refresh_table();
            	$("#delete-confirmation").modal("hide");
            	$("#delete-confirmation").hide();
				$("#delete-id").val(0);
            });
		}
	});

	$(document).on("click", "#delete-no", function(){
		$("#delete-confirmation").modal("hide");
		$("#delete-confirmation").hide();
		$("#delete-id").val(0);
	});

</script>
