#!/usr/bin/zsh

crontab -u username -e # tạo hoặc sửa file crontab cua other user

crontab -e  #tạo hoặc sửa file crontab cua current user
crontab -l  #hiển thị file crontab 
crontab -r  #xóa file crontab


*     *     *     *     *   command
-     -     -     -     -
|     |     |     |     |
|     |     |     |     +-- day of week (0 - 6) (Sunday=0)
|     |     |     +--- month (1 - 12)
|     |     +----- day of month (1 - 31)
|     +------- hour (0 - 23)
+--------- min (0 - 59)


dau phay: xac dinh moc thoi gian nhat dinh: phut, gio, ngay, thang, 0-6
5,10,20 => phut 5 run, phut 10 run , phut 20 run

*/7 => so lan run; =>  7phut run 1 lan, or 7h run 1 lan ..., 


moi 1 phut run 1 lan
* * * * * ./sample.sh

5 phút run 1 lần:
*/5 * * * * zsh simplescript.sh


Chạy một python script vào 4h30 sáng thứ 5 hàng tuần:
30 4 * * 4 python3 pythonscript.py



tu thu 2 toi thu 6 luc 19 gio run
0 19 * * 1-5 sh /home/huan/gui-baocao.sh


thu 3 va thu 6 luc 19 gio rrun
0 19 * * 2,5 sh /home/huan/gui-baocao.sh



@yearly zsh update.sh

@month zsh update.sh

@weekly zsh update.sh

@daily zsh update.sh

@hourly zsh update.sh

@reboot zsh update.sh
