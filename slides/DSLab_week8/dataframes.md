# DSLab Week 8
## Week 2/3: Spark DataFrames



An API for computing with structured data (if it's a table, it fits)

Some key points:

* does not require using basic RDD methods (`map`, `reduce` etc.)
* for many common operations data in a DataFrame follows a specified "schema" that tells Spark which kinds of data are in each column
* the basic data unit is a `Row` which contains a value for each of the columns
* automatically read data from a variety of formats, e.g. json, parquet, some database formats (through plugins)
* can give some nice performance improvements!
* Spark can optimize the execution because it knows more about the data layout
* most of the work can take place in the JVM without need to ship to python
* operations can be 'pushed down' to the optimized DB layer, e.g. filtering


## [DataFrame demo](./dataframe_demo.slides.html)


## Useful Links

* Lab repository: https://git-dslab.epfl.ch/dslab2018/week8-spark-continued
* General Spark docs: http://spark.apache.org/docs
* Spark DataFrame intro (good for a lookup of basic syntax): http://spark.apache.org/docs/latest/sql-programming-guide.html
* Spark DataFrame Reference: http://spark.apache.org/docs/latest/api/python/pyspark.sql.html
* Spark ML Reference: http://spark.apache.org/docs/latest/api/python/pyspark.ml#pyspark-ml-package
