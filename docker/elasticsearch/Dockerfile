FROM elasticsearch:7.11.2

# install plugins
RUN elasticsearch-plugin install analysis-kuromoji \
 && elasticsearch-plugin install analysis-icu

COPY elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
