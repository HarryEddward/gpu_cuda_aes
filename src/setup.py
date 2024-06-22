from setuptools import setup

setup(
    name='gpu_cuda_aes',
    version='v2',
    author='AdriaMartin',
    author_email='your_email@example.com',
    description='Easy CUDA GPU-accelerated AES encryption library',
    packages=['gpu_cuda_aes'],
    install_requires=[
        'cryptography',
        'matplotlib',
        'pycuda',
        'numpy',
        'pytest',
        'tqdms'
    ],
    long_description='README.md',
    long_description_content_type='text/markdown',
    url='https://github.com/HarryEddward/gpu-cuda-aes',
    classifiers=[
        'Development Status :: 5 - Production/Stable',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: The Unlicense',
        'Programming Language :: Python :: 3 :: Only',
        'Programming Language :: Python :: 3.11',
        'Programming Language :: Python :: 3.12',
    ],
)