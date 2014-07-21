function gls
	git ls-tree HEAD --name-only | ls $argv; 
end
