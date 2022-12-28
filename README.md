```
/project			(root project folder, has project name)
│
├───>/bin			(the final executable file)
│
│
├───>/cfg			((or conf) configuration files (Unix/Linux projects might prefer an 'etc' folder))
│
│
├───>/doc			(project documentation)
│	│
│	├───>/html		(documentation on html)
│	│
│	└───>/latex		(documentation on latex)
│
│
├───>/inc			((or include) for library projects, the distributable include files (.h of your library))
│
│
├───>/lib			(any library dependences (.h, .a from others libraries))
│
│
├───>/obj			(where the generated .o files will be)
│
│
├───>/os			(OS (platform dependent) files (such as makefiles, package building scripts..))
│
│
├───>/res			(resources required for compilation but not source files (icons, etc.))
│
│
├───>/src			(every source file, like .c or .cpp)*
│	│
│	├───>/module1	(for each sub module)**
│	│
│	└───>/test		(unit testing files)
│
│
├───>BUGS			(known bugs)
│
├───>ChangeLog		(list of changes and such)
│
├───>LICENSE		((or COPYING) project license and warranty info)
│
├───>Doxyfile		(Doxygen instructions file)
│
├───>INSTALL		(install instructions document (might refer to doc\INSTALL))
│		│
├───>Makefile		(make instructions file for building the project)
│
├───>README			(introductory document of the project (might refer to doc\README))
│
└───>TODO			(todo list)
```
>*For C++ projects, headers and sources go along, but if your project is a library then separating include files for others is a better practice</br>
**For multiple files having related contents, it is better to separate them to their own subfolders)

For more info or conventions: https://www.gnu.org/prep/standards/standards.html
