# python3
sudo <pckg-manager> install python3-venv # Install

python3 -m venv ./path/<name> # Create virtual environment
source ./path/<name>/bin/activate # Activate environment
deactivate # Deactivate environment
rm -rf ./path/<name> # Remove environment

pip install --upgrade pip # Update pip
pip install -r <filename>.txt # Install packages from list

jupyter nbconvert --to script <name>.ipynb # Convert notebook to script
nohup python3 <name>.py > output.log 2>&1 & # Execute script in background
