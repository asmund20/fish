function fish_prompt
    if test $is_remote = "true"
        echo -n (prompt_hostname) "@" (prompt_pwd) " "
    else
        echo -n (prompt_pwd) " "
    end
end
