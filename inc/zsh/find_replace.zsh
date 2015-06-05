find_replace() {
    # Find and replace a string with another string in all included files.

    if [ ${#1} -ne 2 ]
    then
        echo "Illegal number of arguments.\nUsage: find_replace old_string new_string"
    fi

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

    if [ -z "$verbose" ]
    then
        vflag=''
    else
        echo "Begining find and replace..."
        vflag='v'
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
    echo find . $exclude $match -exec sed -i$vflag "s/$old/$new/g" {} \\\;
}

alias fr=find_replace
