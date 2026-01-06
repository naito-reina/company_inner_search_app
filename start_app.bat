@echo off
chcp 65001 >nul
echo Streamlitアプリを起動します...
echo.

REM 仮想環境を有効化
call env\Scripts\activate.bat

REM python-dotenvがインストールされているか確認
python -c "import dotenv" 2>nul
if errorlevel 1 (
    echo python-dotenvがインストールされていません。インストールします...
    pip install python-dotenv==1.0.1
)

REM Streamlitアプリを起動
echo.
echo Streamlitアプリを起動中...
cd sauce
streamlit run main.py

pause


