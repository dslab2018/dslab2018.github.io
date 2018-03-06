# Dockerized Data Science

The goal of this exercise is to demonstrate a potential application
of container technology for deploying data science models.
You will learn how to package a model in a deployable artefact
that can serve predictions over the wire.

## Instructions

### 1 - Gitlab setup

Go over to <https://git-dslab.epfl.ch/> and create an account.
This instance of gitlab resides within EPFL premises, so to access it
from outside the campus network, you'll need a VPN
(<https://epnet.epfl.ch/cms/site/network/lang/en/Remote-Internet-Access>).

If you desire to work in groups, create a new group and invite your fellow students:
> Top indigo nav bar > Left > Groups then hit the green button 'New Group'.
> From your group page, click on the 'Members' menu and invite others.

### 2 - Getting the project stub

Go to <https://git-dslab.epfl.ch/dslab2018/week3-docker> and click on 'Fork'.
Be sure to select your group if you want to collaborate.

After setting up an SSH key pair (<https://docs.gitlab.com/ee/gitlab-basics/create-your-ssh-keys.html>),
you can now clone the project on your machine/VM.

```bash
$ git clone git@git-dslab.epfl.ch:<group>/week3-docker.git
```

### 3 - Explore the project

Open the project folder with a text editor or a Python IDE (e.g. pycharm).

Try out the different targets from the makefile:
```bash
$ make image
$ make test
$ make size
```

### 4 - Complete the project

First objective: look at the python files in `dslab2018_week3`.
The predictive model for digits is not even used and a random guess is returned instead.
Fix this so that the test passes now.

Second objective: improve the accuracy of the digits model.
If you want to use multiple stages (e.g. scaling then SVM), have
a look at [sklearn.pipeline.Pipeline](http://scikit-learn.org/stable/modules/generated/sklearn.pipeline.Pipeline.html).

Third objective: run the command `make size`.
You'll notice that the image size reported by docker is above 3GB.
Modify the `Dockerfile` and try to create the smallest possible image.
Hints: alpine linux and `requirements.txt`.
