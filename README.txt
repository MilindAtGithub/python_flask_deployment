This is the sample demo for packaging

## Following are the important command for the reference or to begin with 

#	For the using the disutil change the import in the setup.py to the following:
		from distutils.core import setup
#	For building the package execute the following command:
		python setup.py sdist
#	For the using the setuptool and egg format execute the following command:
		python setup.py sdist
#	For installing both based on the disutil and setuptool use the following command:
		python setup.py install
# 	For using the wheel package for packaging use the following command:
		python setup.py bdist_wheel
#	For installing the wheel format use the pip command make sure that pip installed 
#	First go to dist folder from your current location:
		cd ./dist
#	Execute the pip install command:
		pip install <<Yourwhl>>.whl
#	Example	
		pip install flaskdemoapp-1.0-py3-none-any.whl
# 	For making sure the package is properly installed go the following folder from your python
#	Package path
		cd site-packages/
#	Find out from pip
		pip show flaskdemoapp
#	You will see your package file
		drwxr-xr-x    6 milind  staff       192 Jun 10 15:12 flaskdemo
		drwxr-xr-x    7 milind  staff       224 Jun 10 15:12 flaskdemoapp-1.0.dist-info
#	Installing as the binaries
#	First make sure pyinstaller is installed
		pip show pyinstaller
#	If not install install via the following command:
		pip install pyinstaller
#	Now create the executable file by following command:
		pyinstaller -w -F --add-data "flaskdemo/templates:flaskdemo/templates" app.py
#	Note above we are adding the template folder if you are having the static folder then you need to 
#	add that too
#	Finally go to the dist folder and execute the executable.
		./app	
		

