;; feature-code

(draw-program "Feature Image" 
	      (lambda ()
		(let ((r      (random-between-integer 3 3))
		      (phone? (ui:running-in-iphone?)))
		  (case r

		    ;; custom tree
		    ((1) (draw-lsys-graph '(f)
					  '((f f [ + + f [ f f ] + f ] f [ - f - f ] f [ - - f [ + f ] - f f ] f [ + f ])) 
					  (if phone? 10 7)    ;; length
					  22                  ;; angle
					  (if phone? 2 3)))   ;; level

		    ;; dragon curve - page 11 
		    ((2) (draw-dragon-curve (if phone? 6 12)  ;; length
					    10))              ;; level

		    ;; custom pattern
		    ((3) (draw-polygon-spiral (if phone? 6 100) ;; length
					      3      ;; sides
					      8      ;; angle
					      2      ;; side increase per iteration
					      40))

		    ;; hexagonal Gosper curve - page 12
		    ((4) (draw-koch-curve 9 (if iphone? 5 10) 3))

		    ))))
