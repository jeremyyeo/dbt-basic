import pandas as pd


def model(dbt, session):

    dbt.config(schema="analytics")
    
    return pd.DataFrame({"id": [1]})
