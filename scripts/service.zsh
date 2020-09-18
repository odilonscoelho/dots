#!/bin/zsh
# install () {
# [[ -e .local/bin ]]&&
# 	{ echo "criando / atualizando link wq" &&
# 	sleep 0.5 &&
# 	ln --verbose --force --relative --symbolic $path_proj/wq .local/bin &&
# 	sleep 0.5 &&
# 	echo "link wq criado/atualizado em .local/bin/wq"} ||\
# 	{ echo "Criando bin no home do usuário .local/bin/" &&
# 	sleep 0.5 &&
# 	mkdir .local/bin &&
# 	echo ".local/bin criado! criando link simbolico do wq" &&
# 	ln --verbose --force --relative --symbolic $path_proj/wq .local/bin &&
# 	sleep 0.5 &&
# 	echo "link wq criado em .local/bin/wq" }

# sleep 0.5
# echo "Atualizando shell..."
# grep -q "$path_proj" .zprofile &&
# 	echo ".zprofile já atualizado!, nenhuma alteração realizada."||\
# 	{echo ". $path_proj/profile.zsh" >> .zprofile && source .zprofile && echo ".zprofile atualizado!"}
# sleep 0.5
# grep -q "$path_proj" .zshrc &&
# 	echo ".zshrc já atualizado!, nenhuma alteração realizada."||\
# 	{ echo ". $path_proj/shell.zsh" >> .zshrc && source .zshrc && echo ".zshrc atualizado!" }
# }
