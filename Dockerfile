FROM python
COPY . /app
RUN pip install cython
#RUN pip install -r /app/requeriments.txt
RUN pip install numpy
RUN pip install torch torchvision
RUN pip install Pillow
RUN pip install imageio
Run pip install ast
RUN pip install -U 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'
CMD python /app/trainer.py --num_epochs 500 && python /app/runMe.py && python /app/project_test.py


