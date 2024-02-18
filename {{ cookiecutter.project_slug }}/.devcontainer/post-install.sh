# Enabling .bashrc for the project
echo -e "\n# sourcing project .bashrc\nif [ -f \"\$PROJECT_PATH/.bashrc\" ]; then\n    . \"\$PROJECT_PATH/.bashrc\"\nfi" >> /home/vscode/.bashrc

# Configuring the poetry environment
if [ -f "${PROJECT_PATH}/pyproject.toml" ]; then
    poetry install
fi