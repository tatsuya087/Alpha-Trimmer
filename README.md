<h1 align="center">
<sub>
<img width="38" src="https://github.com/user-attachments/assets/664eaad4-b13a-4f76-922a-401beaa6c2c6"
" />
</sub>
Alpha Trimmer
</h1>

| [English](#english) | [Japanese](#japanese) |
| :---: | :---: |
| Alpha Trimmer is a Windows tool that automatically trims excess transparent areas from PNG and WebP images via the context menu (right-click menu). | Windowsのコンテキストメニュー(右クリックメニュー)から、PNGおよびWebP画像の余分な透明部分を自動的にトリミングできるツールです。 |

<a name="english"></a>
## English

### Features

- **Easy to use**: Just right-click an image file and select "Trim Transparency".
- **Non-destructive**: The original image is not overwritten; it is automatically saved with a new name (e.g., `image-1.png`).
- **Batch processing**: You can select multiple images and process them at once.
- **Supports PNG and WebP**: Works with both formats.

### Installation

1. Download the installer (`Alpha_Trimmer_Setup.exe`) from [Releases]([https://github.com/YOUR_USERNAME/AlphaTrimmer/releases](https://github.com/tatsuya087/Alpha-Trimmer/releases)).
2. Run the installer and follow the on-screen instructions.

### Usage

1. Select the PNG or WebP image(s) you want to trim (multiple selection supported).
2. Right-click to open the context menu.
3. Click **"Trim Transparency"**.
4. The trimmed image(s) will be saved in the same folder.

### For Developers

#### Requirements

- Windows 10
- Python 3.x

#### Build Instructions

Install required libraries:
```bash
pip install Pillow PyInstaller
```

Build executable:
Run `build_alpha_trimmer.bat`

Create Installer:
Compile `Installer/setup_alpha_trimmer.iss` using Inno Setup.

---

<a name="japanese"></a>
## 日本語

### 機能

- **簡単操作**: 画像ファイルを右クリックして「透明部分をトリミング」を選ぶだけ。
- **非破壊編集**: 元の画像は上書きせず、自動的に別名（例: `image-1.png`）で保存します。
- **一括処理**: 複数の画像を選択してまとめて処理できます。
- **PNG / WebP 対応**: 両方のフォーマットに対応しています。

### インストール方法

1. [Releases]([https://github.com/YOUR_USERNAME/AlphaTrimmer/releases](https://github.com/tatsuya087/Alpha-Trimmer/releases)) からインストーラー (`Alpha_Trimmer_Setup.exe`) をダウンロードします。
2. インストーラーを実行し、画面の指示に従ってインストールしてください。

### 使い方

1. トリミングしたいPNGまたはWebP画像を選択します（複数選択可）。
2. 右クリックしてコンテキストメニューを開きます。
3. **「透明部分をトリミング」** をクリックします。
4. 同じフォルダにトリミングされた画像が保存されます。

### 開発者向け情報

#### 動作環境

- Windows 10
- Python 3.x

#### ビルド方法

必要なライブラリをインストール:
```bash
pip install Pillow PyInstaller
```

exe化:
`build_alpha_trimmer.bat` を実行

インストーラー作成:
Inno Setup で `Installer/setup_alpha_trimmer.iss` をコンパイル
