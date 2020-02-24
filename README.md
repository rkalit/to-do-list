## simple to do list service using flask

### How to build the Dockerfile
``` docker build -t <image-name> . ```

### How to Run the Image
``` docker run -p <host_port>:5000 -d <image-name> ```

### How to use
```
/signup
curl -d "username=<user>&password=<pass>&email=<email>" -X POST http://127.0.0.1:5000/signup
```
```
/add_task
curl -u <user>:<pass> -d "content=this is first test content" -X POST http://127.0.0.1:5000/add_task
```
```
/remove_task
curl -u <user>:<pass> -d"task_id=2" -X POST http://127.0.0.1:5000/remove_task
```
```
/mark_task_as_done
curl -u <user>:<pass> -d "task_id=2" -X POST http://127.0.0.1:5000/mark_task_as_done
```
```
/show_tasks
curl -u <user>:<pass> -X GET http://127.0.0.1:5000/show_tasks
```

Code from : https://www.zeolearn.com/magazine/creating-a-restful-api-service-with-flask check it for better explanation
