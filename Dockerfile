FROM python:3.10

WORKDIR /app

# Copy the requirements file 

COPY requirements.txt /app

# Install the dependencies 
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /app

EXPOSE 7860

CMD ["python", "app.py"]