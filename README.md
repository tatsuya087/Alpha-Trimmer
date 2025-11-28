<h1 align="center">
<sub>
<img width="30" src="" />
</sub>
Alpha Trimmer
</h1>

Alpha Trimmerは、Windowsのコンテキストメニュー(右クリックメニュー)から、PNG画像の余分な透明部分を自動的にトリミングするツールです。

## 機能

- **簡単操作**: 画像ファイルを右クリックして「透明部分をトリミング」を選ぶだけ。
- **非破壊編集**: 元の画像は上書きせず、自動的に別名（例: `image-1.png`）で保存します。
- **一括処理**: 複数の画像を選択してまとめて処理できます。

## インストール方法

1. [Releases](https://github.com/tatsuya087/AlphaTrimmer/releases)からインストーラー(`Alpha_Trimmer_Setup.exe`)をダウンロードします。
2. インストーラーを実行し、画面の指示に従ってインストールしてください。

## 使い方

1. トリミングしたいPNG画像を選択します（複数選択可）。
2. 右クリックしてコンテキストメニューを開きます。
3. **「透明部分をトリミング」** をクリックします。
4. 同じフォルダにトリミングされた画像が保存されます。

## 開発者向け情報

### 動作環境

- Windows 10
- Python 3.x

### ビルド方法

必要なライブラリをインストール:
```bash
pip install Pillow PyInstaller
```

exe化:
`build_alpha_trimmer.bat` を実行

インストーラー作成:
Inno Setup で `Installer/setup_alpha_trimmer.iss` をコンパイル
