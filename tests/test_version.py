def test_version() -> None:
    from rust_python_project_template import __version__

    assert __version__ is not None
