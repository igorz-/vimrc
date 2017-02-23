cp ~/.vimrc .
git add .vimrc
message="Sync: $(date)"
git commit -m "$message"
git push

