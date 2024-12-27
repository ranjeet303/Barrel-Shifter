(globals
	version=3
	io_order = clockwise
	space=20
	total_edge=7
)
(iopad
	(topleft
	(inst name="cornercell1" cell=pfrelr offset=0 orientation=R180 place_status=fixed)
	)
	
	(left
	(inst name="Iin0" cell=pc3d01 place_status=fixed)
	(inst name="Iin1" cell=pc3d01 place_status=fixed)
     (inst name="VDD" cell=pvdi place_status=fixed)
	(inst name="Iin2" cell=pc3d01 place_status=fixed)
	(inst name="Iin3" cell=pc3d01 place_status=fixed)
     (inst name="VDDO" cell=pvda place_status=fixed)
	)
	
	(topright
	(inst name="cornercell2" cell=pfrelr offset=0 orientation=R90 place_status=fixed)
	)
	
	(top
	(inst name="Ictrl2" cell=pc3d01 place_status=fixed)
	(inst name="Iin4" cell=pc3d01 place_status=fixed)
	(inst name="Iin5" cell=pc3d01 place_status=fixed)
	(inst name="Iin6" cell=pc3d01 place_status=fixed)
    (inst name="Iin7" cell=pc3d01 place_status=fixed)
	(inst name="Idir" cell=pc3d01 place_status=fixed)	
	
	)
	
	(bottomright
	(inst name="cornercell3" cell=pfrelr offset=0 orientation=R0 place_status=fixed)
	)
	
	(right
	(inst name="out0" cell=pc3o01 place_status=fixed)
	(inst name="out1" cell=pc3o01 place_status=fixed)
     (inst name="VSS" cell=pv0i place_status=fixed)
     (inst name="out2" cell=pc3o01 place_status=fixed)
	 (inst name="out3" cell=pc3o01 place_status=fixed)
      (inst name="VSSO" cell=pv0a place_status=fixed)

	
	)
	
	(bottomleft
	(inst name="cornercell4" cell=pfrelr offset=0 orientation=R270 place_status=fixed)
	)
	
	(bottom
    (inst name="out4" cell=pc3o01 place_status=fixed)
	(inst name="out5" cell=pc3o01 place_status=fixed)
    (inst name="out6" cell=pc3o01 place_status=fixed)
	(inst name="out7" cell=pc3o01 place_status=fixed)
    (inst name="Ictrl0" cell=pc3d01 place_status=fixed)
    (inst name="Ictrl1" cell=pc3d01 place_status=fixed)
	
	)
)	
			
