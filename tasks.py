from invoke import task

@task
def test(ctx):
    print("Testing the application...")
    ctx.run("pytest -s")

@task
def build(ctx):
    print("Building the application...")
    result = ctx.run("python setup.py build", warn=True)
    if result.exited != 0:
        raise Exception("Build failed!")
    else:
        print("Build completed successfully.")

@task
def package(ctx):
    print("Packaging the application...")
    result = ctx.run("python setup.py sdist bdist_wheel", warn=True)
    if result.exited != 0:
        raise Exception("Packaging failed!")
    else:
        print("Packaging completed successfully.")
