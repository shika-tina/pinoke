# pinoke

G7kL9!vQ2#xR8#pT4mZ6bN1

## ffmpeg

1. 安裝ffmpeg
    1. 第一步：下載 FFmpeg<br>
        前往 FFmpeg 官方下載頁面。<br>
        點選 Windows 圖示，選擇 gyan.dev 這個連結（這是最常用的維護版本）。<br>
        找到 release builds 區塊，下載 ffmpeg-release-essentials.zip。<br>
    2. 第二步：解壓縮與擺放<br>
        將下載好的 .zip 檔解壓縮。<br>
        將資料夾（名稱類似 ffmpeg-7.0.1-essentials_build）重新命名為簡短的 ffmpeg。<br>
        將這個資料夾搬移到 C 槽根目錄下（路徑會變成 C:\ffmpeg）。<br>
        註：進到資料夾內，會看到一個 bin 資料夾，裡面就有 ffmpeg.exe。<br>
    3. 第三步：設定環境變數
        按下鍵盤的 Win + S，搜尋「編輯系統環境變數」並開啟。
        點擊下方的「環境變數 (N)...」。
        在「系統變數」區塊中找到 Path，點一下選取它，然後按「編輯...」。
        點擊右邊的「新增」，輸入：C:\ffmpeg\bin。
        一路按「確定」關閉所有視窗。
    4. 第四步：檢查是否成功
        按下 Win + R，輸入 cmd 並按確認，開啟命令提示字元。
        輸入 ffmpeg -version 然後按 Enter。
        如果你看到一長串關於版本和版權的文字，那就代表安裝成功了

2. 指令
```bash
ffmpeg -i video.m4s -i audio.m4s -c copy output.mp4  # 將m4s音訊和m4s影片轉換成mp4
# -i 代表輸入檔案。
# -c copy 代表直接複製數據（不轉碼、無損、速度快）。

ffmpeg -i input.mkv -c copy output.mp4       # 無損轉檔
ffmpeg -i video.mp4 -vn -q:a 0 output.mp3        # 提取音訊
ffmpeg -ss 00:01:00 -to 00:02:00 -i input.mp4 -c copy output.mp4     # 影片剪接
ffmpeg -i input.mp4 -vf scale=1280:720 output.mp4        # 縮放解析度
ffmpeg -i video.mp4 -t 5 -r 15 output.gif      # 製作 GIF

ffmpeg -i input.mp4 -c copy -map 0 -f segment -segment_time 600 -reset_timestamps 1 output_%03d.mp4
# 如果想把一部長影片自動切成每段 10 分鐘的小檔案
```


## winRAR

```bash
"C:\Program Files\WinRAR\UnRAR.exe" x filename.rar       # 解壓縮
"C:\Program Files\WinRAR\rar.exe" a 壓縮檔名.rar 檔案1 檔案2 資料夾        # 加壓縮
"C:\Program Files\WinRAR\rar.exe" a -p你的密碼 壓縮檔名.rar 檔案路徑        # 加壓縮+密碼
"C:\Program Files\WinRAR\rar.exe" a -hp你的密碼 壓縮檔名.rar 檔案路徑       # 隱藏檔案列表： 如果想讓別人在輸入密碼前連「裡面有什麼檔案」都看不到
```