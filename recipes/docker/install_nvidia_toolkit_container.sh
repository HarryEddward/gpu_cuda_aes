#!/bin/bash

# Función para verificar si un paquete está instalado
is_installed() {
    dpkg -l | grep -q "$1"
}

# Verificar si nvidia-container-toolkit ya está instalado
if is_installed "nvidia-container-toolkit"; then
    echo "NVIDIA Container Toolkit ya está instalado. Saliendo del script."
    exit 0
fi

# Añadir repositorio y clave GPG
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

# (Opcional) Habilitar paquetes experimentales
sudo sed -i -e '/experimental/ s/^#//g' /etc/apt/sources.list.d/nvidia-container-toolkit.list

# Actualizar lista de paquetes
sudo apt-get update

# Instalar NVIDIA Container Toolkit
sudo apt-get install -y nvidia-container-toolkit
sudo apt-get install -y nvidia-docker2

# Configurar Docker para usar NVIDIA Container Runtime
sudo nvidia-ctk runtime configure --runtime=docker

# Reiniciar Docker
sudo systemctl restart docker

echo "NVIDIA Container Toolkit instalado y configurado con éxito."
