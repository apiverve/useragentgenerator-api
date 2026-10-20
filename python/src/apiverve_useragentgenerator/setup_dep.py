from setuptools import setup, find_packages

setup(
    name='apiverve_useragentgenerator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='User Agent Generator creates realistic user agent strings for desktop, mobile, and tablet devices. Each request outputs the complete string with parsed browser and operating system names and versions, while paid plans add engine and CPU details.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/useragentgenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
