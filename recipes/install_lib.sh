
cd ../src
python setup.py sdist bdist_wheel
cd dist
pip uninstall simply_cuda_aes
pip install simply_cuda_aes-2-py3-none-any.whl