#!/usr/bin/env fish
if which ffmpeg &> /dev/null
    function ffmpeg-concat --wraps ffmpeg
        ffmpeg -f concat -safe 0 -i "$argv[1]" -c copy "$argv[2]"
    end

    function ffmpeg-to-mp4 --wraps ffmpeg
        ffmpeg -i "$argv[1]" -codec copy "$argv[2]"
    end

    function ffmpeg-generate-inputs
        set count "$argv[1]"

        for number in (seq 1 $count)
            echo "file '$PWD/$number.mkv'" >> inputs.txt
        end
    end
end
