if [[ "$GITHUB_VIA" = *"merge"* ]] && [[ "$GITHUB_USER_LOGIN"='igor.sousa' ]]; then
    echo "Blocking merging of pull request."
    exit 1
fi

exit 0