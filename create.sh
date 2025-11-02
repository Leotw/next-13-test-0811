# 创建200个子目录（每个存100文件）
#seq 1 20000 | xargs -I{} bash -c 'num=$(( ({} -1)/100 +1 )); touch ./.next/dir_$(printf "%03d" $num)/file_{}.txt'
seq 1 20000 | xargs -P 8 -I {} touch "./.next/file_{}.txt"
