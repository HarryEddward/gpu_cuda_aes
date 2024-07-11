#!/bin/bash

# Verificar si NVIDIA Container Toolkit está instalado
./docker/install_nvidia_toolkit_container.sh

# Nombre del contenedor
container_name="cuda_python_dev_container"

# Directorio padre del directorio actual
parent_dir=$(dirname $(pwd))

# Eliminar contenedor anterior si existe
if [ $(sudo docker ps -a -q -f name=${container_name}) ]; then
    sudo docker stop ${container_name}
    sudo docker rm ${container_name}
fi

# Construir la imagen Docker
sudo docker build -t cuda_python_dev ..

# Ejecutar el nuevo contenedor Docker con NVIDIA GPU
sudo docker run -it --gpus all --name ${container_name} -v ${parent_dir}:/workspace cuda_python_dev /bin/bash
