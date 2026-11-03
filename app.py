# Flask를 가져온다
from flask import Flask

# Flask 앱을 만든다
app = Flask(__name__)

# / 주소로 접속했을 때 실행할 함수
@app.route("/")
def home():
    # 브라우저에 보여줄 문장
    return "<h1>수정 후 확인</h1>"

# 이 파일을 직접 실행할 때 웹서버를 켠다
if __name__ == "__main__":
    # host=0.0.0.0: 외부에서 접속 가능
    # port=5000: 5000번 포트 사용
    app.run(host="0.0.0.0", port=5000)