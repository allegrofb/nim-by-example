
#Example Code                                   Operator    	Description	
assert 'd' in {'a'..'z'}                       # a in B	        is a an element of B?	
assert 40 notin {2..20}                        # a notin B	    is a not an element of B?	
assert {'a'..'m'} + {'n'..'z'} == {'a'..'z'}   # A + B	        union of A with B	
assert {'a'..'z'} - {'b'..'d'} == {'a', 'e'..'z'}# A - B	    relative complement of A in B	
assert {'b'..'z'} + {'a'} == {'a'..'z'}        # A + {b}	    add element b to set A	
assert {'a'..'z'} - {'a'} == {'b'..'z'}        # A - {b}	    remove element b from set A	
assert {'a'..'m'} * {'c'..'z'} == {'c'..'m'}   # A * B	        intersection of A with B	
assert {'a'..'c'} <= {'a'..'z'}                # A <= B	        is A a subset of B?	
assert {'b'..'c'} < {'a'..'z'}                 # A < B	        is A a strict subset of B?	