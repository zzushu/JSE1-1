# Python 3.11이 들어있는 기본 이미지 사용
FROM python:3.11-slim

# 컨테이너 안에서 작업할 폴더 지정
WORKDIR /app

# 필요한 패키지 목록 파일 복사
COPY requirements.txt .

# Flask 설치
RUN pip install --no-cache-dir -r requirements.txt

# 현재 폴더의 모든 파일 복사
COPY . .

# 5000번 포트를 사용한다고 알림
EXPOSE 5000

# 컨테이너 시작 시 app.py 실행
CMD ["python", "app.py"]