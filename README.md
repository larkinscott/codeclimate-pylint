[![Maintainability](https://api.codeclimate.com/v1/badges/af6595b5ba0a85c3c0a1/maintainability)](https://codeclimate.com/github/meuspedidos/codeclimate-pylint/maintainability) [![Requirements Status](https://requires.io/github/meuspedidos/codeclimate-pylint/requirements.svg?branch=master)](https://requires.io/github/meuspedidos/codeclimate-pylint/requirements/?branch=master)

# Code Climate Pylint Engine

`codeclimate-pylint` is a Code Climate engine that wraps the [Pylint](https://github.com/PyCQA/pylint) source code analyzer. You can run it on your command line using the Code Climate CLI, or on our hosted analysis platform.

### Installation

1. If you haven't already, [install the Code Climate CLI](https://github.com/codeclimate/codeclimate).
2. Enable the engine through the beta channel in your .codeclimate.yml file:
```
engines:
  pylint:
    enabled: true
    channel: "beta"
```
3. You're ready to analyze! Browse into your project's folder and run `codeclimate analyze`.

### Configuration

You can configure which files to be analyzed in your `.codeclimate.yml` file.

Other configurations can be made through a `.pylintrc` file. More information can be found on [Pylint's documentation](https://pylint.readthedocs.io/en/latest/)

Plugin activation can also be made in `.codeclimate.yml`:

```
engines:
  pylint:
    enabled: true
    plugins:
      - django
```

Currently the following plugins are supported:

- [pylint-django](https://github.com/PyCQA/pylint-django)
- [pylint-celery](https://github.com/PyCQA/pylint-celery)

We welcome PRs adding support for other plugins, as well as updating the currently supported plugins' versions.

### Need help?

For help with Pylint, [check out their documentation](https://pylint.readthedocs.io/en/latest/).

If you're running into a Code Climate issue, first check out this project's GitHub Issues, as your question may have already been covered. If not, [go ahead and open a support ticket with us](https://codeclimate.com/help).
