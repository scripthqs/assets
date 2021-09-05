now=$(date "+%Y-%m-%d")
echo "更改路径"
cd D:\user\Desktop\scripthqs\assets
echo "开始提交"
git add -A && git commit -m "$now" && git pull && git push
echo "完成"
read