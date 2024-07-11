FROM nvidia/cuda:11.4.3-devel-ubuntu20.04

# Instalar dependencias
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
    python3-dev \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Instalar pipenv y otros paquetes Python
RUN pip3 install --upgrade pip setuptools wheel

# Establecer variables de entorno para CUDA
ENV CUDA_HOME=/usr/local/cuda
ENV PATH=${CUDA_HOME}/bin:${PATH}
ENV LD_LIBRARY_PATH=${CUDA_HOME}/lib64:${LD_LIBRARY_PATH}
ENV CUDA_INC_DIR=${CUDA_HOME}/include

# Verificar que CUDA está configurado correctamente
RUN nvcc --version

# Instalar pycuda
RUN pip3 install pycuda

# Crear directorio de trabajo
WORKDIR /workspace

# Copiar los archivos de trabajo en el contenedor
COPY . /workspace

# Ejecutar bash
CMD ["/bin/bash"]
