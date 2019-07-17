# sleepi2-firmware  
slee-Pi 2 を動作させるためのファームウェアを提供します。

## 提供ファイル  
次のファイルがパッケージに含まれています。

### /boot/overlays/sleepi2.dtbo  
slee-Pi 2 を動作させるための Device Tree Blob ファイルです。

### /usr/share/doc/sleepi-firmware/copyright  
パッケージに含まれるファイルの著作権を記述したファイルです。

### /usr/share/doc/sleepi-firmware/changelog.Debian.gz  
パッケージの変更点を記録したファイルです。

## 設定  
インストール時に次のファイルが変更されます。

### /boot/config.txt  
次のエントリが追記されます。
```
dtoverlay=sleepi2
```

次のパラメータが指定可能です。
* heartbeat_pin=\<n\>  
  HEARTBEAT 信号の割り当てを変更します。  
  <n> には GPIO 番号を指定します。  

* noheartbeat  
  HEARTBEAT 信号の設定を無効にします。  

* cpuheartbeat  
  HEARTBEAT 信号を CPU のハードウェアで生成します。  

* interrupt_pin=\<n\>  
  IRQ 信号の割り当てを変更します。  
  <n> には GPIO 番号を指定します。  

* nointerrupt  
  IRQ 信号の設定を無効にします。  


インストール時に次のコマンドが実行されます。

* raspi-config  
  i2c を有効にします。  
  ```
  raspi-config nonint do_i2c 0
  ```
  i2c の周波数を固定します。  
  ```
  raspi-config nonint set_config_var core_freq 250 /boot/config.txt
  ```
