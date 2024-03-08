#### 1 - No Windows, abra o PowerShell como administrador.

```
wsl --install
sudo apt install build-essential
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
