# Step 1: Start from a light Python image
FROM python:3.11.3

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy dependency list and install them
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Copy the rest of your app
COPY . .

# Step 5: Run the app when the container starts
ENTRYPOINT ["python"]
CMD ["app.py"]
