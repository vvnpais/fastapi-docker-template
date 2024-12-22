import fastapi
import uvicorn

app = fastapi.FastAPI()


@app.get('/')
def foo():
    return {
        'Hello': 'World'
    }


if __name__ == "__main__":
    uvicorn.run('main:app', reload=True, host='0.0.0.0', port=3622)
