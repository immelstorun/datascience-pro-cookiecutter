from enum import Enum
import re
import sys



class Pattern(Enum):
    MODULE = r'^[_a-zA-Z][_a-zA-Z0-9]+$'
    EMAIL = r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"
    FULL_NAME = r"[a-zA-Z]*[ ]+[a-zA-Z]*.*"
    NONEMPTY = r".{2,}"


def validate_entity(pattern: str, entity:str, value: str, special_message: str = ""):
    if not re.match(pattern, value):
        
        print(f'ERROR: {value} is not a valid {entity}! {special_message}')
        sys.exit(1)

validate_entity(Pattern.NONEMPTY.value, 'project_name', "{{ cookiecutter.project_name }}", "The project name should have at least two characters.")
validate_entity(Pattern.EMAIL.value, 'email', "{{ cookiecutter.email }}")
validate_entity(Pattern.FULL_NAME.value, 'author', "{{ cookiecutter.author }}")



