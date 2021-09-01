if [[ "$GITHUB_VIA" = *"merge"* ]] && [[ "$GITHUB_USER_LOGIN"='ruipsouto' ]]; then
    echo "Blocking merging of pull request."
    exit 1
fi

exit 0