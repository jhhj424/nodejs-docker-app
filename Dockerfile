# 베이스 이미지 명시
FROM node:10

# 워크디렉토리 설정
WORKDIR /usr/src/app

# 필요한 파일 로컬 -> 컨테이너로 복사
COPY package.json ./

# 추가적으로 필요한 파일을 다운
RUN npm install

COPY ./ ./

# 컨테이너 시작시 실행 될 명령어 명시
CMD [ "node", "server.js" ]