from datetime import datetime
from airflow import DAG

from airflow.operators.bash import BashOperator

default_args = {
    'owner': 'sesol4',
    'depends_on_past': False,
    'email': ['sesol4@tcu.gov.br'],
    'email_on_failure': False,
    'tags' : ['sesol4']
}

with DAG(
    'my_first_dag',
    default_args=default_args,
    description='My First DAG',
    start_date=datetime.now(),
    schedule_interval=None,
    catchup=False
) as dag:

    t1 = BashOperator(
        task_id='print_date',
        bash_command='date',
        dag=dag
    )

    t2 = BashOperator(
        task_id='sleep',
        depends_on_past=False,
        bash_command='sleep 5',
        dag=dag
    )

    t1 >> t2