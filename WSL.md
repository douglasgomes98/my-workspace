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

Eu uso essa, deixo de recomendação.
Lembre-se de instalar para todos os usuários.
```
https://www.jetbrains.com/pt-br/lp/mono/
```

