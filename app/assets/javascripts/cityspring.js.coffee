# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	 $('#locations').dataTable() 
	 sPaginationType: "full_numbers", 
	 leftColumns: 2


	 	#aoColumnDefs: [
 		#	{bSearchable: false, "aTargets: [2, 3, 4]"}
	 	 #]


	 	#"columnDefs": [{
	 	#	targets: 2, 3, 4
	 	#	searchable: false
	 	# }]

	  # scrollY: 300,
      #  scrollX: 100%,
      #  "scrollCollapse": true
       
        

     #var table = $('#locations').DataTable( {
      #  scrollY:        "300px",
       # scrollX:        true,
       # scrollCollapse: true
     #  sPaginationType: "full_numbers"
    #} );
    #new $.fn.dataTable.FixedColumns( table, {
    #    leftColumns: 2
    #} );
#} );