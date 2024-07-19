# Wieża Hanoi
Wieża Hanoi napisana w ruby. 

# Uruchomienie

Przed uruchomieniem trzeba zainstalować potrzebne gemy za pomocą komendy: bundle install \
Następnie za pomocą: bundle exec ruby script.rb \
Można uruchomić program, który rozwiązuje wieżę Hanoi dla liczby pierścieni/krążków podanych przez użytkownika. \

# Testy
Testy znajdują się w folderze /spec \
Raport z testów znajduję się w "/spec/rspec_results.html" \
Testy można uruchomić poprzez komendę 'rspec' w folderze projektu

# Dokumentacja 
Dokumentacja (stworzona za pomoca yard) znajdują sie w foldrze /doc \
Dokumentacja tworzona jest za pomocą komendy:  yard doc hanoi_tower.rb './spec/*spec.rb' --plugin rspec \

