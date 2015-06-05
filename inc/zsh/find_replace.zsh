find_replace() {
    # Find and replace a string with another string in all included files.

    while getopts 'e:m:v' flag; do
      case "${flag}" in
        e) eflag="$OPTARG" ;;
        m) mflag="$OPTARG" ;;
        v) verbose='true' ;;
        *) error "Unexpected option ${flag}" ;;
      esac
    done

    # Get the old and new string to replace.
    old=${@:$OPTIND:1}
    new=${@:$OPTIND+1:1}

    if [ -z old ] || [ -z new ]
    then
        echo "Illegal number of parameters.\nUsage: find_replace old_string new_string"
    fi

    # Match files with pattern.
    if [ -z "$mflag" ]
    then
        echo $mflag
        match=''
    else
        match="-name $mflag"
    fi

    # Exclude files with given paths.
    if [ -z "$eflag" ]
    then
        exclude='-not \( -path "*./node_modules" -prune \)'
    else
        enquoted="-path '${eflag// /' -path '}'"
        exclude="-not \( $enquoted -prune \)"
    fi

    # Find and replace.
    findCommand="find . $exclude $match -exec sed -i s/$old/$new/g {} \\;"

    if [ ! -z "$verbose" ]
    then
        echo "Running: $findCommand"
    fi

    eval $findCommand
}

alias fr=find_replace
