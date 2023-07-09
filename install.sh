#!/bin/bash
clear
echo "    / \     |"
echo "   /   \    | ______   _____"
echo "  /_____\   | |     \ /     \ |\    /"
echo " /       \  | |  ___/ |     | | \  /"
echo "/         \ | |  \    \_____/ |  \/"
echo "."
echo "This ChatBot was created by @gfs0508. View my github on https://github.com/gfs0508/"
echo "."

read -p "Do you want to install AIron on your PC [Y/N]? " install
if [[ $install == "Y" || $install == "y" ]]; then
    read -p "Do you accept the MIT license? Consult: https://github.com/gfs0508/AIron/blob/main/LICENSE [I accept/I not accept]. " license
    echo

    if [[ $license == "I not accept" || $license == "i not accept" ]]; then
        echo "Installation aborted. License not accepted."

    else
        echo "Installing AIron..."
        echo "Verify Models..."
        echo "- ./models/about-1a.h5"
        if [[ ! -f "./models/about-1a.h5" ]]; then echo "[Error]: Model: \"about-1a.h5\" not found"; else echo "[Success]: Model: \"about-1a.h5\" found"; fi
        echo "- ./models/capitals-1a.h5"
        if [[ ! -f "./models/capitals-1a.h5" ]]; then echo "[Error]: Model: \"capitals-1a.h5\" not found"; else echo "[Success]: Model: \"capitals-1a.h5\" found"; fi
        echo "- ./models/populacion-1a.h5"
        if [[ ! -f "./models/populacion-1a.h5" ]]; then echo "[Error]: Model: \"populacion-1a.h5\" not found"; else echo "[Success]: Model: \"populacion-1a.h5\" found"; fi
        echo "- ./models/history_pt-1a.h5"
        if [[ ! -f "./models/history_pt-1a.h5" ]]; then echo "[Error]: Model: \"history_pt-1a.h5\" not found"; else echo "[Success]: Model: \"history_pt-1a.h5\" found"; fi
        echo "- ./models/history-1a.h5"
        if [[ ! -f "./models/history-1a.h5" ]]; then echo "[Error]: Model: \"history-1a.h5\" not found"; else echo "[Success]: Model: \"history-1a.h5\" found"; fi
        echo "- ./models/science-1a.h5"
        if [[ ! -f "./models/science-1a.h5" ]]; then echo "[Error]: Model: \"science-1a.h5\" not found"; else echo "[Success]: Model: \"science-1a.h5\" found"; fi
        echo "==========================================================="
        echo
        echo "Verify Tokenizers..."
        echo "- ./models/about-1a.pkl"
        if [[ ! -f "./models/about_T-1a.pkl" ]]; then echo "[Error]: Model: \"about-1a_T-1a.pkl\" not found"; else echo "[Success]: Model: \"about-1a_T-1a.pkl\" found"; fi
        echo "- ./models/capitals-1a.pkl"
        if [[ ! -f "./models/capitals_T-1a.pkl" ]]; then echo "[Error]: Model: \"capitals_T-1a.pkl\" not found"; else echo "[Success]: Model: \"capitals-1a_T-1a.pkl\" found"; fi
        echo "- ./models/populacion-1a.pkl"
        if [[ ! -f "./models/populacion_T-1a.pkl" ]]; then echo "[Error]: Model: \"populacion_T-1a.pkl\" not found"; else echo "[Success]: Model: \"populacion-1a_T-1a.pkl\" found"; fi
        echo "- ./models/history_pt-1a.pkl"
        if [[ ! -f "./models/history_pt_T-1a.pkl" ]]; then echo "[Error]: Model: \"history_pt_T-1a.pkl\" not found"; else echo "[Success]: Model: \"history_pt-1a_T-1a.pkl\" found"; fi
        echo "- ./models/history-1a.pkl"
        if [[ ! -f "./models/history_T-1a.pkl" ]]; then echo "[Error]: Model: \"history_T-1a.pkl\" not found"; else echo "[Success]: Model: \"history-1a_T-1a.pkl\" found"; fi
        echo "- ./models/science-1a.pkl"
        if [[ ! -f "./models/science_T-1a.pkl" ]]; then echo "[Error]: Model: \"science_T-1a.pkl\" not found"; else echo "[Success]: Model: \"science-1a_T-1a.pkl\" found"; fi
        echo "==========================================================="
        echo
        echo "Verify Data..."
        echo "- ./data/about-1a.json"
        if [[ ! -f "./data/about-1a.json" ]]; then echo "[Error]: Model: \"about-1a.json\" not found"; else echo "[Success]: Model: \"about-1a.json\" found"; fi
        echo "- ./data/capitals-1a.json"
        if [[ ! -f "./data/capitals-1a.json" ]]; then echo "[Error]: Model: \"capitals-1a.json\" not found"; else echo "[Success]: Model: \"capitals-1a.json\" found"; fi
        echo "- ./data/populacion-1a.json"
        if [[ ! -f "./data/populacion-1a.json" ]]; then echo "[Error]: Model: \"populacion-1a.json\" not found"; else echo "[Success]: Model: \"populacion-1a.json\" found"; fi
        echo "- ./data/history_pt-1a.json"
        if [[ ! -f "./data/history_pt-1a.json" ]]; then echo "[Error]: Model: \"history_pt-1a.json\" not found"; else echo "[Success]: Model: \"history_pt-1a.json\" found"; fi
        echo "- ./data/history-1a.json"
        if [[ ! -f "./data/history-1a.json" ]]; then echo "[Error]: Model: \"history-1a.json\" not found"; else echo "[Success]: Model: \"history-1a.json\" found"; fi
        echo "- ./data/science-1a.json"
        if [[ ! -f "./data/science-1a.json" ]]; then echo "[Error]: Model: \"science-1a.json\" not found"; else echo "[Success]: Model: \"science-1a.json\" found"; fi
        echo "==========================================================="
        echo
        echo "Installing Python Libs..."
        pip install --upgrade pip
        pip install tensorflow==2.11.0
        pip install tensorflow_intel==2.11.0
        pip install nltk==3.8.1
        pip intall Unidecode==1.3.6
        pip install numpy==1.22.2
        echo "==========================================================="
        echo
        echo "Installing Completed..."
        echo "During the first boot, it is normal to take longer."
        echo "To run ChatBot, python main.py"
        echo
        echo "Thank you for downloading and enjoy!!!"
        echo "If possible, buy me a coffee!!"
        echo "==========================================================="
    fi
else
    echo "Installation aborted. AIron not installed."
fi

read -p " "
exit
