import pandas as pd
name = pd.Series(['Ayushi','Anshu','Sakshi','Anju','Shreshtha'])
height = pd.Series(['167','152','160','150','148'])
DF = pd.DataFrame({'NAME':name,'HEIGHT':height})
# for direct reading from a file
# california_housing_dataframe = pd.read_csv("https://storage.googleapis.com/mledu-datasets/california_housing_train.csv", sep=",")
# california_housing_dataframe.describe()
# print(DF.describe())
print('\n')
# print(DF.head())
print('\n')
# print(DF['NAME'])
# adding new Series
DF['HOME'] = pd.Series(['Jhansi','Jaipur','Ajmer','Kota','Gurgaon'])
# print(DF)
# print(height.apply(lambda val: val> 160))
DF['height1']=DF['HEIGHT'] > 152
print(DF)
print type (DF['NAME'])
print type (DF[["NAME"]])
