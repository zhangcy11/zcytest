#!/usr/bin/env python
# coding: utf-8

# In[6]:


def Fibonacci(n):
    lis =[]
    for i in range(n):
        if i ==0 or i ==1:#第1,2项 都为1
            lis.append(1)
        else:
            lis.append(lis[i-2]+lis[i-1])#从第3项开始每项值为前两项值之和
    print(lis)


# In[7]:


Fibonacci(5)


# In[ ]:




