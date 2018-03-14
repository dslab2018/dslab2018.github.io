# Week 3 Data Science Lab - Solutions

## Collaborative Data Science

### Short answer

```bash
$ git revert 30b809a2
$ git merge origin/fix_bug
$ git merge origin/feature_validation
$ git push
```

### Long answer

There are multiple ways of solving this exercise, so don't worry if you did a bit differently, as long as you end up with something working.

First let's have a look at the git repository content. You can either use the "graph" view from gitlab or 

```
git log --graph --pretty=oneline --abbrev-commit
```

Exploring further you will notice that the commit ```30b809a``` accidentally removes two important files. You will first need to revert it.
For doing that you have two options: either you revert the action of this commit, adding a new one that does the opposite (```git revert 30b809a2```) or you set the master branch pointer to the state just before this commit (```git reset --hard 12a6f33```). The revert is preferred here because it doesn't rewrite past history and thus doesn't need to "force push" (which is blocked by default on the master branch on gitlab).

Then you will also notice the two branches. From gitlab interface or by doing ```git checkout <branch>```, you can explore the changes they apply, in this case fixing a bug and adding some input validation. This is exactly what you need to make the tests pass. So you can merge the branches on master with 

```
git merge origin/fix_bug
git merge origin/feature_validation
```

You can omit the "origin/" in the branch name if you have them locally. For example this would be the case if you had checkout onto them before.

## Dockerized Data Science

You can find all the changes in the commit diff here: https://git-dslab.epfl.ch/dslab2018/week3-docker/commit/b4c3af4af71e4df11d11d376c3e45a3abe538faf

### Fix controller.py

Replace the random guess by `y = m.predict([x])`, following the
example from the `predict_iris()` function:
[...]
m = get_model('iris')
y = m.predict([x])
logger.debug('Predicted y={y}'.format(y=y))
[...]


### Modify train_models.py

As seen in the previous lab, it is a good idea to scale and apply PCA before our model.
The use of the Pipeline class from scikit-learn allows us to easily decompose our whole model
into steps: scale, pca and classify.

Note: the improvement on the accuracy may not be immediate. The metric is not computed on test samples only.


### Update Dockerfile, added alpine.Dockerfile

1. The basic approach to create smaller Docker images for python software is to use `FROM python:3.6-slim`
and to pip install the required packages. Here, we need numpy, scikit-learn (->depends on scipy) and flask.
This leads to an image 6 times smaller than the original one.

2. An alternate Dockerfile is provided as an example for creating an alpine-based image.

Notes:
It was wrongly assumed that the alpine-based image would be not very hard to create and smaller in size.
The numerical packages used by numpy, pandas, scipy and scikit-learn (e.g. openblas) need to be compiled for alpine.
This is why we install gcc, gfortran, etc. before calling pip install.
The above reasons also explain why there is no size gain from using alpine in this case:
dslab2018-week3                                 alpine              1acb644bc665        About a minute ago   535MB
dslab2018-week3                                 latest              91e900cca015        About an hour ago    464MB


### Update test files

Here, we updated the digits test to only report the accuracy on the test samples.

Note: no additional metric reported but readers can go to http://scikit-learn.org/stable/modules/classes.html#sklearn-metrics-metrics
to find most common metrics used in machine learning.

