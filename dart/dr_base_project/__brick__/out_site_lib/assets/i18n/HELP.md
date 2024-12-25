# I flutter_blue_dsg

## 1.1 How to setup?
* Step 1: install npm
  on macbook m1:
  arch -arm64 brew upgrade (option)
  arch -arm64 brew install node

* Step 2:
  Biên dịch file json ra nhiều ngôn ngữ:
  Tham khảo: https://www.npmjs.com/package/@parvineyvazov/json-translator
  Mở teminal với quyền Admin
  Run: npm i -g @parvineyvazov/json-translator
if ERROR: zsh: command not found: jsontt
https://stackoverflow.com/a/43989258
  alias jsontt="`npm config get prefix`/bin/jsontt"
  Run: Set-ExecutionPolicy RemoteSigned  (Để cho phép chạy file ps1)

  
## How to use?
* Step 1:
  Run: jsontt path (File sinh ra sẽ có cùng thư mục với file gốc)
  jsontt /Users/ducmng12/Desktop/flutter_project/FlutterPhotoBooth/assets/i18n/_parent.json
  jsontt /Users/ducmng12/Desktop/flutter_project/FlutterPhotoBooth/assets/i18n/_parent.json --module google --from ko --to en ko vi ja
  jsontt /Users/ducmng12/Desktop/flutter_project/FlutterPhotoBooth/assets/i18n/_parent.json --module bing --from ko --to en ko vi ja
  jsontt /Users/ducmng12/Desktop/flutter_project/FlutterPhotoBooth/assets/i18n/_parent.json --module bing --to ko vi ja

  Ctrl + shift + C để copy path của thư mục đang mở.
  Ấn cách để chọn ngôn ngữ,.



# Chat GPT
## How to use?
"Have to small than 100000" 한국어로 번역 주세요





# HELP
## Base
[follow](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

## Short
[follow](https://quickref.me/markdown)

# How to read
[follow](https://stackoverflow.com/a/71063742)
[ios app for run markdown](https://apple.stackexchange.com/a/120625)