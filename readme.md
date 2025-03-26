# ⚡ Fooocus RTX 50-Series Compatible (Portable Version)

## 🧠 Hassle-Free Setup for RTX 5080 / 5090 Users

[Fooocus](https://github.com/lllyasviel/Fooocus) is one of the best Stable Diffusion UIs, but it's not directly compatible with **RTX 50-series GPUs** (like 5080 or 5090) due to **newer CUDA versions (12.8+)**.

This repository fixes that issue by bundling:

- ✅ A patched version of PyTorch that works with CUDA 12.8
- ✅ All required dependencies
- ✅ Embedded Python (no need to install Python globally)
- ✅ Ready-to-run `.bat` launcher

---

## ✅ Features

- Fully self-contained and portable (no PATH changes)
- Works out of the box on RTX 5080 / 5090 GPUs
- Fast iteration speeds on modern GPUs
- Supports additional model downloads
- Offline and portable — perfect for air-gapped setups

---

## 📥 Download Options

### 🔹 Option 1: Download Full Pack (Recommended)

📦 [Download from My Server](https://www.tartanak.com/alibakhtiari2/fooocusrtx508090.rar)


Just extract and double-click `run.bat`. No installation needed.

---

### 🔹 Option 2: Clone & Install Locally

```bash
git clone https://github.com/alibakhtiari2/fooocusrtx508090.git
cd fooocusrtx508090

Then run:
install.bat

This will:
Install pip into embedded Python
Install PyTorch Nightly (with CUDA 12.8 support)
Install all dependencies from requirements_versions.txt
Generate run.bat to launch Fooocus

⚠️ Note: Ignore yellow warnings like "pip not in PATH" — this uses embedded Python, and no global setup is required.

🕒 Setup time: ~5–10 minutes depending on your connection.

🖼️ Add or Upgrade Models
To add custom models:
Download .safetensors or .ckpt models from Civitai or Hugging Face

Place them inside the following directory:
Fooocus\models\checkpoints\
You can now select them in the Fooocus UI after launching the app.

🧪 Tested Hardware
This version is tested and working on:

✅ NVIDIA RTX 5080

✅ NVIDIA RTX 5090

High-speed performance and full compatibility confirmed.

🚀 How to Launch
After setup is complete, simply run:
run.bat
This launches the Fooocus Web UI using the embedded Python runtime and compatible CUDA build.

🙏 Credits
Original Project: Fooocus by lllyasviel

Modified & Packaged by: Ali Bakhtiari alibakhtiari2@gmail.com

⚖️ License & Use Notice
This repo is provided for compatibility and educational purposes.

Code is under MIT License (from Fooocus)

Models and runtime builds are under their respective licenses:

PyTorch: BSD-style license

SDXL & derivatives: CreativeML Open RAIL-M license

You are responsible for following licensing and usage rules when distributing or modifying models.
