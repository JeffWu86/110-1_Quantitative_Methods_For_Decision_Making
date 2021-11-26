###作業：找出看最多影片的；用程式碼比對benchmark

attach(homework)
maxviedeo = max(homework$To)
maxviedeo
homework[To == maxviedeo, 1]
