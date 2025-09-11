function nvim
    if test (count $argv) -eq 1
        set target $argv[1]
        if test -d $target
            pushd $target
            command nvim .
            popd
        else
            command nvim $target
        end
    else
        command nvim $argv
    end
end
