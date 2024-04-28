from setuptools import setup, find_packages

setup(
    name='employee-management',
    version='1.0',
    packages=find_packages(),
    install_requires=[
        # list your dependencies here
    ],
    entry_points={
        'console_scripts': [
            'employee-management = employee_management.main:main',  # replace with your main module
        ],
    },
    author='Your Name',
    author_email='your@email.com',
    description='A package for employee management',
    url='https://github.com/yourusername/employee-management',
)
