@echo off
cd /d %~dp0
setlocal enabledelayedexpansion

:: ------------------------------------------------------------
:: STEP 1 - Install pip
echo 🔧 Step 1: Installing pip...

python_embed\python.exe python_embed\get-pip.py

if !errorlevel! neq 0 (
    echo ❌ Pip installation failed!
    pause
    exit /b 1
) else (
    echo ✅ Pip installation successful.
)

:: ------------------------------------------------------------
:: STEP 2 - Install PyTorch 
echo 🧠 Step 2: Installing PyTorch with CUDA 12.8...

python_embed\python.exe -m pip install --upgrade pip

python_embed\python.exe -m pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu128
if !errorlevel! neq 0 (
    echo ❌ PyTorch installation failed.
    pause
    exit /b 1
) else (
    echo ✅ PyTorch installed.
)

:: ------------------------------------------------------------
:: STEP 3 - Install packages from requirements_versions.txt
echo 📦 Step 3: Installing additional dependencies from requirements_versions.txt...

python_embed\python.exe -m pip install -r fooocus\requirements_versions.txt

if !errorlevel! neq 0 (
    echo ❌ Package installation failed.
    pause
    exit /b 1
) else (
    echo ✅ All additional packages installed.
)

:: ------------------------------------------------------------
:: STEP 4 - Create run.bat
echo 📝 Step 4: Creating run.bat...

(
echo @echo off
echo title Launching Fooocus WebUI...
echo cd /d %~dp0
echo.
echo REM Launch Fooocus using embedded Python
echo python_embed\python.exe Fooocus\entry_with_update.py
echo pause
) > run.bat

if exist run.bat (
    echo ✅ run.bat created successfully!
) else (
    echo ❌ Failed to create run.bat
)

echo ✅ Setup complete. You can now double-click run.bat to start Fooocus!
pause
