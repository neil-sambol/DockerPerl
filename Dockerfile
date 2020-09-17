FROM perl:5.32
WORKDIR /usr/src/app
LABEL maintainer="nsambol@otgexp.com"

COPY . /usr/src/app

# Perl Modules to install into Docker Container (like in Python)
RUN cpan App::cpanminus
RUN cpanm Mojolicious~8.58
RUN cpanm Mojo::SQLite~3.004

# For colored prompt.
RUN echo ". /usr/src/app/pd1.sh" >> ~/.bashrc

CMD ["perl", "app.pl"]
