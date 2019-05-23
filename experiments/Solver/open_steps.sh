#!bin/bash
csplit --digits=1 -b "%02d.dot" --quiet --prefix="$2/step" $1 "/}/+1" "{*}"
ls --sort=time $2/step* | while read step; do
    dot -Tpng "$step" -o "$step.png"&
done
# ls --sort=time out*.png | while read step; do
#     nomacs $step &
# done
# sleep 3
# ls --sort=time out* | while read step; do
#     name="$step - Dot Viewer"
#     windowid=$(xwininfo -name "$name" | awk '$1 == "xwininfo:" {printf $4}')
#     wmctrl -i -r "$windowid" -b add,maximized_vert,maximized_horz &
# done
# ls --sort=time out* | while read step; do
#     xdot $step &
# done
# sleep 3
# ls --sort=time out* | while read step; do
#     name="$step - Dot Viewer"
#     windowid=$(xwininfo -name "$name" | awk '$1 == "xwininfo:" {printf $4}')
#     wmctrl -i -r "$windowid" -b add,maximized_vert,maximized_horz &
# done
