# Enabling .bashrc for the project
echo -e "\n# sourcing project .projectrc\nif [ -f \"\$PROJECT_PATH/.projectrc\" ]; then\n    . \"\$PROJECT_PATH/.projectrc\"\nfi" >> /home/vscode/.bashrc

# Configuring the poetry environment
if [ -f "${PROJECT_PATH}/pyproject.toml" ]; then
    poetry install
fi
