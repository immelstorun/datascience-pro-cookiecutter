#!/bin/bash
github_username="{{ cookiecutter.github_username }}"

if [[ ! -z $github_username ]]; then
    cd {{ cookiecutter.project_path }}
    gh repo create {{ cookiecutter.project_slug }} --private
    git init
    git checkout -b main  # Создаём ветку main вместо master
    git add -A
    git commit -m "initializing the repository"
    git remote add origin git@github.com:{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}.git
    git push -u -f origin main
    cd $was_path
fi
