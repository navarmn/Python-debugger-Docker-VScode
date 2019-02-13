An example how to debug your scripts remotelly from a docker container
===

The directory [.vscode](.vscode/) is left here on purposed. For more info, take a look at this [link](https://code.visualstudio.com/docs/python/debugging)

This stucture relies under the **ptvsd** python package. Make sure you install it first with `pip install ptvsd`. The [`customize.py`](customize.py) is only a wrapper that could contais all your code customize. The purpose is to keep the main code as much clean as possible. 

## How to use it

At the **very top** of your python script do:

```python
import customize
```

Setup the [Dockerfile](Dockerfile), changing the replace the `hello.py` for the script you desire to debug remotelly.

```Dockerfile
CMD [ "python", "hello.py" ]
```

Make the project! The [`Makefile`](Makefile) has three types os configs: `install`, `debug` and  `bash`. They are pretty straightfoward. Call `make install` first to build a docker image that outta be debugged.

> The docker image will have the same name as your folder. Make sure you give a recognizable name :D.

> The [`launch.json`](.vscode/launch.json) will launch the remote debugger and the `preLaunchTask` flag is set to run the `make debug` taks under the [`tasks.json`](.vscode/tasks.json).


The whole setup is exhibit down bellow

This a quite simple example more advance stuffed refer to [this link](https://github.com/DonJayamanne/vscode-python-samples)
