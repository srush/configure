function glsu
	git status . --short | cut -d " " -f 2 | xargs ls $argv; 
end
