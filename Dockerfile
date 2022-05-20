# 
FROM python:3.9

WORKDIR /fastapi_app
# 
COPY ./requirements.txt /fastapi_app/requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# 
COPY ./app /fastapi_app/app

#
ENV PYTHONPATH "${PYTHONPATH}:/fastapi_app/app"

# 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
