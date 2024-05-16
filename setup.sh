echo "Setting up virtual environment ..."
python -m venv .venv

echo "Activating virtual environment ..."
source .venv/bin/activate

echo "Upgrading pip ..."
python -m pip install --upgrade pip

#echo "Installing dependencies..."
python -m pip install -r requirements.txt

echo "Installing Quarto ..."
#python -m pip install quarto
nbdev_install_quarto

echo "Installing Jupyter Lab Quarto ..."
pip install jupyterlab-quarto

echo "Ready to go!"

echo "Do you wish to launch Juptyer Lab? (Ctrl+C to exit)"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) jupyter lab; break;;
        No ) exit;;
    esac
done
