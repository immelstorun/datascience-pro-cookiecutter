# {{ cookiecutter.project_name}}

{{ cookiecutter.project_description}}

## Description

An in-depth paragraph about your project and overview of use.

## Getting Started

### Dependencies

* Describe any prerequisites, libraries, OS version, etc., needed before installing program.
* ex. Windows 10

### Installing

* How/where to download your program
* Any modifications needed to be made to files/folders

### Executing program

* How to run the program
* Step-by-step bullets
```
code blocks for commands
```

### Structure
```
{{ cookiecutter.project_slug }}
├── .devcontainer
│   ├── Dockerfile
│   ├── devcontainer.json
│   └── post-install.sh
├── artifacts
├── data
├── sandbox
├── src
│   └── {{ cookiecutter.project_slug }}
│       └── __init__.py
├── tests
│   └── __init__.py
├── .bashrc
├── LICENCE.txt
├── README.md
├── poetry.toml
├── pyproject.toml
├── pytest.ini
└── tox.ini

8 directories, 12 files
```
### Configuration
You can inherit some configurations from the host to the container with the help of bind mounts.
There are 2 built-in bind mounts, defined in ```./.devcontainer/devcontainer.json```:
- Git confuguration: from ```~/.gitconfig``` on the host to ```/home/vscode/.gitconfig``` on the container,
- .env file: from ```~/.ssh/.env``` on the host to ```/home/vscode/.ssh/.env``` on the container,
## Help

Any advise for common problems or issues.
```
command to run if program contains helper info
```

## Roadmap
- [x] Initial release
- [ ] Fly to the Moon!

## Authors

Contributors names and contact info:
* {{ cookiecutter.author }}: {{ cookiecutter.email }}


## Version History

* 0.1
    * Initial Release

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

## Acknowledgments

Inspiration, code snippets, etc.
* [awesome-readme](https://gist.github.com/DomPizzie/7a5ff55ffa9081f2de27c315f5018afc)
* [Using Python and Poetry inside a Dev Container](https://marioscalas.medium.com/using-python-and-poetry-inside-a-dev-container-33c80bc5a22c)
* [How To Test And Build Python Packages With Pytest, Tox And Poetry](https://pytest-with-eric.com/automation/pytest-tox-poetry/)