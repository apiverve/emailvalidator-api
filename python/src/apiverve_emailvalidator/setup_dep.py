from setuptools import setup, find_packages

setup(
    name='apiverve_emailvalidator',
    version='1.2.1',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Email Validator checks whether an email address is valid, deliverable and safe. It validates the format, resolves the domain's mail (MX) records, flags disposable and role-based addresses, and returns a composite risk score with typo correction.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/emailvalidator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
