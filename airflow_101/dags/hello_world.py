from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from datetime import datetime

default_args = {
    'owner': 'myusername',
    'start_date': datetime(2023, 5, 7),
    'retries': 1
}

dag = DAG(
    'say_hi_dag',
    default_args=default_args,
    schedule_interval='@daily'
)

def my_python_function():
    # Your Python code here
    print('Hello, World!')

run_this = PythonOperator(
    task_id='run_python_script',
    python_callable=my_python_function,
    dag=dag
)
