from ruby:2.5

RUN touch hello.txt

CMD ["pwd","&&","ls -al","&&","env","&&","echo bai"]
