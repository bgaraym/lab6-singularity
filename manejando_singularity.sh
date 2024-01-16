#!/bin/bash

echo "1. Ejecutando hostname"
echo "En ibsen:"
hostname
echo "En el contenedor mypython.sif de Singularity:"
singularity exec singularity/my-python.sif hostname

echo

echo "2. Ejecutando cat /etc/os-release"
echo "En ibsen:"
cat /etc/os-release
echo "En el contenedor mypython.sif de Singularity:"
singularity exec singularity/my-python.sif cat /etc/os-release

echo

echo "3. Ejecutando pwd"
echo "En ibsen:"
pwd
echo "En el contenedor mypython.sif de Singularity:"
singularity exec singularity/my-python.sif pwd

echo

echo "4. Ejecutando ls -l /home"
echo "En ibsen:"
ls -l /home
echo "En el contenedor mypython.sif de Singularity:"
singularity exec singularity/my-python.sif ls -l /home

echo

echo "5. Ejecutando python --version"
echo "En ibsen:"
python --version
echo "En el contenedor mypython.sif de Singularity:"
singularity exec singularity/my-python.sif python --version

echo

echo "6. Ejecutando notebook pi.ipynb"
echo "En ibsen:"
ipython source/pi.ipynb 100000
echo "En el contenedor mypython.sif de Singularity:"
singularity exec singularity/my-python.sif ipython /app/pi.ipynb 100000

