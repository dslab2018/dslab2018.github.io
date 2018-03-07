# Week 3 Data Science Lab

## Collaborative Data Science

### 1 - Gitlab setup

Go over to <https://git-dslab.epfl.ch/> and create an account with your EPFL e-mail.
This instance of gitlab resides within EPFL premises, so to access it
from outside the campus network, you'll need a VPN
(<https://epnet.epfl.ch/cms/site/network/lang/en/Remote-Internet-Access>).
Please note that the accounts are not sync’d with EPFL accounts, so you should use another password.

### 2 - Getting the project stub

Go to <https://git-dslab.epfl.ch/dslab2018/week3-git> and click on 'Fork'.

After setting up an SSH key pair (<https://docs.gitlab.com/ee/gitlab-basics/create-your-ssh-keys.html>),
you can now clone the project on your machine/VM.

```bash
$ git clone git@git-dslab.epfl.ch:<group>/week3-git.git
```

### 3 - Recover the project

The repository is a very simple project for computing the Fibonacci’s sequence, following test driven development. But the project owner did some mistakes and didn’t leave the repository in a working shape.

Your mission is to recover all the files (using only git commands) and push it back to your forked repository. To check if you recovered all the files, you can run the test file, all 3 tests must pass.

This exercise doesn’t require special python library and only needs git to be setup, so you don’t need the virtual machine at this stage.

## Dockerized Data Science

The goal of this exercise is to demonstrate a potential application
of container technology for deploying data science models.
You will learn how to package a model in a deployable artefact
that can serve predictions over the wire.

This exercise is a good template for the graded homeworks. Your submission will be done by pushing your code to a repository on your group namespace (that you will share with and only with the other person in your group) and tagging the commit with a given name. Your repository will always contain a Dockerfile that will allow us to run your code without having to setup all dependencies. So you can use any libraries you like.

### 1 - Gitlab setup

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
$ make help
$ make image
$ make test
$ make size
...
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

Bonus question: The tests run on the whole datasets. Can you modify them or write new tests that report
metrics separately for train and test samples? Can you report other important metrics of the models?

## Data science competition

### 1 - Kaggle

This exercise is not mandatory, but for the ones who want to go further and play with some real world datasets, you can go on kaggle.com.

On https://www.kaggle.com/datasets you can find a whole bunch of data sets to use. For example, in week 2 we did already some basic Machine learning with the iris dataset. You can find it here https://www.kaggle.com/uciml/iris/data . There are some kernels made specially for this data set: https://www.kaggle.com/uciml/iris/kernels . Find a nice one and fork it. Create a new branch, and run the kernel. Finally you can make changes in the notebook and push these back.
