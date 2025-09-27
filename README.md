# 🌌 Dotfiles for Arch + KDE

Este repositorio contiene mis configuraciones personales (**dotfiles**) para:

* 🐚 **Zsh** + Oh My Zsh + Powerlevel10k
* 🐱 **Kitty terminal** con transparencia + blur
* 🎨 **SDDM (Sugar Candy theme)** personalizado

La idea es poder replicar todo mi entorno en cualquier instalación de **Arch Linux + KDE Plasma** con un solo comando.

---

## 📂 Estructura del repo

```
dotfiles/
├── kitty/.config/kitty/kitty.conf
├── zsh/.zshrc
├── zsh/.p10k.zsh
├── zsh/sprite.sh
└── sddm/
    ├── etc/sddm.conf.d/kde_settings.conf
    └── usr/share/sddm/themes/sugar-candy/...
```

* **kitty/** → configuración de la terminal Kitty
* **zsh/** → configuración de Zsh y Powerlevel10k
* **sddm/** → tema y configuración de login (Sugar Candy)

---

## ⚡ Requisitos

Antes de instalar asegúrate de tener:

```bash
sudo pacman -S git stow zsh kitty sddm
```

---

## 🚀 Instalación en otra máquina

1. Clonar este repositorio:

```bash
git clone https://github.com/germanCAST/dotfiles ~/.dotfiles
cd ~/.dotfiles
```

2. Aplicar configuraciones de usuario (kitty + zsh):

```bash
stow kitty zsh
```

3. Aplicar configuraciones de sistema (SDDM):

```bash
sudo stow -d ~/.dotfiles -t / sddm
```

4. Reiniciar SDDM para aplicar el tema:

```bash
sudo systemctl restart sddm
```

---

## 🛠️ Personalización

* Modificar **kitty**: `~/.config/kitty/kitty.conf`
* Modificar **zsh**: `~/.zshrc` y `~/.p10k.zsh`
* Modificar **sddm**:

  ```
  /usr/share/sddm/themes/sugar-candy/theme.conf
  ```

---

## 📝 Notas

* Todos los dotfiles están organizados para funcionar con **GNU Stow**.
* Con un solo comando puedes reinstalar todo tu entorno.
* El tema **Sugar Candy** soporta blur, transparencia y muchas opciones visuales.

---







<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/435f6ad6-5ac6-4381-a062-4103cfa02bf1" />
