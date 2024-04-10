# Pro Template for Data Science Projects

## Description

The pro coookiecutter template for data science projects.
The objectives of the project are to:
* leverage .devcontainers in VS Code to isolate dev environment
* use modern VS Code extentions, like ruff
* use fast package manager: poetry, with automated project configuration
* reuse safely .env file from a local host
* automatically create repo on Github
* pre-configure standard Python tools: pytest, tox, mypy, etc.

## Getting Started

### Dependencies
Required to be installed and pre-configured:
* [VS Code](https://code.visualstudio.com/download)
* [Docker](https://docs.docker.com/engine/install/)
* Python package [cookiecutter](https://cookiecutter.readthedocs.io/en/stable/README.html), i.e.: pip install cookiecutter
* [Optional] [Github's official CLI tool](https://cli.github.com/)
* [Optional] Github Copilot extension in VS Code
* [Optional] .env file located in ~/.ssh/.env with environmental variables/secrets


### Executing program

Simply:
```
cookiecutter https://github.com/gox6/datascience-pro-cookiecutter.git
```
### Structure
```
├── {{ cookiecutter.project_slug }}
│   └── ...
├── hooks
│   └── ...
├── cookiecutter.json
├── LICENCE.txt
└── README.md

2 directories, 3 files at the top level
```
### Configuration
To make the regular use even faster I created two aliases in my .zshrc file (please be mindful what shell you are using …):
```
alias pro="cd /Users/mg/inbox/projects"
alias new="pro && cookiecutter https://github.com/gox6/datascience-pro-cookiecutter.git"
```
Another speedup of project creation can be achieved by providing the default values for some project variables in ~/.cookiecutterrc file, i.e.:
```
default_context:
    author: "Jarek Grygolec"
    email: "jgrygolec@gmail.com"
    github_username: "gox6"
```
## Help
Consult component's docs. 

## Roadmap
- [0.2] Incorporate docs creation

## Authors
Contributors names and contact info:
* Jarek Grygolec: jgrygolec@gmail.com


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
