# About
This project is an analytics engineering approach towards Hospitality and Homestays industry. We use
**D**ata **B**uild **T**ool or **dbt** to transform our data in warehouses. We have data from Airbnb
about their hosts, about the listings which means the hotels or stays: their price, room type, host_id,
price, etc. Also feedback from the host which is in review table.
We first set up our snowflake to obtain the raw data: 
https://github.com/jishu1989/complete-dbt-bootcamp-zero-to-hero/blob/main/_course_resources/course-resources.md 
and connect snowflake to dbt for modelling and transformation. 

# Setting Up Virtual Environment for dbt

It is very important to create virtual environments. One of them being dependency management for instance by default my
system has python 3.7 version. But for dbt it requires minimum of more than python version 3.9-3.12. I am using 3.12.3.
Also using helps in system integrity, installing dbt would have cluttered, therefore dbt virtual environment will also
help in creating other projects in dbt.

```
PS C:\Users\Soumya Das\Documents\projects\git projects> py -m venv venvdbt
PS C:\Users\Soumya Das\Documents\projects\git projects> .\venvdbt\Scripts\Activate.ps1
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects> py --version
Python 3.12.3
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects>
```
<img width="856" alt="image" src="https://github.com/user-attachments/assets/90d069df-c6b9-4710-951d-60c179ddb29f" />

<img width="692" alt="image" src="https://github.com/user-attachments/assets/81ba35a3-22ac-4a7a-aed9-b6d62265bd72" />

<img width="843" alt="image" src="https://github.com/user-attachments/assets/bef47c03-6f75-4e20-ab42-7282576ebfaa" />

<img width="851" alt="image" src="https://github.com/user-attachments/assets/63f3283a-a834-4aca-93d7-c360d9426975" />

<img width="848" alt="image" src="https://github.com/user-attachments/assets/e0103499-0e4f-4b4c-985b-36fa1779473b" />

<img width="602" alt="image" src="https://github.com/user-attachments/assets/e950fe09-bce0-482a-8be2-2e1d776975e8" />

# Data Modelling 

Our target is to create dimension and fact tables from the raw tables. In between are the source tables which has some
degree of changes from the raw tables , f.e renaming the name of the columns. While creating dimension and fact tables 
we add more constraints to our models. But the visual representation of our modelling plan is as follows:


![image](https://github.com/user-attachments/assets/617d6ad1-7348-4a31-aef9-f6c522ee2d9a)

![image](https://github.com/user-attachments/assets/a7751c0c-83d4-415f-876d-a2c741b3651e)




