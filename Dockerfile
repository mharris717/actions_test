from ruby:2.5

LABEL "com.github.actions.name"="Do Stuff"

RUN touch hello.txt
ADD status.rb .

CMD ["./status.rb"]
