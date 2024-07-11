cd ..
sphinx-apidoc -o docs/doc .
cd docs
make html
cd ../recipes