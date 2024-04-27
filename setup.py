# setup.py

from setuptools import setup, find_packages

setup(
    name='my_package',
    version='0.1',
    packages=find_packages(),
    author='Your Name',
    author_email='your.email@example.com',
    description='Description of your package',
    long_description='Long description of your package',
    url='https://github.com/yourusername/yourpackage',
    install_requires=[
        # List of dependencies required by your package
    ],
    tests_require=[
        'pytest',  # Add testing framework dependencies here
        # Add other testing dependencies as needed
    ],
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ],
)
