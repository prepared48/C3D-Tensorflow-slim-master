> train.list
> test.list
COUNT=-1
i=0
for folder in $1/*
do
    COUNT=$[$COUNT + 1]
    for imagesFolder in "$folder"/*
    do
        i=$[i + 1]
        if (( $[i % $2]  == 0 )); then
            echo "$imagesFolder" $COUNT >> test.list
        else
            echo "$imagesFolder" $COUNT >> train.list
        fi        
    done
done
