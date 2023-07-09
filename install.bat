@echo off
cls
echo     /^ \    ^|
echo    /   \   ^| ______   _____
echo   /_____\  ^| ^|     \ /     \ ^|\    /
echo  /       \ ^| ^|  ___/ ^|     ^| ^| \  /
echo /         \^| ^|  \    \_____/ ^|  \/
echo .
echo This ChatBot was created by @gfs0508. View my github on https://github.com/gfs0508/
echo .

set /p install=Do you want to install AIron on your PC [Y/N]? 
if /i "%install%"=="Y" (
    set /p license=Do you accept the MIT license? Consult: https://github.com/gfs0508/AIron/blob/main/LICENSE [I accept/I not accept]. 
    echo.

    if /i "%license%" == "I accept" (
        echo Installation aborted. License not accepted.
    ) else (
        echo Installing AIron...
        echo Verify Models...
        echo - ./models/about-1a.h5 
        IF NOT EXIST "./models/about-1a.h5" ( echo [Error]: Model: "about-1a.h5" not found ) ELSE ( echo [Success]: Model: "about-1a.h5" found)
        echo - ./models/capitals-1a.h5
        IF NOT EXIST "./models/capitals-1a.h5" ( echo [Error]: Model: "capitals-1a.h5" not found ) ELSE ( echo [Success]: Model: "capitals-1a.h5" found)
        echo - ./models/populacion-1a.h5
        IF NOT EXIST "./models/populacion-1a.h5" ( echo [Error]: Model: "populacion-1a.h5" not found ) ELSE ( echo [Success]: Model: "populacion-1a.h5" found)
        echo - ./models/history_pt-1a.h5
        IF NOT EXIST "./models/history_pt-1a.h5" ( echo [Error]: Model: "history_pt-1a.h5" not found ) ELSE ( echo [Success]: Model: "history_pt-1a.h5" found)
        echo - ./models/history-1a.h5
        IF NOT EXIST "./models/history-1a.h5" ( echo [Error]: Model: "history-1a.h5" not found ) ELSE ( echo [Success]: Model: "history-1a.h5" found)
        echo - ./models/science-1a.h5
        IF NOT EXIST "./models/science-1a.h5" ( echo [Error]: Model: "science-1a.h5" not found ) ELSE ( echo [Success]: Model: "science-1a.h5" found)
        echo ===========================================================
        echo .
        echo Verify Tokenizers...
        echo - ./models/about-1a.pkl
        IF NOT EXIST "./models/about_T-1a.pkl" ( echo [Error]: Model: "about-1a_T-1a.pkl" not found ) ELSE ( echo [Success]: Model: "about-1a_T-1a.pkl" found)
        echo - ./models/capitals-1a.pkl
        IF NOT EXIST "./models/capitals_T-1a.pkl" ( echo [Error]: Model: "capitals_T-1a.pkl" not found ) ELSE ( echo [Success]: Model: "capitals-1a_T-1a.pkl" found)
        echo - ./models/populacion-1a.pkl
        IF NOT EXIST "./models/populacion_T-1a.pkl" ( echo [Error]: Model: "populacion_T-1a.pkl" not found ) ELSE ( echo [Success]: Model: "populacion-1a_T-1a.pkl" found)
        echo - ./models/history_pt-1a.pkl
        IF NOT EXIST "./models/history_pt_T-1a.pkl" ( echo [Error]: Model: "history_pt_T-1a.pkl" not found ) ELSE ( echo [Success]: Model: "history_pt-1a_T-1a.pkl" found)
        echo - ./models/history-1a.pkl
        IF NOT EXIST "./models/history_T-1a.pkl" ( echo [Error]: Model: "history_T-1a.pkl" not found ) ELSE ( echo [Success]: Model: "history-1a_T-1a.pkl" found)
        echo - ./models/science-1a.pkl
        IF NOT EXIST "./models/science_T-1a.pkl" ( echo [Error]: Model: "science_T-1a.pkl" not found ) ELSE ( echo [Success]: Model: "science-1a_T-1a.pkl" found)
        echo ===========================================================
        echo .
        echo Verify Data...
        echo - ./data/about-1a.json
        IF NOT EXIST "./data/about-1a.json" ( echo [Error]: Model: "about-1a.json" not found ) ELSE ( echo [Success]: Model: "about-1a.json" found)
        echo - ./data/capitals-1a.json
        IF NOT EXIST "./data/capitals-1a.json" ( echo [Error]: Model: "capitals-1a.json" not found ) ELSE ( echo [Success]: Model: "capitals-1a.json" found)
        echo - ./data/populacion-1a.json
        IF NOT EXIST "./data/populacion-1a.json" ( echo [Error]: Model: "populacion-1a.json" not found ) ELSE ( echo [Success]: Model: "populacion-1a.json" found)
        echo - ./data/history_pt-1a.json
        IF NOT EXIST "./data/history_pt-1a.json" ( echo [Error]: Model: "history_pt-1a.json" not found ) ELSE ( echo [Success]: Model: "history_pt-1a.json" found)
        echo - ./data/history-1a.json
        IF NOT EXIST "./data/history-1a.json" ( echo [Error]: Model: "history-1a.json" not found ) ELSE ( echo [Success]: Model: "history-1a.json" found)
        echo - ./data/science-1a.json
        IF NOT EXIST "./data/science-1a.json" ( echo [Error]: Model: "science-1a.json" not found ) ELSE ( echo [Success]: Model: "science-1a.json" found)
        echo ===========================================================
        echo .
        echo Installing Python Libs...
        python -m ensurepip --default-pip
        pip install --upgrade pip
        pip install tensorflow==2.11.0
        pip install tensorflow_intel==2.11.0
        pip install nltk==3.8.1
        pip intall Unidecode==1.3.6
        pip install numpy==1.22.2

        echo ===========================================================
        echo .
        echo Installing Completed...
        echo During the first boot, it is normal to take longer.
        echo To run ChatBot, python main.py
        echo .
        echo Thank you for downloading and enjoy!!!
        echo If possible, buy me a coffee!! 
        echo ===========================================================
    )
) else (
    echo Installation aborted. AIron not installed.
)

pause
exit