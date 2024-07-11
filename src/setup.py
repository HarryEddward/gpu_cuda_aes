from setuptools import setup, find_packages
import os


readme_route = "../README.rst"

#Obtiene el path archivo a ejecutar y obtiene el dir padre
dir_base = os.path.dirname(os.path.abspath(__file__))
readme_path = os.path.join(dir_base, readme_route)
project_lib_path = os.path.join(dir_base, 'simply_cuda_aes', 'v2')

with open(readme_path, "r", encoding="utf-8") as fh:
    long_description = fh.read()

print(dir_base)
print(readme_path)
print(project_lib_path)

setup(
    name="simply_cuda_aes",  # Nombre del paquete
    version="v2",  # Versión inicial
    author="Adrià Martín Martorell",
    author_email="au7812ooae32@gmail.com",
    description="Use in a simply way encrypt & decrypt aes using your gpu (nvidia)",
    long_description=long_description,
    long_description_content_type="text/x-rst",
    url="https://github.com/HarryEddward/gpu_cuda_aes",
    packages=find_packages(where='src'),
    package_dir={'': 'src'},
    include_package_data=True,
    package_data={
        'simply_cuda_aes': ['assets/*', 'v2/**/*.cuh', 'v2/**/*.cu'],
    },
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
)
