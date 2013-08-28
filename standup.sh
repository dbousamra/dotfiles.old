if [[ $(date +%w) == 1 ]]
then
    LOOK_BACK=3
else
    LOOK_BACK=1
fi
git l --since="${LOOK_BACK} day ago" --author=Dom
