#!/usr/bin/env python
# coding: utf-8


import pandas as pd
import matplotlib.pyplot as plt
get_ipython().run_line_magic('matplotlib', 'inline')

iris = pd.read_csv(r'C:\Users\ZCY\Desktop\iris.csv')
iris.head()

##花萼特征与鸢尾花类型分布图##
x=iris['SepalLength']
y=iris['SepalWidth']

plt.scatter(x[:50], y[:50], color='blue', label='Iris-setosa') #前50个样本
plt.scatter(x[50:100], y[50:100], color='yellow', label='Iris-versicolor') #中间50个
plt.scatter(x[100:], y[100:],color='red', label='Iris-Virginica') #后50个样本
plt.legend() #右上角
plt.xlabel('SepalLength')
plt.ylabel('SepalWidth')
plt.show()

##花瓣特征与鸢尾花类型分布图##
x1=iris['PetalLength']
y1=iris['PetalWidth']

plt.scatter(x1[:50], y1[:50], color='blue', label='Iris-setosa') #前50个样本
plt.scatter(x1[50:100], y1[50:100], color='yellow', label='Iris-versicolor') #中间50个
plt.scatter(x1[100:], y1[100:],color='red', label='Iris-Virginica') #后50个样本
plt.legend(loc=2) #左上角
plt.xlabel('SepalLength')
plt.ylabel('SepalWidth')
plt.show()



