from setuptools import setup, find_packages

setup(
    name='python-app',
    version='1.0',
    packages=find_packages(),
    install_requires=[

    ],
    entry_points={
        'console_scripts': [
            'employee-management = employee_management.main:main',  # replace with your main module
        ],
    },
    author='Foivos',
    author_email='pro.foibos@gmail.com',
    description='A package for employee management',
    url='https://github.com/foivospro/Lab-Assignment-2',
)
