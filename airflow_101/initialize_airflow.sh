# Airflow needs a home. `~/airflow` is the default, but you can put it
# somewhere else if you prefer (optional)
export AIRFLOW_HOME="$PWD/airflow"
# initialize airflow
airflow db init
# create user (pword: 12345)
airflow users create \
    --username admin \
    --firstname Hasan \
    --lastname Ozdemir \
    --role Admin \
    --email hasanozdemir1@trakya.edu.tr \
    --password 12345

# run webserver localhost:8080
airflow webserver --port 8080

# run scheduler
airflow scheduler

# all of them in once
airflow standalone