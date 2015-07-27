  from setuptools import setup

  setup(name='<app>',
        description='<description>',
        version='0.1.0',
        author='Harsha Srinivas',
        author_email='95harsha95@gmail.com',
        packages=['<app>'],
        entry_points={
            'console_scripts': ['<app>=<app>:main'],
        },
        url='https://github.com/harshasrinivas/<app>/',
        keywords=[ 'CLI', 'python'],
        classifiers=[
            'Operating System :: POSIX',
            'Environment :: Console',
            'Programming Language :: Python',
            'Programming Language :: Python :: 2',
            'Programming Language :: Python :: 3',
            'Programming Language :: Python :: 3.2',
            'Programming Language :: Python :: 3.3',
            'Topic :: Utilities',
            'Topic :: Software Development :: Libraries :: Python Modules',
      ],)
