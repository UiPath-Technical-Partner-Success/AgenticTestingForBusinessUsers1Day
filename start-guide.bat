@echo off
cd /d "%~dp0"
echo Starting MkDocs server for Agentic Testing for Business People Workshop Guide...

if not exist ".venv\Scripts\python.exe" (
    echo First run: creating virtual environment and installing the guide requirements...
    python -m venv .venv || (echo Python not found. Install Python 3 and try again. & pause & exit /b 1)
    .venv\Scripts\python.exe -m pip install --quiet -r requirements.txt || (echo Install failed. & pause & exit /b 1)
)

start "" http://127.0.0.1:8000
.venv\Scripts\python.exe -m mkdocs serve --dev-addr 127.0.0.1:8000
pause
