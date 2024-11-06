#### 1 - No Windows, abra o PowerShell como administrador.

```
wsl --install
```

#### 2 - Crie um arquivo na raiz do seu usuário ```.wslconfig```

```
[wsl2]
memory=6GB
processors=4
swap=2GB
```

#### 3 - Restart na sua máquina
Ao reiniciar o ubuntu será instalado por padrão, ai basta seguir os passos e criar um usuário e senha para o ambiente linux (WSL)

#### 4 - Atualizar as dependencias da máquina, e instalar os packages core para desenvolvimento

```
sudo apt update
sudp apt upgrade
sudo apt install build-essential
```
#### 5 - Configurando ambiente de desenvolvimento

### Instale o zsh
```
sudo apt install zsh
```
Depois feche o terminal e abra novamente, pode selecionar a opção 2.

### Configurando o terminal com zsh

Instale todos esses plugins
```
https://ohmyz.sh/#install
https://github.com/spaceship-prompt/spaceship-prompt
https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
https://asdf-vm.com/guide/getting-started.html
```

Abra o arquivo de configuração

```
 code ~/.zshrc
```
Pode copiar o meu arquivo de configuração que está nesse mesmo repositório.
Reinicie o terminal

```
 source ~/.zshrc
```

### Escolha um tema para o windows terminal

```
https://windowsterminalthemes.dev/
```

### Baixe uma nerd font

Lembre-se de instalar para todos os usuários.
```
https://www.jetbrains.com/pt-br/lp/mono/
https://github.com/0xType/0xProto
```

### Plugins ASDF
```
asdf plugin add awscli
asdf plugin-add k9s https://github.com/looztra/asdf-k9s
asdf plugin-add kubectx https://github.com/virtualstaticvoid/asdf-kubectx.git
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add pnpm
asdf plugin-add python
asdf plugin-add yarn
asdf plugin-add stern https://github.com/looztra/asdf-stern
asdf plugin-add kubectl https://github.com/asdf-community/asdf-kubectl.git
https://github.com/pbr0ck3r/asdf-protoc-gen-go-grpc
https://github.com/paxosglobal/asdf-protoc
https://github.com/pbr0ck3r/asdf-protoc-gen-go
https://github.com/asdf-community/asdf-golang
```
### Depêndencias para instalar o Python
```
sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
```
