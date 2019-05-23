#!bin/bash
csplit --digits=1  --quiet --prefix=outfile $1 "/}/+1" "{*}"
ls --sort=time out* | while read step; do
    dot -Tpng $step -o "$step.png"&
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
