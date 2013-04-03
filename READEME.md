
## create new cookbooks
 * rake new_cookbook COOKBOOK=nginx CB_PREFIX=hoge-
 * rake new_cookbook COOKBOOK=nginx

## depoly
 * cap -S subnet=CB_PREFIX -S hosts=host chef
 * cap -S subnet=CB_PREFIX -S hosts=host001,host002,host001 chef
 * cap sync_hosts
